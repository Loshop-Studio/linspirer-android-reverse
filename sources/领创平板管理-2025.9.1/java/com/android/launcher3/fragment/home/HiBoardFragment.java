package com.android.launcher3.fragment.home;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.graphics.drawable.RoundedBitmapDrawable;
import android.support.v4.graphics.drawable.RoundedBitmapDrawableFactory;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.alibaba.fastjson.asm.Label;
import com.alibaba.sdk.android.tbrest.utils.DeviceUtils;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseFragment;
import com.android.launcher3.network.HiScreenHelper;
import com.android.launcher3.network.RequestUrl;
import com.android.launcher3.p027db.model.ItemApp;
import com.android.launcher3.p027db.model.ScreenPartSettings;
import com.bumptech.glide.BitmapRequestBuilder;
import com.bumptech.glide.BitmapTypeRequest;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;
import com.huawei.hem.MobileSdkPlatformUtilities;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.ViewControlUtil;
import com.huawei.hem.LauncherDeviceUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.LauncherConstants;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.OnHiBoardChangeListener;
import com.linspirer.mdm.R$string;
import com.taobao.accs.utl.UtilityImpl;
import java.io.File;
import java.util.List;

/* loaded from: classes.dex */
public class HiBoardFragment extends BaseFragment implements View.OnClickListener, OnHiBoardChangeListener {

    /* renamed from: i */
    public WifiInfo f1965i;

    /* renamed from: j */
    public TextView f1966j;

    /* renamed from: k */
    public TextView f1967k;

    /* renamed from: l */
    public TextView f1968l;

    /* renamed from: m */
    public TextView f1969m;

    /* renamed from: n */
    public TextView f1970n;

    /* renamed from: o */
    public TextView f1971o;

    /* renamed from: p */
    public HiScreenHelper f1972p;

    /* renamed from: q */
    public int f1973q = 2;

    /* renamed from: com.android.launcher3.fragment.home.HiBoardFragment$a */
    public class HiBoardRemoteBackgroundTarget extends SimpleTarget<Bitmap> {

        /* renamed from: a */
        public final /* synthetic */ TextView f1974a;

        public HiBoardRemoteBackgroundTarget(TextView textView) {
            this.f1974a = textView;
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(Object obj, GlideAnimation glideAnimation) {
            RoundedBitmapDrawable roundedBitmapDrawableCreate = RoundedBitmapDrawableFactory.create(HiBoardFragment.this.f1800a.getResources(), (Bitmap) obj);
            roundedBitmapDrawableCreate.setCornerRadius(16.0f);
            this.f1974a.setBackground(roundedBitmapDrawableCreate);
        }
    }

    /* renamed from: com.android.launcher3.fragment.home.HiBoardFragment$b */
    public class HiBoardResourceBackgroundTarget extends SimpleTarget<Bitmap> {

        /* renamed from: a */
        public final /* synthetic */ TextView f1976a;

        public HiBoardResourceBackgroundTarget(TextView textView) {
            this.f1976a = textView;
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(Object obj, GlideAnimation glideAnimation) {
            RoundedBitmapDrawable roundedBitmapDrawableCreate = RoundedBitmapDrawableFactory.create(HiBoardFragment.this.f1800a.getResources(), (Bitmap) obj);
            roundedBitmapDrawableCreate.setCornerRadius(16.0f);
            this.f1976a.setBackground(roundedBitmapDrawableCreate);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: e */
    public int mo1219e() {
        return R.layout.fragment_hiboard;
    }

    /* renamed from: i */
    public final void m1251i(TextView textView, ScreenPartSettings screenPartSettings, int i) {
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        textView.setText(screenPartSettings.getTitle());
        String b_img_path = screenPartSettings.getB_img_path();
        if (TextUtils.isEmpty(b_img_path)) {
            Glide.with(this.f1800a).load(Integer.valueOf(i)).asBitmap().into((BitmapTypeRequest<Integer>) new HiBoardResourceBackgroundTarget(textView));
        } else {
            Glide.with(this.f1800a).load(b_img_path).asBitmap().fallback(i).into((BitmapRequestBuilder<String, Bitmap>) new HiBoardRemoteBackgroundTarget(textView));
        }
        textView.setTag(screenPartSettings);
    }

    /* renamed from: j */
    public final void m1252j(List<ScreenPartSettings> list) {
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        Resources resources = this.f1800a.getResources();
        ScreenPartSettings screenPartSettings = new ScreenPartSettings(1, resources.getString(R.string.text_model_default_one));
        ScreenPartSettings screenPartSettings2 = new ScreenPartSettings(2, resources.getString(R.string.text_model_default_two));
        ScreenPartSettings screenPartSettings3 = new ScreenPartSettings(3, resources.getString(R.string.text_model_default_three));
        ScreenPartSettings screenPartSettings4 = new ScreenPartSettings(4, resources.getString(R.string.text_model_default_four));
        ScreenPartSettings screenPartSettings5 = new ScreenPartSettings(5, resources.getString(R.string.text_model_default_five));
        if (!MobileSdkPlatformUtilities.m2273N(list)) {
            for (ScreenPartSettings screenPartSettings6 : list) {
                int position = screenPartSettings6.getPosition();
                if (position == 1) {
                    screenPartSettings = screenPartSettings6;
                } else if (position == 2) {
                    screenPartSettings2 = screenPartSettings6;
                } else if (position == 3) {
                    screenPartSettings3 = screenPartSettings6;
                } else if (position == 4) {
                    screenPartSettings4 = screenPartSettings6;
                } else if (position == 5) {
                    screenPartSettings5 = screenPartSettings6;
                }
            }
        }
        if (this.f1973q == 2) {
            m1251i(this.f1967k, screenPartSettings, R.drawable.model_1);
            m1251i(this.f1968l, screenPartSettings2, R.drawable.model_2);
            m1251i(this.f1969m, screenPartSettings3, R.drawable.model_3);
            m1251i(this.f1970n, screenPartSettings4, R.drawable.model_4);
            m1251i(this.f1971o, screenPartSettings5, R.drawable.model_5);
            return;
        }
        m1251i(this.f1967k, screenPartSettings, R.drawable.model_1_p);
        m1251i(this.f1968l, screenPartSettings2, R.drawable.model_2_p);
        m1251i(this.f1969m, screenPartSettings3, R.drawable.model_3_p);
        m1251i(this.f1970n, screenPartSettings4, R.drawable.model_4_p);
        m1251i(this.f1971o, screenPartSettings5, R.drawable.model_5_p);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (ViewControlUtil.m1583a(view)) {
        }
        switch (view.getId()) {
            case R.id.layout_model_five /* 2131165377 */:
            case R.id.layout_model_four /* 2131165378 */:
            case R.id.layout_model_one /* 2131165379 */:
            case R.id.layout_model_three /* 2131165380 */:
            case R.id.layout_model_two /* 2131165381 */:
                if (!(view.getTag() instanceof ScreenPartSettings)) {
                    LTKDateUtil.m1415y(this.f1800a, R.string.text_model_cannot_settings);
                    break;
                } else {
                    ScreenPartSettings screenPartSettings = (ScreenPartSettings) view.getTag();
                    int type = screenPartSettings.getType();
                    boolean z = false;
                    if (type != 1) {
                        if (type != 2) {
                            LTKDateUtil.m1415y(this.f1800a, R.string.text_model_no_settings);
                            break;
                        } else {
                            String component = screenPartSettings.getComponent();
                            String package_name = screenPartSettings.getPackage_name();
                            if (!TextUtils.isEmpty(component) && !TextUtils.isEmpty(package_name)) {
                                Context context = this.f1800a;
                                try {
                                    Intent intent = new Intent();
                                    intent.setComponent(new ComponentName(package_name, component));
                                    intent.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
                                    context.startActivity(intent);
                                    break;
                                } catch (Throwable th) {
                                    th.printStackTrace();
                                    Toast.makeText(context, context.getString(R$string.cannot_open_app), 0).show();
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(" -- APKUtil openApk error : ");
                                    CompilerOutline.m1744B(th, sb);
                                    return;
                                }
                            } else if (!TextUtils.isEmpty(package_name)) {
                                LTKDateUtil.m1410t(this.f1800a, package_name, true);
                                break;
                            }
                        }
                    } else {
                        try {
                            this.f1800a.getPackageManager().getPackageInfo("com.linspirer.exclusivebrowser", 1);
                            z = true;
                        } catch (Throwable unused) {
                        }
                        if (!z) {
                            LTKDateUtil.m1415y(this.f1800a, R.string.text_loading_browser_component);
                            LauncherMenuHelper.m3001v(getActivity(), true);
                            File file = new File(CompilerOutline.m1763h(new StringBuilder(), LauncherConstants.f4038a, "com.linspirer.exclusivebrowser", ".apk"));
                            if (!file.exists()) {
                                LTKDateUtil.m1403m("HiBoardFragmentno download apk  need download");
                                ItemApp itemApp = new ItemApp();
                                itemApp.setPackagename("com.linspirer.exclusivebrowser");
                                itemApp.setPath(RequestUrl.BROWSER_DOWNLOAD_PATH);
                                m1218d(itemApp, RequestUrl.BROWSER_DOWNLOAD_PATH);
                                break;
                            } else {
                                LTKDateUtil.m1403m("HiBoardFragmentdownload apk exist need install");
                                m1222h(file.getAbsolutePath());
                                break;
                            }
                        } else {
                            startActivity(new Intent("android.intent.action.openExBrowser", Uri.parse(screenPartSettings.getUrl())));
                            break;
                        }
                    }
                }
                break;
        }
    }

    @Override // com.android.launcher3.activity.base.BaseFragment, android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = LayoutInflater.from(this.f1800a).inflate(R.layout.fragment_hiboard, viewGroup, false);
        this.f1966j = (TextView) viewInflate.findViewById(R.id.text_device_msg);
        this.f1967k = (TextView) viewInflate.findViewById(R.id.layout_model_one);
        this.f1968l = (TextView) viewInflate.findViewById(R.id.layout_model_two);
        this.f1969m = (TextView) viewInflate.findViewById(R.id.layout_model_three);
        this.f1970n = (TextView) viewInflate.findViewById(R.id.layout_model_four);
        this.f1971o = (TextView) viewInflate.findViewById(R.id.layout_model_five);
        this.f1967k.setOnClickListener(this);
        this.f1968l.setOnClickListener(this);
        this.f1969m.setOnClickListener(this);
        this.f1970n.setOnClickListener(this);
        this.f1971o.setOnClickListener(this);
        LTKDateUtil.m1403m("HiBoardFragment -- initData HiBoardFragment");
        this.f1973q = this.f1800a.getResources().getConfiguration().orientation;
        this.f1965i = ((WifiManager) this.f1800a.getSystemService(UtilityImpl.NET_TYPE_WIFI)).getConnectionInfo();
        HiScreenHelper hiScreenHelper = HiScreenHelper.getInstance();
        this.f1972p = hiScreenHelper;
        hiScreenHelper.setOnHiBoardChangeListener(this);
        String ssid = this.f1965i.getSSID();
        String strReplace = !TextUtils.isEmpty(ssid) ? ssid.replace("\"", "") : DeviceUtils.NETWORK_CLASS_UNKNOWN;
        String strM1593j = LauncherDeviceUtils.m1593j(this.f1800a);
        String strM1398h = LTKDateUtil.m1398h("com.android.launcher3", this.f1800a);
        StringBuilder sb = new StringBuilder();
        if (2 == this.f1973q) {
            sb.append(getString(R.string.text_wifi_name));
            sb.append(" ");
            sb.append(strReplace);
            sb.append("   |   ");
        }
        sb.append(getString(R.string.text_version_name));
        sb.append(" ");
        sb.append(strM1398h);
        sb.append("   |   ");
        sb.append(getString(R.string.text_device_sn));
        sb.append(" ");
        sb.append(strM1593j);
        this.f1966j.setText(sb.toString());
        m1252j(this.f1972p.getScreenPartSettings());
        return viewInflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
    }
}
