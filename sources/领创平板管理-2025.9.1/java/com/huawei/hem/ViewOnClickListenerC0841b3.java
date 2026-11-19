package com.huawei.hem;

import android.view.View;
import com.android.launcher3.adapter.RubbishRecyclerViewAdapter;
import com.android.launcher3.model.RubbishFileInfo;

/* compiled from: RubbishRecyclerViewAdapter.java */
/* renamed from: com.huawei.hem.b3 */
/* loaded from: classes.dex */
public class ViewOnClickListenerC0841b3 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f2269a;

    /* renamed from: b */
    public final /* synthetic */ RubbishFileInfo f2270b;

    /* renamed from: c */
    public final /* synthetic */ RubbishRecyclerViewAdapter.C0649a f2271c;

    /* renamed from: d */
    public final /* synthetic */ RubbishRecyclerViewAdapter f2272d;

    public ViewOnClickListenerC0841b3(RubbishRecyclerViewAdapter rubbishRecyclerViewAdapter, int i, RubbishFileInfo rubbishFileInfo, RubbishRecyclerViewAdapter.C0649a c0649a) {
        this.f2272d = rubbishRecyclerViewAdapter;
        this.f2269a = i;
        this.f2270b = rubbishFileInfo;
        this.f2271c = c0649a;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (C0902dc.m1583a(view)) {
            return;
        }
        StringBuilder sbM1765j = C0948f6.m1765j("RubbishRecyclerViewAdapter----onClick：");
        sbM1765j.append(this.f2269a);
        sbM1765j.append("--isChecked:");
        sbM1765j.append(!this.f2270b.isSelected());
        C0850bc.m1403m(sbM1765j.toString());
        InterfaceC1071k3 interfaceC1071k3 = this.f2272d.f1873d;
        if (interfaceC1071k3 != null) {
            interfaceC1071k3.mo1185a(this.f2269a, !this.f2270b.isSelected());
        }
        this.f2271c.f1874a.setChecked(!this.f2270b.isSelected());
    }
}
