package com.android.launcher3.adapter;

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
import com.android.launcher3.model.NetworkInfo;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.CompilerOutline;
import java.util.List;

/* loaded from: classes.dex */
public class CheckNetworkRecyclerViewAdapter extends RecyclerView.Adapter<C0645a> {

    /* renamed from: a */
    public Context f1842a;

    /* renamed from: b */
    public List<NetworkInfo> f1843b;

    /* renamed from: c */
    public LayoutInflater f1844c;

    /* renamed from: com.android.launcher3.adapter.CheckNetworkRecyclerViewAdapter$a */
    public class C0645a extends RecyclerView.ViewHolder {

        /* renamed from: a */
        public ImageView f1845a;

        /* renamed from: b */
        public TextView f1846b;

        /* renamed from: c */
        public TextView f1847c;

        public C0645a(CheckNetworkRecyclerViewAdapter checkNetworkRecyclerViewAdapter, View view) {
            super(view);
            this.f1845a = (ImageView) view.findViewById(R.id.result_imageview);
            this.f1846b = (TextView) view.findViewById(R.id.port_textview);
            this.f1847c = (TextView) view.findViewById(R.id.domain_textview);
        }
    }

    public CheckNetworkRecyclerViewAdapter(Context context, List<NetworkInfo> list) {
        this.f1842a = context;
        this.f1843b = list;
        this.f1844c = LayoutInflater.from(context);
    }

    @NonNull
    /* renamed from: a */
    public C0645a m1230a(@NonNull ViewGroup viewGroup) {
        return new C0645a(this, this.f1844c.inflate(R.layout.fragment_check_network_adapter, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (AbstractC1102l9.m2273N(this.f1843b)) {
            return 0;
        }
        return this.f1843b.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i) {
        C0645a c0645a = (C0645a) viewHolder;
        StringBuilder sbM1765j = CompilerOutline.m1765j("CheckNetworkRecyclerViewAdapter--size:");
        sbM1765j.append(this.f1843b.size());
        LTKDateUtil.m1403m(sbM1765j.toString());
        NetworkInfo networkInfo = this.f1843b.get(i);
        String domain = networkInfo.getDomain();
        List<Integer> portList = networkInfo.getPortList();
        List<String> result = networkInfo.getResult();
        if (!TextUtils.isEmpty(domain)) {
            c0645a.f1847c.setText(domain);
        }
        if (!AbstractC1102l9.m2273N(portList)) {
            if (portList.size() == 1) {
                TextView textView = c0645a.f1846b;
                StringBuilder sbM1765j2 = CompilerOutline.m1765j("Port:");
                sbM1765j2.append(portList.get(0));
                textView.setText(sbM1765j2.toString());
            } else {
                String str = null;
                for (Integer num : portList) {
                    str = TextUtils.isEmpty(str) ? num + "" : str + "," + num;
                }
                c0645a.f1846b.setText("Port:" + str);
            }
        }
        if (AbstractC1102l9.m2273N(result)) {
            c0645a.f1845a.setVisibility(8);
            return;
        }
        c0645a.f1845a.setVisibility(0);
        if (result.contains("fail")) {
            c0645a.f1845a.setImageResource(R.drawable.icon_fail);
        } else {
            c0645a.f1845a.setImageResource(R.drawable.icon_success);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return m1230a(viewGroup);
    }
}
