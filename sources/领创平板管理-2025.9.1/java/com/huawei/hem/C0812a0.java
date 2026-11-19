package com.huawei.hem;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import com.huawei.hem.InterfaceC0890d0;
import com.taobao.accs.common.Constants;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.util.ArrayList;

/* compiled from: HRA_API.java */
/* renamed from: com.huawei.hem.a0 */
/* loaded from: classes.dex */
public class C0812a0 {

    /* renamed from: c */
    public static C0812a0 f2159c;

    /* renamed from: a */
    public InterfaceC0890d0 f2160a;

    /* renamed from: b */
    public ServiceConnection f2161b = new a();

    /* compiled from: HRA_API.java */
    /* renamed from: com.huawei.hem.a0$a */
    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C0812a0.this.f2160a = InterfaceC0890d0.a.m1552J(iBinder);
            InterfaceC0890d0 interfaceC0890d0 = C0812a0.this.f2160a;
            if (interfaceC0890d0 == null) {
                Log.e("HRA_API", "the mStub is null");
                return;
            }
            try {
                interfaceC0890d0.mo1550E1();
                C0812a0.this.f2160a.mo1551g0();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    @TargetApi(23)
    public C0812a0(Context context) {
        Log.v("HRA_API", "HRA_API()");
        Intent intent = new Intent();
        intent.setAction("cn.huaruian.action.HRAService");
        intent.setPackage("cn.huaruian.server.hraserver");
        context.bindService(intent, this.f2161b, 1);
    }

    /* renamed from: a */
    public ArrayList<String> m1289a(Context context) {
        Log.v("HRA_API", "GetAppInstallWhiteList");
        String string = Settings.System.getString(context.getContentResolver(), "appWhiteList");
        if (string == null) {
            string = "";
        }
        String[] strArrSplit = string.split(",");
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str : strArrSplit) {
            arrayList.add(str);
        }
        Log.v("HRA_API", "appList = " + string);
        return arrayList;
    }

    /* renamed from: b */
    public ArrayList<String> m1290b(Context context) {
        Log.v("HRA_API", "GetWebWhiteList");
        String string = Settings.System.getString(context.getContentResolver(), "WebWhiteList");
        if (string == null) {
            string = "";
        }
        String[] strArrSplit = string.split(",");
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str : strArrSplit) {
            arrayList.add(str);
        }
        Log.v("HRA_API", "webList = " + string);
        return arrayList;
    }

    /* renamed from: c */
    public ArrayList<String> m1291c(Context context) {
        Log.v("HRA_API", "GetWebWhiteList");
        String string = Settings.System.getString(context.getContentResolver(), "appRulePackageNameList");
        if (string == null) {
            string = "";
        }
        String[] strArrSplit = string.split(",");
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str : strArrSplit) {
            arrayList.add(str);
        }
        Log.v("HRA_API", "webList = " + string);
        return arrayList;
    }

    /* renamed from: d */
    public String m1292d() throws IOException {
        String strTrim;
        Log.v("HRA_API", "getMACaddress");
        try {
            LineNumberReader lineNumberReader = new LineNumberReader(new InputStreamReader(Runtime.getRuntime().exec("cat /sys/class/net/wlan0/address").getInputStream()));
            String line = "";
            while (line != null) {
                line = lineNumberReader.readLine();
                if (line != null) {
                    strTrim = line.trim();
                    break;
                }
            }
        } catch (Exception e) {
            StringBuilder sbM1765j = C0948f6.m1765j("getMacAddress:");
            sbM1765j.append(e.toString());
            Log.e("----->NetInfoManager", sbM1765j.toString());
        }
        strTrim = "";
        if (strTrim == null || "".equals(strTrim)) {
            try {
                FileReader fileReader = new FileReader("/sys/class/net/eth0/address");
                StringBuilder sb = new StringBuilder();
                char[] cArr = new char[4096];
                for (int i = fileReader.read(cArr); i >= 0; i = fileReader.read(cArr)) {
                    sb.append(cArr, 0, i);
                }
                String string = sb.toString();
                fileReader.close();
                return string.toUpperCase().substring(0, 17);
            } catch (Exception e2) {
                e2.printStackTrace();
                Log.e("----->NetInfoManager", "getMacAddress:" + e2.toString());
            }
        }
        return strTrim;
    }

    /* renamed from: e */
    public void m1293e(Context context, ArrayList<String> arrayList) {
        Log.v("HRA_API", "setAppDisable");
        Intent intent = new Intent();
        intent.setAction("com.hra.setApplicationDisable");
        intent.putExtra(Constants.KEY_PACKAGE_NAME, arrayList);
        context.sendBroadcast(intent);
    }

    /* renamed from: f */
    public void m1294f(Context context, ArrayList<String> arrayList) {
        Log.v("HRA_API", "setAppEnable");
        Intent intent = new Intent();
        intent.setAction("com.hra.setApplicationEnable");
        intent.putExtra(Constants.KEY_PACKAGE_NAME, arrayList);
        context.sendBroadcast(intent);
    }
}
