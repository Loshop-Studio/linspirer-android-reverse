package com.loc;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: AbstractBuilder.java */
/* renamed from: com.loc.bt */
/* loaded from: classes.dex */
public abstract class AbstractBuilder {

    /* renamed from: a */
    public RobustFlatBufferBuilder f5154a;

    /* renamed from: b */
    public ByteBuffer f5155b;

    public AbstractBuilder(int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
        this.f5155b = byteBufferAllocate;
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        this.f5154a = new RobustFlatBufferBuilder(this.f5155b);
    }

    /* renamed from: a */
    public final AbstractBuilder m4243a() {
        this.f5154a.m5179a(this.f5155b);
        return this;
    }
}
