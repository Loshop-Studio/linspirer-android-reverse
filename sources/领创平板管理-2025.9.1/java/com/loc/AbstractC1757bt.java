package com.loc;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: AbstractBuilder.java */
/* renamed from: com.loc.bt */
/* loaded from: classes.dex */
public abstract class AbstractC1757bt {

    /* renamed from: a */
    public C1759bv f5154a;

    /* renamed from: b */
    public ByteBuffer f5155b;

    public AbstractC1757bt(int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
        this.f5155b = byteBufferAllocate;
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        this.f5154a = new C1759bv(this.f5155b);
    }

    /* renamed from: a */
    public final AbstractC1757bt m4243a() {
        this.f5154a.m5179a(this.f5155b);
        return this;
    }
}
