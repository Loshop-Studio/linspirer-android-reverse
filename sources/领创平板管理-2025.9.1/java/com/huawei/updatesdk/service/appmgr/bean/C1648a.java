package com.huawei.updatesdk.service.appmgr.bean;

import android.content.Context;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.C1594c;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.C1595d;
import com.huawei.updatesdk.p034a.p035a.p040d.p042i.C1597a;
import com.huawei.updatesdk.p034a.p043b.p044a.C1598a;
import com.huawei.updatesdk.p048b.p052b.C1614c;
import com.huawei.updatesdk.p048b.p053c.C1617b;

/* renamed from: com.huawei.updatesdk.service.appmgr.bean.a */
/* loaded from: classes.dex */
public class C1648a extends C1614c {
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

    public C1648a(String str) {
        m3626a(APIMETHOD);
        this.marketPkg = str;
        this.sysBits = C1594c.m3574g();
        this.lang = C1594c.m3570e();
        m3628b("8.0");
        Context contextM3592a = C1598a.m3591c().m3592a();
        this.version = C1594c.m3577h(contextM3592a);
        this.deviceType = C1617b.m3690a().mo3685b();
        this.international = C1595d.m3583a();
        this.net = C1597a.m3588c(contextM3592a);
    }
}
