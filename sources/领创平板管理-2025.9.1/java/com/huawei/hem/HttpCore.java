package com.huawei.hem;

import android.os.Handler;
import android.os.Looper;
import com.huawei.hem.OkHttpClient;
import java.util.concurrent.TimeUnit;

/* compiled from: HttpCore.java */
/* renamed from: com.huawei.hem.rb */
/* loaded from: classes.dex */
public class HttpCore {

    /* renamed from: a */
    public static Handler f3618a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public static OkHttpClient f3619b;

    public HttpCore() {
        if (f3619b == null) {
            synchronized (HttpCore.class) {
                if (f3619b == null) {
                    f3619b = new OkHttpClient(new OkHttpClient.b());
                }
            }
        }
        OkHttpClient.b bVar = new OkHttpClient.b();
        bVar.f2462t = C1314tk.m2747b("timeout", 30L, TimeUnit.SECONDS);
        bVar.f2463u = C1314tk.m2747b("timeout", 30L, TimeUnit.SECONDS);
        bVar.f2464v = C1314tk.m2747b("timeout", 30L, TimeUnit.SECONDS);
        bVar.f2459q = true;
        f3619b = new OkHttpClient(bVar);
    }
}
