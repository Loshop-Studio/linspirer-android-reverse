package com.huawei.updatesdk.service.otaupdate;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.alibaba.fastjson.asm.Label;
import com.huawei.hem.C0948f6;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.C1592a;
import com.huawei.updatesdk.p034a.p035a.p040d.p042i.C1597a;
import com.huawei.updatesdk.p034a.p043b.p044a.C1598a;
import com.huawei.updatesdk.p048b.p052b.C1612a;
import com.huawei.updatesdk.p048b.p053c.C1617b;
import com.huawei.updatesdk.p048b.p057g.C1637b;
import com.huawei.updatesdk.p048b.p057g.C1638c;
import com.huawei.updatesdk.p048b.p058h.C1641c;
import com.huawei.updatesdk.service.appmgr.bean.ApkUpgradeInfo;
import com.huawei.updatesdk.service.appmgr.bean.AppInfoAdapter;
import com.huawei.updatesdk.service.otaupdate.UpdateParams;
import com.taobao.accs.common.Constants;
import java.util.List;

/* renamed from: com.huawei.updatesdk.service.otaupdate.g */
/* loaded from: classes.dex */
public final class C1677g {
    /* renamed from: a */
    public static void m3899a() {
        Log.i("UpdateSdk", "UpdateSDK releaseCallBack");
        C1674d.m3873a().m3876a((CheckUpdateCallBack) null);
        List<AsyncTask> listM3750a = C1637b.m3750a();
        if (listM3750a == null || listM3750a.isEmpty()) {
            return;
        }
        for (AsyncTask asyncTask : listM3750a) {
            if (asyncTask != null) {
                asyncTask.cancel(true);
            }
            Log.d("UpdateSdk", "cancel task");
        }
        listM3750a.clear();
    }

    /* renamed from: a */
    public static void m3900a(Context context) {
        C1598a.m3590a(context);
        Log.i("updatesdk", "UpdateSDK version is: 3.0.1.300 ,flavor: envrelease ,pkgName: " + context.getPackageName());
        if (C1617b.m3690a().mo3685b() == 3) {
            C1592a.m3547b(context);
        }
    }

    /* renamed from: a */
    public static void m3901a(Context context, ApkUpgradeInfo apkUpgradeInfo, AppInfoAdapter appInfoAdapter) {
        if (appInfoAdapter != null && !TextUtils.isEmpty(appInfoAdapter.getAppStorePkgName()) && !TextUtils.equals(C1676f.m3889f().m3894c(), appInfoAdapter.getAppStorePkgName())) {
            C1676f.m3889f().m3896d(appInfoAdapter.getAppStorePkgName());
        }
        if (appInfoAdapter != null && !TextUtils.isEmpty(appInfoAdapter.getAppStorePkgName())) {
            C1676f.m3889f().m3895c(appInfoAdapter.getBusiness());
        }
        m3903a(context, apkUpgradeInfo, appInfoAdapter != null && appInfoAdapter.isMustBtnOne(), true);
    }

    /* renamed from: a */
    public static void m3902a(Context context, ApkUpgradeInfo apkUpgradeInfo, boolean z) {
        m3903a(context, apkUpgradeInfo, z, false);
    }

    /* renamed from: a */
    public static void m3903a(Context context, ApkUpgradeInfo apkUpgradeInfo, boolean z, boolean z2) {
        StringBuilder sbM1765j;
        String string;
        if (context == null || apkUpgradeInfo == null) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) AppUpdateActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable("app_update_parm", apkUpgradeInfo);
        bundle.putBoolean("app_must_btn", z);
        bundle.putBoolean("is_apptouch", z2);
        intent.putExtras(bundle);
        if (!(context instanceof Activity)) {
            intent.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
        }
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            sbM1765j = C0948f6.m1765j("go AppUpdateActivity error: ");
            string = e.toString();
            sbM1765j.append(string);
            Log.e("UpdateSdk", sbM1765j.toString());
        } catch (SecurityException e2) {
            sbM1765j = C0948f6.m1765j("go AppUpdateActivity security error: ");
            string = e2.toString();
            sbM1765j.append(string);
            Log.e("UpdateSdk", sbM1765j.toString());
        }
    }

    /* renamed from: a */
    public static void m3904a(Context context, CheckUpdateCallBack checkUpdateCallBack, AppInfoAdapter appInfoAdapter) {
        if (context == null) {
            return;
        }
        UpdateParams.Builder builder = new UpdateParams.Builder();
        String business = null;
        if (appInfoAdapter != null && !TextUtils.isEmpty(appInfoAdapter.getAppStorePkgName())) {
            business = appInfoAdapter.getBusiness();
        }
        C1676f.m3889f().m3895c(business);
        if (appInfoAdapter != null) {
            if (!TextUtils.isEmpty(appInfoAdapter.getServiceZone())) {
                builder.setServiceZone(appInfoAdapter.getServiceZone());
            }
            m3910a(appInfoAdapter.getAppStorePkgName());
            builder.setTargetPkgName(appInfoAdapter.getTargetPkgName()).setPackageList(appInfoAdapter.getPackageList()).setMustBtnOne(appInfoAdapter.isMustBtnOne()).setIsShowImmediate(appInfoAdapter.isShowImmediate()).setMinIntervalDay(appInfoAdapter.getMinIntervalDay());
        }
        UpdateParams updateParamsBuild = builder.build();
        updateParamsBuild.resetParamList();
        m3908a(context, updateParamsBuild, checkUpdateCallBack, !TextUtils.isEmpty(business));
    }

    /* renamed from: a */
    public static void m3905a(Context context, CheckUpdateCallBack checkUpdateCallBack, boolean z, int i, boolean z2) {
        if (context == null || !C1597a.m3589d(context)) {
            return;
        }
        m3900a(context);
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jM3671b = C1612a.m3665d().m3671b();
        if (i == 0 || Math.abs(jCurrentTimeMillis - jM3671b) >= i * Constants.CLIENT_FLUSH_INTERVAL) {
            C1612a.m3665d().m3668a(jCurrentTimeMillis);
            AsyncTaskC1675e asyncTaskC1675e = new AsyncTaskC1675e(context, new UpdateParams.Builder().setIsShowImmediate(z).setMustBtnOne(z2).setMinIntervalDay(i).build(), checkUpdateCallBack);
            asyncTaskC1675e.m3888b(true);
            asyncTaskC1675e.executeOnExecutor(C1638c.f4712b, new Void[0]);
        }
    }

    /* renamed from: a */
    public static void m3906a(Context context, CheckUpdateCallBack checkUpdateCallBack, boolean z, boolean z2) {
        if (context == null) {
            return;
        }
        if (C1597a.m3589d(context)) {
            m3900a(context);
            new AsyncTaskC1675e(context, new UpdateParams.Builder().setIsShowImmediate(z).setMustBtnOne(z2).build(), checkUpdateCallBack).executeOnExecutor(C1638c.f4712b, new Void[0]);
            return;
        }
        if (checkUpdateCallBack != null) {
            Intent intent = new Intent();
            intent.putExtra("status", 2);
            checkUpdateCallBack.onUpdateInfo(intent);
        }
        Toast.makeText(context, C1641c.m3774c(context, "upsdk_no_available_network_prompt_toast"), 0).show();
    }

    /* renamed from: a */
    public static void m3907a(Context context, UpdateParams updateParams, CheckUpdateCallBack checkUpdateCallBack) {
        if (context == null || updateParams == null || checkUpdateCallBack == null) {
            return;
        }
        m3900a(context);
        updateParams.resetParamList();
        m3911b(context, updateParams, checkUpdateCallBack);
    }

    /* renamed from: a */
    public static void m3908a(Context context, UpdateParams updateParams, CheckUpdateCallBack checkUpdateCallBack, boolean z) {
        if (context == null || updateParams == null || checkUpdateCallBack == null) {
            return;
        }
        m3900a(context);
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jM3671b = C1612a.m3665d().m3671b();
        if (updateParams.getMinIntervalDay() == 0 || Math.abs(jCurrentTimeMillis - jM3671b) >= updateParams.getMinIntervalDay() * Constants.CLIENT_FLUSH_INTERVAL) {
            if (!C1597a.m3589d(context)) {
                Intent intent = new Intent();
                intent.putExtra("status", 2);
                checkUpdateCallBack.onUpdateInfo(intent);
            } else {
                C1612a.m3665d().m3668a(jCurrentTimeMillis);
                AsyncTaskC1675e asyncTaskC1675e = new AsyncTaskC1675e(context, updateParams, checkUpdateCallBack);
                asyncTaskC1675e.m3887a(z);
                asyncTaskC1675e.executeOnExecutor(C1638c.f4712b, new Void[0]);
            }
        }
    }

    /* renamed from: a */
    public static void m3909a(Context context, String str, CheckUpdateCallBack checkUpdateCallBack) {
        if (context == null || TextUtils.isEmpty(str) || checkUpdateCallBack == null) {
            if (checkUpdateCallBack != null) {
                Intent intent = new Intent();
                intent.putExtra("status", 1);
                checkUpdateCallBack.onUpdateInfo(intent);
                return;
            }
            return;
        }
        if (C1597a.m3589d(context)) {
            m3900a(context);
            new AsyncTaskC1675e(context, new UpdateParams.Builder().setMustBtnOne(false).setTargetPkgName(str).build(), checkUpdateCallBack).executeOnExecutor(C1638c.f4712b, new Void[0]);
        } else {
            Intent intent2 = new Intent();
            intent2.putExtra("status", 2);
            checkUpdateCallBack.onUpdateInfo(intent2);
        }
    }

    /* renamed from: a */
    public static void m3910a(String str) {
        C1676f.m3889f().m3896d(str);
    }

    /* renamed from: b */
    public static void m3911b(Context context, UpdateParams updateParams, CheckUpdateCallBack checkUpdateCallBack) {
        m3908a(context, updateParams, checkUpdateCallBack, false);
    }

    /* renamed from: b */
    public static void m3912b(String str) {
        C1676f.m3889f().m3893b(str);
    }
}
