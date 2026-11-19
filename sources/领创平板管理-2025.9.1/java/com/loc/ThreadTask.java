package com.loc;

/* compiled from: ThreadTask.java */
/* renamed from: com.loc.bq */
/* loaded from: classes.dex */
public abstract class ThreadTask implements Runnable {

    /* renamed from: e */
    public a f5147e;

    /* compiled from: ThreadTask.java */
    /* renamed from: com.loc.bq$a */
    public interface a {
        /* renamed from: a */
        void mo4237a(ThreadTask abstractRunnableC1754bq);
    }

    /* renamed from: a */
    public abstract void mo1093a();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (Thread.interrupted()) {
                return;
            }
            mo1093a();
            if (Thread.interrupted() || this.f5147e == null) {
                return;
            }
            this.f5147e.mo4237a(this);
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "ThreadTask", "run");
            th.printStackTrace();
        }
    }
}
