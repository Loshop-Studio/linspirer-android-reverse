package com.android.launcher3.fragment.home;

import android.content.res.Resources;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.TooltipCompatHandler;
import android.view.View;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.adapter.MainFragmentPagerAdapter;
import com.android.launcher3.model.AppItem;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.HengxuanAppList;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class HengxuanFragment extends BaseHomeFragment {

    /* renamed from: A */
    public TextView f1949A;

    /* renamed from: B */
    public String f1950B;

    /* renamed from: D */
    public List<AppItem> f1952D;

    /* renamed from: E */
    public MainFragmentPagerAdapter f1953E;

    /* renamed from: G */
    public ArrayList<List<AppItem>> f1955G;

    /* renamed from: I */
    public HengxuanAppList f1957I;

    /* renamed from: v */
    public List<AppItem> f1958v;

    /* renamed from: w */
    public List<AppItem> f1959w;

    /* renamed from: x */
    public ViewPager f1960x;

    /* renamed from: y */
    public GridView f1961y;

    /* renamed from: z */
    public GridView f1962z;

    /* renamed from: C */
    public int f1951C = 0;

    /* renamed from: F */
    public ArrayList<Fragment> f1954F = new ArrayList<>();

    /* renamed from: H */
    public final long[] f1956H = new long[5];

    /* renamed from: com.android.launcher3.fragment.home.HengxuanFragment$a */
    public class HengxuanPageClickListener implements View.OnClickListener {
        public HengxuanPageClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HengxuanFragment.this.m1248t();
        }
    }

    /* renamed from: com.android.launcher3.fragment.home.HengxuanFragment$b */
    public class HengxuanPageListener implements ViewPager.OnPageChangeListener {
        public HengxuanPageListener() {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            HengxuanFragment hengxuanFragment = HengxuanFragment.this;
            hengxuanFragment.f1951C = i;
            hengxuanFragment.m1243q(i);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: e */
    public int mo1219e() {
        return R.layout.fragment_hengxuan;
    }

    @Override // com.android.launcher3.fragment.home.BaseHomeFragment, com.android.launcher3.activity.base.BaseFragment
    /* renamed from: f */
    public void mo1220f() throws Resources.NotFoundException {
        super.mo1220f();
        BaseHomeFragment.f1906u = 18;
        this.f1952D = new ArrayList();
        this.f1958v = new ArrayList();
        this.f1959w = new ArrayList();
        boolean zM1238l = m1238l();
        if (zM1238l) {
            this.f1951C = 1;
        }
        m1244r(false);
        m1250v(zM1238l);
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: g */
    public void mo1221g(View view) throws Resources.NotFoundException {
        this.f1961y = (GridView) view.findViewById(R.id.top);
        this.f1962z = (GridView) view.findViewById(R.id.bottom);
        this.f1949A = (TextView) view.findViewById(R.id.userName);
        this.f1908j = (RelativeLayout) view.findViewById(R.id.root_view);
        this.f1907i = (LinearLayout) view.findViewById(R.id.allApp2Dot);
        this.f1910l = (LinearLayout) view.findViewById(R.id.logo_layout);
        this.f1909k = (ImageView) view.findViewById(R.id.linspirer_logo);
        this.f1960x = (ViewPager) view.findViewById(R.id.viewpager);
        MainFragmentPagerAdapter mainFragmentPagerAdapter = new MainFragmentPagerAdapter(getChildFragmentManager(), this.f1954F);
        this.f1953E = mainFragmentPagerAdapter;
        this.f1960x.setAdapter(mainFragmentPagerAdapter);
        this.f1960x.setCurrentItem(this.f1951C);
        this.f1960x.setOffscreenPageLimit(5);
        this.f1960x.setOnPageChangeListener(new HengxuanPageListener());
        String strM3074v = this.f1802c.m3074v();
        this.f1950B = strM3074v;
        this.f1949A.setText(strM3074v);
        this.f1949A.setOnClickListener(new HengxuanPageClickListener());
        this.f1957I = HengxuanAppList.b.f3490a;
    }

    @Override // com.android.launcher3.fragment.home.BaseHomeFragment
    /* renamed from: n */
    public void mo1240n() throws Resources.NotFoundException {
        m1250v(m1238l());
    }

    @Override // com.android.launcher3.fragment.home.BaseHomeFragment
    /* renamed from: o */
    public void mo1241o() {
    }

    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public final void m1248t() {
        long[] jArr = this.f1956H;
        boolean z = false;
        System.arraycopy(jArr, 1, jArr, 0, jArr.length - 1);
        long[] jArr2 = this.f1956H;
        jArr2[jArr2.length - 1] = SystemClock.uptimeMillis();
        if (SystemClock.uptimeMillis() - this.f1956H[0] <= TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS) {
            LTKDateUtil.m1403m("click time enough");
            z = true;
        } else {
            LTKDateUtil.m1403m("click time not enough");
            LTKDateUtil.m1415y(this.f1800a, R.string.click_five_exit);
        }
        if (z) {
            if (this.f1802c.m3036c() == 1) {
                m1236j();
            } else {
                m1237k();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0093 A[DONT_GENERATE] */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1250v(boolean r17) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 1663
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.fragment.home.HengxuanFragment.m1250v(boolean):void"); // DEX body: android/领创平板管理-2025.9.1/smali/com/android/launcher3/fragment/home/HengxuanFragment.smali:477
    }
}
