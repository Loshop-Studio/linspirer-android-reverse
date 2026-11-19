package com.huawei.hem;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import com.android.launcher3.LauncherNew;
import com.android.launcher3.network.AppTimeLimitHelper;
import com.android.launcher3.network.ControlAppHelper;
import com.android.launcher3.network.DeviceInfoUploadHelper;
import com.android.launcher3.network.DeviceLogHelper;
import com.android.launcher3.network.GreenBrowWebHelper;
import com.android.launcher3.network.HiScreenHelper;
import com.android.launcher3.network.LicenseHelper;
import com.android.launcher3.network.TacticsHelper;
import com.android.launcher3.network.UrlWhiteHelper;
import com.android.launcher3.network.WallpaperHelper;
import com.android.launcher3.p027db.provider.UserDeviceInfoProvider;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;

/* compiled from: BaseLoginRequestHelper.java */
/* renamed from: com.huawei.hem.q4 */
/* loaded from: classes.dex */
public class C1223q4 extends C1248r4 {
    public void executeLoginSuccessLogic(Context context) {
        TacticsHelper.getInstance().request();
        ControlAppHelper.getInstance(context).request();
        HiScreenHelper.getInstance().updateScreenSettings();
        UrlWhiteHelper.getInstance().request();
        GreenBrowWebHelper.getInstances().handle();
        C0850bc.f2294f.enableNavigation();
        C1423y4.m2974U(context, LauncherNew.class);
        WallpaperHelper.getInstance().startCheck();
        C1249r5.m2652a().m2653b();
        C1323u4.m2784c(context).m2785d();
        DeviceInfoUploadHelper.uploadInfo();
        LicenseHelper.getInstance().startCheck(context, true, true);
        AppTimeLimitHelper.getInstance().request();
        DeviceLogHelper.getInstance().recordAccountLogin();
    }

    public void saveUserDeviceInfo(String str, String str2, String str3, String str4) {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        contentResolver.delete(UserDeviceInfoProvider.f1900d, null, null);
        ContentValues contentValues = new ContentValues();
        contentValues.put("user_id", str);
        contentValues.put("user_name", str2);
        contentValues.put("school_id", str3);
        C0850bc.m1395e("39012547-95DA-7CC3-F38A-D7ADC6161529");
        try {
            Cipher cipherM1402l = C0850bc.m1402l(1);
            if (cipherM1402l != null) {
                str4 = new String(C0940eo.m1690f(cipherM1402l.doFinal(str4.getBytes())));
            }
        } catch (BadPaddingException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("loginold two:");
            sbM1765j.append(e.getMessage());
            C0850bc.m1393c(sbM1765j.toString());
        } catch (IllegalBlockSizeException e2) {
            StringBuilder sbM1765j2 = C0948f6.m1765j("loginold one:");
            sbM1765j2.append(e2.getMessage());
            C0850bc.m1393c(sbM1765j2.toString());
        } catch (Exception e3) {
            C0948f6.m1776u(e3, C0948f6.m1765j("logoutold exception:"));
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("logoutold throwable:"));
        }
        contentValues.put("swdid", str4);
        contentResolver.insert(UserDeviceInfoProvider.C0650a.f1902a, contentValues);
    }
}
