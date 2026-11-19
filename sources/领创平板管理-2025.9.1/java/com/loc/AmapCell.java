package com.loc;

import android.support.v7.widget.ActivityChooserView;
import java.io.Serializable;

/* compiled from: AmapCell.java */
/* renamed from: com.loc.cx */
/* loaded from: classes.dex */
public abstract class AmapCell implements Serializable {

    /* renamed from: a */
    public String f5212a;

    /* renamed from: b */
    public String f5213b;

    /* renamed from: c */
    public int f5214c;

    /* renamed from: d */
    public int f5215d;

    /* renamed from: e */
    public long f5216e;

    /* renamed from: f */
    public long f5217f;

    /* renamed from: g */
    public int f5218g;

    /* renamed from: h */
    public boolean f5219h;

    /* renamed from: i */
    public boolean f5220i;

    public AmapCell() {
        this.f5212a = "";
        this.f5213b = "";
        this.f5214c = 99;
        this.f5215d = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f5216e = 0L;
        this.f5217f = 0L;
        this.f5218g = 0;
        this.f5220i = true;
    }

    public AmapCell(boolean z, boolean z2) {
        this.f5212a = "";
        this.f5213b = "";
        this.f5214c = 99;
        this.f5215d = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f5216e = 0L;
        this.f5217f = 0L;
        this.f5218g = 0;
        this.f5220i = true;
        this.f5219h = z;
        this.f5220i = z2;
    }

    /* renamed from: a */
    public static int m4436a(String str) {
        try {
            return Integer.parseInt(str);
        } catch (Exception e) {
            ALLog.m4567a(e);
            return 0;
        }
    }

    @Override // 
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public abstract AmapCell clone();

    /* renamed from: a */
    public final void m4438a(AmapCell abstractC1788cx) {
        this.f5212a = abstractC1788cx.f5212a;
        this.f5213b = abstractC1788cx.f5213b;
        this.f5214c = abstractC1788cx.f5214c;
        this.f5215d = abstractC1788cx.f5215d;
        this.f5216e = abstractC1788cx.f5216e;
        this.f5217f = abstractC1788cx.f5217f;
        this.f5218g = abstractC1788cx.f5218g;
        this.f5219h = abstractC1788cx.f5219h;
        this.f5220i = abstractC1788cx.f5220i;
    }

    /* renamed from: b */
    public final int m4439b() {
        return m4436a(this.f5212a);
    }

    /* renamed from: c */
    public final int m4440c() {
        return m4436a(this.f5213b);
    }

    public String toString() {
        return "AmapCell{mcc=" + this.f5212a + ", mnc=" + this.f5213b + ", signalStrength=" + this.f5214c + ", asulevel=" + this.f5215d + ", lastUpdateSystemMills=" + this.f5216e + ", lastUpdateUtcMills=" + this.f5217f + ", age=" + this.f5218g + ", main=" + this.f5219h + ", newapi=" + this.f5220i + '}';
    }
}
