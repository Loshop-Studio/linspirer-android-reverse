package com.huawei.hem;

import android.content.Context;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;

/* renamed from: com.huawei.hem.k8 */
/* loaded from: classes.dex */
public class C1076k8 {

    /* renamed from: a */
    public C1252r8 f3041a;

    /* renamed from: b */
    public String f3042b;

    /* renamed from: c */
    public InterfaceC1051j8 f3043c;

    /* renamed from: d */
    public int f3044d;

    /* renamed from: e */
    public Context f3045e;

    /* renamed from: f */
    public String f3046f;

    /* renamed from: g */
    public GrsBaseInfo f3047g;

    /* renamed from: h */
    public C0872c8 f3048h;

    /* renamed from: com.huawei.hem.k8$a */
    public enum a {
        GRSPOST,
        GRSGET,
        GRSDEFAULT
    }

    public C1076k8(String str, int i, InterfaceC1051j8 interfaceC1051j8, Context context, String str2, GrsBaseInfo grsBaseInfo, C0872c8 c0872c8) {
        this.f3042b = str;
        this.f3043c = interfaceC1051j8;
        this.f3044d = i;
        this.f3045e = context;
        this.f3046f = str2;
        this.f3047g = grsBaseInfo;
        this.f3048h = c0872c8;
    }
}
