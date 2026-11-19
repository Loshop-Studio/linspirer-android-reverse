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
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.C0824ac;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0904de;
import com.huawei.hem.C1223q4;
import com.huawei.hem.C1255rb;
import com.huawei.hem.C1355vb;
import com.huawei.hem.C1424y5;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public class CommonLoginRequestHelper extends C1223q4 {
    public static final String TAG = "CommonLoginRequestHelper";
    public static CommonLoginRequestHelper commonLoginRequestHelper;

    public static CommonLoginRequestHelper getInstance() {
        if (commonLoginRequestHelper == null) {
            commonLoginRequestHelper = new CommonLoginRequestHelper();
        }
        return commonLoginRequestHelper;
    }

    public void onlineLogin(final Context context, String str, final String str2, final boolean z) {
        if (C1424y5.b.f4202a.m3023R() || C0850bc.f2294f.mo2071p(true) == 2) {
            C0850bc.m1413w(context, context.getResources().getString(R.string.disallowed_logined_by_release_control), 1);
            return;
        }
        if (C0904de.m1605v(C0904de.m1593j(context))) {
            C0850bc.m1413w(context, "未获取到设备标识，请联系管理员", 0);
            return;
        }
        DialogUtil.showDialog(context, context.getString(R.string.logining_now));
        try {
            V2Params v2Params = new V2Params();
            LoginParams loginParams = new LoginParams(context);
            loginParams.setEmail(str);
            loginParams.setPassword(str2);
            loginParams.setAppstore_version(C0850bc.m1398h("com.ndwill.swd.appstore", context));
            loginParams.setLauncher_version(C0850bc.m1398h("com.android.launcher3", context));
            loginParams.setRom_version(Build.DISPLAY);
            loginParams.setSn(C0904de.m1592i());
            loginParams.setRom_version(Build.DISPLAY);
            loginParams.setAndroid_id(C0904de.m1586c(context));
            v2Params.setMethod(RequestUrl.LOGIN_METHOD);
            v2Params.setParams(JSON.toJSONString(loginParams));
            C1255rb c1255rb = this.mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            C1355vb c1355vb = new C1355vb(c1255rb);
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
                    C0850bc.m1403m("CommonLoginRequestHelper -- online login successfully .");
                    DialogUtil.hideDialog();
                    SchoolInfo schoolinfo = userInfo.getSchoolinfo();
                    String string = Long.toString(userInfo.getId());
                    String email = userInfo.getEmail();
                    DeviceLogHelper.getInstance().recordFirstUesed(email);
                    C1424y5 c1424y5 = CommonLoginRequestHelper.this.userInfoUtil;
                    if (!c1424y5.f4140N) {
                        C0824ac c0824ac = c1424y5.f4130D;
                        c0824ac.f2200b.putBoolean("agreed_privacy", true);
                        c0824ac.f2200b.commit();
                        c1424y5.f4140N = true;
                    }
                    CommonLoginRequestHelper.this.userInfoUtil.m3030Y(email);
                    if (AbstractC1102l9.m2273N(userInfo.getGroupInfo())) {
                        CommonLoginRequestHelper.this.userInfoUtil.m3069s0("");
                    } else {
                        CommonLoginRequestHelper.this.userInfoUtil.m3069s0(userInfo.getGroupInfo().get(0).getName());
                    }
                    C1424y5 c1424y52 = CommonLoginRequestHelper.this.userInfoUtil;
                    boolean z2 = z;
                    if (c1424y52.f4181o != z2) {
                        c1424y52.f4181o = z2;
                        C0824ac c0824ac2 = c1424y52.f4130D;
                        c0824ac2.f2200b.putBoolean("stu_is_save_account", z2);
                        c0824ac2.f2200b.commit();
                    }
                    C1424y5 c1424y53 = CommonLoginRequestHelper.this.userInfoUtil;
                    String strM1401k = C0850bc.m1401k(str2);
                    if (c1424y53.f4155b != strM1401k) {
                        c1424y53.f4155b = strM1401k;
                        C0824ac c0824ac3 = c1424y53.f4130D;
                        c0824ac3.f2200b.putString("stu_password", strM1401k);
                        c0824ac3.f2200b.commit();
                    }
                    CommonLoginRequestHelper.this.userInfoUtil.m3051j0(userInfo.getName());
                    CommonLoginRequestHelper.this.userInfoUtil.m3037c0(1);
                    CommonLoginRequestHelper.this.userInfoUtil.m3061o0(schoolinfo.getName());
                    C1424y5 c1424y54 = CommonLoginRequestHelper.this.userInfoUtil;
                    if (c1424y54.f4129C != string) {
                        c1424y54.f4129C = string;
                        C0824ac c0824ac4 = c1424y54.f4130D;
                        c0824ac4.f2200b.putString("student_id", string);
                        c0824ac4.f2200b.commit();
                    }
                    CommonLoginRequestHelper.this.saveUserDeviceInfo(string, email, schoolinfo.getSchool_id(), C0904de.m1593j(context));
                    ((FragmentActivity) context).finish();
                    CommonLoginRequestHelper.this.executeLoginSuccessLogic(context);
                }
            });
        } catch (Exception e) {
            DialogUtil.hideDialog();
            e.printStackTrace();
            C0850bc.m1413w(context, context.getResources().getString(R.string.login_failed), 0);
        }
    }
}
