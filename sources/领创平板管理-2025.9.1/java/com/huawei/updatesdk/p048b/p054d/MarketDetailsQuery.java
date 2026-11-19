package com.huawei.updatesdk.p048b.p054d;

import com.huawei.updatesdk.p034a.p043b.p046c.p047c.UpdateRequestBean;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.UpdateResponseBean;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.StoreRequestCallback;
import com.huawei.updatesdk.p048b.p057g.StoreTaskAgent;
import com.huawei.updatesdk.service.appmgr.bean.MarketInfoRequest;
import com.huawei.updatesdk.service.appmgr.bean.MarketInfoResponse;
import com.huawei.updatesdk.service.otaupdate.MarketStoreOptions;
import com.huawei.updatesdk.service.otaupdate.MarketDetailsCallback;

/* renamed from: com.huawei.updatesdk.b.d.f */
/* loaded from: classes.dex */
public class MarketDetailsQuery {

    /* renamed from: a */
    public static MarketDetailsCallback f4701a;

    /* renamed from: com.huawei.updatesdk.b.d.f$b */
    public static class b implements StoreRequestCallback {
        public b() {
        }

        @Override // com.huawei.updatesdk.p034a.p043b.p046c.p047c.InterfaceC1603a
        /* renamed from: a */
        public void mo3621a(UpdateRequestBean c1605c, UpdateResponseBean c1606d) {
        }

        @Override // com.huawei.updatesdk.p034a.p043b.p046c.p047c.InterfaceC1603a
        /* renamed from: b */
        public void mo3622b(UpdateRequestBean c1605c, UpdateResponseBean c1606d) {
            if (MarketDetailsQuery.f4701a == null) {
                return;
            }
            if (!(c1606d instanceof MarketInfoResponse)) {
                MarketDetailsQuery.f4701a.mo3862a(c1606d.m3639d());
                return;
            }
            MarketInfoResponse c1649b = (MarketInfoResponse) c1606d;
            if (c1606d.m3639d() != 0 || c1606d.m3640e() != 0) {
                MarketDetailsQuery.f4701a.mo3864b(c1606d.m3639d());
            } else if (c1649b.m3801g() == null) {
                MarketDetailsQuery.f4701a.mo3862a(c1606d.m3639d());
            } else {
                MarketDetailsQuery.f4701a.mo3863a(c1649b.m3801g());
            }
        }
    }

    /* renamed from: a */
    public static void m3724a(MarketDetailsCallback interfaceC1672b) {
        f4701a = interfaceC1672b;
    }

    /* renamed from: a */
    public static void m3725a(boolean z) {
        StoreTaskAgent.m3749a(new MarketInfoRequest(z ? MarketStoreOptions.m3889f().m3894c() : null), new b());
    }
}
