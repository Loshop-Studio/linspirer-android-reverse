package com.alibaba.sdk.android.emas;

import com.alibaba.sdk.android.tbrest.utils.LogUtil;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CacheManager.java */
/* renamed from: com.alibaba.sdk.android.emas.c */
/* loaded from: classes.dex */
public class EmasCacheManager implements Cache<EmasSingleLog> {

    /* renamed from: a */
    public final int f928a;

    /* renamed from: a */
    public List<EmasSingleLog> f929a;

    /* renamed from: b */
    public final int f930b;

    /* renamed from: c */
    public int f931c = 0;
    public final SendManager mSendManager;

    public EmasCacheManager(SendManager c0531j, int i, int i2) {
        this.f928a = i;
        this.f930b = i2;
        this.mSendManager = c0531j;
    }

    /* renamed from: b */
    private void m621b() {
        this.mSendManager.m654a(this.f929a);
        this.f929a = null;
        this.f931c = 0;
    }

    @Override // com.alibaba.sdk.android.emas.Cache
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public EmasSingleLog get() {
        return null;
    }

    @Override // com.alibaba.sdk.android.emas.Cache
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized void add(EmasSingleLog c0528g) {
        if (this.f929a == null) {
            this.f929a = new ArrayList();
        }
        this.f929a.add(c0528g);
        this.f931c += c0528g.length();
        if (this.f929a.size() >= this.f928a || this.f931c >= this.f930b) {
            LogUtil.m996d("CacheManager satisfy limit. immediately send. size: " + this.f929a.size() + ", current capacity: " + this.f931c);
            m621b();
        }
    }

    @Override // com.alibaba.sdk.android.emas.Cache
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public boolean remove(EmasSingleLog c0528g) {
        return false;
    }

    @Override // com.alibaba.sdk.android.emas.Cache
    public void clear() {
    }

    public synchronized void flush() {
        if (this.f929a != null && !this.f929a.isEmpty()) {
            LogUtil.m996d("CacheManager flush. immediately send.");
            m621b();
        }
    }
}
