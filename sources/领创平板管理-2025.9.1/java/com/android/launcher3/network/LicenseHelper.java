package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.R;
import com.android.launcher3.activity.LicenseActivity;
import com.android.launcher3.network.params.LicenseParmas;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.android.launcher3.view.DialogUtil;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.LauncherDeviceUtils;
import com.huawei.hem.LicenseActivityResultCallback;
import com.huawei.hem.HttpCore;
import com.huawei.hem.PostBuilder;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;
import com.huawei.hem.LicenseCallBack;

/* loaded from: classes.dex */
public class LicenseHelper {
    public static final String TAG = "LicenseHelper ";
    public Context mContext;
    public HttpCore mHttpCore;
    public LicenseCallBack mLicenseCallBack;
    public UserInfoUtil userInfoUtil;

    public static final class LicenseHelperHolder {
        public static final LicenseHelper instance = new LicenseHelper();
    }

    public static LicenseHelper getInstance() {
        return LicenseHelperHolder.instance;
    }

    public void setCallBack(LicenseCallBack interfaceC1021i3) {
        this.mLicenseCallBack = interfaceC1021i3;
    }

    public boolean startCheck(Context context, boolean z, boolean z2) {
        String strM3072u = this.userInfoUtil.m3072u();
        if (TextUtils.isEmpty(strM3072u) && !z) {
            LTKDateUtil.m1403m("LicenseHelper not from login but license is empty need check");
            LauncherMenuHelper.m2974U(context, LicenseActivity.class);
            return false;
        }
        if (!z2) {
            return true;
        }
        startRegisterLicense(strM3072u);
        return true;
    }

    public void startRegisterLicense(final String str) {
        if (UserInfoUtil.b.f4202a.m3023R() || TextUtils.isEmpty(str)) {
            LTKDateUtil.m1403m("LicenseHelper license is empty or release control no need check");
            return;
        }
        try {
            LTKDateUtil.m1403m("LicenseHelper begin to checkLicense from server");
            LicenseParmas licenseParmas = new LicenseParmas(this.mContext);
            licenseParmas.setLicenseserial(str);
            licenseParmas.setDeviceid(LauncherDeviceUtils.m1592i());
            licenseParmas.setDevicesn(LauncherDeviceUtils.m1592i());
            V2Params v2Params = new V2Params();
            v2Params.setMethod(RequestUrl.LICENSE_METHOD);
            v2Params.setParams(JSON.toJSONString(licenseParmas));
            HttpCore c1255rb = this.mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            PostBuilder c1355vb = new PostBuilder(c1255rb);
            c1355vb.f3777a = RequestUrl.LICENSE_URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKResponseListener<Boolean>(Boolean.class) { // from class: com.android.launcher3.network.LicenseHelper.1
                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    int code = response.getCode();
                    int i = R.string.license_error_note;
                    if (code == -22800) {
                        LicenseHelper.this.userInfoUtil.m3045g0("");
                        i = R.string.device_logout_note;
                        if (LicenseHelper.this.mLicenseCallBack != null) {
                            ((LicenseActivityResultCallback) LicenseHelper.this.mLicenseCallBack).m2258a();
                        }
                    } else if (code == -22600) {
                        LicenseHelper.this.userInfoUtil.m3045g0("");
                        i = R.string.license_upper_limit_note;
                        if (LicenseHelper.this.mLicenseCallBack != null) {
                            ((LicenseActivityResultCallback) LicenseHelper.this.mLicenseCallBack).m2258a();
                        }
                    } else if (code == -22400 || code == -21600) {
                        LicenseHelper.this.userInfoUtil.m3045g0("");
                        if (LicenseHelper.this.mLicenseCallBack != null) {
                            ((LicenseActivityResultCallback) LicenseHelper.this.mLicenseCallBack).m2258a();
                        }
                    } else if (LicenseHelper.this.mLicenseCallBack != null) {
                        ((LicenseActivityResultCallback) LicenseHelper.this.mLicenseCallBack).m2259b();
                    }
                    LTKDateUtil.m1414x(LicenseHelper.this.mContext, i);
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    if (LicenseHelper.this.mLicenseCallBack != null) {
                        ((LicenseActivityResultCallback) LicenseHelper.this.mLicenseCallBack).m2259b();
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.launcher3.network.response.LTKResponseListener
                public void handleResult(Boolean bool) {
                    LTKDateUtil.m1403m("LicenseHelper  license.register , Request Successfully");
                    LicenseHelper.this.userInfoUtil.m3045g0(str);
                    if (LicenseHelper.this.mLicenseCallBack != null) {
                        LicenseActivityResultCallback c1095l2 = (LicenseActivityResultCallback) LicenseHelper.this.mLicenseCallBack;
                        if (c1095l2 == null) {
                            throw null;
                        }
                        DialogUtil.hideDialog();
                        LicenseActivity licenseActivity = c1095l2.f3149a;
                        Intent intent = new Intent("com.linspirer.edu.registerLicense");
                        if (!TextUtils.isEmpty("com.zykj.manage")) {
                            intent.setPackage("com.zykj.manage");
                        }
                        licenseActivity.sendBroadcast(intent);
                        c1095l2.f3149a.finish();
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            LicenseCallBack interfaceC1021i3 = this.mLicenseCallBack;
            if (interfaceC1021i3 != null) {
                ((LicenseActivityResultCallback) interfaceC1021i3).m2259b();
            }
        }
    }

    public LicenseHelper() {
        this.mContext = GuardSecureApplication.f1640b;
        this.userInfoUtil = UserInfoUtil.b.f4202a;
        this.mHttpCore = new HttpCore();
    }
}
