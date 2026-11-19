package com.huawei.hem;

import com.huawei.hem.RealCall;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.ExecutorService;
import javax.annotation.Nullable;

/* compiled from: Dispatcher.java */
/* renamed from: com.huawei.hem.sj */
/* loaded from: classes.dex */
public final class Dispatcher {

    /* renamed from: c */
    @Nullable
    public ExecutorService f3717c;

    /* renamed from: a */
    public int f3715a = 64;

    /* renamed from: b */
    public int f3716b = 5;

    /* renamed from: d */
    public final Deque<RealCall.a> f3718d = new ArrayDeque();

    /* renamed from: e */
    public final Deque<RealCall.a> f3719e = new ArrayDeque();

    /* renamed from: f */
    public final Deque<RealCall> f3720f = new ArrayDeque();

    /* renamed from: a */
    public void m2697a(RealCall.a aVar) {
        aVar.f2679c.decrementAndGet();
        Deque<RealCall.a> deque = this.f3719e;
        synchronized (this) {
            if (!deque.remove(aVar)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        m2698b();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005c  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2698b() {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1288sj.m2698b():boolean");
    }
}
