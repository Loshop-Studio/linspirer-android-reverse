package com.alibaba.sdk.android.emas;

import java.util.List;

/* compiled from: EmasLog.java */
/* renamed from: com.alibaba.sdk.android.emas.f */
/* loaded from: classes.dex */
public class C0527f {

    /* renamed from: b */
    public final List<C0528g> f941b;

    /* renamed from: c */
    public final EnumC0525d f942c;

    /* renamed from: c */
    public final String f943c;

    public C0527f(List<C0528g> list) {
        this(list, EnumC0525d.MEM_CACHE, null);
    }

    /* renamed from: a */
    public EnumC0525d m635a() {
        return this.f942c;
    }

    public String getLocation() {
        if (this.f942c == EnumC0525d.DISK_CACHE) {
            return this.f943c;
        }
        return null;
    }

    public C0527f(List<C0528g> list, EnumC0525d enumC0525d, String str) {
        this.f941b = list;
        this.f942c = enumC0525d;
        this.f943c = str;
    }

    /* renamed from: a */
    public List<C0528g> m636a() {
        return this.f941b;
    }
}
