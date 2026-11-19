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
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.C0824ac;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C1199p5;
import com.huawei.hem.C1219q0;
import com.huawei.hem.C1255rb;
import com.huawei.hem.C1355vb;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class UploadAppHelper {
    public static final String TAG = "UploadAppHelper ";
    public C1199p5 ltkSpUtil;
    public Context mContext;
    public C1255rb mHttpCore;

    public static class UploadAppHolder {
        public static final UploadAppHelper instance = new UploadAppHelper();
    }

    public static UploadAppHelper getInstance() {
        return UploadAppHolder.instance;
    }

    private List<UploadAppItem> getUploadApps(Context context) {
        ArrayList arrayList = new ArrayList();
        try {
            C0850bc.m1403m("UploadAppHelper  get alread install apps ");
            List<String> listMo1311M0 = C0850bc.f2294f.mo1311M0();
            if (AbstractC1102l9.m2273N(listMo1311M0)) {
                listMo1311M0 = C1219q0.m2504F();
            }
            if (AbstractC1102l9.m2273N(listMo1311M0)) {
                listMo1311M0 = new ArrayList<>();
            }
            ArrayList arrayList2 = new ArrayList();
            for (String str : listMo1311M0) {
                if (str.contains(";")) {
                    arrayList2.add(AbstractC1102l9.m2276Q(str, ";")[0]);
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
            C0850bc.m1403m("UploadAppHelper  get alread install apps exception:" + e.getMessage());
        }
        return arrayList;
    }

    private boolean isNeedUpload() {
        if (!C1423y4.m3004y()) {
            return false;
        }
        String str = new SimpleDateFormat("yyyyMMdd").format(new Date());
        C1199p5 c1199p5 = this.ltkSpUtil;
        if (TextUtils.isEmpty(c1199p5.f3434a)) {
            c1199p5.f3434a = c1199p5.f3436c.f2199a.getString("appupload_date", "");
        }
        if (!str.equals(c1199p5.f3434a)) {
            return true;
        }
        C1199p5 c1199p52 = this.ltkSpUtil;
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
            if (AbstractC1102l9.m2273N(uploadApps)) {
                C0850bc.m1403m("UploadAppHelper  no need upload apps");
                return;
            }
            ListParams listParams = new ListParams(this.mContext);
            listParams.setEmail(C1424y5.b.f4202a.m3052k());
            listParams.setReportlist(uploadApps);
            V2Params v2Params = new V2Params();
            v2Params.setMethod(RequestUrl.UPLOAD_INSTALL_APPS_METHOD);
            v2Params.setParams(JSON.toJSONString(listParams));
            C1255rb c1255rb = this.mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            C1355vb c1355vb = new C1355vb(c1255rb);
            c1355vb.f3777a = RequestUrl.UPLOAD_EVENT_URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new LTKResponseListener<Boolean>(Boolean.class) { // from class: com.android.launcher3.network.UploadAppHelper.1
                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailed(Response response) {
                    C0850bc.m1403m("UploadAppHelper upload installed apps failed");
                }

                @Override // com.android.launcher3.network.response.BaseResponse
                public void onFailureByNet(Object obj) {
                    C0850bc.m1403m("UploadAppHelper upload installed apps failure");
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.android.launcher3.network.response.LTKResponseListener
                public void handleResult(Boolean bool) {
                    C0850bc.m1403m("UploadAppHelper upload installed apps sucess");
                    C1199p5 c1199p5 = UploadAppHelper.this.ltkSpUtil;
                    String str = new SimpleDateFormat("yyyyMMdd").format(new Date());
                    c1199p5.f3434a = str;
                    C0824ac c0824ac = c1199p5.f3436c;
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
            C0850bc.m1403m("UploadAppHelper no need upload ");
        }
    }

    public void uploadApps() {
        if (C1423y4.m3005z()) {
            uploadAppList();
        } else {
            C0850bc.m1403m("UploadAppHelper no need upload");
        }
    }

    public UploadAppHelper() {
        this.ltkSpUtil = C1199p5.b.f3437a;
        this.mHttpCore = new C1255rb();
        this.mContext = GuardSecureApplication.f1640b;
    }
}
