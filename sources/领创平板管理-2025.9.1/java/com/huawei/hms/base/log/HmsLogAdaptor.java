package com.huawei.hms.base.log;

import android.content.Context;
import android.util.Log;

/* compiled from: LogAdaptor.java */
/* renamed from: com.huawei.hms.base.log.a */
/* loaded from: classes.dex */
public class HmsLogAdaptor {

    /* renamed from: c */
    public static final LogNode f4509c = new LogCatNode();

    /* renamed from: a */
    public int f4510a = 4;

    /* renamed from: b */
    public String f4511b;

    /* renamed from: a */
    public void m3363a(Context context, int i, String str) {
        this.f4510a = i;
        this.f4511b = str;
        f4509c.mo3367a(context, "HMSCore");
    }

    /* renamed from: b */
    public void m3366b(int i, String str, String str2, Throwable th) {
        if (m3365a(i)) {
            LogRecord c1526cM3361a = m3361a(i, str, str2, th);
            String str3 = c1526cM3361a.m3376c() + c1526cM3361a.m3372a();
            f4509c.mo3368a(str3, i, str, str2 + '\n' + Log.getStackTraceString(th));
        }
    }

    /* renamed from: a */
    public boolean m3365a(int i) {
        return i >= this.f4510a;
    }

    /* renamed from: a */
    public void m3362a(int i, String str, String str2) {
        if (m3365a(i)) {
            LogRecord c1526cM3361a = m3361a(i, str, str2, null);
            f4509c.mo3368a(c1526cM3361a.m3376c() + c1526cM3361a.m3372a(), i, str, str2);
        }
    }

    /* renamed from: a */
    public void m3364a(String str, String str2) {
        LogRecord c1526cM3361a = m3361a(4, str, str2, null);
        f4509c.mo3368a(c1526cM3361a.m3376c() + '\n' + c1526cM3361a.m3372a(), 4, str, str2);
    }

    /* renamed from: a */
    public final LogRecord m3361a(int i, String str, String str2, Throwable th) {
        LogRecord c1526c = new LogRecord(8, this.f4511b, i, str);
        c1526c.m3370a((LogRecord) str2);
        c1526c.m3371a(th);
        return c1526c;
    }
}
