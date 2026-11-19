package com.huawei.hms.base.log;

import android.os.Process;
import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* compiled from: LogRecord.java */
/* renamed from: com.huawei.hms.base.log.c */
/* loaded from: classes.dex */
public class C1526c {

    /* renamed from: b */
    public String f4513b;

    /* renamed from: c */
    public String f4514c;

    /* renamed from: d */
    public int f4515d;

    /* renamed from: g */
    public String f4518g;

    /* renamed from: h */
    public int f4519h;

    /* renamed from: i */
    public int f4520i;

    /* renamed from: j */
    public int f4521j;

    /* renamed from: a */
    public final StringBuilder f4512a = new StringBuilder();

    /* renamed from: e */
    public long f4516e = 0;

    /* renamed from: f */
    public long f4517f = 0;

    public C1526c(int i, String str, int i2, String str2) {
        this.f4513b = null;
        this.f4514c = "HMS";
        this.f4515d = 0;
        this.f4521j = 0;
        this.f4521j = i;
        this.f4513b = str;
        this.f4515d = i2;
        if (str2 != null) {
            this.f4514c = str2;
        }
        m3374b();
    }

    /* renamed from: a */
    public static String m3369a(int i) {
        return i != 3 ? i != 4 ? i != 5 ? i != 6 ? String.valueOf(i) : "E" : "W" : "I" : "D";
    }

    /* renamed from: b */
    public final C1526c m3374b() {
        this.f4516e = System.currentTimeMillis();
        Thread threadCurrentThread = Thread.currentThread();
        this.f4517f = threadCurrentThread.getId();
        this.f4519h = Process.myPid();
        StackTraceElement[] stackTrace = threadCurrentThread.getStackTrace();
        int length = stackTrace.length;
        int i = this.f4521j;
        if (length > i) {
            StackTraceElement stackTraceElement = stackTrace[i];
            this.f4518g = stackTraceElement.getFileName();
            this.f4520i = stackTraceElement.getLineNumber();
        }
        return this;
    }

    /* renamed from: c */
    public String m3376c() {
        StringBuilder sb = new StringBuilder();
        m3375b(sb);
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        m3375b(sb);
        m3373a(sb);
        return sb.toString();
    }

    /* renamed from: a */
    public <T> C1526c m3370a(T t) {
        this.f4512a.append(t);
        return this;
    }

    /* renamed from: a */
    public C1526c m3371a(Throwable th) {
        m3370a((C1526c) '\n').m3370a((C1526c) Log.getStackTraceString(th));
        return this;
    }

    /* renamed from: a */
    public String m3372a() {
        StringBuilder sb = new StringBuilder();
        m3373a(sb);
        return sb.toString();
    }

    /* renamed from: a */
    public final StringBuilder m3373a(StringBuilder sb) {
        sb.append(' ');
        sb.append(this.f4512a.toString());
        return sb;
    }

    /* renamed from: b */
    public final StringBuilder m3375b(StringBuilder sb) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault());
        sb.append('[');
        sb.append(simpleDateFormat.format(Long.valueOf(this.f4516e)));
        String strM3369a = m3369a(this.f4515d);
        sb.append(' ');
        sb.append(strM3369a);
        sb.append('/');
        sb.append(this.f4514c);
        sb.append('/');
        sb.append(this.f4513b);
        sb.append(' ');
        sb.append(this.f4519h);
        sb.append(':');
        sb.append(this.f4517f);
        sb.append(' ');
        sb.append(this.f4518g);
        sb.append(':');
        sb.append(this.f4520i);
        sb.append(']');
        return sb;
    }
}
