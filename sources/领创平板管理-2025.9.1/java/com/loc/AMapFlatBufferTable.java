package com.loc;

import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;

/* compiled from: Table.java */
/* renamed from: com.loc.ez */
/* loaded from: classes.dex */
public class AMapFlatBufferTable {

    /* renamed from: b */
    public static final ThreadLocal<CharsetDecoder> f5818b = new ThreadLocal<CharsetDecoder>() { // from class: com.loc.ez.1
        /* renamed from: a */
        public static CharsetDecoder m5193a() {
            return Charset.forName("UTF-8").newDecoder();
        }

        @Override // java.lang.ThreadLocal
        public final /* synthetic */ CharsetDecoder initialValue() {
            return m5193a();
        }
    };

    /* renamed from: a */
    public static final ThreadLocal<Charset> f5817a = new ThreadLocal<Charset>() { // from class: com.loc.ez.2
        /* renamed from: a */
        public static Charset m5194a() {
            return Charset.forName("UTF-8");
        }

        @Override // java.lang.ThreadLocal
        public final /* synthetic */ Charset initialValue() {
            return m5194a();
        }
    };

    /* renamed from: c */
    public static final ThreadLocal<CharBuffer> f5819c = new ThreadLocal<>();
}
