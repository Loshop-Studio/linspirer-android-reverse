package com.huawei.hem;

/* compiled from: ProgressRequestBody.java */
/* renamed from: com.huawei.hem.zb */
/* loaded from: classes.dex */
public class C1455zb extends AbstractC1063jk {

    /* renamed from: a */
    public InterfaceC1430yb f4294a;

    /* renamed from: b */
    public AbstractC1063jk f4295b;

    /* renamed from: c */
    public a f4296c;

    /* compiled from: ProgressRequestBody.java */
    /* renamed from: com.huawei.hem.zb$a */
    public final class a extends AbstractC1117ln {

        /* renamed from: b */
        public long f4297b;

        /* renamed from: c */
        public long f4298c;

        public a(InterfaceC1467zn interfaceC1467zn) {
            super(interfaceC1467zn);
            this.f4297b = 0L;
            this.f4298c = 0L;
        }

        @Override // com.huawei.hem.InterfaceC1467zn
        /* renamed from: p */
        public void mo1619p(C1016hn c1016hn, long j) {
            this.f3225a.mo1619p(c1016hn, j);
            if (this.f4298c == 0) {
                this.f4298c = C1455zb.this.mo1534a();
            }
            long j2 = this.f4297b + j;
            this.f4297b = j2;
            C1455zb.this.f4294a.onProgress(j2, this.f4298c);
        }
    }

    public C1455zb(AbstractC1063jk abstractC1063jk, InterfaceC1430yb interfaceC1430yb) {
        this.f4294a = interfaceC1430yb;
        this.f4295b = abstractC1063jk;
    }

    @Override // com.huawei.hem.AbstractC1063jk
    /* renamed from: a */
    public long mo1534a() {
        return this.f4295b.mo1534a();
    }

    @Override // com.huawei.hem.AbstractC1063jk
    /* renamed from: b */
    public C0858bk mo1535b() {
        return this.f4295b.mo1535b();
    }

    @Override // com.huawei.hem.AbstractC1063jk
    /* renamed from: e */
    public void mo1536e(InterfaceC1041in interfaceC1041in) {
        a aVar = new a(interfaceC1041in);
        this.f4296c = aVar;
        InterfaceC1041in interfaceC1041inM2669a = C1267rn.m2669a(aVar);
        this.f4295b.mo1536e(interfaceC1041inM2669a);
        ((C1342un) interfaceC1041inM2669a).flush();
    }
}
