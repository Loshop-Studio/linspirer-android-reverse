package com.huawei.hem;

import java.util.List;
import javax.annotation.Nullable;

/* compiled from: FormBody.java */
/* renamed from: com.huawei.hem.wj */
/* loaded from: classes.dex */
public final class FormBody extends AbstractC1063jk {

    /* renamed from: c */
    public static final OkHttpMediaType f4024c = OkHttpMediaType.m1421a("application/x-www-form-urlencoded");

    /* renamed from: a */
    public final List<String> f4025a;

    /* renamed from: b */
    public final List<String> f4026b;

    public FormBody(List<String> list, List<String> list2) {
        this.f4025a = C1314tk.m2759n(list);
        this.f4026b = C1314tk.m2759n(list2);
    }

    @Override // com.huawei.hem.AbstractC1063jk
    /* renamed from: a */
    public long mo1534a() {
        return m2909f(null, true);
    }

    @Override // com.huawei.hem.AbstractC1063jk
    /* renamed from: b */
    public OkHttpMediaType mo1535b() {
        return f4024c;
    }

    @Override // com.huawei.hem.AbstractC1063jk
    /* renamed from: e */
    public void mo1536e(BufferedSink interfaceC1041in) {
        m2909f(interfaceC1041in, false);
    }

    /* renamed from: f */
    public final long m2909f(@Nullable BufferedSink interfaceC1041in, boolean z) {
        OkioBuffer c1016hn = z ? new OkioBuffer() : interfaceC1041in.mo2007m();
        int size = this.f4025a.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                c1016hn.m1988R(38);
            }
            c1016hn.m1993W(this.f4025a.get(i));
            c1016hn.m1988R(61);
            c1016hn.m1993W(this.f4026b.get(i));
        }
        if (!z) {
            return 0L;
        }
        long j = c1016hn.f2884b;
        c1016hn.m1996a();
        return j;
    }
}
