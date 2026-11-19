package com.huawei.updatesdk.p048b.p052b;

import android.content.Context;
import android.os.Build;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.C1594c;
import com.huawei.updatesdk.p034a.p043b.p044a.C1598a;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.C1605c;
import com.huawei.updatesdk.p048b.p053c.AbstractC1618c;
import com.huawei.updatesdk.p048b.p053c.C1617b;
import com.huawei.updatesdk.p048b.p058h.C1639a;
import com.huawei.updatesdk.service.appmgr.bean.SDKNetTransmission;

/* renamed from: com.huawei.updatesdk.b.b.c */
/* loaded from: classes.dex */
public class C1614c extends C1605c {

    @SDKNetTransmission
    public String buildNumber;

    @SDKNetTransmission
    public String density;

    @SDKNetTransmission
    public int emuiApiLevel;

    @SDKNetTransmission
    public String firmwareVersion;

    @SDKNetTransmission
    public String manufacturer;

    @SDKNetTransmission
    public String phoneType;

    @SDKNetTransmission
    public String resolution;

    /* renamed from: ts */
    @SDKNetTransmission
    public long f4683ts;

    public C1614c() {
        this.emuiApiLevel = 0;
        Context contextM3592a = C1598a.m3591c().m3592a();
        this.f4683ts = System.currentTimeMillis();
        this.firmwareVersion = Build.VERSION.RELEASE.trim();
        this.buildNumber = C1594c.m3567c();
        AbstractC1618c abstractC1618cM3690a = C1617b.m3690a();
        this.phoneType = abstractC1618cM3690a.m3695f();
        this.density = C1594c.m3572f(contextM3592a);
        this.resolution = C1594c.m3571e(contextM3592a);
        this.emuiApiLevel = C1639a.m3756d().m3757a();
        this.manufacturer = abstractC1618cM3690a.m3694e();
    }

    public String toString() {
        return getClass().getName() + " {\n\tmethod_: " + m3627b() + "\n}";
    }
}
