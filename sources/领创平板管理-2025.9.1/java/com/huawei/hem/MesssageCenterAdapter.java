package com.huawei.hem;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.p027db.model.PushMsg;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/* compiled from: MesssageCenterAdapter.java */
/* renamed from: com.huawei.hem.a3 */
/* loaded from: classes.dex */
public class MesssageCenterAdapter extends BaseAdapter {

    /* renamed from: a */
    public List<PushMsg> f2164a;

    /* renamed from: b */
    public Context f2165b;

    /* renamed from: c */
    public View.OnClickListener f2166c;

    /* compiled from: MesssageCenterAdapter.java */
    /* renamed from: com.huawei.hem.a3$a */
    public class a {

        /* renamed from: a */
        public TextView f2167a;

        /* renamed from: b */
        public TextView f2168b;

        /* renamed from: c */
        public TextView f2169c;

        /* renamed from: d */
        public Button f2170d;

        public a(MesssageCenterAdapter c0815a3) {
        }
    }

    public MesssageCenterAdapter(Context context, View.OnClickListener onClickListener) {
        this.f2165b = context;
        this.f2166c = onClickListener;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<PushMsg> list = this.f2164a;
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
        a aVar;
        if (view == null) {
            view = View.inflate(this.f2165b, R.layout.msg_center_item, null);
            aVar = new a(this);
            aVar.f2168b = (TextView) view.findViewById(R.id.msg_content);
            aVar.f2167a = (TextView) view.findViewById(R.id.msg_title);
            aVar.f2169c = (TextView) view.findViewById(R.id.msg_time);
            aVar.f2170d = (Button) view.findViewById(R.id.btn_delete);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
        }
        PushMsg pushMsg = this.f2164a.get(i);
        aVar.f2168b.setText(pushMsg.getCommand());
        aVar.f2167a.setText(pushMsg.getActive());
        aVar.f2169c.setText(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(pushMsg.getSendtime() * 1000)));
        aVar.f2170d.setOnClickListener(this.f2166c);
        aVar.f2170d.setTag(R.id.msg_delete_item, Integer.valueOf(i));
        return view;
    }
}
