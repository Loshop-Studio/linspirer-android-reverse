package com.loc;

import com.huawei.hem.SDKInfo;
import java.lang.Thread;

/* compiled from: BasicLogHandler.java */
/* renamed from: com.loc.t */
/* loaded from: classes.dex */
public class BasicLogHandler {

    /* renamed from: a */
    public static BasicLogHandler f5938a;

    /* renamed from: b */
    public Thread.UncaughtExceptionHandler f5939b;

    /* renamed from: c */
    public boolean f5940c = true;

    /* renamed from: a */
    public static void m5312a(Throwable th, String str, String str2) {
        BasicLogHandler c1859t = f5938a;
        if (c1859t != null) {
            c1859t.mo5316a(th, 1, str, str2);
        }
    }

    /* renamed from: a */
    public void mo5313a() {
    }

    /* renamed from: a */
    public void mo5314a(SDKInfo c1069k1, String str, String str2) {
    }

    /* renamed from: a */
    public void mo5315a(SDKInfo c1069k1, boolean z) {
    }

    /* renamed from: a */
    public void mo5316a(Throwable th, int i, String str, String str2) {
    }
}
