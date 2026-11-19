package com.huawei.hem;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hms.common.internal.TransactionIdCreater;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: com.huawei.hem.mb */
/* loaded from: classes.dex */
public class C1130mb {

    /* renamed from: a */
    public static final Uri f3254a = Uri.parse("content://com.huawei.hwid");

    /* renamed from: b */
    public static final String[] f3255b = {"B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05", "E49D5C2C0E11B3B1B96CA56C6DE2A14EC7DAB5CCC3B5F300D03E5B4DBA44F539"};

    /* renamed from: a */
    public static String m2357a(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            StringBuilder sb = new StringBuilder();
            sb.append(context.createDeviceProtectedStorageContext().getFilesDir());
            return CompilerOutline.m1762g(sb, File.separator, "aegis");
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(context.getApplicationContext().getFilesDir());
        return CompilerOutline.m1762g(sb2, File.separator, "aegis");
    }

    /* renamed from: b */
    public static String m2358b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & Base64.EQUALS_SIGN_ENC);
            if (hexString.length() == 1) {
                sb.append(TransactionIdCreater.FILL_BYTE);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* renamed from: c */
    public static void m2359c(InputStream inputStream, Context context) throws Throwable {
        FileOutputStream fileOutputStream;
        String strM2357a = m2357a(context);
        if (!new File(strM2357a).exists() && !TextUtils.isEmpty(strM2357a)) {
            File file = new File(strM2357a);
            if (file.exists()) {
                Log.w(AbstractC1102l9.m2285h("BksUtil"), "The directory  has already exists");
            } else if (!file.mkdirs()) {
                AbstractC1102l9.m2264E("BksUtil", "create directory  failed");
            }
        }
        File file2 = new File(strM2357a, "hmsrootcas.bks");
        if (file2.exists()) {
            file2.delete();
        }
        ?? r7 = 0;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                AbstractC1102l9.m2267H("BksUtil", "write output stream ");
                fileOutputStream = new FileOutputStream(file2);
                r7 = 2048;
            } catch (Throwable th) {
                th = th;
                fileOutputStream = r7;
            }
        } catch (IOException unused) {
        }
        try {
            byte[] bArr = new byte[2048];
            while (true) {
                int i = inputStream.read(bArr, 0, 2048);
                if (i == -1) {
                    break;
                } else {
                    fileOutputStream.write(bArr, 0, i);
                }
            }
            AbstractC1102l9.m2303z(fileOutputStream);
        } catch (IOException unused2) {
            fileOutputStream2 = fileOutputStream;
            AbstractC1102l9.m2264E("BksUtil", " IOException");
            AbstractC1102l9.m2303z(fileOutputStream2);
            r7 = fileOutputStream2;
        } catch (Throwable th2) {
            th = th2;
            AbstractC1102l9.m2303z(fileOutputStream);
            throw th;
        }
    }

    /* renamed from: d */
    public static byte[] m2360d(Context context, String str) {
        PackageInfo packageInfo;
        if (context == null || TextUtils.isEmpty(str)) {
            Log.e("BksUtil", "packageName is null or context is null");
            return new byte[0];
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo(str, 64)) != null) {
                return packageInfo.signatures[0].toByteArray();
            }
        } catch (PackageManager.NameNotFoundException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("PackageManager.NameNotFoundException : ");
            sbM1765j.append(e.getMessage());
            Log.e("BksUtil", sbM1765j.toString());
        } catch (Exception e2) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("get pm exception : ");
            sbM1765j2.append(e2.getMessage());
            Log.e("BksUtil", sbM1765j2.toString());
        }
        return new byte[0];
    }

    /* renamed from: e */
    public static String m2361e(byte[] bArr) throws NoSuchAlgorithmException {
        if (bArr == null) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            return m2358b(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            AbstractC1102l9.m2264E("BksUtil", "inputstraem exception");
            return "";
        }
    }

    /* renamed from: f */
    public static boolean m2362f(String str) throws NumberFormatException {
        int i;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        AbstractC1102l9.m2267H("BksUtil", "hms version code is : " + str);
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = "4.0.2.300".split("\\.");
        int length = strArrSplit.length;
        int length2 = strArrSplit2.length;
        int iMax = Math.max(length, length2);
        int i2 = 0;
        while (i2 < iMax) {
            if (i2 < length) {
                try {
                    i = Integer.parseInt(strArrSplit[i2]);
                } catch (Exception e) {
                    StringBuilder sbM1765j = CompilerOutline.m1765j(" exception : ");
                    sbM1765j.append(e.getMessage());
                    AbstractC1102l9.m2264E("BksUtil", sbM1765j.toString());
                    return i2 >= length2;
                }
            } else {
                i = 0;
            }
            int i3 = i2 < length2 ? Integer.parseInt(strArrSplit2[i2]) : 0;
            if (i < i3) {
                return false;
            }
            if (i > i3) {
                return true;
            }
            i2++;
        }
        return true;
    }

    /* renamed from: g */
    public static String m2363g(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        try {
            return m2358b(MessageDigest.getInstance("SHA-256").digest(bArr));
        } catch (NoSuchAlgorithmException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("NoSuchAlgorithmException");
            sbM1765j.append(e.getMessage());
            Log.e("BksUtil", sbM1765j.toString());
            return "";
        }
    }

    /* renamed from: h */
    public static boolean m2364h(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(m2357a(context));
        return new File(CompilerOutline.m1762g(sb, File.separator, "hmsrootcas.bks")).exists();
    }

    /* renamed from: i */
    public static synchronized InputStream m2365i(Context context) {
        boolean z;
        InputStream byteArrayInputStream;
        InputStream inputStreamOpenInputStream;
        AbstractC1102l9.m2267H("BksUtil", "get bks from tss begin");
        if (context != null) {
            AbstractC1102l9.m2289l(context);
        }
        Context context2 = AbstractC1102l9.f3159b;
        InputStream inputStream = null;
        if (context2 == null) {
            AbstractC1102l9.m2264E("BksUtil", "context is null");
            return null;
        }
        if (!m2362f(C1180ob.m2431a("com.huawei.hwid")) && !m2362f(C1180ob.m2431a("com.huawei.hms"))) {
            AbstractC1102l9.m2264E("BksUtil", "hms version code is too low : " + C1180ob.m2431a("com.huawei.hwid"));
            return null;
        }
        byte[] bArrM2360d = m2360d(context2, "com.huawei.hwid");
        String[] strArr = f3255b;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            }
            if (strArr[i].equalsIgnoreCase(m2363g(bArrM2360d))) {
                z = true;
                break;
            }
            i++;
        }
        if (!z && !"E49D5C2C0E11B3B1B96CA56C6DE2A14EC7DAB5CCC3B5F300D03E5B4DBA44F539".equalsIgnoreCase(m2363g(m2360d(context2, "com.huawei.hms")))) {
            AbstractC1102l9.m2264E("BksUtil", "hms sign error");
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            inputStreamOpenInputStream = context2.getContentResolver().openInputStream(Uri.withAppendedPath(f3254a, "files/hmsrootcas.bks"));
        } catch (Exception unused) {
            byteArrayInputStream = null;
        } catch (Throwable th) {
            th = th;
            byteArrayInputStream = null;
            AbstractC1102l9.m2294q(inputStream);
            AbstractC1102l9.m2303z(byteArrayOutputStream);
            AbstractC1102l9.m2294q(byteArrayInputStream);
            throw th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i2 = inputStreamOpenInputStream.read(bArr);
                if (i2 <= -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            }
            byteArrayOutputStream.flush();
            byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
            try {
                String string = C1205pb.m2462a(context2).getString("bks_hash", "");
                String strM2361e = m2361e(byteArrayOutputStream.toByteArray());
                if (m2364h(context2) && string.equals(strM2361e)) {
                    AbstractC1102l9.m2267H("BksUtil", "bks not update");
                } else {
                    AbstractC1102l9.m2267H("BksUtil", "update bks and sp");
                    m2359c(byteArrayInputStream, context2);
                    C1205pb.m2462a(context2).edit().putString("bks_hash", strM2361e).apply();
                }
                AbstractC1102l9.m2294q(inputStreamOpenInputStream);
                AbstractC1102l9.m2303z(byteArrayOutputStream);
                AbstractC1102l9.m2294q(byteArrayInputStream);
            } catch (Exception unused2) {
                inputStream = inputStreamOpenInputStream;
                try {
                    AbstractC1102l9.m2264E("BksUtil", "Get bks from HMS_VERSION_CODE exception : No content provider");
                    AbstractC1102l9.m2294q(inputStream);
                    AbstractC1102l9.m2303z(byteArrayOutputStream);
                    AbstractC1102l9.m2294q(byteArrayInputStream);
                    return m2366j(context2);
                } catch (Throwable th2) {
                    th = th2;
                    inputStreamOpenInputStream = inputStream;
                    inputStream = byteArrayInputStream;
                    byteArrayInputStream = inputStream;
                    inputStream = inputStreamOpenInputStream;
                    AbstractC1102l9.m2294q(inputStream);
                    AbstractC1102l9.m2303z(byteArrayOutputStream);
                    AbstractC1102l9.m2294q(byteArrayInputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStream = inputStreamOpenInputStream;
                AbstractC1102l9.m2294q(inputStream);
                AbstractC1102l9.m2303z(byteArrayOutputStream);
                AbstractC1102l9.m2294q(byteArrayInputStream);
                throw th;
            }
        } catch (Exception unused3) {
            byteArrayInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            byteArrayInputStream = inputStream;
            inputStream = inputStreamOpenInputStream;
            AbstractC1102l9.m2294q(inputStream);
            AbstractC1102l9.m2303z(byteArrayOutputStream);
            AbstractC1102l9.m2294q(byteArrayInputStream);
            throw th;
        }
        return m2366j(context2);
    }

    /* renamed from: j */
    public static InputStream m2366j(Context context) {
        if (!m2364h(context)) {
            return null;
        }
        AbstractC1102l9.m2267H("BksUtil", "getFilesBksIS ");
        try {
            return new FileInputStream(m2357a(context) + File.separator + "hmsrootcas.bks");
        } catch (FileNotFoundException unused) {
            AbstractC1102l9.m2264E("BksUtil", "FileNotFoundExceptio: ");
            return null;
        }
    }
}
