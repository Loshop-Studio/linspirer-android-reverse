package com.huawei.hem;

import android.view.View;
import android.widget.PopupWindow;
import com.android.launcher3.fragment.login.BaseLoginFragment;

/* compiled from: BaseLoginFragment.java */
/* renamed from: com.huawei.hem.k4 */
/* loaded from: classes.dex */
public class LoginMenuNetworkClickListener implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PopupWindow f3021a;

    /* renamed from: b */
    public final /* synthetic */ BaseLoginFragment f3022b;

    public LoginMenuNetworkClickListener(BaseLoginFragment baseLoginFragment, PopupWindow popupWindow) {
        this.f3022b = baseLoginFragment;
        this.f3021a = popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (ViewControlUtil.m1583a(view)) {
            return;
        }
        PopupWindow popupWindow = this.f3021a;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.f3021a.dismiss();
        }
        LauncherMenuHelper.m2979Z(this.f3022b.f1800a);
    }
}
