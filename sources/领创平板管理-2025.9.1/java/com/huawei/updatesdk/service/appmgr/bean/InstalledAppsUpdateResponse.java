package com.huawei.updatesdk.service.appmgr.bean;

import com.huawei.updatesdk.p048b.p052b.StoreResponseEnvelope;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.huawei.updatesdk.service.appmgr.bean.e */
/* loaded from: classes.dex */
public class InstalledAppsUpdateResponse extends StoreResponseEnvelope {

    @SDKNetTransmission
    public ArrayList<ApkUpgradeInfo> list;

    @SDKNetTransmission
    public List<ApkUpgradeInfo> notRcmList;
}
