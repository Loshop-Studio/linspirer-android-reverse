package com.huawei.hem;

import android.view.View;
import android.widget.PopupWindow;
import com.android.launcher3.fragment.login.BaseLoginFragment;
import com.android.launcher3.network.SynchronizeTimeUtil;

/* compiled from: BaseLoginFragment.java */
/* renamed from: com.huawei.hem.l4 */
/* loaded from: classes.dex */
public class ViewOnClickListenerC1097l4 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PopupWindow f3150a;

    /* renamed from: b */
    public final /* synthetic */ BaseLoginFragment f3151b;

    public ViewOnClickListenerC1097l4(BaseLoginFragment baseLoginFragment, PopupWindow popupWindow) {
        this.f3151b = baseLoginFragment;
        this.f3150a = popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (C0902dc.m1583a(view)) {
            return;
        }
        BaseLoginFragment.m1261j(this.f3151b);
        PopupWindow popupWindow = this.f3150a;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.f3150a.dismiss();
        }
        SynchronizeTimeUtil.pullSynchronizeTime(this.f3151b.f1800a, true);
    }
}
