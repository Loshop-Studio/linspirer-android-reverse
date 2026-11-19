package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import android.content.Context;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.model.ControlAppInfo;
import com.android.launcher3.network.params.Params;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.ExceptionHandler;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.HttpCore;
import com.huawei.hem.PostBuilder;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;
import java.util.List;

/* loaded from: classes.dex */
public class ControlAppHelper {
    public static final String TAG = "ControlAppHelper";
    public static ControlAppHelper instance;
    public Context mContext;
    public UserInfoUtil userInfoUtil = UserInfoUtil.b.f4202a;
    public HttpCore mHttpCore = new HttpCore();

    public ControlAppHelper(Context context) {
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dealApp(ControlAppInfo controlAppInfo) {
        LTKDateUtil.m1403m("ControlAppHelperpull dealApp 1");
        if (controlAppInfo != null) {
            LTKDateUtil.m1403m("ControlAppHelperpull dealApp 2");
            LTKDateUtil.m1403m("ControlAppHelperpull dealApp 3 ");
            List<String> enable_apps = controlAppInfo.getEnable_apps();
            List<String> disable_apps = controlAppInfo.getDisable_apps();
            StringBuilder sbM1765j = CompilerOutline.m1765j("ControlAppHelperpull dealApp 3 ");
            sbM1765j.append(JSON.toJSONString(enable_apps));
            LTKDateUtil.m1403m(sbM1765j.toString());
            LTKDateUtil.f2294f.mo2068m(enable_apps);
            LTKDateUtil.f2294f.mo2077u0(disable_apps);
        }
    }

    public static ControlAppHelper getInstance(Context context) {
        if (instance == null) {
            instance = new ControlAppHelper(context);
        }
        return instance;
    }

    public void request() {
        if (!LauncherMenuHelper.m3004y()) {
            LTKDateUtil.m1403m("ControlAppHelper no need request tactics");
            return;
        }
        V2Params v2Params = new V2Params();
        v2Params.setMethod(RequestUrl.DISABLE_ENABLE_APP);
        Params params = new Params(this.mContext);
        params.setEmail(this.userInfoUtil.m3052k());
        v2Params.setParams(JSON.toJSONString(params));
        HttpCore c1255rb = this.mHttpCore;
        if (c1255rb == null) {
            throw null;
        }
        PostBuilder c1355vb = new PostBuilder(c1255rb);
        c1355vb.f3777a = RequestUrl.URL;
        c1355vb.f3947e = JSON.toJSONString(v2Params);
        c1355vb.m2869b(new LTKResponseListener<ControlAppInfo>(ControlAppInfo.class) { // from class: com.android.launcher3.network.ControlAppHelper.1
            @Override // com.android.launcher3.network.response.BaseResponse
            public void onFailed(Response response) {
                LTKDateUtil.m1393c("ControlAppHelperpull ControlAppInfo failed");
                ExceptionHandler.handleException(ControlAppHelper.this.mContext, response, true, true);
            }

            @Override // com.android.launcher3.network.response.BaseResponse
            public void onFailureByNet(Object obj) {
                LTKDateUtil.m1393c("ControlAppHelperpull onFailureByNet failed by net");
            }

            @Override // com.android.launcher3.network.response.LTKResponseListener
            public void handleResult(ControlAppInfo controlAppInfo) {
                LTKDateUtil.m1403m("ControlAppHelperpull ControlAppInfo sucess");
                ControlAppHelper.this.dealApp(controlAppInfo);
            }
        });
    }
}
