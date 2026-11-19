package com.loc;

import com.huawei.hem.CompilerOutline;
import java.io.Serializable;

/* compiled from: AmapCellCdma.java */
/* renamed from: com.loc.cy */
/* loaded from: classes.dex */
public final class AmapCellCdma extends AmapCell implements Serializable {

    /* renamed from: j */
    public int f5221j;

    /* renamed from: k */
    public int f5222k;

    /* renamed from: l */
    public int f5223l;

    /* renamed from: m */
    public int f5224m;

    /* renamed from: n */
    public int f5225n;

    public AmapCellCdma() {
        this.f5221j = 0;
        this.f5222k = 0;
        this.f5223l = 0;
    }

    public AmapCellCdma(boolean z, boolean z2) {
        super(z, z2);
        this.f5221j = 0;
        this.f5222k = 0;
        this.f5223l = 0;
    }

    @Override // com.loc.AbstractC1788cx
    /* renamed from: a */
    public final AmapCell clone() {
        AmapCellCdma c1789cy = new AmapCellCdma(this.f5219h, this.f5220i);
        c1789cy.m4438a(this);
        c1789cy.f5221j = this.f5221j;
        c1789cy.f5222k = this.f5222k;
        c1789cy.f5223l = this.f5223l;
        c1789cy.f5224m = this.f5224m;
        c1789cy.f5225n = this.f5225n;
        return c1789cy;
    }

    @Override // com.loc.AbstractC1788cx
    public final String toString() {
        StringBuilder sb = new StringBuilder("AmapCellCdma{sid=");
        sb.append(this.f5221j);
        sb.append(", nid=");
        sb.append(this.f5222k);
        sb.append(", bid=");
        sb.append(this.f5223l);
        sb.append(", latitude=");
        sb.append(this.f5224m);
        sb.append(", longitude=");
        sb.append(this.f5225n);
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
