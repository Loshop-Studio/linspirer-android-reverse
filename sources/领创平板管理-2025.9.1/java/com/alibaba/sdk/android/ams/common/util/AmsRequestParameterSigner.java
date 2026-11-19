package com.alibaba.sdk.android.ams.common.util;

import com.alibaba.sdk.android.ams.common.p008b.AmsCommonProviders;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.alibaba.sdk.android.ams.common.util.c */
/* loaded from: classes.dex */
public class AmsRequestParameterSigner {
    /* renamed from: a */
    public static Map<String, String> m539a(Map<String, String> map) {
        HashMap map2 = new HashMap();
        map2.putAll(map);
        map2.put("sign", AmsCommonProviders.m492a().mo481a(map2, "TMP_SEED_KEY"));
        return map2;
    }
}
