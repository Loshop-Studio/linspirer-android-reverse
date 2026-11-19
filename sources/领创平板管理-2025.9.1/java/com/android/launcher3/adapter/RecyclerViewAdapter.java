package com.android.launcher3.adapter;

import android.content.ComponentName;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.fragment.home.ChildPageFragment;
import com.android.launcher3.model.AppItem;
import com.android.launcher3.network.DeviceLogHelper;
import com.huawei.hem.AsyncTaskC0844b6;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0902dc;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;
import com.huawei.hem.InterfaceC0919e3;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class RecyclerViewAdapter extends RecyclerView.Adapter<ViewOnClickListenerC0648a> {

    /* renamed from: a */
    public Context f1862a;

    /* renamed from: b */
    public List<AppItem> f1863b;

    /* renamed from: c */
    public int f1864c;

    /* renamed from: d */
    public InterfaceC0919e3 f1865d;

    /* renamed from: com.android.launcher3.adapter.RecyclerViewAdapter$a */
    public class ViewOnClickListenerC0648a extends RecyclerView.ViewHolder implements View.OnClickListener {

        /* renamed from: a */
        public ImageView f1866a;

        /* renamed from: b */
        public TextView f1867b;

        /* renamed from: c */
        public TextView f1868c;

        public ViewOnClickListenerC0648a(@NonNull View view) {
            super(view);
            this.f1868c = (TextView) view.findViewById(R.id.app_tips);
            this.f1866a = (ImageView) view.findViewById(R.id.appitem_icon);
            this.f1867b = (TextView) view.findViewById(R.id.appitem_name);
            view.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InterfaceC0919e3 interfaceC0919e3;
            if (C0902dc.m1583a(view)) {
                return;
            }
            AppItem appItem = RecyclerViewAdapter.this.f1863b.get(getAdapterPosition());
            String pkgName = appItem.getPkgName();
            String activityName = appItem.getActivityName();
            if ("com.ndwill.swd.appstore".equals(pkgName) && !C0850bc.m1405o("com.ndwill.swd.appstore", RecyclerViewAdapter.this.f1862a) && (interfaceC0919e3 = RecyclerViewAdapter.this.f1865d) != null) {
                ChildPageFragment childPageFragment = (ChildPageFragment) interfaceC0919e3;
                if (childPageFragment.m1216b()) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add("com.ndwill.swd.appstore");
                    childPageFragment.m1217c(arrayList);
                }
            }
            try {
                C1423y4.m2973T(RecyclerViewAdapter.this.f1862a, new ComponentName(pkgName, activityName));
                if (!TextUtils.isEmpty("com.zykj.manage") && pkgName.equals("com.zykj.manage")) {
                    C1424y5.b.f4202a.m3065q0(0);
                }
                DeviceLogHelper.getInstance().recordOpenApp(pkgName);
            } catch (Exception e) {
                e.printStackTrace();
                StringBuilder sb = new StringBuilder();
                sb.append("RecyclerViewAdapter -- can not open apk--packageName: ");
                sb.append(pkgName);
                sb.append(" --openApk -error:");
                C0948f6.m1776u(e, sb);
                C0850bc.m1415y(RecyclerViewAdapter.this.f1862a, R.string.text_cannot_open_app);
            }
        }
    }

    public RecyclerViewAdapter(Context context) {
        this.f1862a = context;
    }

    /* renamed from: a */
    public ViewOnClickListenerC0648a m1233a(ViewGroup viewGroup) {
        View viewInflate = LayoutInflater.from(this.f1862a).inflate(R.layout.layout_appitem, viewGroup, false);
        ViewOnClickListenerC0648a viewOnClickListenerC0648a = new ViewOnClickListenerC0648a(viewInflate);
        int height = viewGroup.getHeight();
        viewInflate.getLayoutParams().height = height / (24 / this.f1864c);
        return viewOnClickListenerC0648a;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<AppItem> list = this.f1863b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ViewOnClickListenerC0648a viewOnClickListenerC0648a = (ViewOnClickListenerC0648a) viewHolder;
        AppItem appItem = this.f1863b.get(i);
        viewOnClickListenerC0648a.f1867b.setText(appItem.getName());
        int tipCount = appItem.getTipCount();
        if (tipCount > 0) {
            if (tipCount > 99) {
                tipCount = 99;
            }
            viewOnClickListenerC0648a.f1868c.setVisibility(0);
            viewOnClickListenerC0648a.f1868c.setText("" + tipCount);
        } else {
            viewOnClickListenerC0648a.f1868c.setVisibility(8);
        }
        new AsyncTaskC0844b6(this.f1862a, viewOnClickListenerC0648a.f1866a, appItem).execute(new Integer[0]);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return m1233a(viewGroup);
    }
}
