package com.loc;

import android.content.Context;
import com.amap.apis.utils.core.DeviceInfo;

/* compiled from: WiFiUplateStrategy.java */
/* renamed from: com.loc.bn */
/* loaded from: classes.dex */
public final class WiFiUplateStrategy extends UpdateStrategy {

    /* renamed from: a */
    public Context f5120a;

    /* renamed from: b */
    public boolean f5121b;

    public WiFiUplateStrategy(Context context) {
        this.f5121b = false;
        this.f5120a = context;
        this.f5121b = false;
    }

    @Override // com.loc.AbstractC1750bm
    /* renamed from: a */
    public final boolean mo4208a() {
        return DeviceInfo.m1087u(this.f5120a) == 1 || this.f5121b;
    }
}
