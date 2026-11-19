package com.huawei.updatesdk.service.otaupdate;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StrikethroughSpan;
import android.text.style.TextAppearanceSpan;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.huawei.hem.CompilerOutline;
import com.huawei.updatesdk.p034a.p035a.C1581a;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.C1594c;
import com.huawei.updatesdk.p034a.p035a.p040d.p042i.C1597a;
import com.huawei.updatesdk.p034a.p043b.p044a.C1598a;
import com.huawei.updatesdk.p034a.p043b.p045b.AbstractC1599a;
import com.huawei.updatesdk.p034a.p043b.p045b.C1600b;
import com.huawei.updatesdk.p048b.p054d.AsyncTaskC1624c;
import com.huawei.updatesdk.p048b.p054d.C1622a;
import com.huawei.updatesdk.p048b.p054d.C1623b;
import com.huawei.updatesdk.p048b.p054d.C1627f;
import com.huawei.updatesdk.p048b.p055e.C1632e;
import com.huawei.updatesdk.p048b.p056f.C1635c;
import com.huawei.updatesdk.p048b.p056f.InterfaceC1634b;
import com.huawei.updatesdk.p048b.p058h.C1640b;
import com.huawei.updatesdk.p048b.p058h.C1641c;
import com.huawei.updatesdk.p048b.p058h.C1642d;
import com.huawei.updatesdk.p048b.p059i.C1643a;
import com.huawei.updatesdk.p048b.p059i.InterfaceC1644b;
import com.huawei.updatesdk.service.appmgr.bean.ApkUpgradeInfo;
import com.huawei.updatesdk.service.appmgr.bean.C1650c;
import com.huawei.updatesdk.service.otaupdate.C1673c;
import com.taobao.accs.AccsClientConfig;
import java.io.Serializable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class AppUpdateActivity extends Activity implements InterfaceC1672b, InterfaceC1634b {

    /* renamed from: a */
    public String f4745a;

    /* renamed from: b */
    public AlertDialog f4746b;

    /* renamed from: c */
    public C1643a f4747c;

    /* renamed from: d */
    public C1643a f4748d;

    /* renamed from: e */
    public ProgressBar f4749e;

    /* renamed from: f */
    public TextView f4750f;

    /* renamed from: l */
    public AsyncTaskC1624c f4756l;

    /* renamed from: q */
    public C1669q f4761q;

    /* renamed from: g */
    public boolean f4751g = false;

    /* renamed from: h */
    public boolean f4752h = false;

    /* renamed from: i */
    public ApkUpgradeInfo f4753i = null;

    /* renamed from: j */
    public boolean f4754j = false;

    /* renamed from: k */
    public boolean f4755k = false;

    /* renamed from: m */
    public int f4757m = -99;

    /* renamed from: n */
    public int f4758n = -99;

    /* renamed from: o */
    public int f4759o = -99;

    /* renamed from: p */
    public Intent f4760p = null;

    /* renamed from: r */
    public boolean f4762r = false;

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$a */
    public class DialogInterfaceOnKeyListenerC1653a implements DialogInterface.OnKeyListener {
        public DialogInterfaceOnKeyListenerC1653a() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i != 4 || keyEvent.getAction() != 0) {
                return false;
            }
            AppUpdateActivity.this.f4757m = 4;
            AppUpdateActivity.this.finish();
            return true;
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$b */
    public class C1654b implements InterfaceC1644b {

        /* renamed from: a */
        public final /* synthetic */ C1650c f4764a;

        /* renamed from: b */
        public final /* synthetic */ C1643a f4765b;

        public C1654b(C1650c c1650c, C1643a c1643a) {
            this.f4764a = c1650c;
            this.f4765b = c1643a;
        }

        @Override // com.huawei.updatesdk.p048b.p059i.InterfaceC1644b
        /* renamed from: a */
        public void mo3796a() {
            AppUpdateActivity.this.m3854d(this.f4764a);
            this.f4765b.m3784a();
        }

        @Override // com.huawei.updatesdk.p048b.p059i.InterfaceC1644b
        /* renamed from: b */
        public void mo3797b() {
            this.f4765b.m3784a();
            if (AppUpdateActivity.this.f4754j) {
                AppUpdateActivity appUpdateActivity = AppUpdateActivity.this;
                appUpdateActivity.m3840b(appUpdateActivity.f4753i);
            } else {
                AppUpdateActivity.this.f4757m = 4;
                AppUpdateActivity.this.finish();
            }
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$c */
    public class C1655c implements C1643a.d {
        public C1655c() {
        }

        @Override // com.huawei.updatesdk.p048b.p059i.C1643a.d
        /* renamed from: a */
        public void mo3795a() {
            AppUpdateActivity.this.finish();
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$d */
    public class DialogInterfaceOnKeyListenerC1656d implements DialogInterface.OnKeyListener {

        /* renamed from: a */
        public final /* synthetic */ C1643a f4768a;

        public DialogInterfaceOnKeyListenerC1656d(C1643a c1643a) {
            this.f4768a = c1643a;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i != 4 || keyEvent.getAction() != 0) {
                return false;
            }
            if (!AppUpdateActivity.this.f4754j) {
                AppUpdateActivity.this.f4757m = 4;
                AppUpdateActivity.this.finish();
                return true;
            }
            this.f4768a.m3784a();
            AppUpdateActivity appUpdateActivity = AppUpdateActivity.this;
            appUpdateActivity.m3840b(appUpdateActivity.f4753i);
            return true;
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$e */
    public class RunnableC1657e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C1600b f4770a;

        public RunnableC1657e(C1600b c1600b) {
            this.f4770a = c1600b;
        }

        @Override // java.lang.Runnable
        public void run() {
            Bundle bundleM3601b = this.f4770a.m3601b();
            if (bundleM3601b == null) {
                return;
            }
            int i = bundleM3601b.getInt("INSTALL_STATE");
            C1674d.m3873a().m3875a(AppUpdateActivity.this.m3822a(i, bundleM3601b.getInt("INSTALL_TYPE"), -1));
            AppUpdateActivity.this.m3848c(i);
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$f */
    public class C1658f implements InterfaceC1644b {
        public C1658f() {
        }

        @Override // com.huawei.updatesdk.p048b.p059i.InterfaceC1644b
        /* renamed from: a */
        public void mo3796a() {
            AppUpdateActivity.this.f4749e.setProgress(0);
            AppUpdateActivity.this.f4749e.setMax(0);
            AppUpdateActivity.this.f4750f.setText("");
            AppUpdateActivity.this.m3824a();
            if (AppUpdateActivity.this.f4756l != null) {
                AppUpdateActivity.this.f4756l.m3716a();
            }
            AppUpdateActivity.this.f4747c.m3784a();
            if (AppUpdateActivity.this.f4754j) {
                AppUpdateActivity appUpdateActivity = AppUpdateActivity.this;
                appUpdateActivity.m3840b(appUpdateActivity.f4753i);
            } else {
                AppUpdateActivity.this.f4757m = 4;
                AppUpdateActivity.this.finish();
            }
        }

        @Override // com.huawei.updatesdk.p048b.p059i.InterfaceC1644b
        /* renamed from: b */
        public void mo3797b() {
            AppUpdateActivity.this.f4747c.m3784a();
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$g */
    public class C1659g implements C1643a.d {
        public C1659g() {
        }

        @Override // com.huawei.updatesdk.p048b.p059i.C1643a.d
        /* renamed from: a */
        public void mo3795a() {
            AppUpdateActivity.this.finish();
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$h */
    public class ViewOnClickListenerC1660h implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f4774a;

        public ViewOnClickListenerC1660h(String str) {
            this.f4774a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AppUpdateActivity.this.m3851c(this.f4774a);
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$i */
    public class C1661i implements InterfaceC1644b {

        /* renamed from: a */
        public final /* synthetic */ C1650c f4776a;

        /* renamed from: b */
        public final /* synthetic */ C1643a f4777b;

        public C1661i(C1650c c1650c, C1643a c1643a) {
            this.f4776a = c1650c;
            this.f4777b = c1643a;
        }

        @Override // com.huawei.updatesdk.p048b.p059i.InterfaceC1644b
        /* renamed from: a */
        public void mo3796a() {
            if (!C1597a.m3589d(AppUpdateActivity.this)) {
                AppUpdateActivity appUpdateActivity = AppUpdateActivity.this;
                Toast.makeText(appUpdateActivity, C1641c.m3774c(appUpdateActivity, "upsdk_no_available_network_prompt_toast"), 0).show();
                AppUpdateActivity.this.finish();
            } else if (C1597a.m3588c(AppUpdateActivity.this) != 1) {
                AppUpdateActivity.this.m3850c(this.f4776a);
            } else {
                AppUpdateActivity.this.m3854d(this.f4776a);
                this.f4777b.m3784a();
            }
        }

        @Override // com.huawei.updatesdk.p048b.p059i.InterfaceC1644b
        /* renamed from: b */
        public void mo3797b() {
            this.f4777b.m3784a();
            if (AppUpdateActivity.this.f4754j) {
                AppUpdateActivity appUpdateActivity = AppUpdateActivity.this;
                appUpdateActivity.m3840b(appUpdateActivity.f4753i);
            } else {
                AppUpdateActivity.this.f4757m = 4;
                AppUpdateActivity.this.finish();
            }
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$j */
    public class C1662j implements C1643a.d {
        public C1662j() {
        }

        @Override // com.huawei.updatesdk.p048b.p059i.C1643a.d
        /* renamed from: a */
        public void mo3795a() {
            AppUpdateActivity.this.finish();
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$k */
    public class DialogInterfaceOnKeyListenerC1663k implements DialogInterface.OnKeyListener {

        /* renamed from: a */
        public final /* synthetic */ C1643a f4780a;

        public DialogInterfaceOnKeyListenerC1663k(C1643a c1643a) {
            this.f4780a = c1643a;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i != 4 || keyEvent.getAction() != 0) {
                return false;
            }
            if (!AppUpdateActivity.this.f4754j) {
                AppUpdateActivity.this.f4757m = 4;
                AppUpdateActivity.this.finish();
                return true;
            }
            this.f4780a.m3784a();
            AppUpdateActivity appUpdateActivity = AppUpdateActivity.this;
            appUpdateActivity.m3840b(appUpdateActivity.f4753i);
            return true;
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$l */
    public class C1664l implements InterfaceC1644b {
        public C1664l() {
        }

        @Override // com.huawei.updatesdk.p048b.p059i.InterfaceC1644b
        /* renamed from: a */
        public void mo3796a() {
            AppUpdateActivity.this.f4759o = 101;
            if (C1597a.m3589d(AppUpdateActivity.this)) {
                AppUpdateActivity.this.m3856e();
                return;
            }
            AppUpdateActivity appUpdateActivity = AppUpdateActivity.this;
            Toast.makeText(appUpdateActivity, C1641c.m3774c(appUpdateActivity, "upsdk_no_available_network_prompt_toast"), 0).show();
            AppUpdateActivity.this.f4757m = 2;
            AppUpdateActivity.this.finish();
        }

        @Override // com.huawei.updatesdk.p048b.p059i.InterfaceC1644b
        /* renamed from: b */
        public void mo3797b() throws ExecutionException, InterruptedException, TimeoutException {
            AppUpdateActivity.this.f4748d.m3784a();
            AppUpdateActivity.this.f4757m = 4;
            AppUpdateActivity.this.f4759o = 100;
            if (AppUpdateActivity.this.f4754j) {
                AppUpdateActivity.this.finish();
                return;
            }
            C1673c c1673c = new C1673c();
            AppUpdateActivity appUpdateActivity = AppUpdateActivity.this;
            c1673c.m3870a(appUpdateActivity, appUpdateActivity.f4745a, AppUpdateActivity.this.new C1666n());
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$m */
    public class C1665m implements C1643a.d {
        public C1665m() {
        }

        @Override // com.huawei.updatesdk.p048b.p059i.C1643a.d
        /* renamed from: a */
        public void mo3795a() {
            AppUpdateActivity.this.finish();
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$n */
    public class C1666n implements C1673c.a {
        public C1666n() {
        }

        @Override // com.huawei.updatesdk.service.otaupdate.C1673c.a
        /* renamed from: a */
        public void mo3865a(Boolean bool) {
            if (bool.booleanValue()) {
                try {
                    Intent intent = new Intent("com.huawei.appmarket.intent.action.ThirdUpdateRemindAction");
                    intent.setPackage(AppUpdateActivity.this.f4745a);
                    AppUpdateActivity.this.startActivity(intent);
                } catch (ActivityNotFoundException e) {
                    StringBuilder sbM1765j = CompilerOutline.m1765j("goHiappUpgrade error: ");
                    sbM1765j.append(e.toString());
                    C1584a.m3516b("AppUpdateActivity", sbM1765j.toString());
                }
            }
            AppUpdateActivity.this.finish();
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$o */
    public static class DialogInterfaceOnDismissListenerC1667o implements DialogInterface.OnDismissListener {
        public DialogInterfaceOnDismissListenerC1667o() {
        }

        public /* synthetic */ DialogInterfaceOnDismissListenerC1667o(RunnableC1657e runnableC1657e) {
            this();
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            Intent intent = new Intent();
            intent.putExtra(UpdateKey.DIALOG_STATUS, UpdateDialogStatusCode.DISMISS);
            C1674d.m3873a().m3877b(intent);
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$p */
    public static class DialogInterfaceOnShowListenerC1668p implements DialogInterface.OnShowListener {
        public DialogInterfaceOnShowListenerC1668p() {
        }

        public /* synthetic */ DialogInterfaceOnShowListenerC1668p(RunnableC1657e runnableC1657e) {
            this();
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            Intent intent = new Intent();
            intent.putExtra(UpdateKey.DIALOG_STATUS, UpdateDialogStatusCode.SHOW);
            C1674d.m3873a().m3877b(intent);
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$q */
    public class C1669q extends AbstractC1599a {
        public C1669q() {
        }

        public /* synthetic */ C1669q(AppUpdateActivity appUpdateActivity, RunnableC1657e runnableC1657e) {
            this();
        }

        @Override // com.huawei.updatesdk.p034a.p043b.p045b.AbstractC1599a
        /* renamed from: a */
        public void mo3594a(Context context, C1600b c1600b) {
            if (c1600b.m3603d()) {
                if (AppUpdateActivity.this.f4747c != null) {
                    AppUpdateActivity.this.f4747c.m3784a();
                }
                AppUpdateActivity.this.m3824a();
                String strM3597a = c1600b.m3597a();
                String dataString = c1600b.m3602c().getDataString();
                if (dataString == null || dataString.length() < 9) {
                    return;
                }
                String strSubstring = dataString.substring(8);
                if ("android.intent.action.PACKAGE_ADDED".equals(strM3597a) && TextUtils.equals(AppUpdateActivity.this.f4745a, strSubstring)) {
                    C1674d.m3873a().m3875a(AppUpdateActivity.this.m3822a(6, 0, -1));
                    C1640b.m3762a();
                    AppUpdateActivity appUpdateActivity = AppUpdateActivity.this;
                    appUpdateActivity.m3835a(appUpdateActivity.f4753i.getPackage_(), AppUpdateActivity.this.f4753i.getDetailId_());
                    if (AppUpdateActivity.this.f4754j) {
                        AppUpdateActivity appUpdateActivity2 = AppUpdateActivity.this;
                        appUpdateActivity2.m3840b(appUpdateActivity2.f4753i);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private long m3821a(ApkUpgradeInfo apkUpgradeInfo) {
        long longSize_ = apkUpgradeInfo.getLongSize_();
        if (apkUpgradeInfo.getPackingType_() == 1 && apkUpgradeInfo.getBundleSize_() > 0) {
            return apkUpgradeInfo.getBundleSize_();
        }
        if (apkUpgradeInfo.getPackingType_() == 3 && apkUpgradeInfo.getObbSize_() > 0) {
            longSize_ += apkUpgradeInfo.getObbSize_();
        }
        if (apkUpgradeInfo.getDiffSize_() <= 0) {
            return longSize_;
        }
        long diffSize_ = apkUpgradeInfo.getDiffSize_();
        return (apkUpgradeInfo.getPackingType_() != 3 || apkUpgradeInfo.getObbSize_() <= 0) ? diffSize_ : diffSize_ + apkUpgradeInfo.getObbSize_();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Intent m3822a(int i, int i2, int i3) {
        Intent intent = new Intent();
        intent.putExtra(UpdateKey.MARKET_DLD_STATUS, i3);
        intent.putExtra(UpdateKey.MARKET_INSTALL_STATE, i);
        intent.putExtra(UpdateKey.MARKET_INSTALL_TYPE, i2);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3824a() {
        try {
            if (this.f4746b == null || !this.f4746b.isShowing()) {
                return;
            }
            this.f4746b.dismiss();
            this.f4746b = null;
        } catch (IllegalArgumentException unused) {
            C1584a.m3514a("AppUpdateActivity", "progressDialog dismiss IllegalArgumentException");
        }
    }

    /* renamed from: a */
    private void m3825a(View view) {
        if (C1594c.m3578i()) {
            try {
                ScrollView scrollView = (ScrollView) view.findViewById(C1641c.m3770a(this, "scroll_layout"));
                TypedValue typedValue = new TypedValue();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                getTheme().resolveAttribute(R.attr.dialogPreferredPadding, typedValue, true);
                ((WindowManager) getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
                int iComplexToDimensionPixelSize = TypedValue.complexToDimensionPixelSize(typedValue.data, displayMetrics);
                scrollView.setPadding(iComplexToDimensionPixelSize, 0, iComplexToDimensionPixelSize, 0);
            } catch (Exception e) {
                C1584a.m3516b("AppUpdateActivity", e.toString());
            }
        }
    }

    /* renamed from: a */
    private void m3826a(C1600b c1600b) {
        Bundle bundleM3601b = c1600b.m3601b();
        if (bundleM3601b != null) {
            int i = bundleM3601b.getInt("download_status_param", -1);
            C1674d.m3873a().m3875a(m3822a(-1, -1, i));
            if (C1622a.m3696a(i)) {
                return;
            }
            m3824a();
            if (C1622a.m3697b(i)) {
                Toast.makeText(this, getString(C1641c.m3774c(this, "upsdk_third_app_dl_install_failed")), 0).show();
                finish();
            }
        }
    }

    /* renamed from: a */
    private void m3827a(ApkUpgradeInfo apkUpgradeInfo, TextView textView) {
        long longSize_;
        if (textView == null) {
            return;
        }
        if (apkUpgradeInfo.getDiffSize_() <= 0) {
            textView.setVisibility(8);
            return;
        }
        if (apkUpgradeInfo.getPackingType_() != 3 || apkUpgradeInfo.getObbSize_() <= 0) {
            longSize_ = apkUpgradeInfo.getLongSize_();
        } else {
            longSize_ = apkUpgradeInfo.getObbSize_() + apkUpgradeInfo.getLongSize_();
        }
        String strM3778a = C1642d.m3778a(this, longSize_);
        SpannableString spannableString = new SpannableString(strM3778a);
        spannableString.setSpan(new StrikethroughSpan(), 0, strM3778a.length(), 33);
        spannableString.setSpan(new TextAppearanceSpan("HwChinese-medium", 0, (int) textView.getTextSize(), null, null), 0, spannableString.length(), 33);
        textView.setText(spannableString);
    }

    /* renamed from: a */
    private void m3834a(String str) {
        Intent intent = new Intent("com.huawei.appmarket.intent.action.ThirdUpdateAction");
        intent.setPackage(this.f4745a);
        intent.putExtra("APP_PACKAGENAME", str);
        intent.putExtra("APP_MUST_UPDATE_BTN", this.f4755k);
        try {
            this.f4752h = false;
            startActivityForResult(intent, 1002);
        } catch (ActivityNotFoundException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("goHiappUpgrade error: ");
            sbM1765j.append(e.toString());
            C1584a.m3516b("AppUpdateActivity", sbM1765j.toString());
            this.f4752h = true;
            Intent intent2 = new Intent();
            intent2.putExtra("status", 8);
            C1674d.m3873a().m3877b(intent2);
            m3840b(this.f4753i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3835a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            this.f4757m = 1;
            finish();
            return;
        }
        Intent intent = new Intent("com.huawei.appmarket.appmarket.intent.action.AppDetail.withdetailId");
        intent.setPackage(this.f4745a);
        intent.putExtra("appDetailId", str2);
        intent.putExtra("thirdId", str);
        intent.addFlags(268468224);
        try {
            startActivity(intent);
            if (this.f4754j) {
                return;
            }
            finish();
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("openMarketUpdateDetail error: ");
            sbM1765j.append(e.toString());
            C1581a.m3500a("AppUpdateActivity", sbM1765j.toString());
            C1627f.m3724a(this);
            C1627f.m3725a(this.f4762r);
            Intent intent2 = new Intent();
            intent2.putExtra("status", 8);
            C1674d.m3873a().m3877b(intent2);
            C1643a c1643a = this.f4748d;
            if (c1643a != null) {
                c1643a.m3784a();
            }
        }
    }

    /* renamed from: b */
    private void m3838b() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        C1669q c1669q = new C1669q(this, null);
        this.f4761q = c1669q;
        AbstractC1671a.m3867a(this, intentFilter, c1669q);
    }

    /* renamed from: b */
    private void m3839b(C1600b c1600b) {
        if (this.f4749e == null) {
            return;
        }
        this.f4749e.setProgress(C1642d.m3776a(c1600b.m3600b("download_apk_already", 0), c1600b.m3600b("download_apk_size", 0)));
        this.f4750f.setText(C1642d.m3777a((int) ((this.f4749e.getProgress() / this.f4749e.getMax()) * 100.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3840b(ApkUpgradeInfo apkUpgradeInfo) {
        C1581a.m3501b("AppUpdateActivity", "showOtaDialog");
        if (apkUpgradeInfo == null) {
            finish();
            return;
        }
        String string = getString(C1641c.m3774c(this, "upsdk_ota_title"));
        String string2 = getString(C1641c.m3774c(this, "upsdk_ota_notify_updatebtn"));
        String string3 = getString(C1641c.m3774c(this, "upsdk_ota_cancel"));
        m3843b(string);
        if (1 == apkUpgradeInfo.getIsCompulsoryUpdate_()) {
            string3 = getString(C1641c.m3774c(this, "upsdk_ota_force_cancel_new"));
            if (this.f4755k) {
                this.f4748d.m3794c();
            }
            this.f4751g = true;
        }
        this.f4748d.m3791a(new C1664l());
        m3847c();
        this.f4748d.m3790a(new C1665m());
        if (this.f4751g) {
            this.f4748d.m3792a(false);
        } else {
            this.f4748d.m3786a(new DialogInterfaceOnKeyListenerC1653a());
        }
        this.f4748d.m3789a(C1643a.c.CONFIRM, string2);
        this.f4748d.m3789a(C1643a.c.CANCEL, string3);
    }

    /* renamed from: b */
    private void m3841b(C1650c c1650c) {
        C1643a c1643aM3780a = C1643a.m3780a(this, null, getString(C1641c.m3774c(this, "upsdk_appstore_install"), new Object[]{c1650c.m3802a()}));
        c1643aM3780a.m3791a(new C1661i(c1650c, c1643aM3780a));
        String string = getString(C1641c.m3774c(this, "upsdk_app_download_info_new"));
        c1643aM3780a.m3790a(new C1662j());
        c1643aM3780a.m3789a(C1643a.c.CONFIRM, string);
        c1643aM3780a.m3786a(new DialogInterfaceOnKeyListenerC1663k(c1643aM3780a));
    }

    /* renamed from: b */
    private void m3843b(String str) {
        View viewInflate = LayoutInflater.from(this).inflate(C1641c.m3773b(this, "upsdk_ota_update_view"), (ViewGroup) null);
        ((TextView) viewInflate.findViewById(C1641c.m3770a(this, "content_textview"))).setText(TextUtils.isEmpty(this.f4753i.getNewFeatures_()) ? getString(C1641c.m3774c(this, "upsdk_choice_update")) : this.f4753i.getNewFeatures_());
        ((TextView) viewInflate.findViewById(C1641c.m3770a(this, "version_textview"))).setText(this.f4753i.getVersion_());
        ((TextView) viewInflate.findViewById(C1641c.m3770a(this, "appsize_textview"))).setText(C1642d.m3778a(this, m3821a(this.f4753i)));
        ((TextView) viewInflate.findViewById(C1641c.m3770a(this, "name_textview"))).setText(this.f4753i.getName_());
        m3827a(this.f4753i, (TextView) viewInflate.findViewById(C1641c.m3770a(this, "allsize_textview")));
        m3825a(viewInflate);
        C1643a c1643aM3780a = C1643a.m3780a(this, str, null);
        this.f4748d = c1643aM3780a;
        c1643aM3780a.m3788a(viewInflate);
    }

    /* renamed from: b */
    private void m3844b(String str, String str2) {
        AlertDialog alertDialog = this.f4746b;
        if (alertDialog == null || !alertDialog.isShowing()) {
            this.f4746b = (C1594c.m3578i() ? new AlertDialog.Builder(this) : ((getResources().getConfiguration().uiMode & 48) != 32 || Build.VERSION.SDK_INT < 29) ? new AlertDialog.Builder(this, R.style.Theme.DeviceDefault.Light.Dialog.Alert) : new AlertDialog.Builder(this, R.style.Theme.DeviceDefault.Dialog.Alert)).create();
            View viewInflate = LayoutInflater.from(this).inflate(C1641c.m3773b(this, "upsdk_app_dl_progress_dialog"), (ViewGroup) null);
            ((TextView) viewInflate.findViewById(C1641c.m3770a(this, "third_app_warn_text"))).setText(getString(C1641c.m3774c(this, "upsdk_app_download_installing"), new Object[]{str2}));
            ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(C1641c.m3770a(this, "third_app_dl_progressbar"));
            this.f4749e = progressBar;
            progressBar.setMax(100);
            this.f4750f = (TextView) viewInflate.findViewById(C1641c.m3770a(this, "third_app_dl_progress_text"));
            viewInflate.findViewById(C1641c.m3770a(this, "cancel_bg")).setOnClickListener(new ViewOnClickListenerC1660h(str));
            this.f4746b.setView(viewInflate);
            this.f4746b.setCancelable(false);
            this.f4746b.setCanceledOnTouchOutside(false);
            if (!AbstractC1671a.m3868a(this)) {
                this.f4746b.show();
            }
            this.f4750f.setText(C1642d.m3777a(0));
        }
    }

    /* renamed from: c */
    private void m3847c() {
        C1643a c1643a = this.f4748d;
        if (c1643a != null) {
            RunnableC1657e runnableC1657e = null;
            c1643a.m3785a(new DialogInterfaceOnDismissListenerC1667o(runnableC1657e));
            this.f4748d.m3787a(new DialogInterfaceOnShowListenerC1668p(runnableC1657e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m3848c(int i) {
        if (i == 5 || i == 4) {
            Toast.makeText(this, getString(C1641c.m3774c(this, "upsdk_third_app_dl_install_failed")), 0).show();
            C1640b.m3762a();
            finish();
        }
        if (i == 7) {
            C1640b.m3762a();
            if (this.f4751g) {
                m3840b(this.f4753i);
            } else {
                finish();
            }
        }
    }

    /* renamed from: c */
    private void m3849c(C1600b c1600b) {
        new Handler(Looper.getMainLooper()).post(new RunnableC1657e(c1600b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m3850c(C1650c c1650c) {
        C1643a c1643aM3780a = C1643a.m3780a(this, null, getString(C1641c.m3774c(this, "upsdk_mobile_dld_warn"), new Object[]{C1642d.m3778a(this, c1650c.m3804c())}));
        c1643aM3780a.m3791a(new C1654b(c1650c, c1643aM3780a));
        String string = getString(C1641c.m3774c(this, "upsdk_app_download_info_new"));
        c1643aM3780a.m3790a(new C1655c());
        c1643aM3780a.m3789a(C1643a.c.CONFIRM, string);
        c1643aM3780a.m3786a(new DialogInterfaceOnKeyListenerC1656d(c1643aM3780a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m3851c(String str) {
        C1643a c1643aM3780a = C1643a.m3780a(this, null, getString(C1641c.m3774c(this, "upsdk_third_app_dl_cancel_download_prompt_ex")));
        this.f4747c = c1643aM3780a;
        c1643aM3780a.m3791a(new C1658f());
        String string = getString(C1641c.m3774c(this, "upsdk_third_app_dl_sure_cancel_download"));
        this.f4747c.m3790a(new C1659g());
        this.f4747c.m3789a(C1643a.c.CONFIRM, string);
    }

    /* renamed from: d */
    private void m3853d() {
        AbstractC1671a.m3866a(this, this.f4761q);
        C1635c.m3743a().mo3741b(this);
        AsyncTaskC1624c asyncTaskC1624c = this.f4756l;
        if (asyncTaskC1624c != null) {
            asyncTaskC1624c.m3717b();
        }
        C1627f.m3724a((InterfaceC1672b) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m3854d(C1650c c1650c) {
        m3838b();
        m3844b(c1650c.m3805d(), c1650c.m3802a());
        C1623b c1623b = new C1623b(c1650c.m3803b(), c1650c.m3804c(), c1650c.m3806e());
        c1623b.m3701a(c1650c.m3805d());
        AsyncTaskC1624c asyncTaskC1624c = new AsyncTaskC1624c(c1623b);
        this.f4756l = asyncTaskC1624c;
        asyncTaskC1624c.executeOnExecutor(Executors.newSingleThreadExecutor(), new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m3856e() {
        if (C1640b.m3767c(this, this.f4745a)) {
            m3835a(this.f4753i.getPackage_(), this.f4753i.getDetailId_());
            return;
        }
        C1627f.m3724a(this);
        C1627f.m3725a(this.f4762r);
        this.f4748d.m3784a();
    }

    @Override // com.huawei.updatesdk.service.otaupdate.InterfaceC1672b
    /* renamed from: a */
    public void mo3862a(int i) {
        Toast.makeText(this, getString(C1641c.m3774c(this, "upsdk_getting_message_fail_prompt_toast")), 0).show();
        C1674d.m3873a().m3874a(i);
        finish();
    }

    @Override // com.huawei.updatesdk.p048b.p056f.InterfaceC1634b
    /* renamed from: a */
    public void mo3742a(int i, C1600b c1600b) {
        if (c1600b == null) {
            return;
        }
        if (i == 0) {
            m3826a(c1600b);
        } else if (1 == i) {
            m3839b(c1600b);
        } else if (2 == i) {
            m3849c(c1600b);
        }
    }

    @Override // com.huawei.updatesdk.service.otaupdate.InterfaceC1672b
    /* renamed from: a */
    public void mo3863a(C1650c c1650c) {
        if (c1650c == null || !c1650c.m3807f()) {
            Toast.makeText(this, getString(C1641c.m3774c(this, "upsdk_getting_message_fail_prompt_toast")), 0).show();
            finish();
        } else {
            C1635c.m3743a().mo3740a(this);
            this.f4745a = c1650c.m3805d();
            m3841b(c1650c);
        }
    }

    @Override // com.huawei.updatesdk.service.otaupdate.InterfaceC1672b
    /* renamed from: b */
    public void mo3864b(int i) {
        Toast.makeText(this, getString(C1641c.m3774c(this, "upsdk_getting_message_fail_prompt_toast")), 0).show();
        C1674d.m3873a().m3874a(i);
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        if (this.f4751g) {
            overridePendingTransition(0, 0);
        }
        Intent intent = new Intent();
        this.f4760p = intent;
        intent.putExtra("status", this.f4757m);
        this.f4760p.putExtra(UpdateKey.FAIL_CODE, this.f4758n);
        this.f4760p.putExtra(UpdateKey.MUST_UPDATE, this.f4751g);
        this.f4760p.putExtra(UpdateKey.BUTTON_STATUS, this.f4759o);
        C1674d.m3873a().m3877b(this.f4760p);
        super.finish();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1002) {
            if (intent != null) {
                C1600b c1600bM3595a = C1600b.m3595a(intent);
                this.f4757m = i2;
                this.f4758n = c1600bM3595a.m3596a("installResultCode", -99);
                this.f4751g = c1600bM3595a.m3599a(UpdateKey.MUST_UPDATE, false);
            }
            this.f4759o = i2 == 4 ? 100 : 101;
            if (this.f4752h) {
                return;
            }
            finish();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        Serializable serializable;
        requestWindowFeature(1);
        C1594c.m3568d().m3581a(getWindow());
        super.onCreate(bundle);
        Bundle bundleM3601b = C1600b.m3595a(getIntent()).m3601b();
        C1598a.m3590a(this);
        if (bundleM3601b != null) {
            try {
                serializable = bundleM3601b.getSerializable("app_update_parm");
                this.f4762r = bundleM3601b.getBoolean("is_apptouch", false);
            } catch (Exception e) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("Type Conversion Error: ");
                sbM1765j.append(e.toString());
                C1581a.m3500a("AppUpdateActivity", sbM1765j.toString());
                super.finish();
                return;
            }
        } else {
            serializable = null;
        }
        String strMo3731b = C1632e.m3738a(this.f4762r ? "apptouch" : AccsClientConfig.DEFAULT_CONFIGTAG).mo3731b();
        this.f4745a = strMo3731b;
        if (TextUtils.isEmpty(strMo3731b)) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("finish activity and appStorePkgName is: ");
            sbM1765j2.append(this.f4745a);
            C1581a.m3500a("AppUpdateActivity", sbM1765j2.toString());
            super.finish();
            return;
        }
        if (!(serializable instanceof ApkUpgradeInfo)) {
            this.f4757m = 3;
            finish();
            return;
        }
        this.f4753i = (ApkUpgradeInfo) serializable;
        this.f4755k = bundleM3601b.getBoolean("app_must_btn", false);
        if (this.f4753i.getIsCompulsoryUpdate_() == 1) {
            this.f4754j = true;
        }
        if (this.f4753i.getDevType_() == 1 && C1640b.m3761a(this, this.f4745a) == C1640b.b.INSTALLED) {
            m3834a(this.f4753i.getPackage_());
        } else {
            m3840b(this.f4753i);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        C1643a c1643a = this.f4747c;
        if (c1643a != null) {
            c1643a.m3784a();
            this.f4747c = null;
        }
        C1643a c1643a2 = this.f4748d;
        if (c1643a2 != null) {
            c1643a2.m3784a();
            this.f4748d = null;
        }
        m3824a();
        m3853d();
        super.onDestroy();
        finishActivity(1002);
    }
}
