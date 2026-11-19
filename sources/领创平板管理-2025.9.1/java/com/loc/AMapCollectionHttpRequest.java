package com.loc;

import java.util.HashMap;
import java.util.Map;

/* compiled from: HttpRequest.java */
/* renamed from: com.loc.di */
/* loaded from: classes.dex */
public final class AMapCollectionHttpRequest {

    /* renamed from: a */
    public String f5324a;

    /* renamed from: d */
    public byte[] f5327d;

    /* renamed from: b */
    public Map<String, String> f5325b = new HashMap();

    /* renamed from: c */
    public boolean f5326c = true;

    /* renamed from: e */
    public int f5328e = 10000;

    /* renamed from: a */
    public static String m4569a() {
        return "lc_" + ((int) HeaderConfig.m4519a());
    }

    /* renamed from: b */
    public static String m4570b() {
        return HeaderConfig.m4525c() + "*" + HeaderConfig.m4531f();
    }
}
