package com.huawei.hem;

import javax.annotation.Nullable;

/* compiled from: RequestBody.java */
/* renamed from: com.huawei.hem.hk */
/* loaded from: classes.dex */
public class ByteArrayRequestBody extends OkHttpRequestBody {

    /* renamed from: a */
    public final /* synthetic */ OkHttpMediaType f2874a;

    /* renamed from: b */
    public final /* synthetic */ int f2875b;

    /* renamed from: c */
    public final /* synthetic */ byte[] f2876c;

    /* renamed from: d */
    public final /* synthetic */ int f2877d;

    public ByteArrayRequestBody(OkHttpMediaType c0858bk, int i, byte[] bArr, int i2) {
        this.f2874a = c0858bk;
        this.f2875b = i;
        this.f2876c = bArr;
        this.f2877d = i2;
    }

    @Override // com.huawei.hem.AbstractC1063jk
    /* renamed from: a */
    public long mo1534a() {
        return this.f2875b;
    }

    @Override // com.huawei.hem.AbstractC1063jk
    @Nullable
    /* renamed from: b */
    public OkHttpMediaType mo1535b() {
        return this.f2874a;
    }

    @Override // com.huawei.hem.AbstractC1063jk
    /* renamed from: e */
    public void mo1536e(BufferedSink interfaceC1041in) {
        interfaceC1041in.mo2008o(this.f2876c, this.f2877d, this.f2875b);
    }
}
