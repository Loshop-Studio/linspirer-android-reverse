package com.android.launcher3.fragment.home;

// RE note 本类字节码直接引用的读写或显示接口包括偏好设置。

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.activity.AdminLoginActivity;
import com.android.launcher3.activity.gestrue.SettingPwdGestureActivity;
import com.android.launcher3.adapter.MainFragmentPagerAdapter;
import com.android.launcher3.model.AppItem;
import com.android.launcher3.p027db.model.GesturePassword;
import com.android.launcher3.p027db.model.GesturePasswordDao;
import com.android.launcher3.view.CommonDialog;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.ViewControlUtil;
import com.huawei.hem.MainFragmentDialogButtonListener;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.ActivityController;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;
import com.huawei.hem.MainMenuGestureSettingsClickListener;
import com.huawei.hem.MainMenuPrivacyAgreementClickListener;
import com.huawei.hem.MainMenuLogoutClickListener;
import com.huawei.hem.MainMenuCheckUpdateClickListener;
import com.huawei.hem.MainMenuScanClickListener;
import com.huawei.hem.MainMenuMessageCenterClickListener;
import com.huawei.hem.MainMenuChangePasswordClickListener;
import com.huawei.hem.MainMenuDeviceInfoClickListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;

/* loaded from: classes.dex */
public class MainFragment extends BaseHomeFragment implements View.OnClickListener {

    /* renamed from: A */
    public RelativeLayout f1992A;

    /* renamed from: B */
    public TextView f1993B;

    /* renamed from: C */
    public MainFragmentPagerAdapter f1994C;

    /* renamed from: D */
    public long f1995D;

    /* renamed from: E */
    public int f1996E;

    /* renamed from: v */
    public ArrayList<List<AppItem>> f1997v = new ArrayList<>();

    /* renamed from: w */
    public ArrayList<Fragment> f1998w = new ArrayList<>();

    /* renamed from: x */
    public ViewPager f1999x;

    /* renamed from: y */
    public ImageView f2000y;

    /* renamed from: z */
    public TextView f2001z;

    /* renamed from: com.android.launcher3.fragment.home.MainFragment$a */
    public class C0663a implements ViewPager.OnPageChangeListener {
        public C0663a() {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            MainFragment mainFragment = MainFragment.this;
            mainFragment.f1917s = i;
            mainFragment.m1244r(i == 0);
            MainFragment.this.m1243q(i);
            MainFragment.this.m1259y();
        }
    }

    /* renamed from: t */
    public static void m1254t(MainFragment mainFragment) {
        GesturePassword gesturePasswordUnique = mainFragment.f1801b.queryBuilder().where(GesturePasswordDao.Properties.User_name.m5870eq(mainFragment.f1802c.m3052k()), new WhereCondition[0]).unique();
        String gesture_password = gesturePasswordUnique == null ? "" : gesturePasswordUnique.getGesture_password();
        LTKDateUtil.m1392b("BaseFragment -- get gesture password : " + gesture_password);
        if (TextUtils.isEmpty(gesture_password)) {
            Bundle bundle = new Bundle();
            bundle.putInt("settings_type", 0);
            LauncherMenuHelper.m2975V(mainFragment.f1800a, SettingPwdGestureActivity.class, bundle);
        } else {
            CommonDialog commonDialog = new CommonDialog();
            commonDialog.initDialog(mainFragment.f1800a, R.string.dialog_title_text, R.string.text_gesture_reset_password, R.string.text_gesture_cancel_itself, 0.5d, 0.55d, false);
            commonDialog.setDialogOnClickEvent(new MainFragmentDialogButtonListener(mainFragment));
        }
    }

    /* renamed from: w */
    public static void m1257w(MainFragment mainFragment, int i) {
        if (mainFragment == null) {
            throw null;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("settings_type", i);
        LauncherMenuHelper.m2975V(mainFragment.f1800a, SettingPwdGestureActivity.class, bundle);
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: e */
    public int mo1219e() {
        return R.layout.fragment_main;
    }

    @Override // com.android.launcher3.fragment.home.BaseHomeFragment, com.android.launcher3.activity.base.BaseFragment
    /* renamed from: f */
    public void mo1220f() throws Resources.NotFoundException {
        super.mo1220f();
        this.f1803d = false;
        BaseHomeFragment.f1906u = 24;
        if (this.f1913o == null) {
            throw null;
        }
        boolean zM1238l = m1238l();
        if (zM1238l) {
            this.f1917s = 1;
        }
        m1244r(false);
        m1258x(zM1238l);
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: g */
    public void mo1221g(View view) throws Resources.NotFoundException {
        this.f1908j = (RelativeLayout) view.findViewById(R.id.root_view);
        this.f2000y = (ImageView) view.findViewById(R.id.user_avatar);
        this.f2001z = (TextView) view.findViewById(R.id.user_name);
        this.f1999x = (ViewPager) view.findViewById(R.id.viewpager);
        this.f1910l = (LinearLayout) view.findViewById(R.id.logo_layout);
        this.f1909k = (ImageView) view.findViewById(R.id.linspirer_logo);
        this.f1992A = (RelativeLayout) view.findViewById(R.id.launcher_shade);
        this.f1993B = (TextView) view.findViewById(R.id.wifi_setting);
        this.f1907i = (LinearLayout) view.findViewById(R.id.allApp2Dot);
        MainFragmentPagerAdapter mainFragmentPagerAdapter = new MainFragmentPagerAdapter(getChildFragmentManager(), this.f1998w);
        this.f1994C = mainFragmentPagerAdapter;
        this.f1999x.setAdapter(mainFragmentPagerAdapter);
        this.f1999x.setOffscreenPageLimit(5);
        this.f1999x.setOnPageChangeListener(new C0663a());
        this.f2000y.setOnClickListener(this);
        this.f1993B.setOnClickListener(this);
    }

    @Override // com.android.launcher3.fragment.home.BaseHomeFragment
    /* renamed from: n */
    public void mo1240n() throws Resources.NotFoundException {
        m1259y();
        m1258x(m1238l());
    }

    @Override // com.android.launcher3.fragment.home.BaseHomeFragment
    /* renamed from: o */
    public void mo1241o() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
        if (view.getId() != R.id.user_avatar) {
            if (view.getId() == R.id.wifi_setting) {
                LauncherMenuHelper.m2979Z(this.f1800a);
                return;
            } else {
                if (view.getId() == R.id.launcher_shade) {
                    LTKDateUtil.m1408r(this.f1800a, "com.ndwill.swd.appstore", R.string.text_cannot_open_app);
                    return;
                }
                return;
            }
        }
        if (this.f1802c.m3023R()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = jCurrentTimeMillis - this.f1995D;
            this.f1995D = jCurrentTimeMillis;
            if (j <= 1000) {
                int i = this.f1996E + 1;
                this.f1996E = i;
                if (i == 10) {
                    LauncherMenuHelper.m2974U(this.f1800a, AdminLoginActivity.class);
                    this.f1996E = 0;
                    return;
                }
                return;
            }
            return;
        }
        if (ViewControlUtil.m1583a(view)) {
            return;
        }
        View viewInflate = LayoutInflater.from(this.f1800a).inflate(R.layout.fragment_main_popwindow, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(this.f1800a);
        getResources().getDimension(R.dimen.dp_206);
        float dimension = getResources().getDimension(R.dimen.dp_130);
        int dimension2 = (int) getResources().getDimension(R.dimen.dp_12);
        getResources().getDimension(R.dimen.dp_15);
        popupWindow.setWidth((int) dimension);
        popupWindow.setContentView(viewInflate);
        TextView textView = (TextView) viewInflate.findViewById(R.id.message_center);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.change_password);
        View viewFindViewById = viewInflate.findViewById(R.id.change_password_underline);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.device_info);
        viewInflate.findViewById(R.id.device_info_underline);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.settings_gestrue_pwd);
        View viewFindViewById2 = viewInflate.findViewById(R.id.gestrue_pwd_underline);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.logout);
        View viewFindViewById3 = viewInflate.findViewById(R.id.privacy_agreement_underline);
        TextView textView6 = (TextView) viewInflate.findViewById(R.id.privacy_agreement);
        View viewFindViewById4 = viewInflate.findViewById(R.id.check_update_underline);
        TextView textView7 = (TextView) viewInflate.findViewById(R.id.check_update);
        viewInflate.findViewById(R.id.scan_underline);
        TextView textView8 = (TextView) viewInflate.findViewById(R.id.scan);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(null);
        popupWindow.showAsDropDown(this.f2000y, 0, dimension2, 8388613);
        if (this.f1802c.m3060o() == 0) {
            textView4.setVisibility(8);
            viewFindViewById2.setVisibility(8);
        }
        UserInfoUtil c1424y5 = this.f1802c;
        if (c1424y5.f4160d0 == -1) {
            c1424y5.f4160d0 = c1424y5.f4130D.f2199a.getInt("allow_change_pwd_status", -1);
        }
        if (c1424y5.f4160d0 == 0 || this.f1802c.m3032a() == 2) {
            textView2.setVisibility(8);
            viewFindViewById.setVisibility(8);
        }
        UserInfoUtil c1424y52 = this.f1802c;
        if (c1424y52.f4142P == -1) {
            c1424y52.f4142P = c1424y52.f4130D.f2199a.getInt("privacy_status", 0);
        }
        if (c1424y52.f4142P == 0) {
            textView6.setVisibility(8);
            viewFindViewById3.setVisibility(8);
        }
        if (LTKDateUtil.m1405o("com.ndwill.swd.appstore", this.f1800a)) {
            viewFindViewById4.setVisibility(8);
            textView7.setVisibility(8);
        }
        textView.setOnClickListener(new MainMenuMessageCenterClickListener(this, popupWindow));
        textView2.setOnClickListener(new MainMenuChangePasswordClickListener(this, popupWindow));
        textView3.setOnClickListener(new MainMenuDeviceInfoClickListener(this, popupWindow));
        textView4.setOnClickListener(new MainMenuGestureSettingsClickListener(this, popupWindow));
        textView6.setOnClickListener(new MainMenuPrivacyAgreementClickListener(this, popupWindow));
        textView5.setOnClickListener(new MainMenuLogoutClickListener(this, popupWindow));
        textView7.setOnClickListener(new MainMenuCheckUpdateClickListener(this, popupWindow));
        textView8.setOnClickListener(new MainMenuScanClickListener(this, popupWindow));
        if (ActivityController.m2405a() == null) {
            throw null;
        }
        for (WeakReference<Activity> weakReference : ActivityController.f3287a) {
            if (weakReference.get() != null) {
                weakReference.get().finish();
            }
        }
        ActivityController.f3287a.clear();
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (m1238l()) {
            LTKDateUtil.m1403m("MainFragment  -- onConfigurationChanged  create HiBoardFragment and refresh");
            this.f1994C.notifyDataSetChanged();
            m1259y();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() throws Resources.NotFoundException {
        super.onResume();
        LTKDateUtil.m1403m("MainFragment =======onResume=======");
        if (this.f1912n) {
            LTKDateUtil.m1403m("MainFragment =======onResume======= refresh");
            m1244r(this.f1917s == 0);
            m1258x(m1238l());
            m1259y();
            this.f1912n = false;
        }
        this.f1803d = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:196:0x0527  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0265 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x027a  */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1258x(boolean r18) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 1322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.fragment.home.MainFragment.m1258x(boolean):void"); // DEX body: android/领创平板管理-2025.9.1/smali/com/android/launcher3/fragment/home/MainFragment.smali:1165
    }

    /* renamed from: y */
    public final void m1259y() {
        String strM1760e;
        strM1760e = "";
        if (this.f1802c.m3023R()) {
            this.f2001z.setText("");
            return;
        }
        String strM3074v = this.f1802c.m3074v();
        int i = this.f1800a.getResources().getConfiguration().orientation;
        if (m1238l() && this.f1917s == 0 && 1 == i) {
            this.f2001z.setText(strM3074v);
            return;
        }
        if (!this.f1802c.m3023R()) {
            UserInfoUtil c1424y5 = this.f1802c;
            if (c1424y5.f4143Q == -1) {
                c1424y5.f4143Q = c1424y5.f4130D.f2199a.getInt("school_class_info_status", 0);
            }
            if (c1424y5.f4143Q == 1) {
                String strM3008C = this.f1802c.m3008C();
                String strM3012G = this.f1802c.m3012G();
                strM1760e = TextUtils.isEmpty(strM3008C) ? "" : CompilerOutline.m1760e(strM3008C, "  |  ");
                if (!TextUtils.isEmpty(strM3012G)) {
                    strM1760e = CompilerOutline.m1761f(strM1760e, strM3012G, "  |  ");
                }
            }
        }
        this.f2001z.setText(CompilerOutline.m1760e(strM1760e, strM3074v));
    }
}
