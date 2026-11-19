package com.huawei.hem;

import anet.channel.util.HttpConstant;

/* compiled from: Header.java */
/* renamed from: com.huawei.hem.xl */
/* loaded from: classes.dex */
public final class C1415xl {

    /* renamed from: d */
    public static final C1091kn f4085d = C1091kn.encodeUtf8(":");

    /* renamed from: e */
    public static final C1091kn f4086e = C1091kn.encodeUtf8(HttpConstant.STATUS);

    /* renamed from: f */
    public static final C1091kn f4087f = C1091kn.encodeUtf8(":method");

    /* renamed from: g */
    public static final C1091kn f4088g = C1091kn.encodeUtf8(":path");

    /* renamed from: h */
    public static final C1091kn f4089h = C1091kn.encodeUtf8(":scheme");

    /* renamed from: i */
    public static final C1091kn f4090i = C1091kn.encodeUtf8(":authority");

    /* renamed from: a */
    public final C1091kn f4091a;

    /* renamed from: b */
    public final C1091kn f4092b;

    /* renamed from: c */
    public final int f4093c;

    public C1415xl(String str, String str2) {
        this(C1091kn.encodeUtf8(str), C1091kn.encodeUtf8(str2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C1415xl)) {
            return false;
        }
        C1415xl c1415xl = (C1415xl) obj;
        return this.f4091a.equals(c1415xl.f4091a) && this.f4092b.equals(c1415xl.f4092b);
    }

    public int hashCode() {
        return this.f4092b.hashCode() + ((this.f4091a.hashCode() + 527) * 31);
    }

    public String toString() {
        return C1314tk.m2756k("%s: %s", this.f4091a.utf8(), this.f4092b.utf8());
    }

    public C1415xl(C1091kn c1091kn, String str) {
        this(c1091kn, C1091kn.encodeUtf8(str));
    }

    public C1415xl(C1091kn c1091kn, C1091kn c1091kn2) {
        this.f4091a = c1091kn;
        this.f4092b = c1091kn2;
        this.f4093c = c1091kn2.size() + c1091kn.size() + 32;
    }
}
