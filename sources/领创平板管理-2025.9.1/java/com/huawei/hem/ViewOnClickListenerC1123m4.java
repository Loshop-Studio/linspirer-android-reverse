package com.huawei.hem;

import android.view.View;
import android.widget.PopupWindow;
import com.android.launcher3.fragment.login.BaseLoginFragment;

/* compiled from: BaseLoginFragment.java */
/* renamed from: com.huawei.hem.m4 */
/* loaded from: classes.dex */
public class ViewOnClickListenerC1123m4 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PopupWindow f3240a;

    public ViewOnClickListenerC1123m4(BaseLoginFragment baseLoginFragment, PopupWindow popupWindow) {
        this.f3240a = popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PopupWindow popupWindow;
        if (ViewControlUtil.m1583a(view) || (popupWindow = this.f3240a) == null || !popupWindow.isShowing()) {
            return;
        }
        this.f3240a.dismiss();
    }
}
