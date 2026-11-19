package com.huawei.hem;

import com.android.launcher3.activity.PromptDiaLogActivity;
import com.android.launcher3.network.response.ExceptionHandler;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;

/* compiled from: PromptDiaLogActivity.java */
/* renamed from: com.huawei.hem.n2 */
/* loaded from: classes.dex */
public class PromptDiaLogActivityResponseListener extends LTKResponseListener<Boolean> {

    /* renamed from: a */
    public final /* synthetic */ PromptDiaLogActivity f3285a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PromptDiaLogActivityResponseListener(PromptDiaLogActivity promptDiaLogActivity, Class cls) {
        super(cls);
        this.f3285a = promptDiaLogActivity;
    }

    @Override // com.android.launcher3.network.response.LTKResponseListener
    public void handleResult(Boolean bool) {
        LTKDateUtil.m1403m("PromptDiaLogActivity cancel distribute sucess");
        PromptDiaLogActivity.m1206f(this.f3285a);
    }

    @Override // com.android.launcher3.network.response.BaseResponse
    public void onFailed(Response response) {
        LTKDateUtil.m1403m("PromptDiaLogActivity cancel distribute failed");
        ExceptionHandler.handleException(this.f3285a, response, true, false);
        this.f3285a.finish();
    }

    @Override // com.android.launcher3.network.response.BaseResponse
    public void onFailureByNet(Object obj) {
        LTKDateUtil.m1403m("PromptDiaLogActivity cancel distribute failure");
        this.f3285a.finish();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.android.launcher3.network.response.LTKResponseListener
    public void handleResult(Boolean bool) {
        LTKDateUtil.m1403m("PromptDiaLogActivity cancel distribute sucess");
        PromptDiaLogActivity.m1206f(this.f3285a);
    }
}
