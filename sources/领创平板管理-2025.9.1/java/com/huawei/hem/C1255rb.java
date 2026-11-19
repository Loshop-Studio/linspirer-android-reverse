package com.huawei.hem;

import android.os.Handler;
import android.os.Looper;
import com.huawei.hem.C0910dk;
import java.util.concurrent.TimeUnit;

/* compiled from: HttpCore.java */
/* renamed from: com.huawei.hem.rb */
/* loaded from: classes.dex */
public class C1255rb {

    /* renamed from: a */
    public static Handler f3618a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public static C0910dk f3619b;

    public C1255rb() {
        if (f3619b == null) {
            synchronized (C1255rb.class) {
                if (f3619b == null) {
                    f3619b = new C0910dk(new C0910dk.b());
                }
            }
        }
        C0910dk.b bVar = new C0910dk.b();
        bVar.f2462t = C1314tk.m2747b("timeout", 30L, TimeUnit.SECONDS);
        bVar.f2463u = C1314tk.m2747b("timeout", 30L, TimeUnit.SECONDS);
        bVar.f2464v = C1314tk.m2747b("timeout", 30L, TimeUnit.SECONDS);
        bVar.f2459q = true;
        f3619b = new C0910dk(bVar);
    }
}
