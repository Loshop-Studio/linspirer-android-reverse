package com.huawei.updatesdk.p048b.p053c;

import android.os.Build;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.WatchMarketInfo;

/* renamed from: com.huawei.updatesdk.b.c.f */
/* loaded from: classes.dex */
public class WearMarketProfile extends PhoneMarketProfile {
    @Override // com.huawei.updatesdk.p048b.p053c.C1619d, com.huawei.updatesdk.p048b.p053c.AbstractC1618c
    /* renamed from: b */
    public int mo3685b() {
        return 2;
    }

    @Override // com.huawei.updatesdk.p048b.p053c.C1619d, com.huawei.updatesdk.p048b.p053c.AbstractC1618c
    /* renamed from: d */
    public String mo3687d() {
        return WatchMarketInfo.m3584a() ? Build.PRODUCT : "";
    }
}
