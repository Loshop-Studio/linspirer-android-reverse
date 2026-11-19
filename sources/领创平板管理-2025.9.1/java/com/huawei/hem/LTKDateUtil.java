package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.alibaba.fastjson.asm.Label;
import com.huawei.hem.FileConfig;
import com.huawei.hem.FileLoggerService;
import com.huawei.hem.FileLoggerService.d;
import com.linspirer.mdm.R$string;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.BlockingQueue;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: LTKDateUtil.java */
/* renamed from: com.huawei.hem.bc */
/* loaded from: classes.dex */
public class LTKDateUtil {

    /* renamed from: a */
    public static String f2289a;

    /* renamed from: b */
    public static String f2290b;

    /* renamed from: c */
    public static long f2291c;

    /* renamed from: d */
    public static volatile boolean f2292d;

    /* renamed from: e */
    public static volatile FileConfig f2293e;

    /* renamed from: f */
    public static DeviceManagementInterface f2294f;

    /* renamed from: A */
    public static void m1390A(String str) {
        Log.w("LTKLog2", str);
        m1411u("LTKLog2", str);
    }

    /* renamed from: a */
    public static int m1391a(String str, String str2) throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
        try {
            Date date = simpleDateFormat.parse(str);
            Date date2 = simpleDateFormat.parse(str2);
            if (date.getTime() > date2.getTime()) {
                return 1;
            }
            return date.getTime() < date2.getTime() ? -1 : 0;
        } catch (ParseException e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* renamed from: b */
    public static void m1392b(String str) {
        Log.d("LTKLog2", str);
        m1411u("LTKLog2", str);
    }

    /* renamed from: c */
    public static void m1393c(String str) {
        Log.e("LTKLog2", str);
        m1411u("LTKLog2", str);
    }

    /* renamed from: d */
    public static String m1394d(String str, String str2) {
        try {
            return new SimpleDateFormat(str2).format(new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy", Locale.US).parse(str));
        } catch (ParseException e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: e */
    public static void m1395e(String str) {
        String strReplace = str.replace("-", "");
        f2289a = strReplace.substring(0, 16);
        f2290b = strReplace.substring(16);
    }

    /* renamed from: f */
    public static int m1396f(Context context, String str) {
        try {
            return context.getPackageManager().getApplicationInfo(str, 0).uid;
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("getAppUidByPackageName-error:");
            sbM1765j.append(e.getMessage());
            m1403m(sbM1765j.toString());
            return -1;
        }
    }

    /* renamed from: g */
    public static int m1397g(String str, Context context) {
        try {
            return context.getPackageManager().getPackageInfo(str, 1).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* renamed from: h */
    public static synchronized String m1398h(String str, Context context) {
        try {
            return context.getPackageManager().getPackageInfo(str, 1).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            m1393c("APKUtilgetAppVersionName" + e.toString());
            return "";
        } catch (RuntimeException e2) {
            m1393c("APKUtilgetAppVersionName RuntimeException " + e2.toString());
            return "";
        }
    }

    /* renamed from: i */
    public static String m1399i() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    }

    /* renamed from: j */
    public static String m1400j() {
        return new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
    }

    /* renamed from: k */
    public static String m1401k(String str) throws NoSuchAlgorithmException {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        BigInteger bigInteger = null;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            bigInteger = new BigInteger(messageDigest.digest());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bigInteger.toString(16);
    }

    /* renamed from: l */
    public static Cipher m1402l(int i) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipher = null;
        try {
            cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(i, new SecretKeySpec(f2289a.getBytes(), "AES"), new IvParameterSpec(f2290b.getBytes()));
            return cipher;
        } catch (InvalidAlgorithmParameterException e) {
            e.printStackTrace();
            return cipher;
        } catch (InvalidKeyException e2) {
            e2.printStackTrace();
            return cipher;
        } catch (NoSuchAlgorithmException e3) {
            e3.printStackTrace();
            return cipher;
        } catch (NoSuchPaddingException e4) {
            e4.printStackTrace();
            return cipher;
        }
    }

    /* renamed from: m */
    public static void m1403m(String str) {
        Log.i("LTKLog2", str);
        m1411u("LTKLog2", str);
    }

    /* renamed from: n */
    public static List<String> m1404n() {
        ArrayList arrayListM1772q = CompilerOutline.m1772q("network", "huawei_id", "more_connections", "screen_wallpaper", "notifications");
        CompilerOutline.m1749G(arrayListM1772q, "biometrics_password", "battery", "storage", "security");
        CompilerOutline.m1749G(arrayListM1772q, "privacy", "digital_balance", "smart_assistant", "accessibility");
        CompilerOutline.m1749G(arrayListM1772q, "users_accounts", "apps", "display_font_style", "time_zone_location");
        CompilerOutline.m1749G(arrayListM1772q, "input_and_language", "backup_settings", "pengine_settings", "user_experience");
        CompilerOutline.m1749G(arrayListM1772q, "apps_assistant", "apps_clone", "data_clone", "apps_startup_management");
        arrayListM1772q.add("system_other_menu");
        arrayListM1772q.add("system_navigation");
        arrayListM1772q.add("display_font_size");
        return arrayListM1772q;
    }

    /* renamed from: o */
    public static boolean m1405o(String str, Context context) throws PackageManager.NameNotFoundException {
        PackageManager packageManager = context.getPackageManager();
        if (LauncherDeviceUtils.m1589f().equals("tb8768p1_64_bsp")) {
            try {
                packageManager.getPackageInfo(str, 1);
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
                return false;
            }
        }
        try {
            packageManager.getPackageInfo(str, 8192);
            return true;
        } catch (PackageManager.NameNotFoundException unused2) {
            return false;
        }
    }

    /* renamed from: p */
    public static boolean m1406p(Context context, String str, int i) {
        try {
            return i > context.getPackageManager().getPackageInfo(str, 8192).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    /* renamed from: q */
    public static String m1407q(String str) {
        m1395e("1191ADF1-8489-D8DA-5E9B-755A8B674394");
        try {
            Cipher cipherM1402l = m1402l(2);
            return cipherM1402l == null ? str : new String(cipherM1402l.doFinal(C0940eo.m1689e(str.getBytes())));
        } catch (BadPaddingException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("logout two:");
            sbM1765j.append(e.getMessage());
            m1393c(sbM1765j.toString());
            return str;
        } catch (IllegalBlockSizeException e2) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("logout one:");
            sbM1765j2.append(e2.getMessage());
            m1393c(sbM1765j2.toString());
            return str;
        } catch (Exception e3) {
            CompilerOutline.m1776u(e3, CompilerOutline.m1765j("logoutold exception:"));
            return str;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("logoutold throwable:"));
            return str;
        }
    }

    /* renamed from: r */
    public static void m1408r(Context context, String str, int i) {
        try {
            context.startActivity(context.getPackageManager().getLaunchIntentForPackage(str));
        } catch (Exception e) {
            StringBuilder sbM1769n = CompilerOutline.m1769n("can not open apk--packageName:", str, "--openApk -error:");
            sbM1769n.append(e.getMessage());
            m1403m(sbM1769n.toString());
            m1413w(context, context.getResources().getString(i), 0);
        }
    }

    /* renamed from: s */
    public static void m1409s(Context context, String str, boolean z) {
        try {
            Intent intent = new Intent(str);
            intent.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
            context.startActivity(intent);
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("can not open apk--openApkNoTip componentName -error:");
            sbM1765j.append(e.getMessage());
            m1403m(sbM1765j.toString());
            if (z) {
                Toast.makeText(context, context.getString(R$string.cannot_open_app), 0).show();
            }
        }
    }

    /* renamed from: t */
    public static void m1410t(Context context, String str, boolean z) {
        try {
            context.startActivity(context.getPackageManager().getLaunchIntentForPackage(str));
        } catch (Exception e) {
            if (z) {
                Toast.makeText(context, context.getString(R$string.cannot_open_app), 0).show();
            }
            CompilerOutline.m1776u(e, CompilerOutline.m1769n("can not open apk--packageName:", str, "--openApkNoTip -error:"));
        }
    }

    /* renamed from: u */
    public static void m1411u(String str, String str2) {
        if (f2292d) {
            if (f2293e == null) {
                throw new IllegalStateException("FileLogger is not initialized. Forgot to call FL.init()?");
            }
            FileConfig c0954fc = f2293e;
            FileConfig.b bVar = c0954fc.f2646a;
            if (!bVar.f2651e || TextUtils.isEmpty(bVar.f2649c)) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            FileConfig.c cVar = (FileConfig.c) c0954fc.f2646a.f2648b;
            cVar.f2655c.get().setTime(jCurrentTimeMillis);
            String str3 = cVar.f2654b.get().format(cVar.f2655c.get()) + "_00.txt";
            FileConfig.c cVar2 = (FileConfig.c) c0954fc.f2646a.f2648b;
            cVar2.f2655c.get().setTime(jCurrentTimeMillis);
            String str4 = String.format(Locale.ENGLISH, "%s %d-%d %s: %s", cVar2.f2653a.get().format(cVar2.f2655c.get()), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()), str, str2);
            FileLoggerService c1005hc = FileLoggerService.b.f2824a;
            FileConfig.b bVar2 = c0954fc.f2646a;
            Context context = bVar2.f2647a;
            String str5 = bVar2.f2649c;
            long j = bVar2.f2652f;
            if (!c1005hc.f2823b) {
                synchronized (c1005hc) {
                    if (!c1005hc.f2823b) {
                        c1005hc.f2823b = true;
                        m1392b("start file logger service thread");
                        c1005hc.new d(null).start();
                    }
                }
            }
            BlockingQueue<FileLoggerService.c> blockingQueue = c1005hc.f2822a;
            FileLoggerService.c.a aVar = new FileLoggerService.c.a();
            aVar.f2832a = context;
            aVar.f2833b = str3;
            aVar.f2834c = str5;
            aVar.f2835d = str4;
            aVar.f2836e = j;
            aVar.f2837f = true;
            if (blockingQueue.offer(new FileLoggerService.c(aVar))) {
                return;
            }
            m1390A("failed to add to file logger service queue");
        }
    }

    /* renamed from: v */
    public static void m1412v(boolean z) {
        f2292d = z;
        if (z) {
            f2291c = System.currentTimeMillis();
        } else {
            f2291c = 0L;
        }
    }

    /* renamed from: w */
    public static void m1413w(Context context, String str, int i) {
        Toast.makeText(context, str, i).show();
    }

    /* renamed from: x */
    public static void m1414x(Context context, int i) {
        m1413w(context, context.getResources().getString(i), 1);
    }

    /* renamed from: y */
    public static void m1415y(Context context, int i) {
        m1413w(context, context.getResources().getString(i), 0);
    }

    /* renamed from: z */
    public static boolean m1416z(String str, String str2) throws NoSuchAlgorithmException, IOException {
        String string;
        try {
            m1403m("APKUtil verifyDownloadedApk " + str);
            if (!C0930ee.m1681f(str)) {
                m1403m(" not exist" + str);
                return false;
            }
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            File file = new File(str);
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[4096];
            long length = file.length();
            long j = 0;
            while (j < length && !Thread.interrupted()) {
                int i = fileInputStream.read(bArr);
                j += i;
                messageDigest.update(bArr, 0, i);
            }
            fileInputStream.close();
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder("");
            if (bArrDigest == null || bArrDigest.length <= 0) {
                string = null;
            } else {
                for (int i2 = 0; i2 < bArrDigest.length; i2++) {
                    sb.append(Integer.toHexString((bArrDigest[i2] >> 4) & 15));
                    sb.append(Integer.toHexString(bArrDigest[i2] & 15));
                }
                string = sb.toString();
            }
            String lowerCase = string.toLowerCase();
            String lowerCase2 = str2.toLowerCase();
            m1403m("DownloadViewInfo  digestStr:" + lowerCase + "===crc " + lowerCase2);
            if (!lowerCase.equals(lowerCase2)) {
                return false;
            }
            m1403m("DownloadViewInfo verfiy sucess " + str);
            return true;
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("DownloadViewInfo verfiy failed ");
            sbM1765j.append(e.getMessage());
            m1403m(sbM1765j.toString());
            e.printStackTrace();
            return false;
        }
    }
}
