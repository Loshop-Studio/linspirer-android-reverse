package com.loc;

import android.support.v7.widget.ActivityChooserView;
import com.huawei.hem.C0948f6;
import java.io.Serializable;

/* compiled from: AmapCellLte.java */
/* renamed from: com.loc.da */
/* loaded from: classes.dex */
public final class C1792da extends AbstractC1788cx implements Serializable {

    /* renamed from: j */
    public int f5274j;

    /* renamed from: k */
    public int f5275k;

    /* renamed from: l */
    public int f5276l;

    /* renamed from: m */
    public int f5277m;

    /* renamed from: n */
    public int f5278n;

    public C1792da() {
        this.f5274j = 0;
        this.f5275k = 0;
        this.f5276l = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f5277m = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f5278n = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    public C1792da(boolean z) {
        super(z, true);
        this.f5274j = 0;
        this.f5275k = 0;
        this.f5276l = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f5277m = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f5278n = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    @Override // com.loc.AbstractC1788cx
    /* renamed from: a */
    public final AbstractC1788cx clone() {
        C1792da c1792da = new C1792da(this.f5219h);
        c1792da.m4438a(this);
        c1792da.f5274j = this.f5274j;
        c1792da.f5275k = this.f5275k;
        c1792da.f5276l = this.f5276l;
        c1792da.f5277m = this.f5277m;
        c1792da.f5278n = this.f5278n;
        return c1792da;
    }

    @Override // com.loc.AbstractC1788cx
    public final String toString() {
        StringBuilder sb = new StringBuilder("AmapCellLte{tac=");
        sb.append(this.f5274j);
        sb.append(", ci=");
        sb.append(this.f5275k);
        sb.append(", pci=");
        sb.append(this.f5276l);
        sb.append(", earfcn=");
        sb.append(this.f5277m);
        sb.append(", timingAdvance=");
        sb.append(this.f5278n);
        sb.append(", mcc='");
        C0948f6.m1781z(sb, this.f5212a, '\'', ", mnc='");
        C0948f6.m1781z(sb, this.f5213b, '\'', ", signalStrength=");
        sb.append(this.f5214c);
        sb.append(", asuLevel=");
        sb.append(this.f5215d);
        sb.append(", lastUpdateSystemMills=");
        sb.append(this.f5216e);
        sb.append(", lastUpdateUtcMills=");
        sb.append(this.f5217f);
        sb.append(", age=");
        sb.append(this.f5218g);
        sb.append(", main=");
        sb.append(this.f5219h);
        sb.append(", newApi=");
        sb.append(this.f5220i);
        sb.append('}');
        return sb.toString();
    }
}
