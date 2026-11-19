package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.model.ComponentInfo;
import com.android.launcher3.network.RequestUrl;
import com.android.launcher3.network.params.ComponentParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.LTKListResponseListener;
import com.android.launcher3.network.response.Response;
import com.huawei.hem.C1424y5;
import java.util.List;

/* compiled from: ComponentHelper.java */
/* renamed from: com.huawei.hem.r5 */
/* loaded from: classes.dex */
public class C1249r5 {

    /* renamed from: c */
    public static volatile C1249r5 f3597c;

    /* renamed from: d */
    public static C1255rb f3598d;

    /* renamed from: a */
    public Context f3599a;

    /* renamed from: b */
    public C1424y5 f3600b = C1424y5.b.f4202a;

    /* compiled from: ComponentHelper.java */
    /* renamed from: com.huawei.hem.r5$a */
    public class a extends LTKListResponseListener<ComponentInfo> {
        public a(Class cls) {
            super(cls);
        }

        @Override // com.android.launcher3.network.response.LTKListResponseListener
        public void handleResult(List<ComponentInfo> list) {
            C0850bc.m1403m("ComponentHelper--get component setting sucess");
            C1249r5 c1249r5 = C1249r5.this;
            if (c1249r5 == null) {
                throw null;
            }
            String jSONString = JSON.toJSONString(list);
            String strM3046h = c1249r5.f3600b.m3046h();
            List<ComponentInfo> array = JSON.parseArray(strM3046h, ComponentInfo.class);
            if (!AbstractC1102l9.m2273N(array) && !AbstractC1102l9.m2273N(list)) {
                C0850bc.m1403m("ComponentHelper--new component and old component are not empty");
                if (C0850bc.m1401k(strM3046h).equals(C0850bc.m1401k(jSONString))) {
                    C0850bc.m1403m("ComponentHelper--new component and old component are same");
                    return;
                } else {
                    c1249r5.m2654c(array, true);
                    c1249r5.m2654c(list, false);
                }
            } else if (AbstractC1102l9.m2273N(array) && !AbstractC1102l9.m2273N(list)) {
                C0850bc.m1403m("ComponentHelperold component are empty but new component are not empty");
                c1249r5.m2654c(list, false);
            } else if (!AbstractC1102l9.m2273N(array) && AbstractC1102l9.m2273N(list)) {
                C0850bc.m1403m("ComponentHelperold component are not empty but new component empty");
                c1249r5.m2654c(array, true);
            }
            C1424y5 c1424y5 = c1249r5.f3600b;
            if (c1424y5.f4166g0 != jSONString) {
                c1424y5.f4166g0 = jSONString;
                C0824ac c0824ac = c1424y5.f4130D;
                c0824ac.f2200b.putString("setting_component", jSONString);
                c0824ac.f2200b.commit();
            }
        }

        @Override // com.android.launcher3.network.response.BaseResponse
        public void onFailed(Response response) {
            C0850bc.m1403m("ComponentHelper--get component setting failed response");
        }

        @Override // com.android.launcher3.network.response.BaseResponse
        public void onFailureByNet(Object obj) {
            C0850bc.m1403m("ComponentHelper--get component setting failed object");
        }
    }

    public C1249r5(Context context) {
        this.f3599a = context;
        f3598d = new C1255rb();
    }

    /* renamed from: a */
    public static C1249r5 m2652a() {
        if (f3597c == null) {
            synchronized (C1249r5.class) {
                if (f3597c == null) {
                    f3597c = new C1249r5(GuardSecureApplication.f1640b);
                }
            }
        }
        return f3597c;
    }

    /* renamed from: b */
    public void m2653b() {
        if (!C1423y4.m3004y()) {
            C0850bc.m1403m("ComponentHelper--device is in offline or not logined or releaseControl");
            return;
        }
        try {
            V2Params v2Params = new V2Params();
            ComponentParams componentParams = new ComponentParams(this.f3599a);
            componentParams.setEmail(this.f3600b.m3052k());
            v2Params.setMethod(RequestUrl.COMPONENT_GETSETTING);
            v2Params.setParams(JSON.toJSONString(componentParams));
            C1255rb c1255rb = f3598d;
            if (c1255rb == null) {
                throw null;
            }
            C1355vb c1355vb = new C1355vb(c1255rb);
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new a(ComponentInfo.class));
        } catch (Exception e) {
            C0948f6.m1776u(e, C0948f6.m1765j("ComponentHelper--JSONException:"));
        }
    }

    /* renamed from: c */
    public final void m2654c(List<ComponentInfo> list, boolean z) {
        if (!z) {
            for (ComponentInfo componentInfo : list) {
                ((C1055jc) C0850bc.f2294f).m2128S0(this.f3599a, new ComponentName(componentInfo.getPackage_name(), componentInfo.getComponent()));
            }
            return;
        }
        for (ComponentInfo componentInfo2 : list) {
            InterfaceC1030ic interfaceC1030ic = C0850bc.f2294f;
            Context context = this.f3599a;
            ComponentName componentName = new ComponentName(componentInfo2.getPackage_name(), componentInfo2.getComponent());
            if (((C1055jc) interfaceC1030ic) == null) {
                throw null;
            }
            StringBuilder sbM1765j = C0948f6.m1765j("AndroidImpl--enableComponent start");
            sbM1765j.append(componentName.getClassName());
            C0850bc.m1403m(sbM1765j.toString());
            try {
                context.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
            } catch (Throwable th) {
                C0948f6.m1744B(th, C0948f6.m1765j("AndroidImpl--enableComponent error:"));
            }
        }
    }
}
