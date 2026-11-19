package com.huawei.hem;

import android.view.View;
import android.widget.PopupWindow;
import com.android.launcher3.activity.PrivacyAgreementActivity;
import com.android.launcher3.fragment.home.MainFragment;

/* compiled from: MainFragment.java */
/* renamed from: com.huawei.hem.b4 */
/* loaded from: classes.dex */
public class MainMenuPrivacyAgreementClickListener implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PopupWindow f2273a;

    /* renamed from: b */
    public final /* synthetic */ MainFragment f2274b;

    public MainMenuPrivacyAgreementClickListener(MainFragment mainFragment, PopupWindow popupWindow) {
        this.f2274b = mainFragment;
        this.f2273a = popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!ViewControlUtil.m1583a(view) && this.f2273a.isShowing()) {
            this.f2273a.dismiss();
            LauncherMenuHelper.m2974U(this.f2274b.f1800a, PrivacyAgreementActivity.class);
        }
    }
}
