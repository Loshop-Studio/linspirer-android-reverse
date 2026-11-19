package com.huawei.hem;

import javax.annotation.Nullable;

/* compiled from: ResponseBody.java */
/* renamed from: com.huawei.hem.lk */
/* loaded from: classes.dex */
public class BufferBackedResponseBody extends OkHttpResponseBody {

    /* renamed from: a */
    public final /* synthetic */ OkHttpMediaType f3197a;

    /* renamed from: b */
    public final /* synthetic */ long f3198b;

    /* renamed from: c */
    public final /* synthetic */ BufferedSource f3199c;

    public BufferBackedResponseBody(OkHttpMediaType c0858bk, long j, BufferedSource interfaceC1066jn) {
        this.f3197a = c0858bk;
        this.f3198b = j;
        this.f3199c = interfaceC1066jn;
    }

    @Override // com.huawei.hem.AbstractC1139mk
    /* renamed from: d */
    public long mo2324d() {
        return this.f3198b;
    }

    @Override // com.huawei.hem.AbstractC1139mk
    @Nullable
    /* renamed from: f */
    public OkHttpMediaType mo2325f() {
        return this.f3197a;
    }

    @Override // com.huawei.hem.AbstractC1139mk
    /* renamed from: g */
    public BufferedSource mo2326g() {
        return this.f3199c;
    }
}
