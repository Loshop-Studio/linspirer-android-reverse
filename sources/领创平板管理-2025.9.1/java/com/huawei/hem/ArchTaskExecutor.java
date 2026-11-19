package com.huawei.hem;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;

/* compiled from: ArchTaskExecutor.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.huawei.hem.a */
/* loaded from: classes.dex */
public class ArchTaskExecutor extends TaskExecutor {

    /* renamed from: c */
    public static volatile ArchTaskExecutor f2156c;

    /* renamed from: a */
    @NonNull
    public TaskExecutor f2157a;

    /* renamed from: b */
    @NonNull
    public TaskExecutor f2158b;

    public ArchTaskExecutor() {
        DefaultTaskExecutor c0837b = new DefaultTaskExecutor();
        this.f2158b = c0837b;
        this.f2157a = c0837b;
    }

    @NonNull
    /* renamed from: c */
    public static ArchTaskExecutor m1286c() {
        if (f2156c != null) {
            return f2156c;
        }
        synchronized (ArchTaskExecutor.class) {
            if (f2156c == null) {
                f2156c = new ArchTaskExecutor();
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
