package com.huawei.hem;

import android.view.View;
import com.android.launcher3.adapter.DataCleanRecyclerViewAdapter;

/* compiled from: DataCleanRecyclerViewAdapter.java */
/* renamed from: com.huawei.hem.y2 */
/* loaded from: classes.dex */
public class ViewOnClickListenerC1421y2 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f4119a;

    /* renamed from: b */
    public final /* synthetic */ DataCleanRecyclerViewAdapter f4120b;

    public ViewOnClickListenerC1421y2(DataCleanRecyclerViewAdapter dataCleanRecyclerViewAdapter, int i) {
        this.f4120b = dataCleanRecyclerViewAdapter;
        this.f4119a = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        InterfaceC1071k3 interfaceC1071k3;
        if (C0902dc.m1583a(view) || (interfaceC1071k3 = this.f4120b.f1851d) == null) {
            return;
        }
        interfaceC1071k3.mo1186b(this.f4119a);
    }
}
