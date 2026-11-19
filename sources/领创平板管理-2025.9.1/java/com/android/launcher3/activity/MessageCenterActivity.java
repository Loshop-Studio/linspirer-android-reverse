package com.android.launcher3.activity;

import android.content.res.Configuration;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseActivity;
import com.android.launcher3.p027db.model.PushMsg;
import com.android.launcher3.p027db.model.PushMsgDao;
import com.android.launcher3.view.SwipeSideslipListView;
import com.gyf.immersionbar.ImmersionBar;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.C0815a3;
import com.huawei.hem.C0902dc;
import com.huawei.hem.C1297t3;
import com.huawei.hem.C1424y5;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;

/* loaded from: classes.dex */
public class MessageCenterActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: b */
    public SwipeSideslipListView f1761b;

    /* renamed from: c */
    public List<PushMsg> f1762c;

    /* renamed from: d */
    public PushMsgDao f1763d;

    /* renamed from: e */
    public ImageView f1764e;

    /* renamed from: f */
    public TextView f1765f;

    /* renamed from: g */
    public LinearLayout f1766g;

    /* renamed from: h */
    public C0815a3 f1767h;

    /* renamed from: i */
    public Handler f1768i = new HandlerC0639a();

    /* renamed from: com.android.launcher3.activity.MessageCenterActivity$a */
    public class HandlerC0639a extends Handler {
        public HandlerC0639a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            MessageCenterActivity.this.m1205g();
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        return R.layout.activity_msg_center;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: c */
    public void mo1171c() {
        PushMsgDao pushMsgDao = C1297t3.m2715a().f3751c.getPushMsgDao();
        this.f1763d = pushMsgDao;
        List<PushMsg> list = pushMsgDao.queryBuilder().where(PushMsgDao.Properties.UserId.m5870eq(C1424y5.b.f4202a.m3052k()), new WhereCondition[0]).list();
        this.f1762c = list;
        if (AbstractC1102l9.m2273N(list)) {
            m1205g();
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (PushMsg pushMsg : this.f1762c) {
            if ((System.currentTimeMillis() / 1000) - pushMsg.getSendtime() > 604800) {
                arrayList.add(pushMsg);
            }
        }
        this.f1762c.removeAll(arrayList);
        this.f1763d.deleteInTx(arrayList);
        if (AbstractC1102l9.m2273N(this.f1762c)) {
            m1205g();
            return;
        }
        this.f1764e.setVisibility(8);
        this.f1765f.setVisibility(8);
        this.f1761b.setVisibility(0);
        C0815a3 c0815a3 = this.f1767h;
        if (c0815a3 != null) {
            c0815a3.f2164a = this.f1762c;
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: d */
    public void mo1174d() {
        ImmersionBar.with(this).statusBarColor(R.color.general_theme_bg_color).navigationBarColor(R.color.color_343F50).init();
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        this.f1761b = (SwipeSideslipListView) findViewById(R.id.msg_list);
        this.f1764e = (ImageView) findViewById(R.id.empty_iv);
        this.f1765f = (TextView) findViewById(R.id.empty_tv);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.message_back);
        this.f1766g = linearLayout;
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.huawei.hem.e2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2510a.onClick(view);
            }
        });
        C0815a3 c0815a3 = new C0815a3(this, this);
        this.f1767h = c0815a3;
        this.f1761b.setAdapter((ListAdapter) c0815a3);
    }

    /* renamed from: g */
    public final void m1205g() {
        this.f1764e.setVisibility(0);
        this.f1765f.setVisibility(0);
        this.f1761b.setVisibility(8);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (C0902dc.m1583a(view)) {
            return;
        }
        int id = view.getId();
        if (id != R.id.btn_delete) {
            if (id != R.id.message_back) {
                return;
            }
            finish();
            return;
        }
        int iIntValue = ((Integer) view.getTag(R.id.msg_delete_item)).intValue();
        if (!AbstractC1102l9.m2273N(this.f1762c) && this.f1762c.size() > iIntValue) {
            PushMsg pushMsg = this.f1762c.get(iIntValue);
            this.f1762c.remove(pushMsg);
            this.f1763d.deleteByKey(pushMsg.getId());
            this.f1761b.resetItemView();
            this.f1767h.notifyDataSetChanged();
            this.f1763d.deleteByKey(pushMsg.getId());
        }
        if (AbstractC1102l9.m2273N(this.f1762c)) {
            this.f1768i.sendEmptyMessageDelayed(1, 500L);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        mo1172e();
        mo1171c();
    }
}
