package com.android.launcher3.fragment.home;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.android.launcher3.LauncherNew;
import com.android.launcher3.R;
import com.android.launcher3.activity.LoginActivity;
import com.android.launcher3.activity.base.BaseFragment;
import com.android.launcher3.network.HiScreenHelper;
import com.android.launcher3.p027db.model.ScreenPartSettings;
import com.android.launcher3.receiver.LinspirerLauncherReceiver;
import com.android.launcher3.view.CommonDialog;
import com.bumptech.glide.Glide;
import com.huawei.hem.MobileSdkPlatformUtilities;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.ISVCustomer;
import com.huawei.hem.DBController;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.OnMainScreenChangeListener;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseHomeFragment extends BaseFragment implements OnMainScreenChangeListener {

    /* renamed from: u */
    public static int f1906u = 24;

    /* renamed from: i */
    public LinearLayout f1907i;

    /* renamed from: j */
    public RelativeLayout f1908j;

    /* renamed from: k */
    public ImageView f1909k;

    /* renamed from: l */
    public LinearLayout f1910l;

    /* renamed from: o */
    public ISVCustomer f1913o;

    /* renamed from: p */
    public HiScreenHelper f1914p;

    /* renamed from: q */
    public String f1915q;

    /* renamed from: r */
    public List<ScreenPartSettings> f1916r;

    /* renamed from: m */
    public int f1911m = 1;

    /* renamed from: n */
    public boolean f1912n = true;

    /* renamed from: s */
    public int f1917s = 0;

    /* renamed from: t */
    public BroadcastReceiver f1918t = new HomeActionReceiver();

    /* renamed from: com.android.launcher3.fragment.home.BaseHomeFragment$a */
    public class HomeActionReceiver extends BroadcastReceiver {
        public HomeActionReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null) {
                return;
            }
            String action = intent.getAction();
            if (!"com.linspirer.launcher3.refresh_desktop".equals(action)) {
                if ("com.linspirer.launcher3.changewallpaper".equals(action)) {
                    LTKDateUtil.m1403m("BaseHomeFragment  -- update the launcher backgroud wallpaper .");
                    BaseHomeFragment.this.mo1241o();
                    return;
                }
                return;
            }
            if (BaseHomeFragment.this.f1803d) {
                LTKDateUtil.m1403m("BaseHomeFragment  -- isVisibledFragment , start to refresh desktop data .");
                BaseHomeFragment.this.mo1240n();
            } else {
                BaseHomeFragment.this.f1912n = true;
                LTKDateUtil.m1390A("BaseHomeFragment  --  is not visibled , wating for refreshing desktop data .");
            }
        }
    }

    /* renamed from: com.android.launcher3.fragment.home.BaseHomeFragment$b */
    public class HomeDialogConfirmListener implements CommonDialog.DialogButtonOnClickListener {
        public HomeDialogConfirmListener() {
        }

        @Override // com.android.launcher3.view.CommonDialog.DialogButtonOnClickListener
        public void clickCancelButton(View view) {
        }

        @Override // com.android.launcher3.view.CommonDialog.DialogButtonOnClickListener
        public void clickConfirmButton(View view, String str) {
            if (TextUtils.isEmpty(str)) {
                LTKDateUtil.m1415y(BaseHomeFragment.this.f1800a, R.string.please_enter_dynamic_password);
            } else if (LauncherMenuHelper.m2957D().equals(str)) {
                BaseHomeFragment.this.m1239m(true);
            } else {
                LTKDateUtil.m1415y(BaseHomeFragment.this.f1800a, R.string.input_pwd_error);
            }
        }
    }

    /* renamed from: com.android.launcher3.fragment.home.BaseHomeFragment$c */
    public class HomeDialogChoiceListener implements CommonDialog.DialogButtonOnClickListener {
        public HomeDialogChoiceListener() {
        }

        @Override // com.android.launcher3.view.CommonDialog.DialogButtonOnClickListener
        public void clickCancelButton(View view) {
        }

        @Override // com.android.launcher3.view.CommonDialog.DialogButtonOnClickListener
        public void clickConfirmButton(View view, String str) {
            BaseHomeFragment.this.m1239m(true);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: f */
    public void mo1220f() {
        IntentFilter intentFilter = new IntentFilter("com.linspirer.launcher3.refresh_desktop");
        intentFilter.addAction("com.linspirer.launcher3.changewallpaper");
        this.f1800a.registerReceiver(this.f1918t, intentFilter);
        this.f1913o = ISVCustomer.b.f3370a;
        this.f1916r = new ArrayList();
        HiScreenHelper hiScreenHelper = HiScreenHelper.getInstance();
        this.f1914p = hiScreenHelper;
        hiScreenHelper.setOnMainScreenChangeListener(this);
        List<ScreenPartSettings> listLoadAll = DBController.m2715a().f3750b.getScreenPartSettingsDao().loadAll();
        if (MobileSdkPlatformUtilities.m2273N(listLoadAll)) {
            LTKDateUtil.m1403m("BaseHomeFragment has no hiboard cache");
            return;
        }
        for (ScreenPartSettings screenPartSettings : listLoadAll) {
            if (screenPartSettings.getPosition() == 0) {
                this.f1915q = screenPartSettings.getB_img_path();
            }
        }
        this.f1916r.clear();
        this.f1916r.addAll(listLoadAll);
        this.f1914p.setScreenPartSettings(this.f1916r);
    }

    /* renamed from: j */
    public void m1236j() {
        CommonDialog commonDialog = new CommonDialog();
        commonDialog.initDialog(this.f1800a, R.string.text_logout_title_tips, R.string.text_sure, R.string.text_cancel, 0.4d, 0.55d, true);
        commonDialog.setDialogOnClickEvent(new HomeDialogConfirmListener());
    }

    /* renamed from: k */
    public void m1237k() {
        CommonDialog commonDialog = new CommonDialog();
        commonDialog.initDialog(this.f1800a, R.string.text_confirm_logout_tips, R.string.text_sure, R.string.text_cancel, 0.4d, 0.45d, false);
        commonDialog.setDialogOnClickEvent(new HomeDialogChoiceListener());
    }

    /* renamed from: l */
    public boolean m1238l() {
        return !MobileSdkPlatformUtilities.m2273N(this.f1916r);
    }

    /* renamed from: m */
    public void m1239m(boolean z) {
        LTKDateUtil.m1403m("BaseHomeFragment  logout launcher and start login");
        if (z) {
            new LinspirerLauncherReceiver().m1281b(this.f1800a);
        }
        LauncherMenuHelper.m2978Y(this.f1800a, LoginActivity.class);
        ((LauncherNew) this.f1800a).finish();
    }

    /* renamed from: n */
    public abstract void mo1240n();

    /* renamed from: o */
    public abstract void mo1241o();

    @Override // com.android.launcher3.activity.base.BaseFragment, android.support.v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f1803d = false;
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        LTKDateUtil.m1403m("BaseHomeFragment ==onDestroy==");
        this.f1803d = false;
        BroadcastReceiver broadcastReceiver = this.f1918t;
        if (broadcastReceiver != null) {
            this.f1800a.unregisterReceiver(broadcastReceiver);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f1803d = false;
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        this.f1803d = false;
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this.f1803d = false;
    }

    /* renamed from: p */
    public void m1242p(boolean z) {
        this.f1907i.removeAllViews();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(8, 0, 5, 0);
        for (int i = 0; i < this.f1911m; i++) {
            if (i == 0) {
                ImageView imageView = new ImageView(this.f1800a);
                imageView.setLayoutParams(layoutParams);
                imageView.setImageResource(R.drawable.selected_point_drawable);
                this.f1907i.addView(imageView);
            } else {
                ImageView imageView2 = new ImageView(this.f1800a);
                imageView2.setLayoutParams(layoutParams);
                imageView2.setImageResource(R.drawable.unselected_point_drawable);
                this.f1907i.addView(imageView2);
            }
        }
        if (z) {
            ImageView imageView3 = new ImageView(this.f1800a);
            imageView3.setLayoutParams(layoutParams);
            imageView3.setImageResource(R.drawable.unselected_point_drawable);
            this.f1907i.addView(imageView3);
        }
    }

    /* renamed from: q */
    public void m1243q(int i) {
        ImageView imageView;
        ImageView imageView2 = (ImageView) this.f1907i.getChildAt(i);
        if (imageView2 != null) {
            imageView2.setImageResource(R.drawable.selected_point_drawable);
        }
        boolean zM1238l = m1238l();
        for (int i2 = 0; i2 < this.f1911m + (zM1238l ? 1 : 0); i2++) {
            if (i2 != i && (imageView = (ImageView) this.f1907i.getChildAt(i2)) != null) {
                imageView.setImageResource(R.drawable.unselected_point_drawable);
            }
        }
    }

    /* renamed from: r */
    public void m1244r(boolean z) {
        if (!isVisible() || ((Activity) this.f1800a).isDestroyed()) {
            return;
        }
        if (!m1238l() || !z) {
            LTKDateUtil.m1403m("BaseHomeFragment no need show logo");
            this.f1910l.setVisibility(8);
            return;
        }
        this.f1910l.setVisibility(0);
        if (TextUtils.isEmpty(this.f1915q)) {
            Glide.with(this.f1800a).load(Integer.valueOf(R.drawable.linspirer_logo)).into(this.f1909k);
        } else {
            Glide.with(this.f1800a).load(this.f1915q).placeholder(R.drawable.linspirer_logo).into(this.f1909k);
        }
    }
}
