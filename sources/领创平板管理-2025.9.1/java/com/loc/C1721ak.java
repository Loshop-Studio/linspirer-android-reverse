package com.loc;

import com.alibaba.sdk.android.tbrest.utils.Base64;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/* compiled from: StrictLineReader.java */
/* renamed from: com.loc.ak */
/* loaded from: classes.dex */
public final class C1721ak implements Closeable {

    /* renamed from: a */
    public static final Charset f4924a = Charset.forName(Base64.PREFERRED_ENCODING);

    /* renamed from: b */
    public final InputStream f4925b;

    /* renamed from: c */
    public final Charset f4926c;

    /* renamed from: d */
    public byte[] f4927d;

    /* renamed from: e */
    public int f4928e;

    /* renamed from: f */
    public int f4929f;

    public C1721ak(InputStream inputStream, Charset charset) {
        this(inputStream, charset, (byte) 0);
    }

    public C1721ak(InputStream inputStream, Charset charset, byte b) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (!charset.equals(f4924a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f4925b = inputStream;
        this.f4926c = charset;
        this.f4927d = new byte[8192];
    }

    /* renamed from: b */
    private void m4053b() throws IOException {
        InputStream inputStream = this.f4925b;
        byte[] bArr = this.f4927d;
        int i = inputStream.read(bArr, 0, bArr.length);
        if (i == -1) {
            throw new EOFException();
        }
        this.f4928e = 0;
        this.f4929f = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m4054a() {
        /*
            r7 = this;
            java.io.InputStream r0 = r7.f4925b
            monitor-enter(r0)
            byte[] r1 = r7.f4927d     // Catch: java.lang.Throwable -> L97
            if (r1 == 0) goto L8f
            int r1 = r7.f4928e     // Catch: java.lang.Throwable -> L97
            int r2 = r7.f4929f     // Catch: java.lang.Throwable -> L97
            if (r1 < r2) goto L10
            r7.m4053b()     // Catch: java.lang.Throwable -> L97
        L10:
            int r1 = r7.f4928e     // Catch: java.lang.Throwable -> L97
        L12:
            int r2 = r7.f4929f     // Catch: java.lang.Throwable -> L97
            r3 = 10
            if (r1 == r2) goto L49
            byte[] r2 = r7.f4927d     // Catch: java.lang.Throwable -> L97
            r2 = r2[r1]     // Catch: java.lang.Throwable -> L97
            if (r2 != r3) goto L46
            int r2 = r7.f4928e     // Catch: java.lang.Throwable -> L97
            if (r1 == r2) goto L2d
            byte[] r2 = r7.f4927d     // Catch: java.lang.Throwable -> L97
            int r3 = r1 + (-1)
            r2 = r2[r3]     // Catch: java.lang.Throwable -> L97
            r4 = 13
            if (r2 != r4) goto L2d
            goto L2e
        L2d:
            r3 = r1
        L2e:
            java.lang.String r2 = new java.lang.String     // Catch: java.lang.Throwable -> L97
            byte[] r4 = r7.f4927d     // Catch: java.lang.Throwable -> L97
            int r5 = r7.f4928e     // Catch: java.lang.Throwable -> L97
            int r6 = r7.f4928e     // Catch: java.lang.Throwable -> L97
            int r3 = r3 - r6
            java.nio.charset.Charset r6 = r7.f4926c     // Catch: java.lang.Throwable -> L97
            java.lang.String r6 = r6.name()     // Catch: java.lang.Throwable -> L97
            r2.<init>(r4, r5, r3, r6)     // Catch: java.lang.Throwable -> L97
            int r1 = r1 + 1
            r7.f4928e = r1     // Catch: java.lang.Throwable -> L97
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L97
            return r2
        L46:
            int r1 = r1 + 1
            goto L12
        L49:
            com.loc.ak$1 r1 = new com.loc.ak$1     // Catch: java.lang.Throwable -> L97
            int r2 = r7.f4929f     // Catch: java.lang.Throwable -> L97
            int r4 = r7.f4928e     // Catch: java.lang.Throwable -> L97
            int r2 = r2 - r4
            int r2 = r2 + 80
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L97
        L55:
            byte[] r2 = r7.f4927d     // Catch: java.lang.Throwable -> L97
            int r4 = r7.f4928e     // Catch: java.lang.Throwable -> L97
            int r5 = r7.f4929f     // Catch: java.lang.Throwable -> L97
            int r6 = r7.f4928e     // Catch: java.lang.Throwable -> L97
            int r5 = r5 - r6
            r1.write(r2, r4, r5)     // Catch: java.lang.Throwable -> L97
            r2 = -1
            r7.f4929f = r2     // Catch: java.lang.Throwable -> L97
            r7.m4053b()     // Catch: java.lang.Throwable -> L97
            int r2 = r7.f4928e     // Catch: java.lang.Throwable -> L97
        L69:
            int r4 = r7.f4929f     // Catch: java.lang.Throwable -> L97
            if (r2 == r4) goto L55
            byte[] r4 = r7.f4927d     // Catch: java.lang.Throwable -> L97
            r4 = r4[r2]     // Catch: java.lang.Throwable -> L97
            if (r4 != r3) goto L8c
            int r3 = r7.f4928e     // Catch: java.lang.Throwable -> L97
            if (r2 == r3) goto L82
            byte[] r3 = r7.f4927d     // Catch: java.lang.Throwable -> L97
            int r4 = r7.f4928e     // Catch: java.lang.Throwable -> L97
            int r5 = r7.f4928e     // Catch: java.lang.Throwable -> L97
            int r5 = r2 - r5
            r1.write(r3, r4, r5)     // Catch: java.lang.Throwable -> L97
        L82:
            int r2 = r2 + 1
            r7.f4928e = r2     // Catch: java.lang.Throwable -> L97
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L97
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L97
            return r1
        L8c:
            int r2 = r2 + 1
            goto L69
        L8f:
            java.io.IOException r1 = new java.io.IOException     // Catch: java.lang.Throwable -> L97
            java.lang.String r2 = "LineReader is closed"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L97
            throw r1     // Catch: java.lang.Throwable -> L97
        L97:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L97
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1721ak.m4054a():java.lang.String");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f4925b) {
            if (this.f4927d != null) {
                this.f4927d = null;
                this.f4925b.close();
            }
        }
    }
}
