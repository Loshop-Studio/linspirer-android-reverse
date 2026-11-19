package com.android.launcher3.activity;

import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseActivity;
import com.android.launcher3.p027db.model.PushMsg;
import com.huawei.hem.MobileSdkPlatformUtilities;
import com.huawei.hem.ViewControlUtil;
import java.util.List;

/* loaded from: classes.dex */
public class ShowPushMsgActivty extends BaseActivity implements View.OnClickListener {

    /* renamed from: b */
    public TextView f1794b;

    /* renamed from: c */
    public TextView f1795c;

    /* renamed from: d */
    public Button f1796d;

    /* renamed from: e */
    public List<PushMsg> f1797e;

    /* renamed from: f */
    public int f1798f = 0;

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        return R.layout.activity_msg_dialog;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: c */
    public void mo1171c() {
        List<PushMsg> list = (List) getIntent().getExtras().getSerializable("command");
        this.f1797e = list;
        if (MobileSdkPlatformUtilities.m2273N(list)) {
            return;
        }
        m1213f();
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        this.f1794b = (TextView) findViewById(R.id.msg_title_tv);
        TextView textView = (TextView) findViewById(R.id.msg_content_tv);
        this.f1795c = textView;
        textView.setMovementMethod(ScrollingMovementMethod.getInstance());
        Button button = (Button) findViewById(R.id.msg_ok_btn);
        this.f1796d = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.huawei.hem.h2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2810a.onClick(view);
            }
        });
    }

    /* renamed from: f */
    public final void m1213f() {
        if (this.f1798f >= this.f1797e.size()) {
            return;
        }
        if (this.f1798f == this.f1797e.size() - 1) {
            this.f1796d.setText(getString(R.string.sure));
        } else {
            this.f1796d.setText(getString(R.string.next_item));
        }
        this.f1794b.setText(String.format(getResources().getString(R.string.title_msg), this.f1797e.get(this.f1798f).getActive()));
        this.f1795c.setText(String.format(getResources().getString(R.string.content_msg), this.f1797e.get(this.f1798f).getCommand()));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!ViewControlUtil.m1583a(view) && view.getId() == R.id.msg_ok_btn) {
            int i = this.f1798f + 1;
            this.f1798f = i;
            if (i < this.f1797e.size()) {
                m1213f();
            } else {
                finish();
            }
        }
    }
}
