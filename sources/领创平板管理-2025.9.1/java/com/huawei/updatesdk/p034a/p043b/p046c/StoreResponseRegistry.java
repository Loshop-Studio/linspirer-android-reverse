package com.huawei.updatesdk.p034a.p043b.p046c;

import com.huawei.hem.CompilerOutline;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.UpdateResponseBean;
import com.huawei.updatesdk.service.appmgr.bean.MarketInfoRequest;
import com.huawei.updatesdk.service.appmgr.bean.MarketInfoResponse;
import com.huawei.updatesdk.service.appmgr.bean.InstalledAppsUpdateRequest;
import com.huawei.updatesdk.service.appmgr.bean.InstalledAppsUpdateResponse;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.huawei.updatesdk.a.b.c.a */
/* loaded from: classes.dex */
public class StoreResponseRegistry {

    /* renamed from: a */
    public static final Map<String, Class> f4647a;

    static {
        HashMap map = new HashMap();
        f4647a = map;
        map.put(InstalledAppsUpdateRequest.APIMETHOD, InstalledAppsUpdateResponse.class);
        f4647a.put(MarketInfoRequest.APIMETHOD, MarketInfoResponse.class);
    }

    /* renamed from: a */
    public static UpdateResponseBean m3604a(String str) throws InstantiationException {
        Class cls = f4647a.get(str);
        if (cls != null) {
            return (UpdateResponseBean) cls.newInstance();
        }
        throw new InstantiationException(CompilerOutline.m1760e("ResponseBean class not found, method:", str));
    }
}
