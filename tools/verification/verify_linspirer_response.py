"""Run the vendor's decoded response parsers on local fixtures in an emulator."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parents[2]
# Compile-time signatures only. They are excluded from the DEX and all methods
# being tested are loaded from the original APK on Android.
DECL = {
    'network.response.Response': 'public class Response {public int getCode(){return 0;} public String getData(){return null;}}',
    'network.response.BaseResponse': 'public abstract class BaseResponse {public abstract void onFailed(Response r); public abstract void onFailureByNet(Object e); public void onFailure(Object e){} public abstract void onSucessDecrypt(String s);}',
    'network.response.LTKResponseListener': 'public abstract class LTKResponseListener<T> extends BaseResponse {public LTKResponseListener(Class<T> c){} public void onSucessDecrypt(String s){} public void handleResult(Boolean b){} public void handleResult(String s){} public void handleResult(T t){}}',
    'network.response.LTKListResponseListener': 'public abstract class LTKListResponseListener<T> extends BaseResponse {public LTKListResponseListener(Class<T> c){} public void onSucessDecrypt(String s){} public abstract void handleResult(java.util.List<T> rows);}',
    'model.SchoolInfo': 'public class SchoolInfo {public String getName(){return null;}}',
    'model.UserInfo': 'public class UserInfo {public long getId(){return 0;} public String getName(){return null;} public SchoolInfo getSchoolinfo(){return null;}}',
}
def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('serial')
    args=parser.parse_args()
    if not args.serial.startswith('emulator-'):parser.error('Supply a disposable emulator')
    jdk=Path(os.environ['JAVA_HOME'])/'bin'; sdk=Path(os.environ['ANDROID_HOME'])
    env=dict(os.environ,PATH=str(jdk)+os.pathsep+os.environ['PATH'])
    def run(*cmd): return subprocess.run(cmd,check=True,capture_output=True,env=env)
    def adb(*cmd):return run(sdk/'platform-tools/adb','-s',args.serial,*cmd)
    apk=ROOT/'中育apk/领创平板管理-2025.9.1.apk'
    with tempfile.TemporaryDirectory(prefix='zy-response-') as directory:
        work=Path(directory); classes=work/'classes';classes.mkdir()
        sources=[]
        for key,body in DECL.items():
            pkg,cls=key.rsplit('.',1)
            file=work/(cls+'.java')
            file.write_text('package com.android.launcher3.'+pkg+';\n'+body)
            sources.append(file)
        run(jdk/'javac','--release','8','-d',classes,*sources,Path(__file__).with_name('LinspirerResponseProbe.java'))
        probe=work/'probe.jar'
        run(sdk/'build-tools/35.0.0/d8','--min-api','26','--lib',sdk/'platforms/android-35/android.jar',
            '--classpath',classes,'--output',probe,*classes.glob('LinspirerResponseProbe*.class'))
        remote='/data/local/tmp/'+work.name
        adb('shell','mkdir',remote)
        try:
            adb('push',probe,remote+'/probe.jar');adb('push',apk,remote+'/app.apk')
            out=adb('shell',f'CLASSPATH={remote}/probe.jar:{remote}/app.apk','app_process','/system/bin','LinspirerResponseProbe').stdout.decode()
        finally:
            adb('shell','rm','-r',remote)
    labels=['object','boolean','string','business','missing-type','transport','array','empty-array','invalid-array']
    observed={line.split(' ',1)[0]:line.split(' ',1)[1] for line in out.splitlines() if line.split(' ',1)[0] in labels}
    assert list(observed)==labels
    dest=ROOT/'reports/evidence/linspirer/response-parser.json';dest.parent.mkdir(exist_ok=True)
    dest.write_text(json.dumps({'apk_sha256':hashlib.sha256(apk.read_bytes()).hexdigest(),
        'input':'Synthetic decoded callback values, memory only','observed':observed},ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(observed,ensure_ascii=False))
if __name__=='__main__':main()
