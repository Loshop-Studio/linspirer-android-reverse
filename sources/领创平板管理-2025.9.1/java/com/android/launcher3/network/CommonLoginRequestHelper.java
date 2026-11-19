package com.android.launcher3.network;

// RE note 领创普通登录的客户端请求入口。服务端验权需单独验证。

import android.content.Context;
import android.os.Build;
import android.support.v4.app.FragmentActivity;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.R;
import com.android.launcher3.model.SchoolInfo;
import com.android.launcher3.model.UserInfo;
import com.android.launcher3.network.params.LoginParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.ExceptionHandler;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.android.launcher3.view.DialogUtil;
import com.huawei.hem.MobileSdkPlatformUtilities;
import com.huawei.hem.DeskSPF;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.LauncherDeviceUtils;
import com.huawei.hem.BaseLoginRequestHelper;
import com.huawei.hem.HttpCore;
import com.huawei.hem.PostBuilder;
import com.huawei.hem.UserInfoUtil;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public class CommonLoginRequestHelper extends BaseLoginRequestHelper {
    public static final String TAG = "CommonLoginRequestHelper";
    public static CommonLoginRequestHelper commonLoginRequestHelper;

    public static CommonLoginRequestHelper getInstance() {
        if (commonLoginRequestHelper == null) {
            commonLoginRequestHelper = new CommonLoginRequestHelper();
        }
        return commonLoginRequestHelper;
    }

    public void onlineLogin(final Context context, String str, final String str2, final boolean z) {
        if (UserInfoUtil.b.f4202a.m3023R() || LTKDateUtil.f2294f.mo2071p(true) == 2) {
            LTKDateUtil.m1413w(context, context.getResources().getString(R.string.disallowed_logined_by_release_control), 1);
            return;
        }
        if (LauncherDeviceUtils.m1605v(LauncherDeviceUtils.m1593j(context))) {
            LTKDateUtil.m1413w(context, "未获取到设备标识，请联系管理员", 0);
            return;
        }
        DialogUtil.showDialog(context, context.getString(R.string.logining_now));
        try {
            V2Params v2Params = new V2Params();
            LoginParams loginParams = new LoginParams(context);
            loginParams.setEmail(str);
            loginParams.setPassword(str2);
            loginParams.setAppstore_version(LTKDateUtil.m1398h("com.ndwill.swd.appstore", context));
            loginParams.setLauncher_version(LTKDateUtil.m1398h("com.android.launcher3", context));
            loginParams.setRom_version(Build.DISPLAY);
            loginParams.setSn(LauncherDeviceUtils.m1592i());
            loginParams.setRom_version(Build.DISPLAY);
            loginParams.setAndroid_id(LauncherDeviceUtils.m1586c(context));
            v2Params.setMethod(RequestUrl.LOGIN_METHOD);
            v2Params.setParams(JSON.toJSONString(loginParams));
            HttpCore c1255rb = this.mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            PostBuilder c1355vb = new PostBuilder(c1255rb);
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKResponseListener<UserInfo>(UserInfo.class) { // from class: com.android.launcher3.network.CommonLoginRequestHelper.1
                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    DialogUtil.hideDialog();
                    ExceptionHandler.handleException(context, response, true, true);
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    DialogUtil.hideDialog();
                    ExceptionHandler.handleException(context, obj, true, true);
                }

                @Override // com.android.launcher3.network.response.LTKResponseListener
                public void handleResult(UserInfo userInfo) throws NoSuchAlgorithmException {
                    LTKDateUtil.m1403m("CommonLoginRequestHelper -- online login successfully .");
                    DialogUtil.hideDialog();
                    SchoolInfo schoolinfo = userInfo.getSchoolinfo();
                    String string = Long.toString(userInfo.getId());
                    String email = userInfo.getEmail();
                    DeviceLogHelper.getInstance().recordFirstUesed(email);
                    UserInfoUtil c1424y5 = CommonLoginRequestHelper.this.userInfoUtil;
                    if (!c1424y5.f4140N) {
                        DeskSPF c0824ac = c1424y5.f4130D;
                        c0824ac.f2200b.putBoolean("agreed_privacy", true);
                        c0824ac.f2200b.commit();
                        c1424y5.f4140N = true;
                    }
                    CommonLoginRequestHelper.this.userInfoUtil.m3030Y(email);
                    if (MobileSdkPlatformUtilities.m2273N(userInfo.getGroupInfo())) {
                        CommonLoginRequestHelper.this.userInfoUtil.m3069s0("");
                    } else {
                        CommonLoginRequestHelper.this.userInfoUtil.m3069s0(userInfo.getGroupInfo().get(0).getName());
                    }
                    UserInfoUtil c1424y52 = CommonLoginRequestHelper.this.userInfoUtil;
                    boolean z2 = z;
                    if (c1424y52.f4181o != z2) {
                        c1424y52.f4181o = z2;
                        DeskSPF c0824ac2 = c1424y52.f4130D;
                        c0824ac2.f2200b.putBoolean("stu_is_save_account", z2);
                        c0824ac2.f2200b.commit();
                    }
                    UserInfoUtil c1424y53 = CommonLoginRequestHelper.this.userInfoUtil;
                    String strM1401k = LTKDateUtil.m1401k(str2);
                    if (c1424y53.f4155b != strM1401k) {
                        c1424y53.f4155b = strM1401k;
                        DeskSPF c0824ac3 = c1424y53.f4130D;
                        c0824ac3.f2200b.putString("stu_password", strM1401k);
                        c0824ac3.f2200b.commit();
                    }
                    CommonLoginRequestHelper.this.userInfoUtil.m3051j0(userInfo.getName());
                    CommonLoginRequestHelper.this.userInfoUtil.m3037c0(1);
                    CommonLoginRequestHelper.this.userInfoUtil.m3061o0(schoolinfo.getName());
                    UserInfoUtil c1424y54 = CommonLoginRequestHelper.this.userInfoUtil;
                    if (c1424y54.f4129C != string) {
                        c1424y54.f4129C = string;
                        DeskSPF c0824ac4 = c1424y54.f4130D;
                        c0824ac4.f2200b.putString("student_id", string);
                        c0824ac4.f2200b.commit();
                    }
                    CommonLoginRequestHelper.this.saveUserDeviceInfo(string, email, schoolinfo.getSchool_id(), LauncherDeviceUtils.m1593j(context));
                    ((FragmentActivity) context).finish();
                    CommonLoginRequestHelper.this.executeLoginSuccessLogic(context);
                }
            });
        } catch (Exception e) {
            DialogUtil.hideDialog();
            e.printStackTrace();
            LTKDateUtil.m1413w(context, context.getResources().getString(R.string.login_failed), 0);
        }
    }
}
