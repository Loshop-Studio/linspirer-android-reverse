package com.android.launcher3.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.model.DataCleanCategoryInfo;
import com.huawei.hem.MobileSdkPlatformUtilities;
import com.huawei.hem.DataCleanRecyclerViewAdapterCheckedChangeListener;
import com.huawei.hem.LauncherOnClickListener;
import com.huawei.hem.DataCleanRecyclerViewAdapterClickListener;
import java.util.List;

/* loaded from: classes.dex */
public class DataCleanRecyclerViewAdapter extends RecyclerView.Adapter<DataCleanRowHolder> {

    /* renamed from: a */
    public Context f1848a;

    /* renamed from: b */
    public List<DataCleanCategoryInfo> f1849b;

    /* renamed from: c */
    public LayoutInflater f1850c;

    /* renamed from: d */
    public LauncherOnClickListener f1851d;

    /* renamed from: com.android.launcher3.adapter.DataCleanRecyclerViewAdapter$a */
    public class DataCleanRowHolder extends RecyclerView.ViewHolder {

        /* renamed from: a */
        public CheckBox f1852a;

        /* renamed from: b */
        public TextView f1853b;

        /* renamed from: c */
        public TextView f1854c;

        /* renamed from: d */
        public LinearLayout f1855d;

        public DataCleanRowHolder(DataCleanRecyclerViewAdapter dataCleanRecyclerViewAdapter, View view) {
            super(view);
            this.f1852a = (CheckBox) view.findViewById(R.id.clean_checkbox);
            this.f1853b = (TextView) view.findViewById(R.id.desc_text);
            this.f1854c = (TextView) view.findViewById(R.id.number_text);
            this.f1855d = (LinearLayout) view.findViewById(R.id.categoryLayout);
        }
    }

    public DataCleanRecyclerViewAdapter(Context context, List<DataCleanCategoryInfo> list) {
        this.f1848a = context;
        this.f1849b = list;
        this.f1850c = LayoutInflater.from(context);
    }

    @NonNull
    /* renamed from: a */
    public DataCleanRowHolder m1231a(@NonNull ViewGroup viewGroup) {
        return new DataCleanRowHolder(this, this.f1850c.inflate(R.layout.fragment_dataclean_category_item_adapter, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (MobileSdkPlatformUtilities.m2273N(this.f1849b)) {
            return 0;
        }
        return this.f1849b.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, @SuppressLint({RecyclerView.TAG}) int i) {
        DataCleanRowHolder c0646a = (DataCleanRowHolder) viewHolder;
        DataCleanCategoryInfo dataCleanCategoryInfo = this.f1849b.get(i);
        String desc = dataCleanCategoryInfo.getDesc();
        int number = dataCleanCategoryInfo.getNumber();
        if (!TextUtils.isEmpty(desc)) {
            c0646a.f1853b.setText(desc);
        }
        c0646a.f1854c.setText(number + this.f1848a.getString(R.string.individual));
        c0646a.f1852a.setOnCheckedChangeListener(null);
        c0646a.f1852a.setChecked(dataCleanCategoryInfo.isSelect());
        c0646a.f1852a.setOnCheckedChangeListener(new DataCleanRecyclerViewAdapterCheckedChangeListener(this, c0646a, i));
        c0646a.f1855d.setOnClickListener(new DataCleanRecyclerViewAdapterClickListener(this, i));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return m1231a(viewGroup);
    }
}
