package com.android.launcher3.fragment.login;

// RE note 本类字节码直接引用的读写或显示接口包括偏好设置。

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.activity.AdminLoginActivity;
import com.android.launcher3.activity.CheckNetWorkActivity;
import com.android.launcher3.activity.base.BaseFragment;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.ViewControlUtil;
import com.huawei.hem.LoginFragmentLinkSpan;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;
import com.huawei.hem.LoginMenuUpdateClickListener;
import com.huawei.hem.LoginMenuNetworkClickListener;
import com.huawei.hem.LoginMenuSyncTimeClickListener;
import com.huawei.hem.LoginMenuCloseClickListener;
import com.huawei.hem.license.HemLicenseManager;
import com.huawei.hem.license.HemLicenseStatusListener;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class BaseLoginFragment extends BaseFragment implements View.OnClickListener {

    /* renamed from: k */
    public ImageView f2005k;

    /* renamed from: l */
    public TextView f2006l;

    /* renamed from: m */
    public TextView f2007m;

    /* renamed from: n */
    public CheckBox f2008n;

    /* renamed from: o */
    public Button f2009o;

    /* renamed from: i */
    public long f2003i = 0;

    /* renamed from: j */
    public int f2004j = 1;

    /* renamed from: p */
    public BroadcastReceiver f2010p = new LoginFragmentPackageReceiver();

    /* renamed from: com.android.launcher3.fragment.login.BaseLoginFragment$a */
    public class LoginFragmentPackageReceiver extends BroadcastReceiver {
        public LoginFragmentPackageReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            LTKDateUtil.m1403m("BaseLoginFragment onReceive loginApkCheckUpdateButtonPressedReceiver ");
            if (intent == null || !intent.getAction().equals("com.android.laucher3.mdm.CHECK_UPDATE")) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add("com.android.launcher3");
            arrayList.add("com.ndwill.swd.appstore");
            BaseLoginFragment.this.m1217c(arrayList);
        }
    }

    /* renamed from: j */
    public static void m1261j(BaseLoginFragment baseLoginFragment) {
        if (baseLoginFragment == null) {
            throw null;
        }
        if (LTKDateUtil.f2294f.mo2066k()) {
            return;
        }
        HemLicenseManager hemLicenseManager = HemLicenseManager.getInstance(baseLoginFragment.f1800a);
        hemLicenseManager.setStatusListener(new HemLicenseStatusListener() { // from class: com.huawei.hem.g4
            @Override // com.huawei.hem.license.HemLicenseStatusListener
            public final void onStatus(int i, String str) {
                LTKDateUtil.m1403m("BaseLoginFragment -- hem msg = " + str + " -- msgCode = " + i);
            }
        });
        hemLicenseManager.activeLicense();
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: f */
    public void mo1220f() {
        this.f2006l.setText(LTKDateUtil.m1398h("com.android.launcher3", this.f1800a));
        CheckBox checkBox = this.f2008n;
        Resources resources = getResources();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        SpannableString spannableString = new SpannableString(getString(R.string.text_prefix_privacy_agreement));
        spannableString.setSpan(new ForegroundColorSpan(resources.getColor(R.color.prefix_privacy_agreement_color)), 0, spannableString.length(), 33);
        spannableStringBuilder.append((CharSequence) spannableString);
        spannableStringBuilder.append((CharSequence) "《");
        SpannableString spannableString2 = new SpannableString(getString(R.string.text_privacy_agreement));
        spannableString2.setSpan(new LoginFragmentLinkSpan(this), 0, spannableString2.length(), 33);
        spannableString2.setSpan(new ForegroundColorSpan(-1), 0, spannableString2.length(), 33);
        spannableStringBuilder.append((CharSequence) spannableString2);
        spannableStringBuilder.append((CharSequence) "》");
        checkBox.setText(spannableStringBuilder);
        checkBox.setMovementMethod(LinkMovementMethod.getInstance());
        UserInfoUtil c1424y5 = this.f1802c;
        if (!c1424y5.f4140N) {
            c1424y5.f4140N = c1424y5.f4130D.f2199a.getBoolean("agreed_privacy", false);
        }
        checkBox.setChecked(c1424y5.f4140N);
        this.f1800a.registerReceiver(this.f2010p, new IntentFilter("com.android.laucher3.mdm.CHECK_UPDATE"));
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: g */
    public void mo1221g(View view) {
        this.f2005k = (ImageView) view.findViewById(R.id.function_items);
        this.f2006l = (TextView) view.findViewById(R.id.app_version);
        this.f2008n = (CheckBox) view.findViewById(R.id.check_agreement);
        this.f2007m = (TextView) view.findViewById(R.id.copyright);
        this.f2009o = (Button) view.findViewById(R.id.btn_login);
        this.f2005k.setOnClickListener(this);
        this.f2006l.setOnClickListener(this);
        this.f2009o.setOnClickListener(this);
        view.findViewById(R.id.logo).setOnClickListener(this);
    }

    /* renamed from: m */
    public void m1264m(TextView textView) {
        Integer numValueOf = Integer.valueOf(R.string.text_copyright);
        if (numValueOf != null) {
            textView.setText(getResources().getString(numValueOf.intValue()));
        }
    }

    /* renamed from: n */
    public abstract void mo1265n();

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
        switch (view.getId()) {
            case R.id.app_version /* 2131165230 */:
                if (!ViewControlUtil.m1583a(view)) {
                    LauncherMenuHelper.m2974U(this.f1800a, CheckNetWorkActivity.class);
                    break;
                }
                break;
            case R.id.btn_login /* 2131165251 */:
            case R.id.sn_btn_login /* 2131165504 */:
                if (!ViewControlUtil.m1583a(view)) {
                    mo1265n();
                    break;
                }
                break;
            case R.id.function_items /* 2131165338 */:
                if (!ViewControlUtil.m1583a(view)) {
                    ImageView imageView = this.f2005k;
                    View viewInflate = LayoutInflater.from(this.f1800a).inflate(R.layout.activity_login_popwindow, (ViewGroup) null);
                    PopupWindow popupWindow = new PopupWindow(this.f1800a);
                    float dimension = getResources().getDimension(R.dimen.dp_166);
                    float dimension2 = getResources().getDimension(R.dimen.dp_116);
                    int dimension3 = (int) getResources().getDimension(R.dimen.dp_28);
                    int dimension4 = (int) getResources().getDimension(R.dimen.dp_49);
                    popupWindow.setWidth((int) dimension);
                    popupWindow.setHeight((int) dimension2);
                    popupWindow.setContentView(viewInflate);
                    LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.layout_check_update);
                    LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.layout_network);
                    LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.layout_synctime);
                    ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.image_close);
                    popupWindow.setOutsideTouchable(true);
                    popupWindow.setFocusable(true);
                    popupWindow.setBackgroundDrawable(null);
                    popupWindow.showAtLocation(imageView, 8388693, dimension3, dimension4);
                    linearLayout.setOnClickListener(new LoginMenuUpdateClickListener(this, popupWindow));
                    linearLayout2.setOnClickListener(new LoginMenuNetworkClickListener(this, popupWindow));
                    linearLayout3.setOnClickListener(new LoginMenuSyncTimeClickListener(this, popupWindow));
                    imageView2.setOnClickListener(new LoginMenuCloseClickListener(this, popupWindow));
                    break;
                }
                break;
            case R.id.logo /* 2131165403 */:
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j = jCurrentTimeMillis - this.f2003i;
                this.f2003i = jCurrentTimeMillis;
                if (j <= 500) {
                    this.f2004j++;
                } else {
                    this.f2004j = 1;
                }
                if (this.f2004j == 7) {
                    LTKDateUtil.f2294f.enableBack();
                    LauncherMenuHelper.m2974U(this.f1800a, AdminLoginActivity.class);
                    break;
                }
                break;
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f1800a.unregisterReceiver(this.f2010p);
    }
}
