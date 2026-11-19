package com.huawei.hem;

/* compiled from: ForwardingSource.java */
/* renamed from: com.huawei.hem.mn */
/* loaded from: classes.dex */
public abstract class AbstractC1142mn implements InterfaceC0836ao {

    /* renamed from: a */
    public final InterfaceC0836ao f3283a;

    public AbstractC1142mn(InterfaceC0836ao interfaceC0836ao) {
        if (interfaceC0836ao == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f3283a = interfaceC0836ao;
    }

    @Override // com.huawei.hem.InterfaceC0836ao
    /* renamed from: n */
    public C0862bo mo1381n() {
        return this.f3283a.mo1381n();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f3283a.toString() + ")";
    }
}
