package com.huawei.hem;

import android.widget.CompoundButton;
import com.android.launcher3.adapter.DataCleanRecyclerViewAdapter;

/* compiled from: DataCleanRecyclerViewAdapter.java */
/* renamed from: com.huawei.hem.x2 */
/* loaded from: classes.dex */
public class DataCleanRecyclerViewAdapterCheckedChangeListener implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ DataCleanRecyclerViewAdapter.C0646a f4041a;

    /* renamed from: b */
    public final /* synthetic */ int f4042b;

    /* renamed from: c */
    public final /* synthetic */ DataCleanRecyclerViewAdapter f4043c;

    public DataCleanRecyclerViewAdapterCheckedChangeListener(DataCleanRecyclerViewAdapter dataCleanRecyclerViewAdapter, DataCleanRecyclerViewAdapter.C0646a c0646a, int i) {
        this.f4043c = dataCleanRecyclerViewAdapter;
        this.f4041a = c0646a;
        this.f4042b = i;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        LauncherOnClickListener interfaceC1071k3;
        if (!this.f4041a.f1852a.isPressed() || (interfaceC1071k3 = this.f4043c.f1851d) == null) {
            return;
        }
        interfaceC1071k3.mo1185a(this.f4042b, z);
    }
}
