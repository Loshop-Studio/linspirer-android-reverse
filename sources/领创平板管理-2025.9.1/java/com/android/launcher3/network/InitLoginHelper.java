package com.android.launcher3.network;

// RE note 初次登录请求的客户端编排入口。

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.LauncherNew;
import com.android.launcher3.R;
import com.android.launcher3.activity.LoginActivity;
import com.android.launcher3.model.SchoolInfo;
import com.android.launcher3.model.UserInfo;
import com.android.launcher3.network.params.InitLoginParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.ExceptionHandler;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.C0824ac;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0904de;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1223q4;
import com.huawei.hem.C1255rb;
import com.huawei.hem.C1355vb;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;

/* loaded from: classes.dex */
public class InitLoginHelper extends C1223q4 {
    public static final String TAG = "InitLoginHelper";
    public static InitLoginHelper initLoginHelper;

    public static InitLoginHelper getInstance() {
        if (initLoginHelper == null) {
            initLoginHelper = new InitLoginHelper();
        }
        return initLoginHelper;
    }

    private void initISVLoginUser(final Context context, String str, String str2, final String str3, String str4, String str5, String str6, String str7) {
        if (C1424y5.b.f4202a.m3023R() || C0850bc.f2294f.mo2071p(false) == 2) {
            C0850bc.m1413w(context, context.getResources().getString(R.string.disallowed_logined_by_release_control), 1);
            return;
        }
        if (C0904de.m1605v(C0904de.m1593j(context))) {
            C0850bc.m1413w(context, "未获取到设备标识，请联系管理员", 0);
            syncISVLoginState(false, context);
            return;
        }
        V2Params v2Params = new V2Params();
        InitLoginParams initLoginParams = new InitLoginParams(context);
        initLoginParams.setEmail(str);
        initLoginParams.setSchoolid(str4);
        initLoginParams.setClassname(str5);
        initLoginParams.setUsername(str2);
        initLoginParams.setInterest_class(str7);
        v2Params.setParams(JSON.toJSONString(initLoginParams));
        v2Params.setMethod(RequestUrl.INIT_MEHTOD);
        try {
            C1255rb c1255rb = this.mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            C1355vb c1355vb = new C1355vb(c1255rb);
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.f3778b = "initHandler";
            c1355vb.m2869b(new LTKResponseListener<UserInfo>(UserInfo.class) { // from class: com.android.launcher3.network.InitLoginHelper.1
                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    C0850bc.m1393c("InitLoginHelper -- init ISV login failed .");
                    ExceptionHandler.handleException(context, response, true, true);
                    InitLoginHelper.this.syncISVLoginState(false, context);
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    ExceptionHandler.handleException(context, obj, true, true);
                    InitLoginHelper.this.syncISVLoginState(false, context);
                }

                @Override // com.android.launcher3.network.response.LTKResponseListener
                public void handleResult(UserInfo userInfo) {
                    C0850bc.m1403m("InitLoginHelper -- init ISV login successfully .");
                    String name = userInfo.getName();
                    String email = userInfo.getEmail();
                    String string = Long.toString(userInfo.getId());
                    SchoolInfo schoolinfo = userInfo.getSchoolinfo();
                    String school_id = schoolinfo.getSchool_id();
                    DeviceLogHelper.getInstance().recordFirstUesed(email);
                    InitLoginHelper.this.userInfoUtil.m3051j0(name);
                    InitLoginHelper.this.userInfoUtil.m3061o0(schoolinfo.getName());
                    InitLoginHelper.this.userInfoUtil.m3037c0(1);
                    InitLoginHelper.this.userInfoUtil.m3030Y(email);
                    C1424y5 c1424y5 = InitLoginHelper.this.userInfoUtil;
                    if (c1424y5.f4129C != string) {
                        c1424y5.f4129C = string;
                        C0824ac c0824ac = c1424y5.f4130D;
                        c0824ac.f2200b.putString("student_id", string);
                        c0824ac.f2200b.commit();
                    }
                    C1424y5 c1424y52 = InitLoginHelper.this.userInfoUtil;
                    String str8 = str3;
                    if (c1424y52.f4161e != str8) {
                        c1424y52.f4161e = str8;
                        C0824ac c0824ac2 = c1424y52.f4130D;
                        c0824ac2.f2200b.putString("mobile", str8);
                        c0824ac2.f2200b.commit();
                    }
                    InitLoginHelper.this.saveUserDeviceInfo(string, email, school_id, C0904de.m1593j(context));
                    InitLoginHelper.this.syncISVLoginState(true, context);
                    Context context2 = context;
                    if (context2 instanceof LoginActivity) {
                        ((FragmentActivity) context2).finish();
                        C1423y4.m2974U(context, LauncherNew.class);
                    }
                    InitLoginHelper.this.executeLoginSuccessLogic(context);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            C0850bc.m1403m("InitLoginHelper -- initISVLoginUser error = " + e.getMessage());
        }
    }

    private void offlineInitLoginByDaite(String str, String str2, Context context) {
        C1424y5 c1424y5 = this.userInfoUtil;
        if (TextUtils.isEmpty(c1424y5.f4161e)) {
            c1424y5.f4161e = c1424y5.f4130D.f2199a.getString("mobile", "");
        }
        String str3 = c1424y5.f4161e;
        String strM3052k = this.userInfoUtil.m3052k();
        C0850bc.m1403m("InitLoginHelper -- offlineInitLoginByDaite mobileLocal = " + str3 + " , emailLocal = " + strM3052k);
        if (!str3.equals(str2) || !strM3052k.equals(str)) {
            syncISVLoginState(false, context);
            return;
        }
        syncISVLoginState(true, context);
        this.userInfoUtil.m3041e0(true);
        DeviceLogHelper.getInstance().recordAccountOfflineLogin();
    }

    private void offlineInitLoginBySeewo(Context context) {
        syncISVLoginState(true, context);
        this.userInfoUtil.m3041e0(true);
        DeviceLogHelper.getInstance().recordAccountOfflineLogin();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncISVLoginState(boolean z, Context context) {
        C0850bc.m1393c("InitLoginHelper syncISVLoginState " + z);
        if ((context instanceof LoginActivity) || "zhongyukejiao" == "huihong" || "zhongyukejiao" == "meiwo") {
            C0850bc.m1393c("InitLoginHelper sendInitLoginStatus ");
            C0850bc.m1403m("send broadcast to isv by init status:" + z);
            Intent intent = new Intent("com.android.launcher3.mdm.INIT_USER_OK");
            intent.putExtra("isOK", z);
            context.sendBroadcast(intent);
            return;
        }
        C0850bc.m1403m("send broadcast to isv by init twice status:" + z);
        Intent intent2 = new Intent("com.android.launcher3.mdm.INIT_USER_TWICE");
        intent2.putExtra("isOK", z);
        context.sendBroadcast(intent2);
        if (z) {
            return;
        }
        C0850bc.m1393c("InitLoginHelper logined failed need logout");
        C1423y4.m2955B(context, true);
    }

    public void startInitLogin(Context context, Intent intent) {
        if (intent == null || isDoubleClickOrTooFast()) {
            return;
        }
        String stringExtra = intent.getStringExtra("userid");
        String stringExtra2 = intent.getStringExtra("username");
        String stringExtra3 = intent.getStringExtra("schoolid");
        String stringExtra4 = intent.getStringExtra("classname");
        String stringExtra5 = intent.getStringExtra("txurl");
        String stringExtra6 = intent.getStringExtra("token");
        String stringExtra7 = intent.getStringExtra("classid");
        String string = null;
        if (intent.hasExtra("interestClass")) {
            String[] stringArrayExtra = intent.getStringArrayExtra("interestClass");
            if (!AbstractC1102l9.m2274O(stringArrayExtra)) {
                string = JSON.toJSON(stringArrayExtra).toString();
                C0948f6.m1779x("InitLoginHelperinterest class:", string);
            }
        }
        String[] stringArrayExtra2 = intent.getStringArrayExtra("interestClass");
        String string2 = !AbstractC1102l9.m2274O(stringArrayExtra2) ? JSON.toJSON(stringArrayExtra2).toString() : string;
        StringBuilder sbM1770o = C0948f6.m1770o("InitLoginHelper -- account: ", stringExtra, " , username: ", stringExtra2, " , schoolid: ");
        sbM1770o.append(stringExtra3);
        sbM1770o.append(" , classname: ");
        sbM1770o.append(stringExtra4);
        sbM1770o.append(" , txurl: ");
        sbM1770o.append(stringExtra5);
        sbM1770o.append(" , token: ");
        sbM1770o.append(stringExtra6);
        sbM1770o.append(" , jdclassid: ");
        sbM1770o.append(stringExtra7);
        sbM1770o.append(" ,interest = ");
        sbM1770o.append(string2);
        C0850bc.m1390A(sbM1770o.toString());
        initISVLoginUser(context, stringExtra, TextUtils.isEmpty(stringExtra2.trim()) ? stringExtra : stringExtra2, "", stringExtra3, TextUtils.isEmpty(stringExtra4.trim()) ? "" : stringExtra4, stringExtra7, string2);
    }
}
