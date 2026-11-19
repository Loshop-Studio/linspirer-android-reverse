package com.huawei.hem;

import java.nio.channels.WritableByteChannel;

/* compiled from: BufferedSink.java */
/* renamed from: com.huawei.hem.in */
/* loaded from: classes.dex */
public interface BufferedSink extends Sink, WritableByteChannel {
    /* renamed from: B */
    BufferedSink mo1972B(byte[] bArr);

    /* renamed from: C */
    BufferedSink mo1973C(ByteString c1091kn);

    /* renamed from: E */
    BufferedSink mo1975E();

    /* renamed from: H */
    BufferedSink mo1978H(String str);

    /* renamed from: I */
    BufferedSink mo1979I(long j);

    @Override // com.huawei.hem.InterfaceC1467zn, java.io.Flushable
    void flush();

    /* renamed from: m */
    OkioBuffer mo2007m();

    /* renamed from: o */
    BufferedSink mo2008o(byte[] bArr, int i, int i2);

    /* renamed from: q */
    long mo2009q(Source interfaceC0836ao);

    /* renamed from: r */
    BufferedSink mo2010r(long j);

    /* renamed from: s */
    BufferedSink mo2011s(int i);

    /* renamed from: t */
    BufferedSink mo2012t(int i);

    /* renamed from: z */
    BufferedSink mo2018z(int i);
}
