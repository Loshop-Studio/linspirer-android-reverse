package com.taobao.accs.utl;

import java.io.ByteArrayOutputStream;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.utl.g */
/* loaded from: classes.dex */
public class C1979g extends ByteArrayOutputStream {
    public C1979g(int i) {
        super(i);
    }

    /* renamed from: a */
    public C1979g m5783a(byte b) {
        write(b);
        return this;
    }

    public C1979g() {
    }

    /* renamed from: a */
    public C1979g m5784a(short s) {
        write(s >> 8);
        write(s);
        return this;
    }
}
