package com.huawei.hms.availableupdate;

import android.os.Handler;
import android.os.Looper;
import com.huawei.hms.utils.Checker;
import java.io.File;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: ThreadWrapper.java */
/* renamed from: com.huawei.hms.availableupdate.c */
/* loaded from: classes.dex */
public class C1494c implements InterfaceC1498e {

    /* renamed from: b */
    public static final Executor f4440b = Executors.newSingleThreadExecutor();

    /* renamed from: a */
    public final InterfaceC1498e f4441a;

    /* compiled from: ThreadWrapper.java */
    /* renamed from: com.huawei.hms.availableupdate.c$a */
    public static class a implements InterfaceC1500f {

        /* renamed from: a */
        public final /* synthetic */ InterfaceC1500f f4442a;

        /* compiled from: ThreadWrapper.java */
        /* renamed from: com.huawei.hms.availableupdate.c$a$a, reason: collision with other inner class name */
        public class RunnableC2083a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ int f4443a;

            /* renamed from: b */
            public final /* synthetic */ C1502g f4444b;

            public RunnableC2083a(int i, C1502g c1502g) {
                this.f4443a = i;
                this.f4444b = c1502g;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f4442a.mo3279a(this.f4443a, this.f4444b);
            }
        }

        /* compiled from: ThreadWrapper.java */
        /* renamed from: com.huawei.hms.availableupdate.c$a$b */
        public class b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ int f4446a;

            /* renamed from: b */
            public final /* synthetic */ int f4447b;

            /* renamed from: c */
            public final /* synthetic */ int f4448c;

            /* renamed from: d */
            public final /* synthetic */ File f4449d;

            public b(int i, int i2, int i3, File file) {
                this.f4446a = i;
                this.f4447b = i2;
                this.f4448c = i3;
                this.f4449d = file;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f4442a.mo3278a(this.f4446a, this.f4447b, this.f4448c, this.f4449d);
            }
        }

        public a(InterfaceC1500f interfaceC1500f) {
            this.f4442a = interfaceC1500f;
        }

        @Override // com.huawei.hms.availableupdate.InterfaceC1500f
        /* renamed from: a */
        public void mo3279a(int i, C1502g c1502g) {
            new Handler(Looper.getMainLooper()).post(new RunnableC2083a(i, c1502g));
        }

        @Override // com.huawei.hms.availableupdate.InterfaceC1500f
        /* renamed from: a */
        public void mo3278a(int i, int i2, int i3, File file) {
            new Handler(Looper.getMainLooper()).post(new b(i, i2, i3, file));
        }
    }

    /* compiled from: ThreadWrapper.java */
    /* renamed from: com.huawei.hms.availableupdate.c$b */
    public class b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ InterfaceC1500f f4451a;

        /* renamed from: b */
        public final /* synthetic */ C1502g f4452b;

        public b(InterfaceC1500f interfaceC1500f, C1502g c1502g) {
            this.f4451a = interfaceC1500f;
            this.f4452b = c1502g;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1494c.this.f4441a.mo3277a(C1494c.m3275b(this.f4451a), this.f4452b);
        }
    }

    public C1494c(InterfaceC1498e interfaceC1498e) {
        Checker.checkNonNull(interfaceC1498e, "update must not be null.");
        this.f4441a = interfaceC1498e;
    }

    /* renamed from: b */
    public static InterfaceC1500f m3275b(InterfaceC1500f interfaceC1500f) {
        return new a(interfaceC1500f);
    }

    @Override // com.huawei.hms.availableupdate.InterfaceC1498e
    /* renamed from: a */
    public void mo3276a() {
        this.f4441a.mo3276a();
    }

    @Override // com.huawei.hms.availableupdate.InterfaceC1498e
    /* renamed from: a */
    public void mo3277a(InterfaceC1500f interfaceC1500f, C1502g c1502g) {
        f4440b.execute(new b(interfaceC1500f, c1502g));
    }
}
