package com.loc;

import android.content.Context;
import android.os.Looper;
import com.huawei.hem.AMapCoreException;
import com.huawei.hem.SDKInfo;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: SDKLogHandler.java */
/* renamed from: com.loc.w */
/* loaded from: classes.dex */
public final class SDKLogHandler extends BasicLogHandler implements Thread.UncaughtExceptionHandler {

    /* renamed from: e */
    public static ExecutorService f5957e;

    /* renamed from: g */
    public static WeakReference<Context> f5959g;

    /* renamed from: d */
    public Context f5961d;

    /* renamed from: f */
    public static Set<Integer> f5958f = Collections.synchronizedSet(new HashSet());

    /* renamed from: h */
    public static final ThreadFactory f5960h = new ThreadFactory() { // from class: com.loc.w.2

        /* renamed from: a */
        public final AtomicInteger f5965a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable, "pama#" + this.f5965a.getAndIncrement()) { // from class: com.loc.w.2.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    try {
                        super.run();
                    } catch (Throwable unused) {
                    }
                }
            };
        }
    };

    public SDKLogHandler(Context context) {
        this.f5961d = context;
        try {
            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            this.f5939b = defaultUncaughtExceptionHandler;
            if (defaultUncaughtExceptionHandler == null) {
                Thread.setDefaultUncaughtExceptionHandler(this);
                this.f5940c = true;
                return;
            }
            String string = defaultUncaughtExceptionHandler.toString();
            if (!string.startsWith("com.amap.apis.utils.core.dynamiccore") && (string.indexOf("com.amap.api") != -1 || string.indexOf("com.loc") != -1)) {
                this.f5940c = false;
            } else {
                Thread.setDefaultUncaughtExceptionHandler(this);
                this.f5940c = true;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    public static synchronized SDKLogHandler m5327a(Context context, SDKInfo c1069k1) {
        try {
            if (c1069k1 == null) {
                throw new AMapCoreException("sdk info is null");
            }
            if (c1069k1.m2156a() == null || "".equals(c1069k1.m2156a())) {
                throw new AMapCoreException("sdk name is invalid");
            }
            try {
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (!f5958f.add(Integer.valueOf(c1069k1.hashCode()))) {
                return (SDKLogHandler) BasicLogHandler.f5938a;
            }
            if (BasicLogHandler.f5938a == null) {
                BasicLogHandler.f5938a = new SDKLogHandler(context);
            } else {
                BasicLogHandler.f5938a.f5940c = false;
            }
            BasicLogHandler.f5938a.mo5315a(c1069k1, BasicLogHandler.f5938a.f5940c);
            return (SDKLogHandler) BasicLogHandler.f5938a;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* renamed from: a */
    public static void m5328a(SDKInfo c1069k1, String str, AMapCoreException c0891d1) {
        if (c0891d1 != null) {
            m5330a(c1069k1, str, c0891d1.m1557c(), c0891d1.m1558d(), c0891d1.m1559e(), c0891d1.m1556b());
        }
    }

    /* renamed from: a */
    public static void m5329a(SDKInfo c1069k1, String str, String str2, String str3, String str4) {
        m5330a(c1069k1, str, str2, str3, "", str4);
    }

    /* renamed from: a */
    public static void m5330a(SDKInfo c1069k1, String str, String str2, String str3, String str4, String str5) {
        try {
            if (BasicLogHandler.f5938a != null) {
                BasicLogHandler.f5938a.mo5314a(c1069k1, "path:" + str + ",type:" + str2 + ",gsid:" + str3 + ",csid:" + str4 + ",code:" + str5, "networkError");
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: b */
    public static synchronized void m5331b() {
        try {
            if (f5957e != null) {
                f5957e.shutdown();
            }
            AMapDiskLruCache.m4001a();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            if (BasicLogHandler.f5938a != null && Thread.getDefaultUncaughtExceptionHandler() == BasicLogHandler.f5938a && BasicLogHandler.f5938a.f5939b != null) {
                Thread.setDefaultUncaughtExceptionHandler(BasicLogHandler.f5938a.f5939b);
            }
            BasicLogHandler.f5938a = null;
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m5332b(SDKInfo c1069k1, String str, String str2) {
        try {
            if (BasicLogHandler.f5938a != null) {
                BasicLogHandler.f5938a.mo5314a(c1069k1, str, str2);
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: b */
    public static void m5333b(Throwable th, String str, String str2) {
        try {
            if (BasicLogHandler.f5938a != null) {
                BasicLogHandler.f5938a.mo5316a(th, 1, str, str2);
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: c */
    public static void m5334c() {
        WeakReference<Context> weakReference = f5959g;
        if (weakReference != null && weakReference.get() != null) {
            AMapLog.m5319a(f5959g.get());
            return;
        }
        BasicLogHandler c1859t = BasicLogHandler.f5938a;
        if (c1859t != null) {
            c1859t.mo5313a();
        }
    }

    @Override // com.loc.C1859t
    /* renamed from: a */
    public final void mo5313a() {
        AMapLog.m5319a(this.f5961d);
    }

    @Override // com.loc.C1859t
    /* renamed from: a */
    public final void mo5314a(SDKInfo c1069k1, String str, String str2) {
        ErrorLogManager.m5342a(c1069k1, this.f5961d, str2, str);
    }

    @Override // com.loc.C1859t
    /* renamed from: a */
    public final void mo5315a(final SDKInfo c1069k1, final boolean z) {
        try {
            ThreadPool.m4236a().m4242b(new ThreadTask() { // from class: com.loc.w.1
                @Override // com.loc.AbstractRunnableC1754bq
                /* renamed from: a */
                public final void mo1093a() {
                    try {
                        synchronized (Looper.getMainLooper()) {
                            AMapLog.m5321a(c1069k1);
                        }
                        if (z) {
                            ErrorLogManager.m5338a(SDKLogHandler.this.f5961d);
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.loc.C1859t
    /* renamed from: a */
    public final void mo5316a(Throwable th, int i, String str, String str2) {
        ErrorLogManager.m5341a(this.f5961d, th, i, str, str2);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        if (th == null) {
            return;
        }
        mo5316a(th, 0, null, null);
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f5939b;
        if (uncaughtExceptionHandler != null) {
            try {
                Thread.setDefaultUncaughtExceptionHandler(uncaughtExceptionHandler);
            } catch (Throwable unused) {
            }
            this.f5939b.uncaughtException(thread, th);
        }
    }
}
