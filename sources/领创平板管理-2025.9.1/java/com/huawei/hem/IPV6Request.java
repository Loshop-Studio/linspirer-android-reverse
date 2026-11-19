package com.huawei.hem;

import android.net.Uri;
import android.text.TextUtils;
import com.loc.AMapNetworkRequest;

/* compiled from: IPV6Request.java */
/* renamed from: com.huawei.hem.j1 */
/* loaded from: classes.dex */
public abstract class IPV6Request extends AMapNetworkRequest {
    @Override // com.loc.AbstractC1728ar
    /* renamed from: c */
    public String mo1739c() {
        Uri.Builder builderBuildUpon;
        String str;
        if (TextUtils.isEmpty(mo1737b())) {
            return mo1737b();
        }
        String strMo1737b = mo1737b();
        Uri uri = Uri.parse(strMo1737b);
        if (uri.getAuthority().startsWith("dualstack-")) {
            return strMo1737b;
        }
        if (uri.getAuthority().startsWith("restsdk.amap.com")) {
            builderBuildUpon = uri.buildUpon();
            str = "dualstack-arestapi.amap.com";
        } else {
            builderBuildUpon = uri.buildUpon();
            str = "dualstack-" + uri.getAuthority();
        }
        return builderBuildUpon.authority(str).build().toString();
    }
}
