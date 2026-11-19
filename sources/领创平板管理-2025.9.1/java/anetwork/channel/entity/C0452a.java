package anetwork.channel.entity;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.entity.a */
/* loaded from: classes.dex */
public class C0452a {

    /* renamed from: a */
    public static final ExecutorService[] f717a = new ExecutorService[2];

    /* renamed from: b */
    public static AtomicInteger f718b = new AtomicInteger(0);

    static {
        for (int i = 0; i < 2; i++) {
            f717a[i] = Executors.newSingleThreadExecutor(new ThreadFactoryC0453b());
        }
    }

    /* renamed from: a */
    public static void m414a(int i, Runnable runnable) {
        f717a[Math.abs(i % 2)].submit(runnable);
    }
}
