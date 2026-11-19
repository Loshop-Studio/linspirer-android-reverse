package com.huawei.hem;

import android.view.View;
import android.widget.PopupWindow;
import com.android.launcher3.activity.DeviceInfoActivity;
import com.android.launcher3.fragment.home.MainFragment;

/* compiled from: MainFragment.java */
/* renamed from: com.huawei.hem.z3 */
/* loaded from: classes.dex */
public class ViewOnClickListenerC1447z3 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PopupWindow f4267a;

    /* renamed from: b */
    public final /* synthetic */ MainFragment f4268b;

    public ViewOnClickListenerC1447z3(MainFragment mainFragment, PopupWindow popupWindow) {
        this.f4268b = mainFragment;
        this.f4267a = popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1423y4.m2974U(this.f4268b.f1800a, DeviceInfoActivity.class);
        this.f4267a.dismiss();
    }
}
