package com.android.launcher3.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.model.RubbishFileInfo;
import com.bumptech.glide.Glide;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.RubbishRecyclerViewAdapterCheckedChangeListener;
import com.huawei.hem.DataCleanUtil;
import com.huawei.hem.LauncherOnClickListener;
import com.huawei.hem.RubbishRecyclerViewAdapterClickListener;
import java.io.File;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class RubbishRecyclerViewAdapter extends RecyclerView.Adapter<C0649a> {

    /* renamed from: a */
    public Context f1870a;

    /* renamed from: b */
    public List<RubbishFileInfo> f1871b;

    /* renamed from: c */
    public LayoutInflater f1872c;

    /* renamed from: d */
    public LauncherOnClickListener f1873d;

    /* renamed from: com.android.launcher3.adapter.RubbishRecyclerViewAdapter$a */
    public class C0649a extends RecyclerView.ViewHolder {

        /* renamed from: a */
        public CheckBox f1874a;

        /* renamed from: b */
        public TextView f1875b;

        /* renamed from: c */
        public ImageView f1876c;

        /* renamed from: d */
        public LinearLayout f1877d;

        public C0649a(RubbishRecyclerViewAdapter rubbishRecyclerViewAdapter, View view) {
            super(view);
            this.f1874a = (CheckBox) view.findViewById(R.id.rubbish_checkbox);
            this.f1875b = (TextView) view.findViewById(R.id.rubbish_textView);
            this.f1876c = (ImageView) view.findViewById(R.id.rubbish_imageView);
            this.f1877d = (LinearLayout) view.findViewById(R.id.rubbish_layout);
        }
    }

    public RubbishRecyclerViewAdapter(Context context, List<RubbishFileInfo> list) {
        this.f1870a = context;
        this.f1871b = list;
        this.f1872c = LayoutInflater.from(context);
    }

    @NonNull
    /* renamed from: a */
    public C0649a m1234a(@NonNull ViewGroup viewGroup) {
        return new C0649a(this, this.f1872c.inflate(R.layout.fragment_rubbish_adapter, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (AbstractC1102l9.m2273N(this.f1871b)) {
            return 0;
        }
        return this.f1871b.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, @SuppressLint({RecyclerView.TAG}) int i) {
        C0649a c0649a = (C0649a) viewHolder;
        RubbishFileInfo rubbishFileInfo = this.f1871b.get(i);
        String filePath = rubbishFileInfo.getFilePath();
        if (!TextUtils.isEmpty(filePath)) {
            if (filePath.length() > 150) {
                filePath = filePath.substring(0, 150) + "...";
            }
            c0649a.f1875b.setText(filePath);
        }
        String strSubstring = filePath.indexOf(".") != -1 ? filePath.substring(filePath.lastIndexOf(".") + 1, filePath.length()) : null;
        ViewGroup.LayoutParams layoutParams = c0649a.f1876c.getLayoutParams();
        layoutParams.height = 40;
        layoutParams.width = 30;
        c0649a.f1876c.setLayoutParams(layoutParams);
        c0649a.f1876c.setImageResource(R.drawable.file_memory);
        if (!TextUtils.isEmpty(strSubstring)) {
            layoutParams.height = 70;
            layoutParams.width = 120;
            c0649a.f1876c.setLayoutParams(layoutParams);
            if (DataCleanUtil.m2721b(strSubstring)) {
                Glide.with(this.f1870a).load(rubbishFileInfo.getFilePath()).into(c0649a.f1876c);
            } else if (Arrays.asList(DataCleanUtil.f3768o).contains(strSubstring)) {
                Glide.with(this.f1870a).load(Uri.fromFile(new File(rubbishFileInfo.getFilePath()))).into(c0649a.f1876c);
            } else {
                layoutParams.height = 40;
                layoutParams.width = 30;
                c0649a.f1876c.setLayoutParams(layoutParams);
                c0649a.f1876c.setImageResource(R.drawable.file_memory);
            }
        }
        c0649a.f1877d.setOnClickListener(new RubbishRecyclerViewAdapterClickListener(this, i, rubbishFileInfo, c0649a));
        c0649a.f1874a.setOnCheckedChangeListener(null);
        c0649a.f1874a.setChecked(rubbishFileInfo.isSelected());
        c0649a.f1874a.setOnCheckedChangeListener(new RubbishRecyclerViewAdapterCheckedChangeListener(this, c0649a, i));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return m1234a(viewGroup);
    }
}
