package com.huawei.hem;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;

/* compiled from: ArchTaskExecutor.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.huawei.hem.a */
/* loaded from: classes.dex */
public class C0811a extends AbstractC0863c {

    /* renamed from: c */
    public static volatile C0811a f2156c;

    /* renamed from: a */
    @NonNull
    public AbstractC0863c f2157a;

    /* renamed from: b */
    @NonNull
    public AbstractC0863c f2158b;

    public C0811a() {
        C0837b c0837b = new C0837b();
        this.f2158b = c0837b;
        this.f2157a = c0837b;
    }

    @NonNull
    /* renamed from: c */
    public static C0811a m1286c() {
        if (f2156c != null) {
            return f2156c;
        }
        synchronized (C0811a.class) {
            if (f2156c == null) {
                f2156c = new C0811a();
            }
        }
        return f2156c;
    }

    @Override // com.huawei.hem.AbstractC0863c
    /* renamed from: a */
    public boolean mo1287a() {
        return this.f2157a.mo1287a();
    }

    @Override // com.huawei.hem.AbstractC0863c
    /* renamed from: b */
    public void mo1288b(Runnable runnable) {
        this.f2157a.mo1288b(runnable);
    }
}
