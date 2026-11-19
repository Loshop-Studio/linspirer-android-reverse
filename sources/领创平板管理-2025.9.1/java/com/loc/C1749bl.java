package com.loc;

import android.content.Context;
import android.text.TextUtils;

/* compiled from: TimeUpdateStrategy.java */
/* renamed from: com.loc.bl */
/* loaded from: classes.dex */
public final class C1749bl extends AbstractC1750bm {

    /* renamed from: a */
    public int f5115a;

    /* renamed from: b */
    public long f5116b;

    /* renamed from: d */
    public String f5117d;

    /* renamed from: e */
    public Context f5118e;

    public C1749bl(Context context, int i, String str, AbstractC1750bm abstractC1750bm) {
        super(abstractC1750bm);
        this.f5115a = i;
        this.f5117d = str;
        this.f5118e = context;
    }

    @Override // com.loc.AbstractC1750bm
    /* renamed from: a */
    public final void mo4212a(boolean z) {
        super.mo4212a(z);
        if (z) {
            String str = this.f5117d;
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f5116b = jCurrentTimeMillis;
            C1860u.m5320a(this.f5118e, str, String.valueOf(jCurrentTimeMillis));
        }
    }

    @Override // com.loc.AbstractC1750bm
    /* renamed from: a */
    public final boolean mo4208a() {
        if (this.f5116b == 0) {
            String strM5317a = C1860u.m5317a(this.f5118e, this.f5117d);
            this.f5116b = TextUtils.isEmpty(strM5317a) ? 0L : Long.parseLong(strM5317a);
        }
        return System.currentTimeMillis() - this.f5116b >= ((long) this.f5115a);
    }
}
