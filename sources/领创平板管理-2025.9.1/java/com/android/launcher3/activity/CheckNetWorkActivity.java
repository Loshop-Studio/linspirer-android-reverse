package com.android.launcher3.activity;

import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseFragmentActivity;
import com.android.launcher3.adapter.MFragmentPagerAdapter;
import com.android.launcher3.fragment.home.CheckNetWorkFragment;
import com.android.launcher3.fragment.home.CheckNetWorkFragment.AsyncTaskC0657d;
import com.android.launcher3.fragment.home.KeyInfoFragment;
import com.gyf.immersionbar.ImmersionBar;
import com.huawei.hem.C0902dc;
import com.huawei.hem.C1070k2;
import com.huawei.hem.InterfaceC1046j3;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CheckNetWorkActivity extends BaseFragmentActivity implements View.OnClickListener {

    /* renamed from: b */
    public RadioGroup f1670b;

    /* renamed from: c */
    public RadioButton f1671c;

    /* renamed from: d */
    public RadioButton f1672d;

    /* renamed from: e */
    public TextView f1673e;

    /* renamed from: f */
    public View f1674f;

    /* renamed from: g */
    public View f1675g;

    /* renamed from: h */
    public Button f1676h;

    /* renamed from: i */
    public ViewPager f1677i;

    /* renamed from: j */
    public ArrayList<Fragment> f1678j;

    /* renamed from: k */
    public FragmentManager f1679k;

    /* renamed from: l */
    public InterfaceC1046j3 f1680l;

    public class MyOnPageChangeListener implements ViewPager.OnPageChangeListener {
        public MyOnPageChangeListener() {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            CheckNetWorkActivity.m1179e(CheckNetWorkActivity.this, i);
        }
    }

    /* renamed from: e */
    public static void m1179e(CheckNetWorkActivity checkNetWorkActivity, int i) {
        checkNetWorkActivity.f1677i.setCurrentItem(i);
        if (i == 0) {
            checkNetWorkActivity.f1671c.setChecked(true);
            checkNetWorkActivity.m1182g(true);
        } else {
            if (i != 1) {
                return;
            }
            checkNetWorkActivity.f1672d.setChecked(true);
            checkNetWorkActivity.m1182g(false);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseFragmentActivity
    /* renamed from: a */
    public int mo1164a() {
        return R.layout.activity_check_network;
    }

    @Override // com.android.launcher3.activity.base.BaseFragmentActivity
    /* renamed from: c */
    public void mo1180c() {
        ImmersionBar.with(this).fitsSystemWindows(true).statusBarColor(R.color.blue).navigationBarColor(R.color.color_343F50).init();
    }

    @Override // com.android.launcher3.activity.base.BaseFragmentActivity
    /* renamed from: d */
    public void mo1166d(Bundle bundle) throws Resources.NotFoundException {
        RadioGroup radioGroup = (RadioGroup) findViewById(R.id.tab_group);
        this.f1670b = radioGroup;
        radioGroup.setOnCheckedChangeListener(new C1070k2(this));
        this.f1671c = (RadioButton) findViewById(R.id.key_info);
        this.f1672d = (RadioButton) findViewById(R.id.network_test);
        this.f1674f = findViewById(R.id.network_test_line);
        this.f1675g = findViewById(R.id.key_info_line);
        TextView textView = (TextView) findViewById(R.id.back_textview);
        this.f1673e = textView;
        textView.setOnClickListener(this);
        Button button = (Button) findViewById(R.id.check_button);
        this.f1676h = button;
        button.setOnClickListener(this);
        ArrayList<Fragment> arrayList = new ArrayList<>();
        this.f1678j = arrayList;
        arrayList.add(new KeyInfoFragment());
        this.f1678j.add(new CheckNetWorkFragment());
        this.f1679k = getSupportFragmentManager();
        ViewPager viewPager = (ViewPager) findViewById(R.id.vPager);
        this.f1677i = viewPager;
        viewPager.setAdapter(new MFragmentPagerAdapter(this.f1679k, this.f1678j));
        this.f1677i.setOffscreenPageLimit(2);
        this.f1671c.setChecked(true);
        this.f1672d.setChecked(false);
        m1182g(true);
        this.f1677i.setOnPageChangeListener(new MyOnPageChangeListener());
    }

    /* renamed from: f */
    public void m1181f(boolean z) {
        Button button = this.f1676h;
        if (button != null) {
            button.setEnabled(z);
            if (z) {
                this.f1676h.setTextColor(getResources().getColor(R.color.white));
            } else {
                this.f1676h.setTextColor(getResources().getColor(R.color.alpha_79_white));
            }
        }
    }

    /* renamed from: g */
    public final void m1182g(boolean z) {
        if (z) {
            this.f1675g.setVisibility(0);
            this.f1674f.setVisibility(8);
            this.f1676h.setVisibility(8);
            this.f1671c.setTypeface(Typeface.defaultFromStyle(1));
            this.f1672d.setTypeface(Typeface.defaultFromStyle(0));
            return;
        }
        this.f1675g.setVisibility(8);
        this.f1674f.setVisibility(0);
        this.f1676h.setVisibility(0);
        this.f1671c.setTypeface(Typeface.defaultFromStyle(0));
        this.f1672d.setTypeface(Typeface.defaultFromStyle(1));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (C0902dc.m1583a(view)) {
            return;
        }
        if (view == this.f1673e) {
            finish();
            return;
        }
        if (view == this.f1676h) {
            m1181f(false);
            InterfaceC1046j3 interfaceC1046j3 = this.f1680l;
            if (interfaceC1046j3 != null) {
                CheckNetWorkFragment checkNetWorkFragment = CheckNetWorkFragment.this;
                if (checkNetWorkFragment == null) {
                    throw null;
                }
                CheckNetWorkFragment.AsyncTaskC0657d asyncTaskC0657d = checkNetWorkFragment.new AsyncTaskC0657d();
                checkNetWorkFragment.f1941z = asyncTaskC0657d;
                asyncTaskC0657d.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
            }
        }
    }
}
