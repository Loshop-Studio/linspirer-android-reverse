package com.huawei.hem;

import android.view.View;
import android.widget.PopupWindow;
import com.android.launcher3.fragment.home.MainFragment;

/* compiled from: MainFragment.java */
/* renamed from: com.huawei.hem.a4 */
/* loaded from: classes.dex */
public class MainMenuGestureSettingsClickListener implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PopupWindow f2171a;

    /* renamed from: b */
    public final /* synthetic */ MainFragment f2172b;

    public MainMenuGestureSettingsClickListener(MainFragment mainFragment, PopupWindow popupWindow) {
        this.f2172b = mainFragment;
        this.f2171a = popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!ViewControlUtil.m1583a(view) && this.f2171a.isShowing()) {
            this.f2171a.dismiss();
            MainFragment.m1254t(this.f2172b);
        }
    }
}
