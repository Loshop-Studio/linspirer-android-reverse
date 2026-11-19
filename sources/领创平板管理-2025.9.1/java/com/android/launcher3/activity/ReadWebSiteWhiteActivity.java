package com.android.launcher3.activity;

import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseActivity;
import com.android.launcher3.adapter.ReadWebsitRecyclerViewAdapter;
import com.android.launcher3.network.UrlWhiteHelper;
import com.gyf.immersionbar.ImmersionBar;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.ViewControlUtil;
import com.huawei.hem.UserInfoUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ReadWebSiteWhiteActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: b */
    public TextView f1779b;

    /* renamed from: c */
    public RecyclerView f1780c;

    /* renamed from: d */
    public ReadWebsitRecyclerViewAdapter f1781d;

    /* renamed from: e */
    public RecyclerView f1782e;

    /* renamed from: f */
    public RecyclerView f1783f;

    /* renamed from: g */
    public RecyclerView f1784g;

    /* renamed from: h */
    public List<String> f1785h;

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        return R.layout.activity_read_website_white;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: c */
    public void mo1171c() {
        this.f1781d = new ReadWebsitRecyclerViewAdapter(this, LTKDateUtil.f2294f.mo1330t0());
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(1);
        this.f1780c.setLayoutManager(linearLayoutManager);
        this.f1780c.setAdapter(this.f1781d);
        ReadWebsitRecyclerViewAdapter readWebsitRecyclerViewAdapter = new ReadWebsitRecyclerViewAdapter(this, UrlWhiteHelper.getInstance().getLspDefaultUrl());
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(this);
        linearLayoutManager2.setOrientation(1);
        this.f1782e.setLayoutManager(linearLayoutManager2);
        this.f1782e.setAdapter(readWebsitRecyclerViewAdapter);
        ArrayList arrayList = new ArrayList();
        arrayList.add("zyyx.cc");
        arrayList.add("zykj.org");
        ReadWebsitRecyclerViewAdapter readWebsitRecyclerViewAdapter2 = new ReadWebsitRecyclerViewAdapter(this, arrayList);
        LinearLayoutManager linearLayoutManager3 = new LinearLayoutManager(this);
        linearLayoutManager3.setOrientation(1);
        this.f1783f.setLayoutManager(linearLayoutManager3);
        this.f1783f.setAdapter(readWebsitRecyclerViewAdapter2);
        String strM3068s = UserInfoUtil.b.f4202a.m3068s();
        if (!TextUtils.isEmpty(strM3068s)) {
            this.f1785h = AbstractC1102l9.m2277R(strM3068s, ",");
        }
        ReadWebsitRecyclerViewAdapter readWebsitRecyclerViewAdapter3 = new ReadWebsitRecyclerViewAdapter(this, this.f1785h);
        LinearLayoutManager linearLayoutManager4 = new LinearLayoutManager(this);
        linearLayoutManager4.setOrientation(1);
        this.f1784g.setLayoutManager(linearLayoutManager4);
        this.f1784g.setAdapter(readWebsitRecyclerViewAdapter3);
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: d */
    public void mo1174d() {
        ImmersionBar.with(this).statusBarColor(R.color.general_theme_bg_color).navigationBarColor(R.color.color_343F50).init();
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        this.f1779b = (TextView) findViewById(R.id.read_website_back);
        this.f1780c = (RecyclerView) findViewById(R.id.website_list);
        this.f1782e = (RecyclerView) findViewById(R.id.linspirer_website_list);
        this.f1783f = (RecyclerView) findViewById(R.id.isv_website_list);
        this.f1784g = (RecyclerView) findViewById(R.id.isv_set_website_list);
        this.f1779b.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!ViewControlUtil.m1583a(view) && R.id.read_website_back == view.getId()) {
            finish();
        }
    }
}
