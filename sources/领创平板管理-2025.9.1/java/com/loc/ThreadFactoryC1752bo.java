package com.loc;

import android.text.TextUtils;
import com.huawei.hem.C0948f6;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: BasicThreadFactory.java */
/* renamed from: com.loc.bo */
/* loaded from: classes.dex */
public final class ThreadFactoryC1752bo implements ThreadFactory {

    /* renamed from: k */
    public static final int f5122k;

    /* renamed from: l */
    public static final int f5123l;

    /* renamed from: m */
    public static final int f5124m;

    /* renamed from: a */
    public final AtomicLong f5125a;

    /* renamed from: b */
    public final ThreadFactory f5126b;

    /* renamed from: c */
    public final Thread.UncaughtExceptionHandler f5127c;

    /* renamed from: d */
    public final String f5128d;

    /* renamed from: e */
    public final Integer f5129e;

    /* renamed from: f */
    public final Boolean f5130f;

    /* renamed from: g */
    public final int f5131g;

    /* renamed from: h */
    public final int f5132h;

    /* renamed from: i */
    public final BlockingQueue<Runnable> f5133i;

    /* renamed from: j */
    public final int f5134j;

    /* compiled from: BasicThreadFactory.java */
    /* renamed from: com.loc.bo$a */
    public static class a {

        /* renamed from: a */
        public ThreadFactory f5137a;

        /* renamed from: b */
        public Thread.UncaughtExceptionHandler f5138b;

        /* renamed from: c */
        public String f5139c;

        /* renamed from: d */
        public Integer f5140d;

        /* renamed from: e */
        public Boolean f5141e;

        /* renamed from: f */
        public int f5142f = ThreadFactoryC1752bo.f5123l;

        /* renamed from: g */
        public int f5143g = ThreadFactoryC1752bo.f5124m;

        /* renamed from: h */
        public int f5144h = 30;

        /* renamed from: i */
        public BlockingQueue<Runnable> f5145i;

        /* renamed from: b */
        private void m4227b() {
            this.f5137a = null;
            this.f5138b = null;
            this.f5139c = null;
            this.f5140d = null;
            this.f5141e = null;
        }

        /* renamed from: a */
        public final a m4234a(String str) {
            this.f5139c = str;
            return this;
        }

        /* renamed from: a */
        public final ThreadFactoryC1752bo m4235a() {
            ThreadFactoryC1752bo threadFactoryC1752bo = new ThreadFactoryC1752bo(this, (byte) 0);
            m4227b();
            return threadFactoryC1752bo;
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f5122k = iAvailableProcessors;
        f5123l = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        f5124m = (f5122k * 2) + 1;
    }

    public ThreadFactoryC1752bo(a aVar) {
        this.f5126b = aVar.f5137a == null ? Executors.defaultThreadFactory() : aVar.f5137a;
        int i = aVar.f5142f;
        this.f5131g = i;
        int i2 = f5124m;
        this.f5132h = i2;
        if (i2 < i) {
            throw new NullPointerException("maxPoolSize must > corePoolSize!");
        }
        this.f5134j = aVar.f5144h;
        this.f5133i = aVar.f5145i == null ? new LinkedBlockingQueue<>(256) : aVar.f5145i;
        this.f5128d = TextUtils.isEmpty(aVar.f5139c) ? "amap-threadpool" : aVar.f5139c;
        this.f5129e = aVar.f5140d;
        this.f5130f = aVar.f5141e;
        this.f5127c = aVar.f5138b;
        this.f5125a = new AtomicLong();
    }

    public /* synthetic */ ThreadFactoryC1752bo(a aVar, byte b) {
        this(aVar);
    }

    /* renamed from: g */
    private ThreadFactory m4216g() {
        return this.f5126b;
    }

    /* renamed from: h */
    private String m4217h() {
        return this.f5128d;
    }

    /* renamed from: i */
    private Boolean m4218i() {
        return this.f5130f;
    }

    /* renamed from: j */
    private Integer m4219j() {
        return this.f5129e;
    }

    /* renamed from: k */
    private Thread.UncaughtExceptionHandler m4220k() {
        return this.f5127c;
    }

    /* renamed from: a */
    public final int m4221a() {
        return this.f5131g;
    }

    /* renamed from: b */
    public final int m4222b() {
        return this.f5132h;
    }

    /* renamed from: c */
    public final BlockingQueue<Runnable> m4223c() {
        return this.f5133i;
    }

    /* renamed from: d */
    public final int m4224d() {
        return this.f5134j;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(final Runnable runnable) {
        new Runnable() { // from class: com.loc.bo.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    runnable.run();
                } catch (Throwable unused) {
                }
            }
        };
        Thread threadNewThread = m4216g().newThread(runnable);
        if (m4217h() != null) {
            threadNewThread.setName(String.format(C0948f6.m1762g(new StringBuilder(), m4217h(), "-%d"), Long.valueOf(this.f5125a.incrementAndGet())));
        }
        if (m4220k() != null) {
            threadNewThread.setUncaughtExceptionHandler(m4220k());
        }
        if (m4219j() != null) {
            threadNewThread.setPriority(m4219j().intValue());
        }
        if (m4218i() != null) {
            threadNewThread.setDaemon(m4218i().booleanValue());
        }
        return threadNewThread;
    }
}
