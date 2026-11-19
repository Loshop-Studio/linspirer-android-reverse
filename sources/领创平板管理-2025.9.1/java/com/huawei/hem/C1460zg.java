package com.huawei.hem;

/* compiled from: DownloadServiceNotConnectedHelper.java */
/* renamed from: com.huawei.hem.zg */
/* loaded from: classes.dex */
public class C1460zg {
    /* renamed from: a */
    public static void m3147a(String str, Object... objArr) {
        C0959fh.m1821e(C1460zg.class, str + ", but the download service isn't connected yet.\nYou can use FileDownloader#isServiceConnected() to check whether the service has been connected, \nbesides you can use following functions easier to control your code invoke after the service has been connected: \n1. FileDownloader#bindService(Runnable)\n2. FileDownloader#insureServiceBind()\n3. FileDownloader#insureServiceBindAsync()", objArr);
    }

    /* renamed from: b */
    public static boolean m3148b(String str, String str2, boolean z) {
        m3147a("request start the task([%s], [%s], [%B]) in the download service", str, str2, Boolean.valueOf(z));
        return false;
    }
}
