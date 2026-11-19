package com.huawei.hem;

import anet.channel.util.HttpConstant;

/* compiled from: Header.java */
/* renamed from: com.huawei.hem.xl */
/* loaded from: classes.dex */
public final class Http2Header {

    /* renamed from: d */
    public static final ByteString f4085d = ByteString.encodeUtf8(":");

    /* renamed from: e */
    public static final ByteString f4086e = ByteString.encodeUtf8(HttpConstant.STATUS);

    /* renamed from: f */
    public static final ByteString f4087f = ByteString.encodeUtf8(":method");

    /* renamed from: g */
    public static final ByteString f4088g = ByteString.encodeUtf8(":path");

    /* renamed from: h */
    public static final ByteString f4089h = ByteString.encodeUtf8(":scheme");

    /* renamed from: i */
    public static final ByteString f4090i = ByteString.encodeUtf8(":authority");

    /* renamed from: a */
    public final ByteString f4091a;

    /* renamed from: b */
    public final ByteString f4092b;

    /* renamed from: c */
    public final int f4093c;

    public Http2Header(String str, String str2) {
        this(ByteString.encodeUtf8(str), ByteString.encodeUtf8(str2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Http2Header)) {
            return false;
        }
        Http2Header c1415xl = (Http2Header) obj;
        return this.f4091a.equals(c1415xl.f4091a) && this.f4092b.equals(c1415xl.f4092b);
    }

    public int hashCode() {
        return this.f4092b.hashCode() + ((this.f4091a.hashCode() + 527) * 31);
    }

    public String toString() {
        return OkHttpCommonUtilities.m2756k("%s: %s", this.f4091a.utf8(), this.f4092b.utf8());
    }

    public Http2Header(ByteString c1091kn, String str) {
        this(c1091kn, ByteString.encodeUtf8(str));
    }

    public Http2Header(ByteString c1091kn, ByteString c1091kn2) {
        this.f4091a = c1091kn;
        this.f4092b = c1091kn2;
        this.f4093c = c1091kn2.size() + c1091kn.size() + 32;
    }
}
