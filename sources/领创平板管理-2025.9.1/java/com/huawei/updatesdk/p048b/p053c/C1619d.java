package com.huawei.updatesdk.p048b.p053c;

import com.huawei.hms.common.PackageConstants;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.C1594c;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.huawei.updatesdk.b.c.d */
/* loaded from: classes.dex */
public class C1619d extends AbstractC1618c {
    @Override // com.huawei.updatesdk.p048b.p053c.AbstractC1618c
    /* renamed from: a */
    public String mo3684a() {
        return PackageConstants.SERVICES_PACKAGE_APPMARKET;
    }

    @Override // com.huawei.updatesdk.p048b.p053c.AbstractC1618c
    /* renamed from: b */
    public int mo3685b() {
        return 0;
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
        arrayList.add("3BAF59A2E5331C30675FAB35FF5FFF0D116142D3D4664F1C3CB804068B40614F");
        arrayList.add("FFE391E0EA186D0734ED601E4E70E3224B7309D48E2075BAC46D8C667EAE7212");
        return arrayList;
    }
}
