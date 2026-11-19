package com.loc;

import android.text.TextUtils;
import com.huawei.hem.AbstractC1044j1;
import java.util.Map;

/* compiled from: HttpRequest.java */
/* renamed from: com.loc.ej */
/* loaded from: classes.dex */
public final class C1828ej extends AbstractC1044j1 {

    /* renamed from: a */
    public Map<String, String> f5644a = null;

    /* renamed from: b */
    public Map<String, String> f5645b = null;

    /* renamed from: g */
    public String f5646g = "";

    /* renamed from: h */
    public byte[] f5647h = null;

    /* renamed from: i */
    public String f5648i = null;

    @Override // com.loc.AbstractC1728ar
    /* renamed from: a */
    public final Map<String, String> mo1735a() {
        return this.f5644a;
    }

    /* renamed from: a */
    public final void m4935a(Map<String, String> map) {
        this.f5644a = map;
    }

    /* renamed from: a */
    public final void m4936a(byte[] bArr) {
        this.f5647h = bArr;
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: b */
    public final String mo1737b() {
        return this.f5646g;
    }

    /* renamed from: b */
    public final void m4937b(String str) {
        this.f5646g = str;
    }

    /* renamed from: b */
    public final void m4938b(Map<String, String> map) {
        this.f5645b = map;
    }

    @Override // com.huawei.hem.AbstractC1044j1, com.loc.AbstractC1728ar
    /* renamed from: c */
    public final String mo1739c() {
        return !TextUtils.isEmpty(this.f5648i) ? this.f5648i : super.mo1739c();
    }

    /* renamed from: c */
    public final void m4939c(String str) {
        this.f5648i = str;
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: d */
    public final Map<String, String> mo4055d() {
        return this.f5645b;
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: e */
    public final byte[] mo4056e() {
        return this.f5647h;
    }
}
