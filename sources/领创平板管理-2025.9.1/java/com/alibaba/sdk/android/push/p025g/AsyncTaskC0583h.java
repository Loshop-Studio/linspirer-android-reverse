package com.alibaba.sdk.android.push.p025g;

import android.content.Context;
import android.util.Log;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.alibaba.sdk.android.ams.common.util.C0507c;
import com.alibaba.sdk.android.error.ErrorCode;
import com.alibaba.sdk.android.push.CommonCallback;
import com.alibaba.sdk.android.push.common.p018a.C0560d;
import com.alibaba.sdk.android.push.common.util.p019a.AbstractAsyncTaskC0565c;
import com.alibaba.sdk.android.push.common.util.p019a.C0564b;
import com.alibaba.sdk.android.push.p016b.C0555f;
import com.huawei.hem.CompilerOutline;
import java.util.Map;

/* renamed from: com.alibaba.sdk.android.push.g.h */
/* loaded from: classes.dex */
public class AsyncTaskC0583h extends AbstractAsyncTaskC0565c {

    /* renamed from: c */
    public static AmsLogger f1294c = AmsLogger.getLogger("MPS:VipRequestTask");

    /* renamed from: d */
    public CommonCallback f1295d;

    public AsyncTaskC0583h(Context context, String str, CommonCallback commonCallback) {
        super(context, str);
        this.f1295d = commonCallback;
    }

    /* renamed from: a */
    private void m867a(int i, C0564b c0564b, CommonCallback commonCallback) {
        ErrorCode errorCodeBuild;
        String code;
        if (commonCallback == null) {
            return;
        }
        AmsLogger amsLogger = f1294c;
        StringBuilder sbM1766k = CompilerOutline.m1766k("requestType: ", i, ", errorCode:");
        sbM1766k.append(c0564b.f1156c);
        sbM1766k.append(", httpcode: ");
        sbM1766k.append(c0564b.f1155b);
        sbM1766k.append(", content:");
        sbM1766k.append(c0564b.f1154a);
        amsLogger.m498d(sbM1766k.toString());
        if (!c0564b.f1156c.getCode().equals(C0560d.f1126a.getCode())) {
            commonCallback.onFailed(c0564b.f1156c.getCode(), c0564b.f1156c.getMsg());
            return;
        }
        try {
            commonCallback.onSuccess(C0584i.m868a(i, c0564b.f1155b, c0564b.f1154a));
        } catch (C0555f e) {
            f1294c.m502e("Vip call failed", e);
            code = e.m745a().getCode();
            errorCodeBuild = e.m745a();
            commonCallback.onFailed(code, errorCodeBuild.getMsg());
        } catch (Throwable th) {
            f1294c.m502e("Vip call faled.", th);
            errorCodeBuild = C0560d.f1136k.copy().msg(th.getMessage()).detail(Log.getStackTraceString(th)).build();
            code = errorCodeBuild.getCode();
            commonCallback.onFailed(code, errorCodeBuild.getMsg());
        }
    }

    @Override // com.alibaba.sdk.android.push.common.util.p019a.AbstractAsyncTaskC0565c
    /* renamed from: a */
    public Map<String, String> mo771a(Context context, Map<String, String> map) {
        return C0507c.m539a(map);
    }

    @Override // com.alibaba.sdk.android.push.common.util.p019a.AbstractAsyncTaskC0565c, android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(C0564b c0564b) {
        super.onPostExecute(c0564b);
        m867a(m768a(), c0564b, this.f1295d);
    }
}
