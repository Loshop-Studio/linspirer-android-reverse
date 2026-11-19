package com.android.launcher3.network.response;

import android.text.TextUtils;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.IResponseHandler;

/* loaded from: classes.dex */
public abstract class BaseResponse implements IResponseHandler {
    public abstract void onFailed(Response response);

    @Override // com.huawei.hem.InterfaceC1430yb
    public void onFailure(Object obj) {
        onFailureByNet(obj);
    }

    public abstract void onFailureByNet(Object obj);

    @Override // com.huawei.hem.InterfaceC1430yb
    public void onProgress(long j, long j2) {
    }

    @Override // com.huawei.hem.InterfaceC1430yb
    public void onSucess(String str) {
        if (!TextUtils.isEmpty(LTKDateUtil.f2289a) && !TextUtils.isEmpty(LTKDateUtil.f2290b) && !TextUtils.isEmpty(str)) {
            onSucessDecrypt(LTKDateUtil.m1407q(str));
            return;
        }
        Response response = new Response();
        response.setCode(-300);
        response.setData("");
        onFailed(response);
    }

    public abstract void onSucessDecrypt(String str);
}
