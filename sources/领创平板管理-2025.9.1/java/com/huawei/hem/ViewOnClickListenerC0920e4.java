package com.huawei.hem;

import android.os.Bundle;
import android.view.View;
import android.widget.PopupWindow;
import com.android.launcher3.activity.PromptDiaLogActivity;
import com.android.launcher3.fragment.home.MainFragment;

/* compiled from: MainFragment.java */
/* renamed from: com.huawei.hem.e4 */
/* loaded from: classes.dex */
public class ViewOnClickListenerC0920e4 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PopupWindow f2511a;

    /* renamed from: b */
    public final /* synthetic */ MainFragment f2512b;

    public ViewOnClickListenerC0920e4(MainFragment mainFragment, PopupWindow popupWindow) {
        this.f2512b = mainFragment;
        this.f2511a = popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!C0902dc.m1583a(view) && this.f2511a.isShowing()) {
            Bundle bundle = new Bundle();
            bundle.putInt("action", 4);
            C1423y4.m2975V(this.f2512b.getActivity(), PromptDiaLogActivity.class, bundle);
            this.f2511a.dismiss();
        }
    }
}
