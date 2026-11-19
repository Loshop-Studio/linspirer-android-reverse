package com.huawei.updatesdk.p048b.p052b;

import android.content.Context;
import android.os.Build;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.UpdateDeviceInfoUtil;
import com.huawei.updatesdk.p034a.p043b.p044a.UpdateApplicationContext;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.UpdateRequestBean;
import com.huawei.updatesdk.p048b.p053c.UpdateMarketProfile;
import com.huawei.updatesdk.p048b.p053c.UpdateMarketProfileFactory;
import com.huawei.updatesdk.p048b.p058h.EmuiSupportInfo;
import com.huawei.updatesdk.service.appmgr.bean.SDKNetTransmission;

/* renamed from: com.huawei.updatesdk.b.b.c */
/* loaded from: classes.dex */
public class StoreRequestEnvelope extends UpdateRequestBean {

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

    public StoreRequestEnvelope() {
        this.emuiApiLevel = 0;
        Context contextM3592a = UpdateApplicationContext.m3591c().m3592a();
        this.f4683ts = System.currentTimeMillis();
        this.firmwareVersion = Build.VERSION.RELEASE.trim();
        this.buildNumber = UpdateDeviceInfoUtil.m3567c();
        UpdateMarketProfile abstractC1618cM3690a = UpdateMarketProfileFactory.m3690a();
        this.phoneType = abstractC1618cM3690a.m3695f();
        this.density = UpdateDeviceInfoUtil.m3572f(contextM3592a);
        this.resolution = UpdateDeviceInfoUtil.m3571e(contextM3592a);
        this.emuiApiLevel = EmuiSupportInfo.m3756d().m3757a();
        this.manufacturer = abstractC1618cM3690a.m3694e();
    }

    public String toString() {
        return getClass().getName() + " {\n\tmethod_: " + m3627b() + "\n}";
    }
}
