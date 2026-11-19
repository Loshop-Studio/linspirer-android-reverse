package com.huawei.hem;

import android.view.View;
import android.widget.PopupWindow;
import com.android.launcher3.fragment.login.BaseLoginFragment;
import java.util.ArrayList;

/* compiled from: BaseLoginFragment.java */
/* renamed from: com.huawei.hem.j4 */
/* loaded from: classes.dex */
public class ViewOnClickListenerC1047j4 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PopupWindow f2932a;

    /* renamed from: b */
    public final /* synthetic */ BaseLoginFragment f2933b;

    public ViewOnClickListenerC1047j4(BaseLoginFragment baseLoginFragment, PopupWindow popupWindow) {
        this.f2933b = baseLoginFragment;
        this.f2932a = popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (ViewControlUtil.m1583a(view)) {
            return;
        }
        PopupWindow popupWindow = this.f2932a;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.f2932a.dismiss();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("com.android.launcher3");
        arrayList.add("com.ndwill.swd.appstore");
        this.f2933b.m1217c(arrayList);
    }
}
