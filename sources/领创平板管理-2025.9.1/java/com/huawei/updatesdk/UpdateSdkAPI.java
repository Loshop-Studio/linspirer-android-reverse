package com.huawei.updatesdk;

import android.content.Context;
import com.huawei.updatesdk.service.appmgr.bean.ApkUpgradeInfo;
import com.huawei.updatesdk.service.appmgr.bean.AppInfoAdapter;
import com.huawei.updatesdk.service.otaupdate.MarketUpdateCoordinator;
import com.huawei.updatesdk.service.otaupdate.CheckUpdateCallBack;
import com.huawei.updatesdk.service.otaupdate.UpdateParams;

/* loaded from: classes.dex */
public final class UpdateSdkAPI {
    public static void checkAppUpdate(Context context, CheckUpdateCallBack checkUpdateCallBack, boolean z, boolean z2) {
        MarketUpdateCoordinator.m3906a(context, checkUpdateCallBack, z, z2);
    }

    public static void checkAppUpdate(Context context, UpdateParams updateParams, CheckUpdateCallBack checkUpdateCallBack) {
        MarketUpdateCoordinator.m3907a(context, updateParams, checkUpdateCallBack);
    }

    public static void checkAppUpdateByAppInfo(Context context, CheckUpdateCallBack checkUpdateCallBack, AppInfoAdapter appInfoAdapter) {
        MarketUpdateCoordinator.m3904a(context, checkUpdateCallBack, appInfoAdapter);
    }

    public static void checkAppUpdateForHMSKit(Context context, UpdateParams updateParams, CheckUpdateCallBack checkUpdateCallBack) {
        MarketUpdateCoordinator.m3911b(context, updateParams, checkUpdateCallBack);
    }

    public static void checkClientOTAUpdate(Context context, CheckUpdateCallBack checkUpdateCallBack, boolean z, int i, boolean z2) {
        MarketUpdateCoordinator.m3905a(context, checkUpdateCallBack, z, i, z2);
    }

    public static void checkTargetAppUpdate(Context context, String str, CheckUpdateCallBack checkUpdateCallBack) {
        MarketUpdateCoordinator.m3909a(context, str, checkUpdateCallBack);
    }

    public static void releaseCallBack() {
        MarketUpdateCoordinator.m3899a();
    }

    public static void setAppStorePkgName(String str) {
        MarketUpdateCoordinator.m3910a(str);
    }

    public static void setServiceZone(String str) {
        MarketUpdateCoordinator.m3912b(str);
    }

    public static void showUpdateDialog(Context context, ApkUpgradeInfo apkUpgradeInfo, boolean z) {
        MarketUpdateCoordinator.m3902a(context, apkUpgradeInfo, z);
    }

    public static void showUpdateDialogByAppInfo(Context context, ApkUpgradeInfo apkUpgradeInfo, AppInfoAdapter appInfoAdapter) {
        MarketUpdateCoordinator.m3901a(context, apkUpgradeInfo, appInfoAdapter);
    }
}
