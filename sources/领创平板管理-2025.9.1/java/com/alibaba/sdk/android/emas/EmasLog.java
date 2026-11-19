package com.alibaba.sdk.android.emas;

import java.util.List;

/* compiled from: EmasLog.java */
/* renamed from: com.alibaba.sdk.android.emas.f */
/* loaded from: classes.dex */
public class EmasLog {

    /* renamed from: b */
    public final List<EmasSingleLog> f941b;

    /* renamed from: c */
    public final CacheType f942c;

    /* renamed from: c */
    public final String f943c;

    public EmasLog(List<EmasSingleLog> list) {
        this(list, CacheType.MEM_CACHE, null);
    }

    /* renamed from: a */
    public CacheType m635a() {
        return this.f942c;
    }

    public String getLocation() {
        if (this.f942c == CacheType.DISK_CACHE) {
            return this.f943c;
        }
        return null;
    }

    public EmasLog(List<EmasSingleLog> list, CacheType enumC0525d, String str) {
        this.f941b = list;
        this.f942c = enumC0525d;
        this.f943c = str;
    }

    /* renamed from: a */
    public List<EmasSingleLog> m636a() {
        return this.f941b;
    }
}
