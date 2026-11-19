package com.huawei.hem;

import com.huawei.hem.C1267rn;
import java.io.File;
import java.io.IOException;
import javax.annotation.Nullable;

/* compiled from: RequestBody.java */
/* renamed from: com.huawei.hem.ik */
/* loaded from: classes.dex */
public class C1038ik extends AbstractC1063jk {

    /* renamed from: a */
    public final /* synthetic */ OkHttpMediaType f2926a;

    /* renamed from: b */
    public final /* synthetic */ File f2927b;

    public C1038ik(OkHttpMediaType c0858bk, File file) {
        this.f2926a = c0858bk;
        this.f2927b = file;
    }

    @Override // com.huawei.hem.AbstractC1063jk
    /* renamed from: a */
    public long mo1534a() {
        return this.f2927b.length();
    }

    @Override // com.huawei.hem.AbstractC1063jk
    @Nullable
    /* renamed from: b */
    public OkHttpMediaType mo1535b() {
        return this.f2926a;
    }

    @Override // com.huawei.hem.AbstractC1063jk
    /* renamed from: e */
    public void mo1536e(BufferedSink interfaceC1041in) throws IOException {
        Source interfaceC0836aoM2673e = C1267rn.m2673e(this.f2927b);
        try {
            interfaceC1041in.mo2009q(interfaceC0836aoM2673e);
            ((C1267rn.a) interfaceC0836aoM2673e).f3651b.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    ((C1267rn.a) interfaceC0836aoM2673e).f3651b.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
