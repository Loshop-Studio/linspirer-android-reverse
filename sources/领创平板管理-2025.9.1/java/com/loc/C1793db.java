package com.loc;

import android.support.v7.widget.ActivityChooserView;
import com.huawei.hem.C0948f6;
import java.io.Serializable;

/* compiled from: AmapCellWcdma.java */
/* renamed from: com.loc.db */
/* loaded from: classes.dex */
public final class C1793db extends AbstractC1788cx implements Serializable {

    /* renamed from: j */
    public int f5279j;

    /* renamed from: k */
    public int f5280k;

    /* renamed from: l */
    public int f5281l;

    /* renamed from: m */
    public int f5282m;

    public C1793db() {
        this.f5279j = 0;
        this.f5280k = 0;
        this.f5281l = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f5282m = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    public C1793db(boolean z, boolean z2) {
        super(z, z2);
        this.f5279j = 0;
        this.f5280k = 0;
        this.f5281l = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f5282m = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    @Override // com.loc.AbstractC1788cx
    /* renamed from: a */
    public final AbstractC1788cx clone() {
        C1793db c1793db = new C1793db(this.f5219h, this.f5220i);
        c1793db.m4438a(this);
        c1793db.f5279j = this.f5279j;
        c1793db.f5280k = this.f5280k;
        c1793db.f5281l = this.f5281l;
        c1793db.f5282m = this.f5282m;
        return c1793db;
    }

    @Override // com.loc.AbstractC1788cx
    public final String toString() {
        StringBuilder sb = new StringBuilder("AmapCellWcdma{lac=");
        sb.append(this.f5279j);
        sb.append(", cid=");
        sb.append(this.f5280k);
        sb.append(", psc=");
        sb.append(this.f5281l);
        sb.append(", uarfcn=");
        sb.append(this.f5282m);
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
