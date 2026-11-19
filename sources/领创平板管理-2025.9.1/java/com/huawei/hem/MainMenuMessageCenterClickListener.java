package com.huawei.hem;

import android.view.View;
import android.widget.PopupWindow;
import com.android.launcher3.activity.MessageCenterActivity;
import com.android.launcher3.fragment.home.MainFragment;

/* compiled from: MainFragment.java */
/* renamed from: com.huawei.hem.x3 */
/* loaded from: classes.dex */
public class MainMenuMessageCenterClickListener implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PopupWindow f4044a;

    /* renamed from: b */
    public final /* synthetic */ MainFragment f4045b;

    public MainMenuMessageCenterClickListener(MainFragment mainFragment, PopupWindow popupWindow) {
        this.f4045b = mainFragment;
        this.f4044a = popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!ViewControlUtil.m1583a(view) && this.f4044a.isShowing()) {
            LauncherMenuHelper.m2974U(this.f4045b.f1800a, MessageCenterActivity.class);
            this.f4044a.dismiss();
        }
    }
}
