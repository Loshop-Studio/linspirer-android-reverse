package com.huawei.hem;

import android.content.Context;
import android.provider.Settings;
import anetwork.channel.util.RequestConstant;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.network.RequestUrl;
import com.android.launcher3.network.params.SougouInputParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.p027db.model.SougouSetting;
import com.huawei.hem.UserInfoUtil;

/* compiled from: SouGouControlHelper.java */
/* renamed from: com.huawei.hem.u4 */
/* loaded from: classes.dex */
public class C1323u4 {

    /* renamed from: c */
    public static C1323u4 f3840c;

    /* renamed from: a */
    public Context f3841a;

    /* renamed from: b */
    public HttpCore f3842b = new HttpCore();

    public C1323u4(Context context) {
        this.f3841a = context;
    }

    /* renamed from: a */
    public static void m2782a(C1323u4 c1323u4, int i, String str) {
        if (c1323u4 == null) {
            throw null;
        }
        try {
            if (i == 0) {
                Settings.Secure.putString(c1323u4.f3841a.getContentResolver(), str, RequestConstant.FALSE);
            } else if (i != 1) {
            } else {
                Settings.Secure.putString(c1323u4.f3841a.getContentResolver(), str, RequestConstant.TRUE);
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SouGouControlHelper--set fuzzyAssociative error:"));
        }
    }

    /* renamed from: b */
    public static void m2783b(C1323u4 c1323u4, int i, String str) {
        if (c1323u4 == null) {
            throw null;
        }
        try {
            if (i == 0) {
                Settings.Secure.putString(c1323u4.f3841a.getContentResolver(), str, "FUNCTION_SWITCH_CLOSE_HIND");
            } else if (i == 1) {
                Settings.Secure.putString(c1323u4.f3841a.getContentResolver(), str, "FUNCTION_SWITCH_OPEN");
            } else if (i != 2) {
            } else {
                Settings.Secure.putString(c1323u4.f3841a.getContentResolver(), str, "FUNCTION_SWITCH_CLOSE_DISABLE");
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SouGouControlHelper--set fuzzyAssociative error:"));
        }
    }

    /* renamed from: c */
    public static C1323u4 m2784c(Context context) {
        if (f3840c == null) {
            f3840c = new C1323u4(context);
        }
        return f3840c;
    }

    /* renamed from: d */
    public void m2785d() {
        if (LauncherMenuHelper.m3004y()) {
            LTKDateUtil.m1403m("SouGouControlHelper----getSougouSetting from server----");
            try {
                V2Params v2Params = new V2Params();
                SougouInputParams sougouInputParams = new SougouInputParams(this.f3841a);
                sougouInputParams.setEmail(UserInfoUtil.b.f4202a.m3052k());
                v2Params.setMethod(RequestUrl.SOUGOU_SETTING);
                v2Params.setParams(JSON.toJSONString(sougouInputParams));
                HttpCore c1255rb = this.f3842b;
                if (c1255rb == null) {
                    throw null;
                }
                PostBuilder c1355vb = new PostBuilder(c1255rb);
                c1355vb.f3777a = RequestUrl.URL;
                c1355vb.f3947e = JSON.toJSONString(v2Params);
                c1355vb.m2869b(new C1298t4(this, SougouSetting.class));
            } catch (Throwable th) {
                CompilerOutline.m1745C(th, CompilerOutline.m1765j("SouGouControlHelper---get sougou setting error:"));
            }
        }
    }
}
