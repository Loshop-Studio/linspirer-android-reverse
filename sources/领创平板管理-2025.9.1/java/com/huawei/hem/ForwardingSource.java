package com.huawei.hem;

/* compiled from: ForwardingSource.java */
/* renamed from: com.huawei.hem.mn */
/* loaded from: classes.dex */
public abstract class ForwardingSource implements Source {

    /* renamed from: a */
    public final Source f3283a;

    public ForwardingSource(Source interfaceC0836ao) {
        if (interfaceC0836ao == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f3283a = interfaceC0836ao;
    }

    @Override // com.huawei.hem.InterfaceC0836ao
    /* renamed from: n */
    public Timeout mo1381n() {
        return this.f3283a.mo1381n();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f3283a.toString() + ")";
    }
}
