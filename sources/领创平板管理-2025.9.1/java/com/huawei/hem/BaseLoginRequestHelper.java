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
public class BaseLoginRequestHelper extends BaseRequestHelper {
    public void executeLoginSuccessLogic(Context context) {
        TacticsHelper.getInstance().request();
        ControlAppHelper.getInstance(context).request();
        HiScreenHelper.getInstance().updateScreenSettings();
        UrlWhiteHelper.getInstance().request();
        GreenBrowWebHelper.getInstances().handle();
        LTKDateUtil.f2294f.enableNavigation();
        LauncherMenuHelper.m2974U(context, LauncherNew.class);
        WallpaperHelper.getInstance().startCheck();
        ComponentHelper.m2652a().m2653b();
        SogouInputSettingsHelper.m2784c(context).m2785d();
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
        LTKDateUtil.m1395e("39012547-95DA-7CC3-F38A-D7ADC6161529");
        try {
            Cipher cipherM1402l = LTKDateUtil.m1402l(1);
            if (cipherM1402l != null) {
                str4 = new String(HemBase64Codec.m1690f(cipherM1402l.doFinal(str4.getBytes())));
            }
        } catch (BadPaddingException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("loginold two:");
            sbM1765j.append(e.getMessage());
            LTKDateUtil.m1393c(sbM1765j.toString());
        } catch (IllegalBlockSizeException e2) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("loginold one:");
            sbM1765j2.append(e2.getMessage());
            LTKDateUtil.m1393c(sbM1765j2.toString());
        } catch (Exception e3) {
            CompilerOutline.m1776u(e3, CompilerOutline.m1765j("logoutold exception:"));
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("logoutold throwable:"));
        }
        contentValues.put("swdid", str4);
        contentResolver.insert(UserDeviceInfoProvider.DeviceInfoTableColumns.f1902a, contentValues);
    }
}
