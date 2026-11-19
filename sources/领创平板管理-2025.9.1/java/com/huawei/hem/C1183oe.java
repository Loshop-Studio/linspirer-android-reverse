package com.huawei.hem;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.huawei.hem.C1184of;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: FileDownloadMessageStation.java */
/* renamed from: com.huawei.hem.oe */
/* loaded from: classes.dex */
public class C1183oe {

    /* renamed from: e */
    public static final Executor f3385e = C1184of.b.m2443f(5, "BlockCompleted");

    /* renamed from: f */
    public static int f3386f = 10;

    /* renamed from: g */
    public static int f3387g = 5;

    /* renamed from: c */
    public final Object f3390c = new Object();

    /* renamed from: d */
    public final ArrayList<InterfaceC1358ve> f3391d = new ArrayList<>();

    /* renamed from: a */
    public final Handler f3388a = new Handler(Looper.getMainLooper(), new c(null));

    /* renamed from: b */
    public final LinkedBlockingQueue<InterfaceC1358ve> f3389b = new LinkedBlockingQueue<>();

    /* compiled from: FileDownloadMessageStation.java */
    /* renamed from: com.huawei.hem.oe$a */
    public static class a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ InterfaceC1358ve f3392a;

        public a(InterfaceC1358ve interfaceC1358ve) {
            this.f3392a = interfaceC1358ve;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3392a.mo2473k();
        }
    }

    /* compiled from: FileDownloadMessageStation.java */
    /* renamed from: com.huawei.hem.oe$b */
    public static final class b {

        /* renamed from: a */
        public static final C1183oe f3393a = new C1183oe(null);
    }

    /* compiled from: FileDownloadMessageStation.java */
    /* renamed from: com.huawei.hem.oe$c */
    public static class c implements Handler.Callback {
        public c(a aVar) {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                ((InterfaceC1358ve) message.obj).mo2473k();
            } else if (i == 2) {
                ArrayList arrayList = (ArrayList) message.obj;
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    InterfaceC1358ve interfaceC1358ve = (InterfaceC1358ve) it.next();
                    if (!C1183oe.m2435b(interfaceC1358ve)) {
                        interfaceC1358ve.mo2473k();
                    }
                }
                arrayList.clear();
                b.f3393a.m2437d();
            }
            return true;
        }
    }

    public C1183oe(a aVar) {
    }

    /* renamed from: a */
    public static C1183oe m2434a() {
        return b.f3393a;
    }

    /* renamed from: b */
    public static boolean m2435b(InterfaceC1358ve interfaceC1358ve) {
        if (!interfaceC1358ve.mo2465c()) {
            return false;
        }
        f3385e.execute(new a(interfaceC1358ve));
        return true;
    }

    /* renamed from: c */
    public static boolean m2436c() {
        return f3386f > 0;
    }

    /* renamed from: d */
    public final void m2437d() {
        synchronized (this.f3390c) {
            if (this.f3391d.isEmpty()) {
                if (this.f3389b.isEmpty()) {
                    return;
                }
                int i = 0;
                if (m2436c()) {
                    int i2 = f3386f;
                    int iMin = Math.min(this.f3389b.size(), f3387g);
                    while (i < iMin) {
                        this.f3391d.add(this.f3389b.remove());
                        i++;
                    }
                    i = i2;
                } else {
                    this.f3389b.drainTo(this.f3391d);
                }
                Handler handler = this.f3388a;
                handler.sendMessageDelayed(handler.obtainMessage(2, this.f3391d), i);
            }
        }
    }
}
