package com.huawei.hem;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.loc.ThreadTask;
import com.loc.BasicLogHandler;
import com.loc.AMapLog;
import com.loc.SDKLogHandler;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.security.MessageDigest;
import java.util.Locale;
import org.android.agoo.message.MessageService;

/* compiled from: AppInfo.java */
/* renamed from: com.huawei.hem.e1 */
/* loaded from: classes.dex */
public final class AppInfo {

    /* renamed from: a */
    public static String f2502a = "";

    /* renamed from: b */
    public static String f2503b = "";

    /* renamed from: c */
    public static String f2504c = "";

    /* renamed from: d */
    public static String f2505d = "";

    /* renamed from: e */
    public static String f2506e = null;

    /* renamed from: f */
    public static boolean f2507f = false;

    /* compiled from: AppInfo.java */
    /* renamed from: com.huawei.hem.e1$a */
    public static class a extends ThreadTask {

        /* renamed from: a */
        public final /* synthetic */ Context f2508a;

        /* renamed from: b */
        public final /* synthetic */ String f2509b;

        public a(Context context, String str) {
            this.f2508a = context;
            this.f2509b = str;
        }

        @Override // com.loc.AbstractRunnableC1754bq
        /* renamed from: a */
        public final void mo1093a() {
            FileOutputStream fileOutputStream = null;
            try {
                File file = new File(AMapLog.m5325c(this.f2508a, "k.store"));
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    fileOutputStream2.write(AMapCoreUtilities.m2245n(this.f2509b));
                    try {
                        fileOutputStream2.close();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    try {
                        BasicLogHandler.m5312a(th, "AI", "stf");
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th3) {
                                th3.printStackTrace();
                            }
                        }
                    } catch (Throwable th4) {
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th5) {
                                th5.printStackTrace();
                            }
                        }
                        throw th4;
                    }
                }
            } catch (Throwable th6) {
                th = th6;
            }
        }
    }

    /* renamed from: a */
    public static boolean m1635a() {
        if (f2507f) {
            return true;
        }
        if (m1637c(f2506e)) {
            f2507f = true;
            return true;
        }
        if (!TextUtils.isEmpty(f2506e)) {
            f2507f = false;
            f2506e = null;
            return false;
        }
        if (m1637c(f2503b)) {
            f2507f = true;
            return true;
        }
        if (!TextUtils.isEmpty(f2503b)) {
            f2507f = false;
            f2503b = null;
            return false;
        }
        return true;
    }

    /* renamed from: b */
    public static String m1636b(Context context) {
        try {
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "AI", "gAN");
        }
        if (!"".equals(f2502a)) {
            return f2502a;
        }
        PackageManager packageManager = context.getPackageManager();
        f2502a = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0));
        return f2502a;
    }

    /* renamed from: c */
    public static boolean m1637c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        str.toCharArray();
        for (char c : str.toCharArray()) {
            if (('A' > c || c > 'z') && (('0' > c || c > ':') && c != '.')) {
                try {
                    SDKLogHandler.m5332b(AMapCoreUtilities.m2232a(), str, "errorPackage");
                } catch (Throwable unused) {
                }
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public static String m1638d(Context context) {
        try {
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "AI", "gpck");
        }
        if (f2503b != null && !"".equals(f2503b)) {
            return f2503b;
        }
        String packageName = context.getPackageName();
        f2503b = packageName;
        if (!m1637c(packageName)) {
            f2503b = context.getPackageName();
        }
        return f2503b;
    }

    /* renamed from: e */
    public static String m1639e(Context context) {
        try {
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "AI", "gAV");
        }
        if (!"".equals(f2504c)) {
            return f2504c;
        }
        f2504c = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        String str = f2504c;
        return str == null ? "" : str;
    }

    /* renamed from: f */
    public static String m1640f(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            byte[] bArrDigest = MessageDigest.getInstance(AMapCoreUtilities.m2251t("IU0hBMQ")).digest(packageInfo.signatures[0].toByteArray());
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : bArrDigest) {
                String upperCase = Integer.toHexString(b & Base64.EQUALS_SIGN_ENC).toUpperCase(Locale.US);
                if (upperCase.length() == 1) {
                    stringBuffer.append(MessageService.MSG_DB_READY_REPORT);
                }
                stringBuffer.append(upperCase);
                stringBuffer.append(":");
            }
            String strM1638d = packageInfo.packageName;
            if (m1637c(strM1638d)) {
                strM1638d = packageInfo.packageName;
            }
            if (!TextUtils.isEmpty(f2503b)) {
                strM1638d = m1638d(context);
            }
            stringBuffer.append(strM1638d);
            String string = stringBuffer.toString();
            f2506e = string;
            return string;
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "AI", "gsp");
            return f2506e;
        }
    }

    /* renamed from: g */
    public static String m1641g(Context context) {
        try {
            AuthConfigManager.m1708b(context);
        } catch (Throwable unused) {
        }
        try {
            return m1642h(context);
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "AI", "gKy");
            return f2505d;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x005f -> B:60:0x0083). Please report as a decompilation issue!!! */
    /* renamed from: h */
    public static String m1642h(Context context) throws PackageManager.NameNotFoundException {
        String str;
        Bundle bundle;
        FileInputStream fileInputStream;
        Throwable th;
        String str2 = f2505d;
        str = "";
        if (str2 == null || str2.equals("")) {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || (bundle = applicationInfo.metaData) == null) {
                return f2505d;
            }
            String string = bundle.getString("com.amap.api.v2.apikey");
            f2505d = string;
            if (string == null) {
                File file = new File(AMapLog.m5325c(context, "k.store"));
                if (file.exists()) {
                    try {
                        try {
                            fileInputStream = new FileInputStream(file);
                            try {
                                byte[] bArr = new byte[fileInputStream.available()];
                                fileInputStream.read(bArr);
                                String strM2236e = AMapCoreUtilities.m2236e(bArr);
                                str = strM2236e.length() == 32 ? strM2236e : "";
                                fileInputStream.close();
                            } catch (Throwable th2) {
                                th = th2;
                                try {
                                    BasicLogHandler.m5312a(th, "AI", "gKe");
                                    try {
                                        if (file.exists()) {
                                            file.delete();
                                        }
                                    } catch (Throwable th3) {
                                        th3.printStackTrace();
                                    }
                                    if (fileInputStream != null) {
                                        fileInputStream.close();
                                    }
                                    f2505d = str;
                                    return f2505d;
                                } catch (Throwable th4) {
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                        } catch (Throwable th5) {
                                            th5.printStackTrace();
                                        }
                                    }
                                    throw th4;
                                }
                            }
                        } catch (Throwable th6) {
                            fileInputStream = null;
                            th = th6;
                        }
                    } catch (Throwable th7) {
                        th7.printStackTrace();
                    }
                }
                f2505d = str;
            }
        }
        return f2505d;
    }
}
