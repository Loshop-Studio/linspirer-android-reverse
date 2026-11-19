package com.huawei.hem;

import android.view.View;
import android.widget.PopupWindow;
import com.android.launcher3.fragment.home.MainFragment;

/* compiled from: MainFragment.java */
/* renamed from: com.huawei.hem.c4 */
/* loaded from: classes.dex */
public class ViewOnClickListenerC0868c4 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PopupWindow f2321a;

    /* renamed from: b */
    public final /* synthetic */ MainFragment f2322b;

    public ViewOnClickListenerC0868c4(MainFragment mainFragment, PopupWindow popupWindow) {
        this.f2322b = mainFragment;
        this.f2321a = popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!C0902dc.m1583a(view) && this.f2321a.isShowing()) {
            this.f2321a.dismiss();
            if (this.f2322b.f1802c.m3036c() == 1) {
                this.f2322b.m1236j();
            } else {
                this.f2322b.m1237k();
            }
        }
    }
}
