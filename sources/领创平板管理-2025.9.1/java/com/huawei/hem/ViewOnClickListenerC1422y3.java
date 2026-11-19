package com.huawei.hem;

import android.view.View;
import android.widget.PopupWindow;
import com.android.launcher3.activity.ChangePwdActivity;
import com.android.launcher3.fragment.home.MainFragment;

/* compiled from: MainFragment.java */
/* renamed from: com.huawei.hem.y3 */
/* loaded from: classes.dex */
public class ViewOnClickListenerC1422y3 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PopupWindow f4121a;

    /* renamed from: b */
    public final /* synthetic */ MainFragment f4122b;

    public ViewOnClickListenerC1422y3(MainFragment mainFragment, PopupWindow popupWindow) {
        this.f4122b = mainFragment;
        this.f4121a = popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (C0902dc.m1583a(view)) {
            return;
        }
        C1423y4.m2974U(this.f4122b.f1800a, ChangePwdActivity.class);
        this.f4121a.dismiss();
    }
}
