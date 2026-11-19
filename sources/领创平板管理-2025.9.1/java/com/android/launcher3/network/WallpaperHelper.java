package com.android.launcher3.network;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.huawei.hem.AbstractC1158ne;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0930ee;
import com.huawei.hem.C1007he;
import com.huawei.hem.C1255rb;
import com.huawei.hem.C1333ue;
import com.huawei.hem.C1395x1;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;
import com.huawei.hem.InterfaceC0956fe;
import com.huawei.hms.framework.network.grs.GrsManager;
import java.io.File;

/* loaded from: classes.dex */
public class WallpaperHelper {
    public static final String TAG = "WallpaperHelper";
    public static volatile WallpaperHelper mInstances;
    public Context mContext;
    public long lastTime = 0;
    public C1424y5 userInfoUtil = C1424y5.b.f4202a;
    public C1255rb httpCore = new C1255rb();

    /* renamed from: com.android.launcher3.network.WallpaperHelper$1 */
    public class C06881 extends LTKResponseListener<String> {
        public C06881(Class cls) {
            super(cls);
        }

        @Override // com.android.launcher3.network.response.BaseResponse
        public void onFailed(Response response) {
            C0850bc.m1393c("WallpaperHelper -- load wallpaper failed");
        }

        @Override // com.android.launcher3.network.response.BaseResponse
        public void onFailureByNet(Object obj) {
            C0850bc.m1393c("WallpaperHelper -- load wallpaper failure");
            WallpaperHelper.this.loadCacheFile();
        }

        @Override // com.android.launcher3.network.response.LTKResponseListener
        public void handleResult(String str) {
            C0850bc.m1403m("WallpaperHelper -- load wallpaper sucess");
            WallpaperHelper.this.needLoading(str);
        }
    }

    public WallpaperHelper(Context context) {
        this.mContext = context;
    }

    private void deleteOldFile(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        C0930ee.m1678c(new File(str));
    }

    private void downloadLauncherBg(String str, final String str2) {
        if (C1333ue.m2788b() == null) {
            throw null;
        }
        C1007he c1007he = new C1007he(str);
        c1007he.m1947z(str2, false);
        c1007he.f2853h = new AbstractC1158ne() { // from class: com.android.launcher3.network.WallpaperHelper.2
            @Override // com.huawei.hem.AbstractC1158ne
            public void completed(InterfaceC0956fe interfaceC0956fe) {
                C0850bc.m1403m("WallpaperHelper -- launcher wallpaper downloadtask is completed .");
                WallpaperHelper.this.userInfoUtil.m3073u0(str2);
                WallpaperHelper.this.sendBroadcast(str2);
            }

            @Override // com.huawei.hem.AbstractC1158ne
            public void error(InterfaceC0956fe interfaceC0956fe, Throwable th) {
                C0850bc.m1393c("WallpaperHelper -- launcher bg downloadtask happened to the error .");
            }

            @Override // com.huawei.hem.AbstractC1158ne
            public void paused(InterfaceC0956fe interfaceC0956fe, int i, int i2) {
                C0850bc.m1403m("WallpaperHelperpaused");
            }

            @Override // com.huawei.hem.AbstractC1158ne
            public void pending(InterfaceC0956fe interfaceC0956fe, int i, int i2) {
                C0850bc.m1403m("WallpaperHelperpending");
            }

            @Override // com.huawei.hem.AbstractC1158ne
            public void progress(InterfaceC0956fe interfaceC0956fe, int i, int i2) {
            }

            @Override // com.huawei.hem.AbstractC1158ne
            public void warn(InterfaceC0956fe interfaceC0956fe) {
                C0850bc.m1403m("WallpaperHelperwarn");
            }
        };
        c1007he.start();
    }

    public static WallpaperHelper getInstance() {
        if (mInstances == null) {
            synchronized (WallpaperHelper.class) {
                if (mInstances == null) {
                    mInstances = new WallpaperHelper(GuardSecureApplication.f1640b);
                }
            }
        }
        return mInstances;
    }

    private boolean isTooFast() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.lastTime;
        this.lastTime = jCurrentTimeMillis;
        return j <= 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadCacheFile() {
        String strM3017L = this.userInfoUtil.m3017L();
        if (TextUtils.isEmpty(strM3017L) || !C0930ee.m1680e(strM3017L)) {
            return;
        }
        sendBroadcast(strM3017L);
    }

    private void loadWallpaper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void needLoading(String str) {
        C0850bc.m1403m("WallpaperHelper -- need downloading wallpaper .");
        C1423y4.m3001v(null, true);
        if (TextUtils.isEmpty(C1395x1.f4038a)) {
            C0850bc.m1390A("WallpaperHelperdownload path empty cannot load wallpaper");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            C0850bc.m1403m("WallpaperHelper -- url is empty");
            deleteOldFile(this.userInfoUtil.m3017L());
            this.userInfoUtil.m3073u0("");
            sendBroadcast("");
            return;
        }
        String[] strArrSplit = str.split(GrsManager.SEPARATOR);
        String str2 = C1395x1.f4038a + strArrSplit[strArrSplit.length - 1];
        C0850bc.m1403m("WallpaperHelper -- local wallpaper path: " + str2);
        if (C0930ee.m1680e(str2)) {
            sendBroadcast(str2);
            this.userInfoUtil.m3073u0(str2);
        } else {
            deleteOldFile(this.userInfoUtil.m3017L());
            downloadLauncherBg(str, str2);
        }
    }

    public void sendBroadcast(String str) {
        Context context = this.mContext;
        C0850bc.m1403m("send  refresh desktop broadcast for wallpaper");
        Intent intent = new Intent();
        intent.setAction("com.linspirer.launcher3.changewallpaper");
        intent.putExtra("path", str);
        intent.setPackage("com.android.launcher3");
        context.sendBroadcast(intent);
    }

    public void startCheck() {
        C0850bc.m1403m("WallpaperHelper -- start check launcher bg wallpaper .");
        if (isTooFast()) {
            return;
        }
        loadWallpaper();
    }
}
