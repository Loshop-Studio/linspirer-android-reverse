package com.huawei.updatesdk.service.appmgr.bean;

import android.content.Context;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.UpdateDeviceInfoUtil;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.UpdateRegionCode;
import com.huawei.updatesdk.p034a.p035a.p040d.p042i.UpdateNetworkInfo;
import com.huawei.updatesdk.p034a.p043b.p044a.UpdateApplicationContext;
import com.huawei.updatesdk.p048b.p052b.StoreRequestEnvelope;
import com.huawei.updatesdk.p048b.p053c.UpdateMarketProfileFactory;

/* renamed from: com.huawei.updatesdk.service.appmgr.bean.a */
/* loaded from: classes.dex */
public class MarketInfoRequest extends StoreRequestEnvelope {
    public static final String APIMETHOD = "client.getMarketInfo";

    @SDKNetTransmission
    public int deviceType;

    @SDKNetTransmission
    public int international;

    @SDKNetTransmission
    public String lang;

    @SDKNetTransmission
    public String marketPkg;

    @SDKNetTransmission
    public int net;

    @SDKNetTransmission
    public int sysBits;

    @SDKNetTransmission
    public String version;

    @SDKNetTransmission
    public String subsystem = "updatesdk";

    @SDKNetTransmission
    public String code = "0200";

    public MarketInfoRequest(String str) {
        m3626a(APIMETHOD);
        this.marketPkg = str;
        this.sysBits = UpdateDeviceInfoUtil.m3574g();
        this.lang = UpdateDeviceInfoUtil.m3570e();
        m3628b("8.0");
        Context contextM3592a = UpdateApplicationContext.m3591c().m3592a();
        this.version = UpdateDeviceInfoUtil.m3577h(contextM3592a);
        this.deviceType = UpdateMarketProfileFactory.m3690a().mo3685b();
        this.international = UpdateRegionCode.m3583a();
        this.net = UpdateNetworkInfo.m3588c(contextM3592a);
    }
}
