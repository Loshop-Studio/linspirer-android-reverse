package com.huawei.hem;

import android.view.View;
import android.widget.PopupWindow;
import com.android.launcher3.fragment.home.MainFragment;
import java.util.ArrayList;

/* compiled from: MainFragment.java */
/* renamed from: com.huawei.hem.d4 */
/* loaded from: classes.dex */
public class ViewOnClickListenerC0894d4 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PopupWindow f2383a;

    /* renamed from: b */
    public final /* synthetic */ MainFragment f2384b;

    public ViewOnClickListenerC0894d4(MainFragment mainFragment, PopupWindow popupWindow) {
        this.f2384b = mainFragment;
        this.f2383a = popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!C0902dc.m1583a(view) && this.f2384b.m1216b() && this.f2383a.isShowing()) {
            this.f2383a.dismiss();
            ArrayList arrayList = new ArrayList();
            arrayList.add("com.ndwill.swd.appstore");
            this.f2384b.m1217c(arrayList);
        }
    }
}
