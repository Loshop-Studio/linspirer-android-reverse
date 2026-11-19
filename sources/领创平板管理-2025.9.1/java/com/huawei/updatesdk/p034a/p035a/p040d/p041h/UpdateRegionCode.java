package com.huawei.updatesdk.p034a.p035a.p040d.p041h;

import com.huawei.hms.framework.network.grs.local.model.CountryCodeBean;

/* renamed from: com.huawei.updatesdk.a.a.d.h.d */
/* loaded from: classes.dex */
public class UpdateRegionCode {

    /* renamed from: a */
    public static int f4640a = -1;

    /* renamed from: a */
    public static int m3583a() {
        if (f4640a == -1) {
            f4640a = ("zh".equals(UpdateDeviceInfoUtil.m3561a("ro.product.locale.language", "")) && "CN".equals(UpdateDeviceInfoUtil.m3561a(CountryCodeBean.LOCALE_REGION_COUNTRYSYSTEMPROP, ""))) ? 0 : 1;
        }
        return f4640a;
    }
}
