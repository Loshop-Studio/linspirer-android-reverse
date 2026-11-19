package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。

import android.os.Build;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.sdk.android.push.noonesdk.PushServiceFactory;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.model.DeviceInfoParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.huawei.hem.C0824ac;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0904de;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1255rb;
import com.huawei.hem.C1355vb;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;

/* loaded from: classes.dex */
public class DeviceInfoUploadHelper {
    public static final String TAG = "DeviceInfoUploadHelper ";

    public static void uploadInfo() {
        if (C1423y4.m3004y()) {
            GuardSecureApplication guardSecureApplication = GuardSecureApplication.f1640b;
            C1255rb c1255rb = new C1255rb();
            final C1424y5 c1424y5 = C1424y5.b.f4202a;
            final String deviceId = PushServiceFactory.getCloudPushService().getDeviceId();
            if (TextUtils.isEmpty(c1424y5.f4137K)) {
                c1424y5.f4137K = c1424y5.f4130D.f2199a.getString("push_token", "");
            }
            String str = c1424y5.f4137K;
            if (!TextUtils.isEmpty(str) && str.equals(deviceId)) {
                C0850bc.m1403m("DeviceInfoUploadHelper last token is not empty and tokens are the same no need upload");
                return;
            }
            try {
                DeviceInfoParams deviceInfoParams = new DeviceInfoParams(guardSecureApplication);
                deviceInfoParams.setEmail(c1424y5.m3052k());
                deviceInfoParams.setBrand(Build.BRAND);
                deviceInfoParams.setDeviceid(C0904de.m1592i());
                deviceInfoParams.setSystemversion(Build.VERSION.RELEASE);
                deviceInfoParams.setRomavailablesize(C0904de.m1590g(guardSecureApplication));
                deviceInfoParams.setRomtotalsize(C0904de.m1591h(guardSecureApplication));
                deviceInfoParams.setRomversion(Build.DISPLAY);
                deviceInfoParams.setWifimacaddress(C0904de.m1588e(guardSecureApplication));
                deviceInfoParams.setSimserialnumber(C0904de.m1594k(guardSecureApplication));
                deviceInfoParams.setToken(deviceId);
                deviceInfoParams.setAndroid_id(C0904de.m1586c(guardSecureApplication));
                V2Params v2Params = new V2Params();
                v2Params.setMethod(RequestUrl.UPLOAD_DEVICE_METHOD);
                v2Params.setParams(JSON.toJSONString(deviceInfoParams));
                C1355vb c1355vb = new C1355vb(c1255rb);
                c1355vb.f3777a = RequestUrl.URL;
                c1355vb.f3947e = JSON.toJSONString(v2Params);
                c1355vb.m2869b(new LTKResponseListener<Boolean>(Boolean.class) { // from class: com.android.launcher3.network.DeviceInfoUploadHelper.1
                    @Override // com.android.launcher3.network.response.BaseResponse
                    public void onFailed(Response response) {
                        StringBuilder sbM1765j = C0948f6.m1765j("DeviceInfoUploadHelper  onFaid response:");
                        sbM1765j.append(response.getCode());
                        C0850bc.m1390A(sbM1765j.toString());
                    }

                    @Override // com.android.launcher3.network.response.BaseResponse
                    public void onFailureByNet(Object obj) {
                        C0850bc.m1390A("DeviceInfoUploadHelper  upload device info  onFail by net");
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.android.launcher3.network.response.LTKResponseListener
                    public void handleResult(Boolean bool) {
                        C0850bc.m1403m("DeviceInfoUploadHelper  on sucess");
                        C1424y5 c1424y52 = c1424y5;
                        String str2 = deviceId;
                        if (c1424y52.f4137K != str2) {
                            c1424y52.f4137K = str2;
                            C0824ac c0824ac = c1424y52.f4130D;
                            c0824ac.f2200b.putString("push_token", str2);
                            c0824ac.f2200b.commit();
                        }
                    }
                });
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
