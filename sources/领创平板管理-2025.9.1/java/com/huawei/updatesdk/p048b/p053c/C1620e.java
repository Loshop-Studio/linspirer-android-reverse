package com.huawei.updatesdk.p048b.p053c;

import com.huawei.hms.common.PackageConstants;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.C1594c;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.huawei.updatesdk.b.c.e */
/* loaded from: classes.dex */
public class C1620e extends AbstractC1618c {
    @Override // com.huawei.updatesdk.p048b.p053c.AbstractC1618c
    /* renamed from: a */
    public String mo3684a() {
        return PackageConstants.SERVICES_PACKAGE_APPMARKET_TV;
    }

    @Override // com.huawei.updatesdk.p048b.p053c.AbstractC1618c
    /* renamed from: b */
    public int mo3685b() {
        return 1;
    }

    @Override // com.huawei.updatesdk.p048b.p053c.AbstractC1618c
    /* renamed from: c */
    public String mo3686c() {
        return C1594c.m3561a("ro.product.manufacturer", "");
    }

    @Override // com.huawei.updatesdk.p048b.p053c.AbstractC1618c
    /* renamed from: d */
    public String mo3687d() {
        return C1594c.m3561a("ro.product.hw_model", "");
    }

    @Override // com.huawei.updatesdk.p048b.p053c.AbstractC1618c
    /* renamed from: g */
    public List<String> mo3688g() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("CE1EF7188F820973C191227D95D54311ED3A65EC83E37009E898A1C058BBC775");
        return arrayList;
    }
}
