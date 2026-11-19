package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
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

/* compiled from: HengxuanAppAdapter.java */
/* renamed from: com.huawei.hem.z2 */
/* loaded from: classes.dex */
public class HengxuanAppAdapter extends BaseAdapter {

    /* renamed from: a */
    public LayoutInflater f4258a;

    /* renamed from: b */
    public List<AppItem> f4259b;

    /* renamed from: c */
    public Context f4260c;

    /* compiled from: HengxuanAppAdapter.java */
    /* renamed from: com.huawei.hem.z2$a */
    public class a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AppItem f4261a;

        /* renamed from: b */
        public final /* synthetic */ int f4262b;

        public a(AppItem appItem, int i) {
            this.f4261a = appItem;
            this.f4262b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                String pkgName = this.f4261a.getPkgName();
                DeviceLogHelper.getInstance().recordOpenApp(pkgName);
                if (pkgName.equals("com.sec.android.gallery3d")) {
                    LTKDateUtil.m1408r(HengxuanAppAdapter.this.f4260c, pkgName, R.string.text_cannot_open_app);
                } else {
                    LauncherMenuHelper.m2973T(HengxuanAppAdapter.this.f4260c, new ComponentName(pkgName, HengxuanAppAdapter.this.f4259b.get(this.f4262b).getActivityName()));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* compiled from: HengxuanAppAdapter.java */
    /* renamed from: com.huawei.hem.z2$b */
    public class b {

        /* renamed from: a */
        public TextView f4264a;

        /* renamed from: b */
        public ImageView f4265b;

        /* renamed from: c */
        public TextView f4266c;

        public b(HengxuanAppAdapter c1446z2) {
        }
    }

    public HengxuanAppAdapter(Context context, List<AppItem> list) {
        this.f4260c = context;
        this.f4258a = LayoutInflater.from(context);
        this.f4259b = list;
        context.getPackageManager();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<AppItem> list = this.f4259b;
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
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewInflate;
        b bVar;
        if (view == null) {
            bVar = new b(this);
            viewInflate = this.f4258a.inflate(R.layout.layout_appitem, (ViewGroup) null);
            bVar.f4264a = (TextView) viewInflate.findViewById(R.id.app_tips);
            bVar.f4265b = (ImageView) viewInflate.findViewById(R.id.appitem_icon);
            bVar.f4266c = (TextView) viewInflate.findViewById(R.id.appitem_name);
            viewInflate.setTag(bVar);
        } else {
            viewInflate = view;
            bVar = (b) view.getTag();
        }
        AppItem appItem = this.f4259b.get(i);
        if (appItem == null || !appItem.getPkgName().equals("com.ndwill.swd.appstore") || appItem.getTipCount() == 0) {
            bVar.f4264a.setVisibility(8);
        } else {
            bVar.f4264a.setVisibility(0);
        }
        new ImageLoadAsyncTask(this.f4260c, bVar.f4265b, this.f4259b.get(i)).execute(new Integer[0]);
        bVar.f4266c.setText(this.f4259b.get(i).getName());
        viewInflate.setOnClickListener(new a(appItem, i));
        return viewInflate;
    }
}
