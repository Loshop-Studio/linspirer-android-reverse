package com.huawei.hem;

import android.view.View;
import com.android.launcher3.activity.gestrue.CheckPwdGestureActivity;

/* compiled from: CheckPwdGestureActivity.java */
/* renamed from: com.huawei.hem.r2 */
/* loaded from: classes.dex */
public class ViewOnClickListenerC1246r2 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ CheckPwdGestureActivity f3595a;

    public ViewOnClickListenerC1246r2(CheckPwdGestureActivity checkPwdGestureActivity) {
        this.f3595a = checkPwdGestureActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (C0902dc.m1583a(view)) {
            return;
        }
        this.f3595a.m1229l();
    }
}
