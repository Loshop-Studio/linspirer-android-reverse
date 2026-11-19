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
import com.huawei.updatesdk.p034a.p035a.UpdateSdkLog;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.UpdateLogWriter;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.UpdateDeviceInfoUtil;
import com.huawei.updatesdk.p034a.p035a.p040d.p042i.UpdateNetworkInfo;
import com.huawei.updatesdk.p034a.p043b.p044a.UpdateApplicationContext;
import com.huawei.updatesdk.p034a.p043b.p045b.UpdateBroadcastReceiver;
import com.huawei.updatesdk.p034a.p043b.p045b.SafeUpdateIntent;
import com.huawei.updatesdk.p048b.p054d.DownloadMarketPackageTask;
import com.huawei.updatesdk.p048b.p054d.MarketInstallStatus;
import com.huawei.updatesdk.p048b.p054d.DownloadMarketTaskData;
import com.huawei.updatesdk.p048b.p054d.MarketDetailsQuery;
import com.huawei.updatesdk.p048b.p055e.UpdateInitializerRegistry;
import com.huawei.updatesdk.p048b.p056f.UpdateEventDispatcher;
import com.huawei.updatesdk.p048b.p056f.UpdateEventListener;
import com.huawei.updatesdk.p048b.p058h.UpdatePackageInfo;
import com.huawei.updatesdk.p048b.p058h.UpdateResourceLookup;
import com.huawei.updatesdk.p048b.p058h.UpdateProgressFormatter;
import com.huawei.updatesdk.p048b.p059i.UpdateAlertDialogPresenter;
import com.huawei.updatesdk.p048b.p059i.UpdateDialogActions;
import com.huawei.updatesdk.service.appmgr.bean.ApkUpgradeInfo;
import com.huawei.updatesdk.service.appmgr.bean.MarketPackageDetails;
import com.huawei.updatesdk.service.otaupdate.AutoUpdateCoordinator;
import com.taobao.accs.AccsClientConfig;
import java.io.Serializable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class AppUpdateActivity extends Activity implements MarketDetailsCallback, UpdateEventListener {

    /* renamed from: a */
    public String f4745a;

    /* renamed from: b */
    public AlertDialog f4746b;

    /* renamed from: c */
    public UpdateAlertDialogPresenter f4747c;

    /* renamed from: d */
    public UpdateAlertDialogPresenter f4748d;

    /* renamed from: e */
    public ProgressBar f4749e;

    /* renamed from: f */
    public TextView f4750f;

    /* renamed from: l */
    public DownloadMarketPackageTask f4756l;

    /* renamed from: q */
    public UpdatedPackageReceiver f4761q;

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
    public class OtaPromptKeyListener implements DialogInterface.OnKeyListener {
        public OtaPromptKeyListener() {
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
    public class MobileDownloadDialogActions implements UpdateDialogActions {

        /* renamed from: a */
        public final /* synthetic */ MarketPackageDetails f4764a;

        /* renamed from: b */
        public final /* synthetic */ UpdateAlertDialogPresenter f4765b;

        public MobileDownloadDialogActions(MarketPackageDetails c1650c, UpdateAlertDialogPresenter c1643a) {
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
    public class MobileDownloadDialogCallback implements UpdateAlertDialogPresenter.d {
        public MobileDownloadDialogCallback() {
        }

        @Override // com.huawei.updatesdk.p048b.p059i.C1643a.d
        /* renamed from: a */
        public void mo3795a() {
            AppUpdateActivity.this.finish();
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$d */
    public class MobileDownloadKeyListener implements DialogInterface.OnKeyListener {

        /* renamed from: a */
        public final /* synthetic */ UpdateAlertDialogPresenter f4768a;

        public MobileDownloadKeyListener(UpdateAlertDialogPresenter c1643a) {
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
    public class MarketInstallStateTask implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ SafeUpdateIntent f4770a;

        public MarketInstallStateTask(SafeUpdateIntent c1600b) {
            this.f4770a = c1600b;
        }

        @Override // java.lang.Runnable
        public void run() {
            Bundle bundleM3601b = this.f4770a.m3601b();
            if (bundleM3601b == null) {
                return;
            }
            int i = bundleM3601b.getInt("INSTALL_STATE");
            MarketUpdateCallbackDispatcher.m3873a().m3875a(AppUpdateActivity.this.m3822a(i, bundleM3601b.getInt("INSTALL_TYPE"), -1));
            AppUpdateActivity.this.m3848c(i);
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$f */
    public class CancelDownloadDialogActions implements UpdateDialogActions {
        public CancelDownloadDialogActions() {
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
    public class CancelDownloadDialogCallback implements UpdateAlertDialogPresenter.d {
        public CancelDownloadDialogCallback() {
        }

        @Override // com.huawei.updatesdk.p048b.p059i.C1643a.d
        /* renamed from: a */
        public void mo3795a() {
            AppUpdateActivity.this.finish();
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$h */
    public class ProgressDialogCancelClick implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f4774a;

        public ProgressDialogCancelClick(String str) {
            this.f4774a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AppUpdateActivity.this.m3851c(this.f4774a);
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$i */
    public class MarketInstallDialogActions implements UpdateDialogActions {

        /* renamed from: a */
        public final /* synthetic */ MarketPackageDetails f4776a;

        /* renamed from: b */
        public final /* synthetic */ UpdateAlertDialogPresenter f4777b;

        public MarketInstallDialogActions(MarketPackageDetails c1650c, UpdateAlertDialogPresenter c1643a) {
            this.f4776a = c1650c;
            this.f4777b = c1643a;
        }

        @Override // com.huawei.updatesdk.p048b.p059i.InterfaceC1644b
        /* renamed from: a */
        public void mo3796a() {
            if (!UpdateNetworkInfo.m3589d(AppUpdateActivity.this)) {
                AppUpdateActivity appUpdateActivity = AppUpdateActivity.this;
                Toast.makeText(appUpdateActivity, UpdateResourceLookup.m3774c(appUpdateActivity, "upsdk_no_available_network_prompt_toast"), 0).show();
                AppUpdateActivity.this.finish();
            } else if (UpdateNetworkInfo.m3588c(AppUpdateActivity.this) != 1) {
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
    public class MarketInstallDialogCallback implements UpdateAlertDialogPresenter.d {
        public MarketInstallDialogCallback() {
        }

        @Override // com.huawei.updatesdk.p048b.p059i.C1643a.d
        /* renamed from: a */
        public void mo3795a() {
            AppUpdateActivity.this.finish();
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$k */
    public class MarketInstallKeyListener implements DialogInterface.OnKeyListener {

        /* renamed from: a */
        public final /* synthetic */ UpdateAlertDialogPresenter f4780a;

        public MarketInstallKeyListener(UpdateAlertDialogPresenter c1643a) {
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
    public class OtaPromptDialogActions implements UpdateDialogActions {
        public OtaPromptDialogActions() {
        }

        @Override // com.huawei.updatesdk.p048b.p059i.InterfaceC1644b
        /* renamed from: a */
        public void mo3796a() {
            AppUpdateActivity.this.f4759o = 101;
            if (UpdateNetworkInfo.m3589d(AppUpdateActivity.this)) {
                AppUpdateActivity.this.m3856e();
                return;
            }
            AppUpdateActivity appUpdateActivity = AppUpdateActivity.this;
            Toast.makeText(appUpdateActivity, UpdateResourceLookup.m3774c(appUpdateActivity, "upsdk_no_available_network_prompt_toast"), 0).show();
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
            AutoUpdateCoordinator c1673c = new AutoUpdateCoordinator();
            AppUpdateActivity appUpdateActivity = AppUpdateActivity.this;
            c1673c.m3870a(appUpdateActivity, appUpdateActivity.f4745a, AppUpdateActivity.this.new AutoUpdateDecisionCallback());
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$m */
    public class OtaPromptDialogCallback implements UpdateAlertDialogPresenter.d {
        public OtaPromptDialogCallback() {
        }

        @Override // com.huawei.updatesdk.p048b.p059i.C1643a.d
        /* renamed from: a */
        public void mo3795a() {
            AppUpdateActivity.this.finish();
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$n */
    public class AutoUpdateDecisionCallback implements AutoUpdateCoordinator.a {
        public AutoUpdateDecisionCallback() {
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
                    UpdateLogWriter.m3516b("AppUpdateActivity", sbM1765j.toString());
                }
            }
            AppUpdateActivity.this.finish();
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$o */
    public static class UpdatePromptDismissListener implements DialogInterface.OnDismissListener {
        public UpdatePromptDismissListener() {
        }

        public /* synthetic */ UpdatePromptDismissListener(MarketInstallStateTask runnableC1657e) {
            this();
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            Intent intent = new Intent();
            intent.putExtra(UpdateKey.DIALOG_STATUS, UpdateDialogStatusCode.DISMISS);
            MarketUpdateCallbackDispatcher.m3873a().m3877b(intent);
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$p */
    public static class UpdatePromptShowListener implements DialogInterface.OnShowListener {
        public UpdatePromptShowListener() {
        }

        public /* synthetic */ UpdatePromptShowListener(MarketInstallStateTask runnableC1657e) {
            this();
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            Intent intent = new Intent();
            intent.putExtra(UpdateKey.DIALOG_STATUS, UpdateDialogStatusCode.SHOW);
            MarketUpdateCallbackDispatcher.m3873a().m3877b(intent);
        }
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.AppUpdateActivity$q */
    public class UpdatedPackageReceiver extends UpdateBroadcastReceiver {
        public UpdatedPackageReceiver() {
        }

        public /* synthetic */ UpdatedPackageReceiver(AppUpdateActivity appUpdateActivity, MarketInstallStateTask runnableC1657e) {
            this();
        }

        @Override // com.huawei.updatesdk.p034a.p043b.p045b.AbstractC1599a
        /* renamed from: a */
        public void mo3594a(Context context, SafeUpdateIntent c1600b) {
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
                    MarketUpdateCallbackDispatcher.m3873a().m3875a(AppUpdateActivity.this.m3822a(6, 0, -1));
                    UpdatePackageInfo.m3762a();
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
            UpdateLogWriter.m3514a("AppUpdateActivity", "progressDialog dismiss IllegalArgumentException");
        }
    }

    /* renamed from: a */
    private void m3825a(View view) {
        if (UpdateDeviceInfoUtil.m3578i()) {
            try {
                ScrollView scrollView = (ScrollView) view.findViewById(UpdateResourceLookup.m3770a(this, "scroll_layout"));
                TypedValue typedValue = new TypedValue();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                getTheme().resolveAttribute(R.attr.dialogPreferredPadding, typedValue, true);
                ((WindowManager) getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
                int iComplexToDimensionPixelSize = TypedValue.complexToDimensionPixelSize(typedValue.data, displayMetrics);
                scrollView.setPadding(iComplexToDimensionPixelSize, 0, iComplexToDimensionPixelSize, 0);
            } catch (Exception e) {
                UpdateLogWriter.m3516b("AppUpdateActivity", e.toString());
            }
        }
    }

    /* renamed from: a */
    private void m3826a(SafeUpdateIntent c1600b) {
        Bundle bundleM3601b = c1600b.m3601b();
        if (bundleM3601b != null) {
            int i = bundleM3601b.getInt("download_status_param", -1);
            MarketUpdateCallbackDispatcher.m3873a().m3875a(m3822a(-1, -1, i));
            if (MarketInstallStatus.m3696a(i)) {
                return;
            }
            m3824a();
            if (MarketInstallStatus.m3697b(i)) {
                Toast.makeText(this, getString(UpdateResourceLookup.m3774c(this, "upsdk_third_app_dl_install_failed")), 0).show();
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
        String strM3778a = UpdateProgressFormatter.m3778a(this, longSize_);
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
            UpdateLogWriter.m3516b("AppUpdateActivity", sbM1765j.toString());
            this.f4752h = true;
            Intent intent2 = new Intent();
            intent2.putExtra("status", 8);
            MarketUpdateCallbackDispatcher.m3873a().m3877b(intent2);
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
            UpdateSdkLog.m3500a("AppUpdateActivity", sbM1765j.toString());
            MarketDetailsQuery.m3724a(this);
            MarketDetailsQuery.m3725a(this.f4762r);
            Intent intent2 = new Intent();
            intent2.putExtra("status", 8);
            MarketUpdateCallbackDispatcher.m3873a().m3877b(intent2);
            UpdateAlertDialogPresenter c1643a = this.f4748d;
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
        UpdatedPackageReceiver c1669q = new UpdatedPackageReceiver(this, null);
        this.f4761q = c1669q;
        UpdateActivityUtilities.m3867a(this, intentFilter, c1669q);
    }

    /* renamed from: b */
    private void m3839b(SafeUpdateIntent c1600b) {
        if (this.f4749e == null) {
            return;
        }
        this.f4749e.setProgress(UpdateProgressFormatter.m3776a(c1600b.m3600b("download_apk_already", 0), c1600b.m3600b("download_apk_size", 0)));
        this.f4750f.setText(UpdateProgressFormatter.m3777a((int) ((this.f4749e.getProgress() / this.f4749e.getMax()) * 100.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3840b(ApkUpgradeInfo apkUpgradeInfo) {
        UpdateSdkLog.m3501b("AppUpdateActivity", "showOtaDialog");
        if (apkUpgradeInfo == null) {
            finish();
            return;
        }
        String string = getString(UpdateResourceLookup.m3774c(this, "upsdk_ota_title"));
        String string2 = getString(UpdateResourceLookup.m3774c(this, "upsdk_ota_notify_updatebtn"));
        String string3 = getString(UpdateResourceLookup.m3774c(this, "upsdk_ota_cancel"));
        m3843b(string);
        if (1 == apkUpgradeInfo.getIsCompulsoryUpdate_()) {
            string3 = getString(UpdateResourceLookup.m3774c(this, "upsdk_ota_force_cancel_new"));
            if (this.f4755k) {
                this.f4748d.m3794c();
            }
            this.f4751g = true;
        }
        this.f4748d.m3791a(new OtaPromptDialogActions());
        m3847c();
        this.f4748d.m3790a(new OtaPromptDialogCallback());
        if (this.f4751g) {
            this.f4748d.m3792a(false);
        } else {
            this.f4748d.m3786a(new OtaPromptKeyListener());
        }
        this.f4748d.m3789a(UpdateAlertDialogPresenter.c.CONFIRM, string2);
        this.f4748d.m3789a(UpdateAlertDialogPresenter.c.CANCEL, string3);
    }

    /* renamed from: b */
    private void m3841b(MarketPackageDetails c1650c) {
        UpdateAlertDialogPresenter c1643aM3780a = UpdateAlertDialogPresenter.m3780a(this, null, getString(UpdateResourceLookup.m3774c(this, "upsdk_appstore_install"), new Object[]{c1650c.m3802a()}));
        c1643aM3780a.m3791a(new MarketInstallDialogActions(c1650c, c1643aM3780a));
        String string = getString(UpdateResourceLookup.m3774c(this, "upsdk_app_download_info_new"));
        c1643aM3780a.m3790a(new MarketInstallDialogCallback());
        c1643aM3780a.m3789a(UpdateAlertDialogPresenter.c.CONFIRM, string);
        c1643aM3780a.m3786a(new MarketInstallKeyListener(c1643aM3780a));
    }

    /* renamed from: b */
    private void m3843b(String str) {
        View viewInflate = LayoutInflater.from(this).inflate(UpdateResourceLookup.m3773b(this, "upsdk_ota_update_view"), (ViewGroup) null);
        ((TextView) viewInflate.findViewById(UpdateResourceLookup.m3770a(this, "content_textview"))).setText(TextUtils.isEmpty(this.f4753i.getNewFeatures_()) ? getString(UpdateResourceLookup.m3774c(this, "upsdk_choice_update")) : this.f4753i.getNewFeatures_());
        ((TextView) viewInflate.findViewById(UpdateResourceLookup.m3770a(this, "version_textview"))).setText(this.f4753i.getVersion_());
        ((TextView) viewInflate.findViewById(UpdateResourceLookup.m3770a(this, "appsize_textview"))).setText(UpdateProgressFormatter.m3778a(this, m3821a(this.f4753i)));
        ((TextView) viewInflate.findViewById(UpdateResourceLookup.m3770a(this, "name_textview"))).setText(this.f4753i.getName_());
        m3827a(this.f4753i, (TextView) viewInflate.findViewById(UpdateResourceLookup.m3770a(this, "allsize_textview")));
        m3825a(viewInflate);
        UpdateAlertDialogPresenter c1643aM3780a = UpdateAlertDialogPresenter.m3780a(this, str, null);
        this.f4748d = c1643aM3780a;
        c1643aM3780a.m3788a(viewInflate);
    }

    /* renamed from: b */
    private void m3844b(String str, String str2) {
        AlertDialog alertDialog = this.f4746b;
        if (alertDialog == null || !alertDialog.isShowing()) {
            this.f4746b = (UpdateDeviceInfoUtil.m3578i() ? new AlertDialog.Builder(this) : ((getResources().getConfiguration().uiMode & 48) != 32 || Build.VERSION.SDK_INT < 29) ? new AlertDialog.Builder(this, R.style.Theme.DeviceDefault.Light.Dialog.Alert) : new AlertDialog.Builder(this, R.style.Theme.DeviceDefault.Dialog.Alert)).create();
            View viewInflate = LayoutInflater.from(this).inflate(UpdateResourceLookup.m3773b(this, "upsdk_app_dl_progress_dialog"), (ViewGroup) null);
            ((TextView) viewInflate.findViewById(UpdateResourceLookup.m3770a(this, "third_app_warn_text"))).setText(getString(UpdateResourceLookup.m3774c(this, "upsdk_app_download_installing"), new Object[]{str2}));
            ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(UpdateResourceLookup.m3770a(this, "third_app_dl_progressbar"));
            this.f4749e = progressBar;
            progressBar.setMax(100);
            this.f4750f = (TextView) viewInflate.findViewById(UpdateResourceLookup.m3770a(this, "third_app_dl_progress_text"));
            viewInflate.findViewById(UpdateResourceLookup.m3770a(this, "cancel_bg")).setOnClickListener(new ProgressDialogCancelClick(str));
            this.f4746b.setView(viewInflate);
            this.f4746b.setCancelable(false);
            this.f4746b.setCanceledOnTouchOutside(false);
            if (!UpdateActivityUtilities.m3868a(this)) {
                this.f4746b.show();
            }
            this.f4750f.setText(UpdateProgressFormatter.m3777a(0));
        }
    }

    /* renamed from: c */
    private void m3847c() {
        UpdateAlertDialogPresenter c1643a = this.f4748d;
        if (c1643a != null) {
            MarketInstallStateTask runnableC1657e = null;
            c1643a.m3785a(new UpdatePromptDismissListener(runnableC1657e));
            this.f4748d.m3787a(new UpdatePromptShowListener(runnableC1657e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m3848c(int i) {
        if (i == 5 || i == 4) {
            Toast.makeText(this, getString(UpdateResourceLookup.m3774c(this, "upsdk_third_app_dl_install_failed")), 0).show();
            UpdatePackageInfo.m3762a();
            finish();
        }
        if (i == 7) {
            UpdatePackageInfo.m3762a();
            if (this.f4751g) {
                m3840b(this.f4753i);
            } else {
                finish();
            }
        }
    }

    /* renamed from: c */
    private void m3849c(SafeUpdateIntent c1600b) {
        new Handler(Looper.getMainLooper()).post(new MarketInstallStateTask(c1600b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m3850c(MarketPackageDetails c1650c) {
        UpdateAlertDialogPresenter c1643aM3780a = UpdateAlertDialogPresenter.m3780a(this, null, getString(UpdateResourceLookup.m3774c(this, "upsdk_mobile_dld_warn"), new Object[]{UpdateProgressFormatter.m3778a(this, c1650c.m3804c())}));
        c1643aM3780a.m3791a(new MobileDownloadDialogActions(c1650c, c1643aM3780a));
        String string = getString(UpdateResourceLookup.m3774c(this, "upsdk_app_download_info_new"));
        c1643aM3780a.m3790a(new MobileDownloadDialogCallback());
        c1643aM3780a.m3789a(UpdateAlertDialogPresenter.c.CONFIRM, string);
        c1643aM3780a.m3786a(new MobileDownloadKeyListener(c1643aM3780a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m3851c(String str) {
        UpdateAlertDialogPresenter c1643aM3780a = UpdateAlertDialogPresenter.m3780a(this, null, getString(UpdateResourceLookup.m3774c(this, "upsdk_third_app_dl_cancel_download_prompt_ex")));
        this.f4747c = c1643aM3780a;
        c1643aM3780a.m3791a(new CancelDownloadDialogActions());
        String string = getString(UpdateResourceLookup.m3774c(this, "upsdk_third_app_dl_sure_cancel_download"));
        this.f4747c.m3790a(new CancelDownloadDialogCallback());
        this.f4747c.m3789a(UpdateAlertDialogPresenter.c.CONFIRM, string);
    }

    /* renamed from: d */
    private void m3853d() {
        UpdateActivityUtilities.m3866a(this, this.f4761q);
        UpdateEventDispatcher.m3743a().mo3741b(this);
        DownloadMarketPackageTask asyncTaskC1624c = this.f4756l;
        if (asyncTaskC1624c != null) {
            asyncTaskC1624c.m3717b();
        }
        MarketDetailsQuery.m3724a((MarketDetailsCallback) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m3854d(MarketPackageDetails c1650c) {
        m3838b();
        m3844b(c1650c.m3805d(), c1650c.m3802a());
        DownloadMarketTaskData c1623b = new DownloadMarketTaskData(c1650c.m3803b(), c1650c.m3804c(), c1650c.m3806e());
        c1623b.m3701a(c1650c.m3805d());
        DownloadMarketPackageTask asyncTaskC1624c = new DownloadMarketPackageTask(c1623b);
        this.f4756l = asyncTaskC1624c;
        asyncTaskC1624c.executeOnExecutor(Executors.newSingleThreadExecutor(), new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m3856e() {
        if (UpdatePackageInfo.m3767c(this, this.f4745a)) {
            m3835a(this.f4753i.getPackage_(), this.f4753i.getDetailId_());
            return;
        }
        MarketDetailsQuery.m3724a(this);
        MarketDetailsQuery.m3725a(this.f4762r);
        this.f4748d.m3784a();
    }

    @Override // com.huawei.updatesdk.service.otaupdate.InterfaceC1672b
    /* renamed from: a */
    public void mo3862a(int i) {
        Toast.makeText(this, getString(UpdateResourceLookup.m3774c(this, "upsdk_getting_message_fail_prompt_toast")), 0).show();
        MarketUpdateCallbackDispatcher.m3873a().m3874a(i);
        finish();
    }

    @Override // com.huawei.updatesdk.p048b.p056f.InterfaceC1634b
    /* renamed from: a */
    public void mo3742a(int i, SafeUpdateIntent c1600b) {
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
    public void mo3863a(MarketPackageDetails c1650c) {
        if (c1650c == null || !c1650c.m3807f()) {
            Toast.makeText(this, getString(UpdateResourceLookup.m3774c(this, "upsdk_getting_message_fail_prompt_toast")), 0).show();
            finish();
        } else {
            UpdateEventDispatcher.m3743a().mo3740a(this);
            this.f4745a = c1650c.m3805d();
            m3841b(c1650c);
        }
    }

    @Override // com.huawei.updatesdk.service.otaupdate.InterfaceC1672b
    /* renamed from: b */
    public void mo3864b(int i) {
        Toast.makeText(this, getString(UpdateResourceLookup.m3774c(this, "upsdk_getting_message_fail_prompt_toast")), 0).show();
        MarketUpdateCallbackDispatcher.m3873a().m3874a(i);
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
        MarketUpdateCallbackDispatcher.m3873a().m3877b(this.f4760p);
        super.finish();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1002) {
            if (intent != null) {
                SafeUpdateIntent c1600bM3595a = SafeUpdateIntent.m3595a(intent);
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
        UpdateDeviceInfoUtil.m3568d().m3581a(getWindow());
        super.onCreate(bundle);
        Bundle bundleM3601b = SafeUpdateIntent.m3595a(getIntent()).m3601b();
        UpdateApplicationContext.m3590a(this);
        if (bundleM3601b != null) {
            try {
                serializable = bundleM3601b.getSerializable("app_update_parm");
                this.f4762r = bundleM3601b.getBoolean("is_apptouch", false);
            } catch (Exception e) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("Type Conversion Error: ");
                sbM1765j.append(e.toString());
                UpdateSdkLog.m3500a("AppUpdateActivity", sbM1765j.toString());
                super.finish();
                return;
            }
        } else {
            serializable = null;
        }
        String strMo3731b = UpdateInitializerRegistry.m3738a(this.f4762r ? "apptouch" : AccsClientConfig.DEFAULT_CONFIGTAG).mo3731b();
        this.f4745a = strMo3731b;
        if (TextUtils.isEmpty(strMo3731b)) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("finish activity and appStorePkgName is: ");
            sbM1765j2.append(this.f4745a);
            UpdateSdkLog.m3500a("AppUpdateActivity", sbM1765j2.toString());
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
        if (this.f4753i.getDevType_() == 1 && UpdatePackageInfo.m3761a(this, this.f4745a) == UpdatePackageInfo.b.INSTALLED) {
            m3834a(this.f4753i.getPackage_());
        } else {
            m3840b(this.f4753i);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        UpdateAlertDialogPresenter c1643a = this.f4747c;
        if (c1643a != null) {
            c1643a.m3784a();
            this.f4747c = null;
        }
        UpdateAlertDialogPresenter c1643a2 = this.f4748d;
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
