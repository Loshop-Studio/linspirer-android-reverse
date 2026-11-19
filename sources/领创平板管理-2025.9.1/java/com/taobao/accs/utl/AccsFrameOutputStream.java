package com.taobao.accs.utl;

import java.io.ByteArrayOutputStream;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.utl.g */
/* loaded from: classes.dex */
public class AccsFrameOutputStream extends ByteArrayOutputStream {
    public AccsFrameOutputStream(int i) {
        super(i);
    }

    /* renamed from: a */
    public AccsFrameOutputStream m5783a(byte b) {
        write(b);
        return this;
    }

    public AccsFrameOutputStream() {
    }

    /* renamed from: a */
    public AccsFrameOutputStream m5784a(short s) {
        write(s >> 8);
        write(s);
        return this;
    }
}
