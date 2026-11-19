package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.activity.ShowPushMsgActivty;
import com.android.launcher3.network.params.CommandDetailParams;
import com.android.launcher3.network.params.ReportCommandParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.LTKListResponseListener;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.android.launcher3.p027db.model.PushMsg;
import com.android.launcher3.p027db.model.PushMsgDao;
import com.huawei.hem.MobileSdkPlatformUtilities;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.AgooNotificationHandler;
import com.huawei.hem.HttpCore;
import com.huawei.hem.DBController;
import com.huawei.hem.PostBuilder;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ReciverPushHelper {
    public static final int PMT_COMMAND = 1;
    public static final int PMT_MESSAGE = 3;
    public static final int PMT_STRATEGICS = 2;
    public static final String TAG = "ReciverPushHelper";
    public static ReciverPushHelper instance;
    public HttpCore mHttpCore = new HttpCore();
    public PushMsgDao pushMsgDao = DBController.m2715a().f3751c.getPushMsgDao();
    public Context mContext = GuardSecureApplication.f1640b;

    public static ReciverPushHelper getInstance() {
        if (instance == null) {
            instance = new ReciverPushHelper();
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parserPullMsg(List<PushMsg> list) {
        if (MobileSdkPlatformUtilities.m2273N(list)) {
            LTKDateUtil.m1403m("ReciverPushHelper---none device msg or command---");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (PushMsg pushMsg : list) {
            if (pushMsg.getType() == 3) {
                arrayList.add(pushMsg);
                pushMsg.setUserId(UserInfoUtil.b.f4202a.m3052k());
            } else if (pushMsg.getType() == 1) {
                String command = pushMsg.getCommand();
                if ("command_applist".equals(command) || "command_dynamic_device_info".equals(command) || "command_tactics_updated".equals(command)) {
                    AgooNotificationHandler.m2521q(this.mContext, command, Integer.parseInt(pushMsg.getActive()));
                } else {
                    reportServer(command, Integer.parseInt(pushMsg.getActive()), this.mContext);
                }
            }
        }
        if (arrayList.size() > 0) {
            Bundle bundle = new Bundle();
            bundle.putSerializable("command", arrayList);
            LauncherMenuHelper.m2977X(this.mContext, ShowPushMsgActivty.class, bundle);
            this.pushMsgDao.insertInTx(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMsg(List<PushMsg> list) {
        if (MobileSdkPlatformUtilities.m2273N(list)) {
            return;
        }
        LTKDateUtil.m1403m("ReciverPushHelper -- 数据解析完毕，执行消息");
        Bundle bundle = new Bundle();
        bundle.putSerializable("command", (Serializable) list);
        LauncherMenuHelper.m2977X(this.mContext, ShowPushMsgActivty.class, bundle);
        Iterator<PushMsg> it = list.iterator();
        while (it.hasNext()) {
            it.next().setUserId(UserInfoUtil.b.f4202a.m3052k());
        }
        this.pushMsgDao.insertInTx(list);
    }

    public synchronized void getPushMessage(int i) {
        V2Params v2Params;
        HttpCore c1255rb;
        if (UserInfoUtil.b.f4202a.m3023R()) {
            return;
        }
        try {
            v2Params = new V2Params();
            CommandDetailParams commandDetailParams = new CommandDetailParams(this.mContext);
            commandDetailParams.setEmail(UserInfoUtil.b.f4202a.m3052k());
            commandDetailParams.setType(i);
            v2Params.setMethod(RequestUrl.DEVICE_GET_MSG_OR_STRATEGY_PARAM);
            v2Params.setParams(JSON.toJSONString(commandDetailParams));
            if (this.mHttpCore == null) {
                this.mHttpCore = new HttpCore();
            }
            c1255rb = this.mHttpCore;
        } catch (Throwable th) {
            th.printStackTrace();
            LTKDateUtil.m1393c("ReciverPushHelper  ======>pullToMSg and JSONException == " + th.getMessage());
        }
        if (c1255rb == null) {
            throw null;
        }
        PostBuilder c1355vb = new PostBuilder(c1255rb);
        c1355vb.f3777a = RequestUrl.URL;
        c1355vb.f3947e = JSON.toJSONString(v2Params);
        c1355vb.m2869b(new LTKListResponseListener<PushMsg>(PushMsg.class) { // from class: com.android.launcher3.network.ReciverPushHelper.1
            @Override // com.android.launcher3.network.response.LTKListResponseListener
            public void handleResult(List<PushMsg> list) {
                ReciverPushHelper.this.showMsg(list);
            }

            @Override // com.android.launcher3.network.response.BaseResponse
            public void onFailed(Response response) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("onFailed");
                sbM1765j.append(response.toString());
                String string = sbM1765j.toString();
                Log.e(ReciverPushHelper.TAG, string);
                LTKDateUtil.m1411u(ReciverPushHelper.TAG, string);
            }

            @Override // com.android.launcher3.network.response.BaseResponse
            public void onFailureByNet(Object obj) {
                Log.e(ReciverPushHelper.TAG, "onFailureByNet");
                LTKDateUtil.m1411u(ReciverPushHelper.TAG, "onFailureByNet");
            }
        });
    }

    public void pullCommandFromServer() {
        String strM3052k = UserInfoUtil.b.f4202a.m3052k();
        if (TextUtils.isEmpty(strM3052k)) {
            LTKDateUtil.m1403m("ReciverPushHelper email is empty");
            return;
        }
        try {
            this.mHttpCore = new HttpCore();
            V2Params v2Params = new V2Params();
            CommandDetailParams commandDetailParams = new CommandDetailParams(this.mContext);
            commandDetailParams.setEmail(strM3052k);
            v2Params.setMethod(RequestUrl.DEVICE_GET_COMMAND_PARAM);
            v2Params.setParams(JSON.toJSONString(commandDetailParams));
            HttpCore c1255rb = this.mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            PostBuilder c1355vb = new PostBuilder(c1255rb);
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKListResponseListener<PushMsg>(PushMsg.class) { // from class: com.android.launcher3.network.ReciverPushHelper.2
                @Override // com.android.launcher3.network.response.LTKListResponseListener
                public void handleResult(List<PushMsg> list) {
                    LTKDateUtil.m1403m("ReciverPushHelper---get devices command success----");
                    ReciverPushHelper.this.parserPullMsg(list);
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    StringBuilder sbM1765j = CompilerOutline.m1765j("ReciverPushHelper---get devices command fail response code :");
                    sbM1765j.append(response.getCode());
                    LTKDateUtil.m1403m(sbM1765j.toString());
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    LTKDateUtil.m1403m("ReciverPushHelper---get devices command fail response failure");
                }
            });
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("ReciverPushHelper -- JSONException : ");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1393c(sbM1765j.toString());
            th.printStackTrace();
        }
    }

    public void reportServer(final String str, final int i, final Context context) {
        try {
            HttpCore c1255rb = new HttpCore();
            V2Params v2Params = new V2Params();
            ReportCommandParams reportCommandParams = new ReportCommandParams(context);
            reportCommandParams.setEmail(UserInfoUtil.b.f4202a.m3052k());
            reportCommandParams.setCommand(str);
            reportCommandParams.setActive(i);
            v2Params.setMethod(RequestUrl.REPORT_COMMAND_SERVER);
            v2Params.setParams(JSON.toJSONString(reportCommandParams));
            PostBuilder c1355vb = new PostBuilder(c1255rb);
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKResponseListener<Boolean>(Boolean.class) { // from class: com.android.launcher3.network.ReciverPushHelper.3
                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    StringBuilder sbM1765j = CompilerOutline.m1765j("push command report fail response code:");
                    sbM1765j.append(response.getCode());
                    LTKDateUtil.m1403m(sbM1765j.toString());
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    LTKDateUtil.m1403m("push command report fail response failure");
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.launcher3.network.response.LTKResponseListener
                public void handleResult(Boolean bool) {
                    LTKDateUtil.m1403m(" push command report sucess");
                    AgooNotificationHandler.m2521q(context, str, i);
                }
            });
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "ReciverPushHelper push command report JSONException == "));
        }
    }
}
