package com.huawei.hem;

import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* compiled from: BufferedSource.java */
/* renamed from: com.huawei.hem.jn */
/* loaded from: classes.dex */
public interface BufferedSource extends Source, ReadableByteChannel {
    /* renamed from: A */
    byte[] mo1971A(long j);

    /* renamed from: D */
    short mo1974D();

    /* renamed from: F */
    String mo1976F(long j);

    /* renamed from: G */
    void mo1977G(long j);

    /* renamed from: J */
    long mo1980J(byte b);

    /* renamed from: K */
    long mo1981K();

    /* renamed from: L */
    String mo1982L(Charset charset);

    /* renamed from: M */
    int mo1983M(OkioOptions c1317tn);

    /* renamed from: b */
    ByteString mo1997b(long j);

    @Deprecated
    /* renamed from: m */
    OkioBuffer mo2007m();

    byte readByte();

    int readInt();

    short readShort();

    void skip(long j);

    /* renamed from: u */
    String mo2013u();

    /* renamed from: v */
    byte[] mo2014v();

    /* renamed from: w */
    int mo2015w();

    /* renamed from: x */
    OkioBuffer mo2016x();

    /* renamed from: y */
    boolean mo2017y();
}
