package com.loc;

import android.support.v7.widget.ActivityChooserView;

/* compiled from: UpdateStrategy.java */
/* renamed from: com.loc.bm */
/* loaded from: classes.dex */
public abstract class UpdateStrategy {

    /* renamed from: c */
    public UpdateStrategy f5119c;

    public UpdateStrategy() {
    }

    public UpdateStrategy(UpdateStrategy abstractC1750bm) {
        this.f5119c = abstractC1750bm;
    }

    /* renamed from: a */
    public void mo4210a(int i) {
        UpdateStrategy abstractC1750bm = this.f5119c;
        if (abstractC1750bm != null) {
            abstractC1750bm.mo4210a(i);
        }
    }

    /* renamed from: a */
    public void mo4212a(boolean z) {
        UpdateStrategy abstractC1750bm = this.f5119c;
        if (abstractC1750bm != null) {
            abstractC1750bm.mo4212a(z);
        }
    }

    /* renamed from: a */
    public abstract boolean mo4208a();

    /* renamed from: b */
    public int mo4211b() {
        UpdateStrategy abstractC1750bm = this.f5119c;
        return Math.min(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, abstractC1750bm != null ? abstractC1750bm.mo4211b() : Integer.MAX_VALUE);
    }

    /* renamed from: c */
    public final boolean m4213c() {
        UpdateStrategy abstractC1750bm = this.f5119c;
        if (abstractC1750bm != null ? abstractC1750bm.m4213c() : true) {
            return mo4208a();
        }
        return false;
    }
}
