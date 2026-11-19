package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.model.AppItem;
import com.android.launcher3.network.DeviceLogHelper;
import java.util.List;

/* compiled from: TopAdapter.java */
/* renamed from: com.huawei.hem.d3 */
/* loaded from: classes.dex */
public class C0893d3 extends BaseAdapter {

    /* renamed from: a */
    public LayoutInflater f2377a;

    /* renamed from: b */
    public List<AppItem> f2378b;

    /* renamed from: c */
    public Context f2379c;

    /* renamed from: d */
    public a f2380d;

    /* compiled from: TopAdapter.java */
    /* renamed from: com.huawei.hem.d3$a */
    public interface a {
        /* renamed from: a */
        void mo1566a();
    }

    /* compiled from: TopAdapter.java */
    /* renamed from: com.huawei.hem.d3$b */
    public class b {

        /* renamed from: a */
        public ImageView f2381a;

        /* renamed from: b */
        public TextView f2382b;

        public b(C0893d3 c0893d3) {
        }
    }

    public C0893d3(Context context, List<AppItem> list) {
        this.f2379c = context;
        this.f2377a = LayoutInflater.from(context);
        this.f2378b = list;
    }

    /* renamed from: a */
    public /* synthetic */ void m1565a(int i, AppItem appItem, View view) {
        if (i == 3) {
            try {
                if (this.f2380d != null) {
                    this.f2380d.mo1566a();
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        String pkgName = appItem.getPkgName();
        if (TextUtils.isEmpty(pkgName)) {
            return;
        }
        DeviceLogHelper.getInstance().recordOpenApp(pkgName);
        if (pkgName.equals("com.sec.android.gallery3d")) {
            C0850bc.m1408r(this.f2379c, pkgName, R.string.text_cannot_open_app);
        } else {
            C1423y4.m2973T(this.f2379c, new ComponentName(pkgName, this.f2378b.get(i).getActivityName()));
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<AppItem> list = this.f2378b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(final int i, View view, ViewGroup viewGroup) {
        View viewInflate;
        b bVar;
        if (view == null) {
            bVar = new b(this);
            viewInflate = this.f2377a.inflate(R.layout.layout_hengxuan_topitem, (ViewGroup) null);
            bVar.f2381a = (ImageView) viewInflate.findViewById(R.id.appitemicon);
            bVar.f2382b = (TextView) viewInflate.findViewById(R.id.appitemname);
            viewInflate.setTag(bVar);
        } else {
            viewInflate = view;
            bVar = (b) view.getTag();
        }
        final AppItem appItem = this.f2378b.get(i);
        if (appItem.getIcon() instanceof Integer) {
            bVar.f2381a.setImageResource(((Integer) appItem.getIcon()).intValue());
        } else {
            new AsyncTaskC0844b6(this.f2379c, bVar.f2381a, this.f2378b.get(i)).execute(new Integer[0]);
        }
        if (i < 3) {
            bVar.f2381a.setVisibility(0);
            bVar.f2382b.setVisibility(8);
        } else {
            bVar.f2381a.setVisibility(8);
            bVar.f2382b.setVisibility(0);
        }
        bVar.f2382b.setText(this.f2378b.get(i).getName());
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.huawei.hem.w2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f3982a.m1565a(i, appItem, view2);
            }
        });
        return viewInflate;
    }
}
