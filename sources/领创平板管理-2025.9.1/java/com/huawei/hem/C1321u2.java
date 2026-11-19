package com.huawei.hem;

import com.android.launcher3.R;
import com.android.launcher3.activity.gestrue.CheckPwdGestureActivity;
import com.android.launcher3.model.UserInfo;
import com.android.launcher3.network.response.ExceptionHandler;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.android.launcher3.view.DialogUtil;

/* compiled from: CheckPwdGestureActivity.java */
/* renamed from: com.huawei.hem.u2 */
/* loaded from: classes.dex */
public class C1321u2 extends LTKResponseListener<UserInfo> {

    /* renamed from: a */
    public final /* synthetic */ CheckPwdGestureActivity f3838a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1321u2(CheckPwdGestureActivity checkPwdGestureActivity, Class cls) {
        super(cls);
        this.f3838a = checkPwdGestureActivity;
    }

    @Override // com.android.launcher3.network.response.LTKResponseListener
    public void handleResult(UserInfo userInfo) {
        DialogUtil.hideDialog();
        C0850bc.m1403m("CheckPwdGestureActivity --  onLineCheckStudentPassword , Request Successfully ............");
        this.f3838a.f1826o.m3026U(false);
        C0850bc.f2294f.enableRecent();
        C0850bc.f2294f.enableHome();
        CheckPwdGestureActivity checkPwdGestureActivity = this.f3838a;
        C0850bc.m1413w(checkPwdGestureActivity, checkPwdGestureActivity.getString(R.string.check_password_success), 0);
        this.f3838a.finish();
    }

    @Override // com.android.launcher3.network.response.BaseResponse
    public void onFailed(Response response) {
        DialogUtil.hideDialog();
        ExceptionHandler.handleException(this.f3838a, response, true, false);
    }

    @Override // com.android.launcher3.network.response.BaseResponse
    public void onFailureByNet(Object obj) {
        DialogUtil.hideDialog();
        ExceptionHandler.handleException(this.f3838a, obj, true, false);
    }
}
