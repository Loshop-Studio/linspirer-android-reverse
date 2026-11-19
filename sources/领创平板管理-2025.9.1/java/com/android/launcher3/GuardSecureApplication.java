package com.android.launcher3;

// RE note 本类字节码直接引用的读写或显示接口包括偏好设置。

import android.app.Application;
import android.os.Build;
import android.os.UserManager;
import com.alibaba.sdk.android.push.CloudPushService;
import com.alibaba.sdk.android.push.noonesdk.PushServiceFactory;
import com.huawei.hem.DeskSPF;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.PushCallBack;
import com.huawei.hem.UserInfoUtil;

/* loaded from: classes.dex */
public class GuardSecureApplication extends Application {

    /* renamed from: b */
    public static GuardSecureApplication f1640b;

    /* renamed from: a */
    public UserInfoUtil f1641a;

    /* JADX WARN: Removed duplicated region for block: B:101:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0467  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x046d  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x048b  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x04ae  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x04ea  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x050b  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x056e  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0583  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x058d  */
    /* JADX WARN: Removed duplicated region for block: B:145:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x035b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x044f  */
    /* renamed from: a, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1162d() {
        /*
            Method dump skipped, instructions count: 1491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.GuardSecureApplication.m1162d():void"); // DEX body: android/领创平板管理-2025.9.1/smali/com/android/launcher3/GuardSecureApplication.smali:28
    }

    /* renamed from: b */
    public void m1160b() {
        UserManager userManager = (UserManager) getSystemService(UserManager.class);
        if (Build.VERSION.SDK_INT < 24 || userManager.isUserUnlocked()) {
            LTKDateUtil.m1403m("GuardSecureApplication init push for message");
            UserInfoUtil c1424y5 = this.f1641a;
            if (c1424y5.f4137K != "") {
                c1424y5.f4137K = "";
                DeskSPF c0824ac = c1424y5.f4130D;
                c0824ac.f2200b.putString("push_token", "");
                c0824ac.f2200b.commit();
            }
            PushServiceFactory.init(this);
            CloudPushService cloudPushService = PushServiceFactory.getCloudPushService();
            cloudPushService.setLogLevel(-1);
            cloudPushService.register(this, new PushCallBack());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0050 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x0612  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x0615  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0625  */
    @Override // android.app.Application
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate() {
        /*
            Method dump skipped, instructions count: 1705
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.GuardSecureApplication.onCreate():void"); // DEX body: android/领创平板管理-2025.9.1/smali/com/android/launcher3/GuardSecureApplication.smali:1796
    }
}
