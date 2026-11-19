package com.huawei.hem;

import com.android.launcher3.R;
import com.android.launcher3.network.response.LTKListResponseListener;
import com.android.launcher3.network.response.Response;
import com.android.launcher3.p027db.model.ItemApp;
import com.android.launcher3.view.CommonDialog;
import com.android.launcher3.view.DialogUtil;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AppCheckUpdateHelper.java */
/* renamed from: com.huawei.hem.n4 */
/* loaded from: classes.dex */
public class AppUpdateListCallback extends LTKListResponseListener<ItemApp> {

    /* renamed from: a */
    public final /* synthetic */ LauncherAppUpdateRequest f3286a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppUpdateListCallback(LauncherAppUpdateRequest c1198p4, Class cls) {
        super(cls);
        this.f3286a = c1198p4;
    }

    @Override // com.android.launcher3.network.response.LTKListResponseListener
    public void handleResult(List<ItemApp> list) {
        LTKDateUtil.m1403m("AppCheckUpdateHelper -- check update sucess");
        DialogUtil.hideDialog();
        LauncherAppUpdateRequest c1198p4 = this.f3286a;
        if (c1198p4 == null) {
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        for (ItemApp itemApp : list) {
            if (LTKDateUtil.m1406p(c1198p4.mContext, itemApp.getPackagename(), itemApp.getVersioncode())) {
                arrayList.add(itemApp);
            } else {
                StringBuilder sbM1765j = CompilerOutline.m1765j("AppCheckUpdateHelper");
                sbM1765j.append(itemApp.getPackagename());
                sbM1765j.append(" -- is no need update");
                LTKDateUtil.m1403m(sbM1765j.toString());
            }
        }
        if (MobileSdkPlatformUtilities.m2272M(arrayList)) {
            LTKDateUtil.m1415y(c1198p4.mContext, R.string.no_upgrade_note);
            return;
        }
        CommonDialog commonDialog = new CommonDialog();
        commonDialog.initDialog(LauncherAppUpdateRequest.f3427c, R.string.text_has_newversion, R.string.text_update_immediately, R.string.text_recall_again, 0.5d, 0.5d, false);
        commonDialog.setDialogOnClickEvent(new AppUpdateConfirmationListener(c1198p4, arrayList));
    }

    @Override // com.android.launcher3.network.response.BaseResponse
    public void onFailed(Response response) {
        LTKDateUtil.m1403m("AppCheckUpdateHelper -- check update failed");
        DialogUtil.hideDialog();
        if (response == null) {
            LTKDateUtil.m1414x(this.f3286a.mContext, R.string.network_error_note);
            return;
        }
        String string = this.f3286a.mContext.getString(R.string.request_fail_with_code);
        StringBuilder sbM1765j = CompilerOutline.m1765j("");
        sbM1765j.append(response.getCode());
        LTKDateUtil.m1413w(this.f3286a.mContext, String.format(string, sbM1765j.toString()), 0);
    }

    @Override // com.android.launcher3.network.response.BaseResponse
    public void onFailureByNet(Object obj) {
        LTKDateUtil.m1403m("AppCheckUpdateHelper -- check update failure");
        DialogUtil.hideDialog();
        LTKDateUtil.m1414x(this.f3286a.mContext, R.string.network_error_note);
    }
}
