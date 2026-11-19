package com.huawei.hem;

import android.util.Log;

/* compiled from: FileDownloadLog.java */
/* renamed from: com.huawei.hem.fh */
/* loaded from: classes.dex */
public class C0959fh {
    /* renamed from: a */
    public static void m1817a(Object obj, String str, Object... objArr) {
        m1820d(3, obj, null, str, objArr);
    }

    /* renamed from: b */
    public static void m1818b(Object obj, String str, Object... objArr) {
        m1820d(6, obj, null, str, objArr);
    }

    /* renamed from: c */
    public static void m1819c(Object obj, String str, Object... objArr) {
        m1820d(4, obj, null, str, objArr);
    }

    /* renamed from: d */
    public static void m1820d(int i, Object obj, Throwable th, String str, Object... objArr) {
        if (i >= 5) {
            StringBuilder sbM1765j = C0948f6.m1765j("FileDownloader.");
            sbM1765j.append((obj instanceof Class ? (Class) obj : obj.getClass()).getSimpleName());
            Log.println(i, sbM1765j.toString(), C1010hh.m1955e(str, objArr));
            if (th != null) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: e */
    public static void m1821e(Object obj, String str, Object... objArr) {
        m1820d(5, obj, null, str, objArr);
    }
}
