package com.p061ta.p062a.p064b;

import android.content.Context;
import android.text.TextUtils;
import com.p061ta.p062a.p063a.C1867a;
import com.p061ta.p062a.p063a.C1868b;
import com.p061ta.p062a.p065c.C1880d;
import com.p061ta.p062a.p065c.C1882f;
import com.p061ta.utdid2.device.C1889a;
import com.p061ta.utdid2.device.C1893e;

/* renamed from: com.ta.a.b.h */
/* loaded from: classes.dex */
public class RunnableC1876h implements Runnable {

    /* renamed from: a */
    public static volatile boolean f5995a = false;
    public Context mContext;

    public RunnableC1876h(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    /* renamed from: a */
    private void m5381a() {
        C1882f.m5408e();
        if (C1880d.m5396b(this.mContext) && !f5995a) {
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
        C1882f.m5408e();
        String strM5384e = m5384e();
        if (TextUtils.isEmpty(strM5384e)) {
            C1882f.m5404a("postData is empty", new Object[0]);
        } else if (m5382a(strM5384e)) {
            C1882f.m5404a("", "upload success");
        } else {
            C1882f.m5404a("", "upload fail");
        }
    }

    /* renamed from: e */
    private String m5384e() {
        String strM5426m = C1889a.m5422a().m5426m();
        if (TextUtils.isEmpty(strM5426m)) {
            return null;
        }
        String strM5370a = C1867a.m5370a(strM5426m);
        if (C1882f.m5405a()) {
            C1882f.m5407b("", strM5370a);
        }
        return C1868b.m5372b(strM5370a);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            m5381a();
        } catch (Throwable th) {
            C1882f.m5403a("", th, new Object[0]);
        }
    }

    /* renamed from: a */
    private boolean m5382a(String str) throws Throwable {
        C1869a c1869aM5374a = C1870b.m5374a("https://mpush-api.aliyun.com/v2.0/a/audid/req/", str, true);
        if (c1869aM5374a == null) {
            return false;
        }
        return C1893e.m5443a(c1869aM5374a);
    }
}
