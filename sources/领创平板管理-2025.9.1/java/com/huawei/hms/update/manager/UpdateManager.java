package com.huawei.hms.update.manager;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.huawei.hem.C0948f6;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.android.SystemUtils;
import com.huawei.hms.availableupdate.AbstractC1509n;
import com.huawei.hms.common.PackageConstants;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.p033ui.UpdateBean;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.ResourceLoaderUtil;
import com.huawei.hms.utils.StringUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class UpdateManager {
    /* renamed from: a */
    public static boolean m3470a(Context context, String str) {
        PackageManagerHelper.PackageStates packageStates = new PackageManagerHelper(context).getPackageStates(str);
        HMSLog.m3463i("UpdateManager", "app is: " + str + ";status is:" + packageStates);
        return PackageManagerHelper.PackageStates.ENABLED == packageStates;
    }

    /* renamed from: b */
    public static void m3471b(Context context, ArrayList<Integer> arrayList) {
        if (!m3470a(context, PackageConstants.SERVICES_PACKAGE_APPMARKET) || PackageConstants.SERVICES_PACKAGE_APPMARKET.equals(context.getPackageName())) {
            return;
        }
        arrayList.add(5);
    }

    /* renamed from: c */
    public static void m3473c(Context context, ArrayList<Integer> arrayList) {
        if (m3470a(context, PackageConstants.SERVICES_PACKAGE_APPMARKET) && !PackageConstants.SERVICES_PACKAGE_APPMARKET.equals(context.getPackageName()) && m3474c(context)) {
            arrayList.add(5);
        } else if (m3475d(context)) {
            arrayList.add(7);
        } else {
            if (m3469a(context)) {
                return;
            }
            arrayList.add(6);
        }
    }

    /* renamed from: d */
    public static boolean m3475d(Context context) {
        String str;
        List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(new Intent("com.apptouch.intent.action.update_hms"), 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            str = null;
        } else {
            Iterator<ResolveInfo> it = listQueryIntentServices.iterator();
            while (it.hasNext()) {
                ServiceInfo serviceInfo = it.next().serviceInfo;
                if (serviceInfo != null) {
                    str = serviceInfo.packageName;
                    if (!TextUtils.isEmpty(str) && SystemUtils.isSystemApp(context.getApplicationContext(), str)) {
                        break;
                    }
                }
            }
            str = null;
        }
        return str != null;
    }

    public static Intent getStartUpdateIntent(Activity activity, UpdateBean updateBean) {
        if (activity == null || updateBean == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(updateBean.getClientAppName())) {
            m3467a(activity, (ArrayList<Integer>) arrayList);
        } else {
            m3468a((Context) activity, (ArrayList<Integer>) arrayList);
        }
        int iIntValue = -2;
        if (arrayList.size() > 0) {
            iIntValue = ((Integer) arrayList.get(0)).intValue();
        } else {
            HMSLog.m3463i("UpdateManager", "typeList is empty, no upgrade solution");
        }
        updateBean.setTypeList(arrayList);
        Intent intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(activity, AbstractC1509n.m3331a(iIntValue));
        intentStartBridgeActivity.putExtra(BridgeActivity.EXTRA_DELEGATE_UPDATE_INFO, updateBean);
        return intentStartBridgeActivity;
    }

    public static void startUpdate(Activity activity, int i, UpdateBean updateBean) {
        Intent startUpdateIntent = getStartUpdateIntent(activity, updateBean);
        if (startUpdateIntent != null) {
            activity.startActivityForResult(startUpdateIntent, i);
        }
    }

    public static Intent startUpdateIntent(Activity activity) {
        Intent intentStartBridgeActivity;
        if (activity == null) {
            return null;
        }
        UpdateBean updateBean = new UpdateBean();
        updateBean.setHmsOrApkUpgrade(true);
        updateBean.setClientPackageName(HMSPackageManager.getInstance(activity.getApplicationContext()).getHMSPackageName());
        updateBean.setClientVersionCode(HMSPackageManager.getInstance(activity.getApplicationContext()).getHmsVersionCode());
        updateBean.setClientAppId("C10132067");
        updateBean.setNeedConfirm(false);
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(activity.getApplicationContext());
        }
        updateBean.setClientAppName(ResourceLoaderUtil.getString("hms_update_title"));
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(updateBean.getClientAppName())) {
            m3467a(activity, (ArrayList<Integer>) arrayList);
        } else {
            m3468a((Context) activity, (ArrayList<Integer>) arrayList);
        }
        updateBean.setTypeList(arrayList);
        if (arrayList.size() > 1) {
            intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(activity, AbstractC1509n.m3331a(((Integer) arrayList.get(1)).intValue()));
        } else {
            int iIntValue = -2;
            if (arrayList.size() > 0) {
                iIntValue = ((Integer) arrayList.get(0)).intValue();
            } else {
                HMSLog.m3463i("UpdateManager", "typeList is empty, no upgrade solution");
            }
            intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(activity, AbstractC1509n.m3331a(iIntValue));
        }
        intentStartBridgeActivity.putExtra(BridgeActivity.EXTRA_DELEGATE_UPDATE_INFO, updateBean);
        return intentStartBridgeActivity;
    }

    /* renamed from: b */
    public static boolean m3472b(Context context) {
        int packageVersionCode = new PackageManagerHelper(context).getPackageVersionCode(PackageConstants.SERVICES_PACKAGE_APPMARKET);
        C0948f6.m1777v("getHiappVersion is ", packageVersionCode, "UpdateManager");
        return ((long) packageVersionCode) >= 70203000;
    }

    /* renamed from: a */
    public static void m3468a(Context context, ArrayList<Integer> arrayList) {
        if (SystemUtils.isTVDevice()) {
            arrayList.add(5);
            return;
        }
        if (SystemUtils.isSystemApp(context.getApplicationContext(), PackageConstants.SERVICES_PACKAGE_APPMARKET) && m3472b(context) && SystemUtils.isChinaROM()) {
            arrayList.add(0);
            arrayList.add(6);
        } else {
            m3473c(context, arrayList);
        }
    }

    /* renamed from: c */
    public static boolean m3474c(Context context) {
        ApplicationInfo applicationInfo;
        if (context == null) {
            HMSLog.m3463i("UpdateManager", "In isAgNewVersion, context is null.");
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            HMSLog.m3463i("UpdateManager", "In isAgNewVersion, configuration not found for base version setting");
            return false;
        }
        try {
            applicationInfo = packageManager.getPackageInfo(PackageConstants.SERVICES_PACKAGE_APPMARKET, 128).applicationInfo;
        } catch (PackageManager.NameNotFoundException unused) {
            HMSLog.m3461e("UpdateManager", "In isAgNewVersion, Failed to read meta data from base version setting channel.");
        }
        if (applicationInfo != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey("com.huawei.hms.client.service.name:base")) {
            String string = applicationInfo.metaData.getString("com.huawei.hms.client.service.name:base");
            if (!TextUtils.isEmpty(string) && string.split(":").length == 2) {
                if (StringUtil.convertVersion2Integer(string.split(":")[1]) >= 50004100) {
                    return true;
                }
                HMSLog.m3463i("UpdateManager", "In isAgNewVersion, configuration not found for base version setting");
                return false;
            }
            HMSLog.m3463i("UpdateManager", "In isAgNewVersion, configuration not found for base version setting");
            return false;
        }
        HMSLog.m3463i("UpdateManager", "In isAgNewVersion, configuration not found for base version setting");
        return false;
    }

    public static Intent getStartUpdateIntent(Context context, UpdateBean updateBean) {
        if (context == null || updateBean == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(updateBean.getClientAppName())) {
            m3468a(context, (ArrayList<Integer>) arrayList);
        } else {
            m3471b(context, arrayList);
        }
        int iIntValue = -2;
        if (arrayList.size() > 0) {
            iIntValue = ((Integer) arrayList.get(0)).intValue();
        } else {
            HMSLog.m3463i("UpdateManager", "typeList is empty, no upgrade solution");
        }
        updateBean.setTypeList(arrayList);
        Intent intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(context, AbstractC1509n.m3331a(iIntValue));
        intentStartBridgeActivity.putExtra(BridgeActivity.EXTRA_DELEGATE_UPDATE_INFO, updateBean);
        return intentStartBridgeActivity;
    }

    /* renamed from: a */
    public static void m3467a(Activity activity, ArrayList<Integer> arrayList) {
        if (!m3470a(activity, PackageConstants.SERVICES_PACKAGE_APPMARKET) || PackageConstants.SERVICES_PACKAGE_APPMARKET.equals(activity.getPackageName())) {
            return;
        }
        arrayList.add(5);
    }

    /* renamed from: a */
    public static boolean m3469a(Context context) {
        if (context == null) {
            HMSLog.m3461e("UpdateManager", "In getAndroidMarketSetting, context is null.");
            return true;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            HMSLog.m3463i("UpdateManager", "In getAndroidMarketSetting, configuration not found for android channel market setting.");
            return true;
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
            if (applicationInfo != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey("com.huawei.hms.client.channel.androidMarket")) {
                return applicationInfo.metaData.getBoolean("com.huawei.hms.client.channel.androidMarket", true);
            }
        } catch (PackageManager.NameNotFoundException unused) {
            HMSLog.m3461e("UpdateManager", "In getAndroidMarketSetting, Failed to read meta data from android market channel.");
        }
        HMSLog.m3463i("UpdateManager", "In getAndroidMarketSetting, configuration not found for android channel market setting.");
        return true;
    }
}
