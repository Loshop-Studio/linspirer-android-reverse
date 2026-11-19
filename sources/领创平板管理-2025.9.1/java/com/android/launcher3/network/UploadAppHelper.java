package com.android.launcher3.network;

// RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.network.params.ListParams;
import com.android.launcher3.network.params.UploadAppItem;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.huawei.hem.MobileSdkPlatformUtilities;
import com.huawei.hem.DeskSPF;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.AppUploadSPHelper;
import com.huawei.hem.AgooNotificationHandler;
import com.huawei.hem.HttpCore;
import com.huawei.hem.PostBuilder;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class UploadAppHelper {
    public static final String TAG = "UploadAppHelper ";
    public AppUploadSPHelper ltkSpUtil;
    public Context mContext;
    public HttpCore mHttpCore;

    public static class UploadAppHolder {
        public static final UploadAppHelper instance = new UploadAppHelper();
    }

    public static UploadAppHelper getInstance() {
        return UploadAppHolder.instance;
    }

    private List<UploadAppItem> getUploadApps(Context context) {
        ArrayList arrayList = new ArrayList();
        try {
            LTKDateUtil.m1403m("UploadAppHelper  get alread install apps ");
            List<String> listMo1311M0 = LTKDateUtil.f2294f.mo1311M0();
            if (MobileSdkPlatformUtilities.m2273N(listMo1311M0)) {
                listMo1311M0 = AgooNotificationHandler.m2504F();
            }
            if (MobileSdkPlatformUtilities.m2273N(listMo1311M0)) {
                listMo1311M0 = new ArrayList<>();
            }
            ArrayList arrayList2 = new ArrayList();
            for (String str : listMo1311M0) {
                if (str.contains(";")) {
                    arrayList2.add(MobileSdkPlatformUtilities.m2276Q(str, ";")[0]);
                }
            }
            PackageManager packageManager = context.getPackageManager();
            for (PackageInfo packageInfo : packageManager.getInstalledPackages(8192)) {
                String str2 = packageInfo.packageName;
                if (!isSystemApp(packageInfo.applicationInfo) || arrayList2.contains(str2)) {
                    UploadAppItem uploadAppItem = new UploadAppItem();
                    ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                    if (arrayList2.contains(str2)) {
                        uploadAppItem.setIsWhiteApp(1);
                    } else {
                        uploadAppItem.setIsWhiteApp(0);
                    }
                    uploadAppItem.setAppname(applicationInfo.loadLabel(packageManager).toString());
                    uploadAppItem.setPackagename(str2);
                    uploadAppItem.setVersioncode(packageInfo.versionCode);
                    uploadAppItem.setVersionname(packageInfo.versionName);
                    arrayList.add(uploadAppItem);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            LTKDateUtil.m1403m("UploadAppHelper  get alread install apps exception:" + e.getMessage());
        }
        return arrayList;
    }

    private boolean isNeedUpload() {
        if (!LauncherMenuHelper.m3004y()) {
            return false;
        }
        String str = new SimpleDateFormat("yyyyMMdd").format(new Date());
        AppUploadSPHelper c1199p5 = this.ltkSpUtil;
        if (TextUtils.isEmpty(c1199p5.f3434a)) {
            c1199p5.f3434a = c1199p5.f3436c.f2199a.getString("appupload_date", "");
        }
        if (!str.equals(c1199p5.f3434a)) {
            return true;
        }
        AppUploadSPHelper c1199p52 = this.ltkSpUtil;
        if (c1199p52.f3435b == -1) {
            c1199p52.f3435b = c1199p52.f3436c.f2199a.getInt("app_status_changed", 0);
        }
        return c1199p52.f3435b == 1;
    }

    public static boolean isSystemApp(ApplicationInfo applicationInfo) {
        int i = applicationInfo.flags;
        return ((i & 128) == 0 && (i & 1) == 0) ? false : true;
    }

    private void uploadAppList() {
        try {
            List<UploadAppItem> uploadApps = getUploadApps(this.mContext);
            if (MobileSdkPlatformUtilities.m2273N(uploadApps)) {
                LTKDateUtil.m1403m("UploadAppHelper  no need upload apps");
                return;
            }
            ListParams listParams = new ListParams(this.mContext);
            listParams.setEmail(UserInfoUtil.b.f4202a.m3052k());
            listParams.setReportlist(uploadApps);
            V2Params v2Params = new V2Params();
            v2Params.setMethod(RequestUrl.UPLOAD_INSTALL_APPS_METHOD);
            v2Params.setParams(JSON.toJSONString(listParams));
            HttpCore c1255rb = this.mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            PostBuilder c1355vb = new PostBuilder(c1255rb);
            c1355vb.f3777a = RequestUrl.UPLOAD_EVENT_URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKResponseListener<Boolean>(Boolean.class) { // from class: com.android.launcher3.network.UploadAppHelper.1
                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    LTKDateUtil.m1403m("UploadAppHelper upload installed apps failed");
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    LTKDateUtil.m1403m("UploadAppHelper upload installed apps failure");
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.launcher3.network.response.LTKResponseListener
                public void handleResult(Boolean bool) {
                    LTKDateUtil.m1403m("UploadAppHelper upload installed apps sucess");
                    AppUploadSPHelper c1199p5 = UploadAppHelper.this.ltkSpUtil;
                    String str = new SimpleDateFormat("yyyyMMdd").format(new Date());
                    c1199p5.f3434a = str;
                    DeskSPF c0824ac = c1199p5.f3436c;
                    c0824ac.f2200b.putString("appupload_date", str);
                    c0824ac.f2200b.commit();
                    UploadAppHelper.this.ltkSpUtil.m2460a(0);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void checkAndUpload() {
        if (isNeedUpload()) {
            uploadAppList();
        } else {
            LTKDateUtil.m1403m("UploadAppHelper no need upload ");
        }
    }

    public void uploadApps() {
        if (LauncherMenuHelper.m3005z()) {
            uploadAppList();
        } else {
            LTKDateUtil.m1403m("UploadAppHelper no need upload");
        }
    }

    public UploadAppHelper() {
        this.ltkSpUtil = AppUploadSPHelper.b.f3437a;
        this.mHttpCore = new HttpCore();
        this.mContext = GuardSecureApplication.f1640b;
    }
}
