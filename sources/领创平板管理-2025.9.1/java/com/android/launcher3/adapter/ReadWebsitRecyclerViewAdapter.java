package com.android.launcher3.adapter;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.launcher3.R;
import com.huawei.hem.MobileSdkPlatformUtilities;
import java.util.List;

/* loaded from: classes.dex */
public class ReadWebsitRecyclerViewAdapter extends RecyclerView.Adapter<WebsiteRowHolder> {

    /* renamed from: a */
    public Context f1858a;

    /* renamed from: b */
    public List<String> f1859b;

    /* renamed from: c */
    public LayoutInflater f1860c;

    /* renamed from: com.android.launcher3.adapter.ReadWebsitRecyclerViewAdapter$a */
    public class WebsiteRowHolder extends RecyclerView.ViewHolder {

        /* renamed from: a */
        public TextView f1861a;

        public WebsiteRowHolder(ReadWebsitRecyclerViewAdapter readWebsitRecyclerViewAdapter, View view) {
            super(view);
            this.f1861a = (TextView) view.findViewById(R.id.website_content);
        }
    }

    public ReadWebsitRecyclerViewAdapter(Context context, List<String> list) {
        this.f1858a = context;
        this.f1859b = list;
        this.f1860c = LayoutInflater.from(context);
    }

    @NonNull
    /* renamed from: a */
    public WebsiteRowHolder m1232a(@NonNull ViewGroup viewGroup) {
        return new WebsiteRowHolder(this, this.f1860c.inflate(R.layout.read_website_list_adapter, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (MobileSdkPlatformUtilities.m2273N(this.f1859b)) {
            return 0;
        }
        return this.f1859b.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i) {
        ((WebsiteRowHolder) viewHolder).f1861a.setText(String.format(this.f1858a.getResources().getString(R.string.read_website_part), this.f1859b.get(i)));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return m1232a(viewGroup);
    }
}
