package com.loc;

import android.content.Context;
import android.support.v7.widget.ActivityChooserView;
import android.text.TextUtils;
import com.amap.apis.utils.core.DeviceInfo;
import com.huawei.hem.C1094l1;

/* compiled from: MobileUpdateStrategy.java */
/* renamed from: com.loc.bj */
/* loaded from: classes.dex */
public final class MobileUpdateStrategy extends UpdateStrategy {

    /* renamed from: b */
    public Context f5109b;

    /* renamed from: d */
    public boolean f5110d;

    /* renamed from: e */
    public int f5111e;

    /* renamed from: f */
    public int f5112f;

    /* renamed from: a */
    public String f5108a = "iKey";

    /* renamed from: g */
    public int f5113g = 0;

    public MobileUpdateStrategy(Context context, boolean z, int i, int i2, String str) {
        m4209a(context, z, i, i2, str, 0);
    }

    public MobileUpdateStrategy(Context context, boolean z, int i, int i2, String str, int i3) {
        m4209a(context, z, i, i2, str, i3);
    }

    /* renamed from: a */
    private void m4209a(Context context, boolean z, int i, int i2, String str, int i3) {
        this.f5109b = context;
        this.f5110d = z;
        this.f5111e = i;
        this.f5112f = i2;
        this.f5108a = str;
        this.f5113g = i3;
    }

    @Override // com.loc.AbstractC1750bm
    /* renamed from: a */
    public final void mo4210a(int i) {
        if (DeviceInfo.m1087u(this.f5109b) == 1) {
            return;
        }
        String strM2233b = C1094l1.m2233b(System.currentTimeMillis(), "yyyyMMdd");
        String strM5317a = AMapLog.m5317a(this.f5109b, this.f5108a);
        if (!TextUtils.isEmpty(strM5317a)) {
            String[] strArrSplit = strM5317a.split("\\|");
            if (strArrSplit == null || strArrSplit.length < 2) {
                AMapLog.m5323b(this.f5109b, this.f5108a);
            } else if (strM2233b.equals(strArrSplit[0])) {
                i += Integer.parseInt(strArrSplit[1]);
            }
        }
        AMapLog.m5320a(this.f5109b, this.f5108a, strM2233b + "|" + i);
    }

    @Override // com.loc.AbstractC1750bm
    /* renamed from: a */
    public final boolean mo4208a() {
        if (DeviceInfo.m1087u(this.f5109b) == 1) {
            return true;
        }
        if (!this.f5110d) {
            return false;
        }
        String strM5317a = AMapLog.m5317a(this.f5109b, this.f5108a);
        if (TextUtils.isEmpty(strM5317a)) {
            return true;
        }
        String[] strArrSplit = strM5317a.split("\\|");
        if (strArrSplit != null && strArrSplit.length >= 2) {
            return !C1094l1.m2233b(System.currentTimeMillis(), "yyyyMMdd").equals(strArrSplit[0]) || Integer.parseInt(strArrSplit[1]) < this.f5112f;
        }
        AMapLog.m5323b(this.f5109b, this.f5108a);
        return true;
    }

    @Override // com.loc.AbstractC1750bm
    /* renamed from: b */
    public final int mo4211b() {
        int i;
        int iM1087u = DeviceInfo.m1087u(this.f5109b);
        int i2 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        if ((iM1087u != 1 && (i = this.f5111e) > 0) || ((i = this.f5113g) > 0 && i < Integer.MAX_VALUE)) {
            i2 = i;
        }
        UpdateStrategy abstractC1750bm = this.f5119c;
        return abstractC1750bm != null ? Math.max(i2, abstractC1750bm.mo4211b()) : i2;
    }
}
