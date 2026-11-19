package com.huawei.hem;

import javax.annotation.Nullable;

/* compiled from: RealResponseBody.java */
/* renamed from: com.huawei.hem.rl */
/* loaded from: classes.dex */
public final class C1265rl extends AbstractC1139mk {

    /* renamed from: a */
    @Nullable
    public final String f3646a;

    /* renamed from: b */
    public final long f3647b;

    /* renamed from: c */
    public final InterfaceC1066jn f3648c;

    public C1265rl(@Nullable String str, long j, InterfaceC1066jn interfaceC1066jn) {
        this.f3646a = str;
        this.f3647b = j;
        this.f3648c = interfaceC1066jn;
    }

    @Override // com.huawei.hem.AbstractC1139mk
    /* renamed from: d */
    public long mo2324d() {
        return this.f3647b;
    }

    @Override // com.huawei.hem.AbstractC1139mk
    /* renamed from: f */
    public C0858bk mo2325f() {
        String str = this.f3646a;
        if (str != null) {
            return C0858bk.m1422b(str);
        }
        return null;
    }

    @Override // com.huawei.hem.AbstractC1139mk
    /* renamed from: g */
    public InterfaceC1066jn mo2326g() {
        return this.f3648c;
    }
}
