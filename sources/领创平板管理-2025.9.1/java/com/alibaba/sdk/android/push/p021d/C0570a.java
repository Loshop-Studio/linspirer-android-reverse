package com.alibaba.sdk.android.push.p021d;

import android.app.Application;
import android.content.Context;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;

/* renamed from: com.alibaba.sdk.android.push.d.a */
/* loaded from: classes.dex */
public class C0570a {

    /* renamed from: a */
    public static AmsLogger f1197a = AmsLogger.getLogger("MPS:ReportManager");

    /* renamed from: b */
    public static C0570a f1198b = null;

    /* renamed from: c */
    public long f1199c;

    /* renamed from: d */
    public Context f1200d;

    /* renamed from: e */
    public boolean f1201e = true;

    public C0570a(Context context) {
        this.f1199c = 0L;
        if (context == null || !(context.getApplicationContext() instanceof Application)) {
            return;
        }
        if (this.f1199c == 0) {
            this.f1199c = System.currentTimeMillis();
        }
        this.f1200d = context;
    }

    /* renamed from: a */
    public static C0570a m778a() {
        return f1198b;
    }

    /* renamed from: a */
    public static C0570a m779a(Context context) {
        if (f1198b == null) {
            synchronized (C0570a.class) {
                if (f1198b == null) {
                    f1198b = new C0570a(context);
                }
            }
        }
        return f1198b;
    }

    /* renamed from: a */
    public void m780a(String str) {
    }

    /* renamed from: a */
    public void m781a(String str, String str2, int i) {
        if (this.f1201e) {
            return;
        }
        f1197a.m501e("report switch turned off");
    }

    /* renamed from: a */
    public void m782a(String str, String str2, long j) {
        if (this.f1201e) {
            return;
        }
        f1197a.m501e("report switch turned off");
    }

    /* renamed from: a */
    public void m783a(String str, String str2, String str3) {
        if (this.f1201e) {
            return;
        }
        f1197a.m501e("report switch turned off");
    }

    /* renamed from: a */
    public void m784a(String str, String str2, String str3, String str4) {
        if (this.f1201e) {
            return;
        }
        f1197a.m501e("report switch turned off");
    }

    /* renamed from: a */
    public void m785a(boolean z) {
        synchronized (C0570a.class) {
            this.f1201e = z;
        }
    }
}
