package com.huawei.hem;

import android.widget.CompoundButton;
import com.android.launcher3.adapter.RubbishRecyclerViewAdapter;

/* compiled from: RubbishRecyclerViewAdapter.java */
/* renamed from: com.huawei.hem.c3 */
/* loaded from: classes.dex */
public class C0867c3 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ RubbishRecyclerViewAdapter.C0649a f2318a;

    /* renamed from: b */
    public final /* synthetic */ int f2319b;

    /* renamed from: c */
    public final /* synthetic */ RubbishRecyclerViewAdapter f2320c;

    public C0867c3(RubbishRecyclerViewAdapter rubbishRecyclerViewAdapter, RubbishRecyclerViewAdapter.C0649a c0649a, int i) {
        this.f2320c = rubbishRecyclerViewAdapter;
        this.f2318a = c0649a;
        this.f2319b = i;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.f2318a.f1874a.isPressed()) {
            StringBuilder sbM1765j = C0948f6.m1765j("RubbishRecyclerViewAdapter----onCheckedChanged：");
            sbM1765j.append(this.f2319b);
            sbM1765j.append("--isChecked:");
            sbM1765j.append(z);
            C0850bc.m1403m(sbM1765j.toString());
            InterfaceC1071k3 interfaceC1071k3 = this.f2320c.f1873d;
            if (interfaceC1071k3 != null) {
                interfaceC1071k3.mo1185a(this.f2319b, z);
            }
        }
    }
}
