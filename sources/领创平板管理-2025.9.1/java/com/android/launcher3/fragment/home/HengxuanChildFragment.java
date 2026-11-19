package com.android.launcher3.fragment.home;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.android.launcher3.R;
import com.android.launcher3.model.AppItem;
import com.huawei.hem.HengxuanAppAdapter;
import java.util.List;

/* loaded from: classes.dex */
public class HengxuanChildFragment extends Fragment {

    /* renamed from: a */
    public List<AppItem> f1948a;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_gridview, viewGroup, false);
        ((GridView) viewInflate.findViewById(R.id.grid_view)).setAdapter((ListAdapter) new HengxuanAppAdapter(getActivity(), this.f1948a));
        return viewInflate;
    }
}
