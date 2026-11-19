package com.huawei.hem;

/* compiled from: NamedRunnable.java */
/* renamed from: com.huawei.hem.sk */
/* loaded from: classes.dex */
public abstract class AbstractRunnableC1289sk implements Runnable {

    /* renamed from: a */
    public final String f3721a;

    public AbstractRunnableC1289sk(String str, Object... objArr) {
        this.f3721a = C1314tk.m2756k(str, objArr);
    }

    /* renamed from: a */
    public abstract void mo1376a();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f3721a);
        try {
            mo1376a();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
