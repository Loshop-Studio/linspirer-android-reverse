package com.huawei.updatesdk.p048b.p055e;

import android.content.Context;
import com.huawei.updatesdk.p048b.p058h.UpdateResourceLookup;
import com.huawei.updatesdk.service.otaupdate.MarketStoreOptions;

/* renamed from: com.huawei.updatesdk.b.e.b */
/* loaded from: classes.dex */
public class AppTouchTaskInitializer extends UpdateRegionTaskInitializer {
    @Override // com.huawei.updatesdk.p048b.p055e.AbstractC1628a
    /* renamed from: a */
    public String mo3729a() {
        return "com.huawei.apptouch.updatesdk";
    }

    @Override // com.huawei.updatesdk.p048b.p055e.AbstractC1628a
    /* renamed from: a */
    public String mo3730a(Context context) {
        return UpdateResourceLookup.m3775d(context, "upsdk_apptouch_store_url");
    }

    @Override // com.huawei.updatesdk.p048b.p055e.AbstractC1628a
    /* renamed from: b */
    public String mo3731b() {
        return MarketStoreOptions.m3889f().m3894c();
    }

    @Override // com.huawei.updatesdk.p048b.p055e.AbstractC1628a
    /* renamed from: d */
    public void mo3734d() {
    }
}
