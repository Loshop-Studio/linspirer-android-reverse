package com.huawei.hem;

import android.annotation.SuppressLint;
import com.android.launcher3.R;
import com.android.launcher3.activity.ChangePwdActivity;
import com.android.launcher3.activity.LoginActivity;
import com.android.launcher3.network.response.ExceptionHandler;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.android.launcher3.receiver.LinspirerLauncherReceiver;
import com.android.launcher3.view.DialogUtil;

/* compiled from: ChangePwdActivity.java */
/* renamed from: com.huawei.hem.i2 */
/* loaded from: classes.dex */
public class ChangePwdActivityResponseListener extends LTKResponseListener<Boolean> {

    /* renamed from: a */
    public final /* synthetic */ ChangePwdActivity f2890a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChangePwdActivityResponseListener(ChangePwdActivity changePwdActivity, Class cls) {
        super(cls);
        this.f2890a = changePwdActivity;
    }

    @Override // com.android.launcher3.network.response.BaseResponse
    public void onFailed(Response response) {
        DialogUtil.hideDialog();
        ExceptionHandler.handleException(this.f2890a.f1662d, response, true, false);
    }

    @Override // com.android.launcher3.network.response.BaseResponse
    public void onFailureByNet(Object obj) {
        DialogUtil.hideDialog();
        LTKDateUtil.m1393c("ChangePwdActivity ---request url change_pwd failed by network ");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.android.launcher3.network.response.LTKResponseListener
    @SuppressLint({"ShowToast"})
    public void handleResult(Boolean bool) {
        DialogUtil.hideDialog();
        ChangePwdActivity changePwdActivity = this.f2890a;
        LTKDateUtil.m1413w(changePwdActivity.f1662d, changePwdActivity.getString(R.string.pwd_modify_sucess), 0);
        new LinspirerLauncherReceiver().m1281b(this.f2890a.f1662d);
        LauncherMenuHelper.m2978Y(this.f2890a.f1662d, LoginActivity.class);
        this.f2890a.finish();
    }
}
