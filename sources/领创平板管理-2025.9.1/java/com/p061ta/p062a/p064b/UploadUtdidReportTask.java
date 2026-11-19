package com.p061ta.p062a.p064b;

import android.content.Context;
import android.text.TextUtils;
import com.p061ta.p062a.p063a.UtdidReportPayload;
import com.p061ta.p062a.p063a.UtdidReportEncoder;
import com.p061ta.p062a.p065c.UtdidConnectivityInfo;
import com.p061ta.p062a.p065c.UtCallsiteLogger;
import com.p061ta.utdid2.device.AppUtdidStore;
import com.p061ta.utdid2.device.UtdidReportResultHandler;

/* renamed from: com.ta.a.b.h */
/* loaded from: classes.dex */
public class UploadUtdidReportTask implements Runnable {

    /* renamed from: a */
    public static volatile boolean f5995a = false;
    public Context mContext;

    public UploadUtdidReportTask(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    /* renamed from: a */
    private void m5381a() {
        UtCallsiteLogger.m5408e();
        if (UtdidConnectivityInfo.m5396b(this.mContext) && !f5995a) {
            f5995a = true;
            try {
                m5383b();
            } catch (Throwable unused) {
            }
            f5995a = false;
        }
    }

    /* renamed from: b */
    private void m5383b() {
        UtCallsiteLogger.m5408e();
        String strM5384e = m5384e();
        if (TextUtils.isEmpty(strM5384e)) {
            UtCallsiteLogger.m5404a("postData is empty", new Object[0]);
        } else if (m5382a(strM5384e)) {
            UtCallsiteLogger.m5404a("", "upload success");
        } else {
            UtCallsiteLogger.m5404a("", "upload fail");
        }
    }

    /* renamed from: e */
    private String m5384e() {
        String strM5426m = AppUtdidStore.m5422a().m5426m();
        if (TextUtils.isEmpty(strM5426m)) {
            return null;
        }
        String strM5370a = UtdidReportPayload.m5370a(strM5426m);
        if (UtCallsiteLogger.m5405a()) {
            UtCallsiteLogger.m5407b("", strM5370a);
        }
        return UtdidReportEncoder.m5372b(strM5370a);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            m5381a();
        } catch (Throwable th) {
            UtCallsiteLogger.m5403a("", th, new Object[0]);
        }
    }

    /* renamed from: a */
    private boolean m5382a(String str) throws Throwable {
        UtdidTransportResult c1869aM5374a = UtdidHttpTransport.m5374a("https://mpush-api.aliyun.com/v2.0/a/audid/req/", str, true);
        if (c1869aM5374a == null) {
            return false;
        }
        return UtdidReportResultHandler.m5443a(c1869aM5374a);
    }
}
