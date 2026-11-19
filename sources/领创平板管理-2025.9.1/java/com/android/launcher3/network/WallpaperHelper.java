package com.android.launcher3.network;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.huawei.hem.FileDownloadListener;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.LauncherFileUtil;
import com.huawei.hem.DownloadTask;
import com.huawei.hem.HttpCore;
import com.huawei.hem.FileDownloader;
import com.huawei.hem.LauncherConstants;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;
import com.huawei.hem.BaseDownloadTask;
import com.huawei.hms.framework.network.grs.GrsManager;
import java.io.File;

/* loaded from: classes.dex */
public class WallpaperHelper {
    public static final String TAG = "WallpaperHelper";
    public static volatile WallpaperHelper mInstances;
    public Context mContext;
    public long lastTime = 0;
    public UserInfoUtil userInfoUtil = UserInfoUtil.b.f4202a;
    public HttpCore httpCore = new HttpCore();

    /* renamed from: com.android.launcher3.network.WallpaperHelper$1 */
    public class WallpaperListResponseCallback extends LTKResponseListener<String> {
        public WallpaperListResponseCallback(Class cls) {
            super(cls);
        }

        @Override // com.android.launcher3.network.response.BaseResponse
        public void onFailed(Response response) {
            LTKDateUtil.m1393c("WallpaperHelper -- load wallpaper failed");
        }

        @Override // com.android.launcher3.network.response.BaseResponse
        public void onFailureByNet(Object obj) {
            LTKDateUtil.m1393c("WallpaperHelper -- load wallpaper failure");
            WallpaperHelper.this.loadCacheFile();
        }

        @Override // com.android.launcher3.network.response.LTKResponseListener
        public void handleResult(String str) {
            LTKDateUtil.m1403m("WallpaperHelper -- load wallpaper sucess");
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
        LauncherFileUtil.m1678c(new File(str));
    }

    private void downloadLauncherBg(String str, final String str2) {
        if (FileDownloader.m2788b() == null) {
            throw null;
        }
        DownloadTask c1007he = new DownloadTask(str);
        c1007he.m1947z(str2, false);
        c1007he.f2853h = new FileDownloadListener() { // from class: com.android.launcher3.network.WallpaperHelper.2
            @Override // com.huawei.hem.AbstractC1158ne
            public void completed(BaseDownloadTask interfaceC0956fe) {
                LTKDateUtil.m1403m("WallpaperHelper -- launcher wallpaper downloadtask is completed .");
                WallpaperHelper.this.userInfoUtil.m3073u0(str2);
                WallpaperHelper.this.sendBroadcast(str2);
            }

            @Override // com.huawei.hem.AbstractC1158ne
            public void error(BaseDownloadTask interfaceC0956fe, Throwable th) {
                LTKDateUtil.m1393c("WallpaperHelper -- launcher bg downloadtask happened to the error .");
            }

            @Override // com.huawei.hem.AbstractC1158ne
            public void paused(BaseDownloadTask interfaceC0956fe, int i, int i2) {
                LTKDateUtil.m1403m("WallpaperHelperpaused");
            }

            @Override // com.huawei.hem.AbstractC1158ne
            public void pending(BaseDownloadTask interfaceC0956fe, int i, int i2) {
                LTKDateUtil.m1403m("WallpaperHelperpending");
            }

            @Override // com.huawei.hem.AbstractC1158ne
            public void progress(BaseDownloadTask interfaceC0956fe, int i, int i2) {
            }

            @Override // com.huawei.hem.AbstractC1158ne
            public void warn(BaseDownloadTask interfaceC0956fe) {
                LTKDateUtil.m1403m("WallpaperHelperwarn");
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
        if (TextUtils.isEmpty(strM3017L) || !LauncherFileUtil.m1680e(strM3017L)) {
            return;
        }
        sendBroadcast(strM3017L);
    }

    private void loadWallpaper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void needLoading(String str) {
        LTKDateUtil.m1403m("WallpaperHelper -- need downloading wallpaper .");
        LauncherMenuHelper.m3001v(null, true);
        if (TextUtils.isEmpty(LauncherConstants.f4038a)) {
            LTKDateUtil.m1390A("WallpaperHelperdownload path empty cannot load wallpaper");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            LTKDateUtil.m1403m("WallpaperHelper -- url is empty");
            deleteOldFile(this.userInfoUtil.m3017L());
            this.userInfoUtil.m3073u0("");
            sendBroadcast("");
            return;
        }
        String[] strArrSplit = str.split(GrsManager.SEPARATOR);
        String str2 = LauncherConstants.f4038a + strArrSplit[strArrSplit.length - 1];
        LTKDateUtil.m1403m("WallpaperHelper -- local wallpaper path: " + str2);
        if (LauncherFileUtil.m1680e(str2)) {
            sendBroadcast(str2);
            this.userInfoUtil.m3073u0(str2);
        } else {
            deleteOldFile(this.userInfoUtil.m3017L());
            downloadLauncherBg(str, str2);
        }
    }

    public void sendBroadcast(String str) {
        Context context = this.mContext;
        LTKDateUtil.m1403m("send  refresh desktop broadcast for wallpaper");
        Intent intent = new Intent();
        intent.setAction("com.linspirer.launcher3.changewallpaper");
        intent.putExtra("path", str);
        intent.setPackage("com.android.launcher3");
        context.sendBroadcast(intent);
    }

    public void startCheck() {
        LTKDateUtil.m1403m("WallpaperHelper -- start check launcher bg wallpaper .");
        if (isTooFast()) {
            return;
        }
        loadWallpaper();
    }
}
