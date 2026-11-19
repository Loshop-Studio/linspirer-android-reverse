package com.huawei.hem;

/* compiled from: ForwardingSink.java */
/* renamed from: com.huawei.hem.ln */
/* loaded from: classes.dex */
public abstract class AbstractC1117ln implements InterfaceC1467zn {

    /* renamed from: a */
    public final InterfaceC1467zn f3225a;

    public AbstractC1117ln(InterfaceC1467zn interfaceC1467zn) {
        if (interfaceC1467zn == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f3225a = interfaceC1467zn;
    }

    @Override // com.huawei.hem.InterfaceC1467zn, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3225a.close();
    }

    @Override // com.huawei.hem.InterfaceC1467zn, java.io.Flushable
    public void flush() {
        this.f3225a.flush();
    }

    @Override // com.huawei.hem.InterfaceC1467zn
    /* renamed from: n */
    public C0862bo mo1621n() {
        return this.f3225a.mo1621n();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f3225a.toString() + ")";
    }
}
