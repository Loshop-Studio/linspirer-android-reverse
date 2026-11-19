package com.android.launcher3.fragment.home;

import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseFragment;
import com.android.launcher3.adapter.RecyclerViewAdapter;
import com.android.launcher3.model.AppItem;
import com.huawei.hem.C0850bc;
import com.huawei.hem.InterfaceC0919e3;
import java.util.List;

/* loaded from: classes.dex */
public class ChildPageFragment extends BaseFragment implements InterfaceC0919e3 {

    /* renamed from: i */
    public RecyclerView f1946i;

    /* renamed from: j */
    public List<AppItem> f1947j;

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: e */
    public int mo1219e() {
        return R.layout.layout_fragment_applist;
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: f */
    public void mo1220f() {
        int i = this.f1800a.getResources().getConfiguration().orientation;
        GridLayoutManager gridLayoutManager = i == 2 ? new GridLayoutManager(this.f1800a, 6) : i == 1 ? new GridLayoutManager(this.f1800a, 4) : null;
        this.f1946i.setLayoutManager(gridLayoutManager);
        this.f1946i.setHasFixedSize(true);
        RecyclerViewAdapter recyclerViewAdapter = new RecyclerViewAdapter(this.f1800a);
        recyclerViewAdapter.f1863b = this.f1947j;
        recyclerViewAdapter.f1864c = gridLayoutManager.getSpanCount();
        recyclerViewAdapter.f1865d = this;
        this.f1946i.setAdapter(recyclerViewAdapter);
        C0850bc.m1403m("ChildPageFragment -- initData ");
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: g */
    public void mo1221g(View view) {
        this.f1946i = (RecyclerView) view.findViewById(R.id.recycler_view);
    }
}
