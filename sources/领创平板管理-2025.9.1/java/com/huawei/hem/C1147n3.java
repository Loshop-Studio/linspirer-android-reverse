package com.huawei.hem;

import com.alibaba.sdk.android.push.CommonCallback;
import com.android.launcher3.network.DeviceInfoUploadHelper;

/* compiled from: PushCallBack.java */
/* renamed from: com.huawei.hem.n3 */
/* loaded from: classes.dex */
public class C1147n3 implements CommonCallback {
    @Override // com.alibaba.sdk.android.push.CommonCallback
    public void onFailed(String str, String str2) {
        C0850bc.m1403m("PushCallBack init cloudchannel errorcode:" + str + " errormessage:" + str2);
        DeviceInfoUploadHelper.uploadInfo();
    }

    @Override // com.alibaba.sdk.android.push.CommonCallback
    public void onSuccess(String str) {
        C0850bc.m1403m("PushCallBack init cloudchannel sucess" + str);
        DeviceInfoUploadHelper.uploadInfo();
    }
}
