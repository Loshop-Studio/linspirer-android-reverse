package com.huawei.updatesdk.p048b.p054d;

import com.huawei.updatesdk.p034a.p043b.p046c.p047c.C1605c;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.C1606d;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.InterfaceC1603a;
import com.huawei.updatesdk.p048b.p057g.C1637b;
import com.huawei.updatesdk.service.appmgr.bean.C1648a;
import com.huawei.updatesdk.service.appmgr.bean.C1649b;
import com.huawei.updatesdk.service.otaupdate.C1676f;
import com.huawei.updatesdk.service.otaupdate.InterfaceC1672b;

/* renamed from: com.huawei.updatesdk.b.d.f */
/* loaded from: classes.dex */
public class C1627f {

    /* renamed from: a */
    public static InterfaceC1672b f4701a;

    /* renamed from: com.huawei.updatesdk.b.d.f$b */
    public static class b implements InterfaceC1603a {
        public b() {
        }

        @Override // com.huawei.updatesdk.p034a.p043b.p046c.p047c.InterfaceC1603a
        /* renamed from: a */
        public void mo3621a(C1605c c1605c, C1606d c1606d) {
        }

        @Override // com.huawei.updatesdk.p034a.p043b.p046c.p047c.InterfaceC1603a
        /* renamed from: b */
        public void mo3622b(C1605c c1605c, C1606d c1606d) {
            if (C1627f.f4701a == null) {
                return;
            }
            if (!(c1606d instanceof C1649b)) {
                C1627f.f4701a.mo3862a(c1606d.m3639d());
                return;
            }
            C1649b c1649b = (C1649b) c1606d;
            if (c1606d.m3639d() != 0 || c1606d.m3640e() != 0) {
                C1627f.f4701a.mo3864b(c1606d.m3639d());
            } else if (c1649b.m3801g() == null) {
                C1627f.f4701a.mo3862a(c1606d.m3639d());
            } else {
                C1627f.f4701a.mo3863a(c1649b.m3801g());
            }
        }
    }

    /* renamed from: a */
    public static void m3724a(InterfaceC1672b interfaceC1672b) {
        f4701a = interfaceC1672b;
    }

    /* renamed from: a */
    public static void m3725a(boolean z) {
        C1637b.m3749a(new C1648a(z ? C1676f.m3889f().m3894c() : null), new b());
    }
}
