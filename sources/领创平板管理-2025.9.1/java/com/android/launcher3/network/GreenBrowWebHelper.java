package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.model.UrlInfo;
import com.android.launcher3.network.params.Params;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.LTKListResponseListener;
import com.android.launcher3.network.response.Response;
import com.huawei.hem.MobileSdkPlatformUtilities;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.HttpCore;
import com.huawei.hem.PostBuilder;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;
import java.util.List;

/* loaded from: classes.dex */
public class GreenBrowWebHelper {
    public static final String TAG = "GreenBrowWebHelper";
    public static GreenBrowWebHelper mInstances;
    public Context mContext = GuardSecureApplication.f1640b;
    public UserInfoUtil userInfoUtil = UserInfoUtil.b.f4202a;
    public HttpCore mHttpCore = new HttpCore();

    public static GreenBrowWebHelper getInstances() {
        if (mInstances == null) {
            mInstances = new GreenBrowWebHelper();
        }
        return mInstances;
    }

    public void getBrowUrlFromServer() {
        try {
            V2Params v2Params = new V2Params();
            Params params = new Params(this.mContext);
            params.setEmail(this.userInfoUtil.m3052k());
            v2Params.setMethod(RequestUrl.GET_BROW_URL);
            v2Params.setParams(JSON.toJSONString(params));
            HttpCore c1255rb = this.mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            PostBuilder c1355vb = new PostBuilder(c1255rb);
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKListResponseListener<UrlInfo>(UrlInfo.class) { // from class: com.android.launcher3.network.GreenBrowWebHelper.1
                @Override // com.android.launcher3.network.response.LTKListResponseListener
                public void handleResult(List<UrlInfo> list) {
                    Context context = GreenBrowWebHelper.this.mContext;
                    Intent intent = new Intent("com.android.laucher3.mdm.syncbrowerurl");
                    if (!MobileSdkPlatformUtilities.m2273N(list)) {
                        Bundle bundle = new Bundle();
                        for (int i = 0; i < list.size(); i++) {
                            String name = list.get(i).getName();
                            String url = list.get(i).getUrl();
                            bundle.putString(name, url);
                            LTKDateUtil.m1403m("BroadcastSenderUtil ----getBrowUrlFromServer name ==" + name + ", url==" + url);
                        }
                        intent.putExtra("urls", bundle);
                    }
                    context.sendBroadcast(intent);
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    StringBuilder sbM1765j = CompilerOutline.m1765j("GreenBrowWebHelper---get browUrl fail response code: ");
                    sbM1765j.append(response.getCode());
                    LTKDateUtil.m1403m(sbM1765j.toString());
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    LTKDateUtil.m1403m("GreenBrowWebHelper---get browUrl fail response by net ");
                }
            });
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("GreenBrowWebHelper----getBrowUrlFromServer error : "));
        }
    }

    public void handle() {
        if (LauncherMenuHelper.m3004y()) {
            getBrowUrlFromServer();
        } else {
            LTKDateUtil.m1403m("GreenBrowWebHelperis in offline model or not logined no need pull brow url");
        }
    }
}
