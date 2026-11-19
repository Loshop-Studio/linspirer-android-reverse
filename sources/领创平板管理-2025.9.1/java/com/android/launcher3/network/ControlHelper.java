package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.activity.PromptDiaLogActivity;
import com.android.launcher3.network.params.ControlHelperParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.huawei.hem.C0824ac;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0878ce;
import com.huawei.hem.C0904de;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1255rb;
import com.huawei.hem.C1355vb;
import com.huawei.hem.C1398x4;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;
import com.huawei.hem.InterfaceC1030ic;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ControlHelper {
    public static final int CONTROL = 1;
    public static final int NORMAL = 0;
    public static final int RELEASE_CONTROL = 2;
    public static final String TAG = "ControlHelper ";
    public static C1255rb mHttpCore;
    public Context mContext;

    public static class ControlHolder {
        public static final ControlHelper instance = new ControlHelper();
    }

    private void control() {
        C0850bc.f2294f.mo1348f();
        C0850bc.f2294f.mo2056R(2);
        new Handler().postDelayed(new Runnable() { // from class: com.huawei.hem.b5
            @Override // java.lang.Runnable
            public final void run() {
                this.f2275a.m1270a();
            }
        }, 10000L);
    }

    public static ControlHelper getInstance() {
        return ControlHolder.instance;
    }

    private boolean isNeedUpload() {
        InterfaceC1030ic interfaceC1030ic = C0850bc.f2294f;
        if (interfaceC1030ic == null) {
            return false;
        }
        int iMo2071p = interfaceC1030ic.mo2071p(true);
        boolean zM3023R = C1424y5.b.f4202a.m3023R();
        C0850bc.m1403m("ControlHelper  control mode " + iMo2071p + " release control:" + zM3023R);
        return 1 != iMo2071p && zM3023R;
    }

    private void runNow() {
        new Handler().postDelayed(new Runnable() { // from class: com.huawei.hem.c5
            @Override // java.lang.Runnable
            public final void run() {
                C0850bc.f2294f.mo1329t(true);
            }
        }, 5000L);
    }

    private void showDialog() {
        Bundle bundle = new Bundle();
        bundle.putInt("action", 3);
        C1423y4.m2975V(this.mContext, PromptDiaLogActivity.class, bundle);
    }

    /* renamed from: a */
    public /* synthetic */ void m1270a() {
        showDialog();
        runNow();
    }

    public void handleHemRelease() {
        C1424y5 c1424y5 = C1424y5.b.f4202a;
        if (c1424y5.f4189s != 1) {
            c1424y5.f4189s = 1;
            C0824ac c0824ac = c1424y5.f4130D;
            c0824ac.f2200b.putInt("release_control", 1);
            c0824ac.f2200b.commit();
        }
        C0850bc.f2294f.mo2083y("com.huawei.hwid");
        C0850bc.f2294f.mo2044D();
        C0850bc.f2294f.mo1348f();
        C0850bc.f2294f.disableFireWall();
        C0850bc.f2294f.mo1328s(new ArrayList());
        C0850bc.f2294f.mo1323h();
        C0850bc.f2294f.mo1316V(new ArrayList());
        C0850bc.f2294f.enableCamera();
        C0850bc.f2294f.enableUsb();
        C0850bc.f2294f.enableBluetooth();
        C0850bc.f2294f.mo1346X();
        C0850bc.f2294f.mo1319c(true);
        C1423y4.m2972S(true);
        C0850bc.f2294f.enableGPS();
        C1398x4.b.f4050a.m2927a();
        C0850bc.f2294f.mo1304B0(C0850bc.f2294f.mo2073q());
        AppTimeLimitHelper.getInstance().clearData();
        C1424y5.b.f4202a.m3057m0(0);
        C1424y5.b.f4202a.m3035b0(0);
        C1424y5.b.f4202a.m3039d0(10000, false);
        Bundle bundle = new Bundle();
        bundle.putInt("action", 5);
        C1423y4.m2975V(this.mContext, PromptDiaLogActivity.class, bundle);
        C0850bc.f2294f.mo2056R(2);
    }

    public void handleOtherRelease() {
        C0850bc.m1403m("ControlHelper handle other devices  release control");
        C1424y5 c1424y5 = C1424y5.b.f4202a;
        if (c1424y5.f4189s != 1) {
            c1424y5.f4189s = 1;
            C0824ac c0824ac = c1424y5.f4130D;
            c0824ac.f2200b.putInt("release_control", 1);
            c0824ac.f2200b.commit();
        }
        C0850bc.f2294f.disableFireWall();
        C0850bc.f2294f.mo1328s(new ArrayList());
        C0850bc.f2294f.mo1323h();
        C0850bc.f2294f.enableCamera();
        C0850bc.f2294f.enableUsb();
        C0850bc.f2294f.enableBluetooth();
        C0850bc.f2294f.mo1319c(true);
        C1423y4.m2972S(true);
        C0850bc.f2294f.enableGPS();
        C1398x4.b.f4050a.m2927a();
        AppTimeLimitHelper.getInstance().clearData();
        C1424y5.b.f4202a.m3057m0(0);
        C1424y5.b.f4202a.m3035b0(0);
        C1424y5.b.f4202a.m3039d0(10000, false);
        C1423y4.m2959F(this.mContext);
    }

    public void handleReleaseControl(int i) {
        if (i == 1) {
            String strM1606w = C0904de.m1606w();
            if (!TextUtils.isEmpty(strM1606w) && "2.0.0".compareTo(strM1606w) <= 0) {
                handleHemRelease();
                return;
            }
            if (!(C0878ce.m1521n() || C0878ce.m1530w() || C0878ce.m1522o())) {
                handleOtherRelease();
                return;
            }
            int iMo2071p = C0850bc.f2294f.mo2071p(false);
            C0850bc.m1403m("ControlHelper  -- handle release control server " + i + " local mode:" + iMo2071p);
            if (iMo2071p != 2) {
                control();
            } else if (i == 1) {
                C0850bc.f2294f.mo1348f();
                C0850bc.f2294f.mo1329t(true);
            }
        }
    }

    public void reportControlStatus() {
        InterfaceC1030ic interfaceC1030ic = C0850bc.f2294f;
        if (interfaceC1030ic == null) {
            C0850bc.m1403m("ControlHelper  upload break by mdm null ");
            return;
        }
        int iMo2071p = interfaceC1030ic.mo2071p(!interfaceC1030ic.mo2062e0());
        C0850bc.m1403m("ControlHelper  mdm control mode " + iMo2071p);
        if (iMo2071p == -1) {
            int i = C1424y5.b.f4202a.m3023R() ? 2 : 1;
            C0850bc.m1403m("ControlHelper  weak  control mode " + i);
            iMo2071p = i;
        }
        try {
            V2Params v2Params = new V2Params();
            ControlHelperParams controlHelperParams = new ControlHelperParams(this.mContext);
            controlHelperParams.setIs_control(iMo2071p);
            v2Params.setMethod(RequestUrl.METHOD_DEVICE_CONTROL);
            v2Params.setParams(JSON.toJSONString(controlHelperParams));
            C1255rb c1255rb = mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            C1355vb c1355vb = new C1355vb(c1255rb);
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKResponseListener<Boolean>(Boolean.class) { // from class: com.android.launcher3.network.ControlHelper.1
                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    C0850bc.m1403m("ControlHelper upload control model failed");
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    C0850bc.m1403m("ControlHelper upload control model failure");
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.launcher3.network.response.LTKResponseListener
                public void handleResult(Boolean bool) {
                    C0850bc.m1403m("ControlHelper upload control model sucess");
                }
            });
        } catch (Exception e) {
            C0948f6.m1776u(e, C0948f6.m1765j("ControlHelper --JSONException:"));
        }
    }

    public ControlHelper() {
        this.mContext = GuardSecureApplication.f1640b;
        mHttpCore = new C1255rb();
        C0850bc.m1403m("ControlHelper construct Control helper");
    }
}
