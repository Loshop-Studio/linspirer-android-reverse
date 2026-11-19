package com.loc;

import android.support.v7.widget.ActivityChooserView;
import com.huawei.hem.CompilerOutline;
import java.io.Serializable;

/* compiled from: AmapCellGsm.java */
/* renamed from: com.loc.cz */
/* loaded from: classes.dex */
public final class AmapCellGsm extends AmapCell implements Serializable {

    /* renamed from: j */
    public int f5226j;

    /* renamed from: k */
    public int f5227k;

    /* renamed from: l */
    public int f5228l;

    /* renamed from: m */
    public int f5229m;

    /* renamed from: n */
    public int f5230n;

    /* renamed from: o */
    public int f5231o;

    public AmapCellGsm() {
        this.f5226j = 0;
        this.f5227k = 0;
        this.f5228l = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f5229m = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f5230n = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f5231o = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    public AmapCellGsm(boolean z, boolean z2) {
        super(z, z2);
        this.f5226j = 0;
        this.f5227k = 0;
        this.f5228l = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f5229m = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f5230n = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f5231o = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    @Override // com.loc.AbstractC1788cx
    /* renamed from: a */
    public final AmapCell clone() {
        AmapCellGsm c1790cz = new AmapCellGsm(this.f5219h, this.f5220i);
        c1790cz.m4438a(this);
        c1790cz.f5226j = this.f5226j;
        c1790cz.f5227k = this.f5227k;
        c1790cz.f5228l = this.f5228l;
        c1790cz.f5229m = this.f5229m;
        c1790cz.f5230n = this.f5230n;
        c1790cz.f5231o = this.f5231o;
        return c1790cz;
    }

    @Override // com.loc.AbstractC1788cx
    public final String toString() {
        StringBuilder sb = new StringBuilder("AmapCellGsm{lac=");
        sb.append(this.f5226j);
        sb.append(", cid=");
        sb.append(this.f5227k);
        sb.append(", psc=");
        sb.append(this.f5228l);
        sb.append(", arfcn=");
        sb.append(this.f5229m);
        sb.append(", bsic=");
        sb.append(this.f5230n);
        sb.append(", timingAdvance=");
        sb.append(this.f5231o);
        sb.append(", mcc='");
        CompilerOutline.m1781z(sb, this.f5212a, '\'', ", mnc='");
        CompilerOutline.m1781z(sb, this.f5213b, '\'', ", signalStrength=");
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
