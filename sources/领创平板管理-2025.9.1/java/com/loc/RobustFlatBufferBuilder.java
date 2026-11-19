package com.loc;

import java.nio.ByteBuffer;

/* compiled from: RobustFlatBufferBuilder.java */
/* renamed from: com.loc.bv */
/* loaded from: classes.dex */
public final class RobustFlatBufferBuilder extends FlatBufferBuilder {
    public RobustFlatBufferBuilder(ByteBuffer byteBuffer) {
        super(byteBuffer);
    }

    @Override // com.loc.C1843ey
    /* renamed from: a */
    public final int mo4250a(CharSequence charSequence) {
        try {
            return super.mo4250a(charSequence);
        } catch (Throwable th) {
            ALLog.m4567a(th);
            return super.mo4250a("");
        }
    }
}
