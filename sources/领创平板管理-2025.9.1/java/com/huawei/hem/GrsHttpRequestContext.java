package com.huawei.hem;

import android.content.Context;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;

/* renamed from: com.huawei.hem.k8 */
/* loaded from: classes.dex */
public class GrsHttpRequestContext {

    /* renamed from: a */
    public GrsHttpResponse f3041a;

    /* renamed from: b */
    public String f3042b;

    /* renamed from: c */
    public GrsRequestObserverMarker f3043c;

    /* renamed from: d */
    public int f3044d;

    /* renamed from: e */
    public Context f3045e;

    /* renamed from: f */
    public String f3046f;

    /* renamed from: g */
    public GrsBaseInfo f3047g;

    /* renamed from: h */
    public GrsPreferencesStore f3048h;

    /* renamed from: com.huawei.hem.k8$a */
    public enum a {
        GRSPOST,
        GRSGET,
        GRSDEFAULT
    }

    public GrsHttpRequestContext(String str, int i, GrsRequestObserverMarker interfaceC1051j8, Context context, String str2, GrsBaseInfo grsBaseInfo, GrsPreferencesStore c0872c8) {
        this.f3042b = str;
        this.f3043c = interfaceC1051j8;
        this.f3044d = i;
        this.f3045e = context;
        this.f3046f = str2;
        this.f3047g = grsBaseInfo;
        this.f3048h = c0872c8;
    }
}
