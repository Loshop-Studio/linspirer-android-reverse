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
import com.huawei.hem.DeskSPF;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.LauncherDeviceUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.HttpCore;
import com.huawei.hem.PostBuilder;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;

/* loaded from: classes.dex */
public class DeviceInfoUploadHelper {
    public static final String TAG = "DeviceInfoUploadHelper ";

    public static void uploadInfo() {
        if (LauncherMenuHelper.m3004y()) {
            GuardSecureApplication guardSecureApplication = GuardSecureApplication.f1640b;
            HttpCore c1255rb = new HttpCore();
            final UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
            final String deviceId = PushServiceFactory.getCloudPushService().getDeviceId();
            if (TextUtils.isEmpty(c1424y5.f4137K)) {
                c1424y5.f4137K = c1424y5.f4130D.f2199a.getString("push_token", "");
            }
            String str = c1424y5.f4137K;
            if (!TextUtils.isEmpty(str) && str.equals(deviceId)) {
                LTKDateUtil.m1403m("DeviceInfoUploadHelper last token is not empty and tokens are the same no need upload");
                return;
            }
            try {
                DeviceInfoParams deviceInfoParams = new DeviceInfoParams(guardSecureApplication);
                deviceInfoParams.setEmail(c1424y5.m3052k());
                deviceInfoParams.setBrand(Build.BRAND);
                deviceInfoParams.setDeviceid(LauncherDeviceUtils.m1592i());
                deviceInfoParams.setSystemversion(Build.VERSION.RELEASE);
                deviceInfoParams.setRomavailablesize(LauncherDeviceUtils.m1590g(guardSecureApplication));
                deviceInfoParams.setRomtotalsize(LauncherDeviceUtils.m1591h(guardSecureApplication));
                deviceInfoParams.setRomversion(Build.DISPLAY);
                deviceInfoParams.setWifimacaddress(LauncherDeviceUtils.m1588e(guardSecureApplication));
                deviceInfoParams.setSimserialnumber(LauncherDeviceUtils.m1594k(guardSecureApplication));
                deviceInfoParams.setToken(deviceId);
                deviceInfoParams.setAndroid_id(LauncherDeviceUtils.m1586c(guardSecureApplication));
                V2Params v2Params = new V2Params();
                v2Params.setMethod(RequestUrl.UPLOAD_DEVICE_METHOD);
                v2Params.setParams(JSON.toJSONString(deviceInfoParams));
                PostBuilder c1355vb = new PostBuilder(c1255rb);
                c1355vb.f3777a = RequestUrl.URL;
                c1355vb.f3947e = JSON.toJSONString(v2Params);
                c1355vb.m2869b(new LTKResponseListener<Boolean>(Boolean.class) { // from class: com.android.launcher3.network.DeviceInfoUploadHelper.1
                    @Override // com.android.launcher3.network.response.BaseResponse
                    public void onFailed(Response response) {
                        StringBuilder sbM1765j = CompilerOutline.m1765j("DeviceInfoUploadHelper  onFaid response:");
                        sbM1765j.append(response.getCode());
                        LTKDateUtil.m1390A(sbM1765j.toString());
                    }

                    @Override // com.android.launcher3.network.response.BaseResponse
                    public void onFailureByNet(Object obj) {
                        LTKDateUtil.m1390A("DeviceInfoUploadHelper  upload device info  onFail by net");
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.android.launcher3.network.response.LTKResponseListener
                    public void handleResult(Boolean bool) {
                        LTKDateUtil.m1403m("DeviceInfoUploadHelper  on sucess");
                        UserInfoUtil c1424y52 = c1424y5;
                        String str2 = deviceId;
                        if (c1424y52.f4137K != str2) {
                            c1424y52.f4137K = str2;
                            DeskSPF c0824ac = c1424y52.f4130D;
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
