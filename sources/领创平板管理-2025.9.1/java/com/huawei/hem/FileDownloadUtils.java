package com.huawei.hem;

import android.app.ActivityManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.os.Process;
import android.text.TextUtils;
import anet.channel.util.HttpConstant;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hem.FileDownloadProperties;
import com.huawei.hem.ConnectionProfile;
import com.huawei.hem.CustomComponentHolder;
import com.huawei.hem.FileDownloadRandomAccessFile;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import org.android.agoo.message.MessageService;

/* compiled from: FileDownloadUtils.java */
/* renamed from: com.huawei.hem.hh */
/* loaded from: classes.dex */
public class FileDownloadUtils {

    /* renamed from: a */
    public static int f2867a = 65536;

    /* renamed from: b */
    public static long f2868b = 2000;

    /* renamed from: c */
    public static Boolean f2869c;

    /* renamed from: d */
    public static final Pattern f2870d = Pattern.compile("attachment;\\s*filename\\*\\s*=\\s*\"*([^\"]*)'\\S*'([^\"]*)\"*");

    /* renamed from: e */
    public static final Pattern f2871e = Pattern.compile("attachment;\\s*filename\\s*=\\s*\"*([^\"\\n]*)\"*");

    /* renamed from: a */
    public static FileDownloadOutputStream m1951a(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("found invalid internal destination path, empty");
        }
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            throw new RuntimeException(m1955e("found invalid internal destination path[%s], & path is directory[%B]", str, Boolean.valueOf(file.isDirectory())));
        }
        if (!file.exists() && !file.createNewFile()) {
            throw new IOException(m1955e("create new file error  %s", file.getAbsolutePath()));
        }
        if (((FileDownloadRandomAccessFile.a) CustomComponentHolder.a.f3463a.m2483e()) != null) {
            return new FileDownloadRandomAccessFile(file);
        }
        throw null;
    }

    /* renamed from: b */
    public static String m1952b() {
        return m1955e("FileDownloader/%s", "1.7.7");
    }

    /* renamed from: c */
    public static void m1953c(String str, String str2) {
        if (str2 != null) {
            File file = new File(str2);
            if (file.exists()) {
                file.delete();
            }
        }
        if (str != null) {
            File file2 = new File(str);
            if (file2.exists()) {
                file2.delete();
            }
        }
    }

    /* renamed from: d */
    public static long m1954d(int i, FileDownloadConnection interfaceC0983gf) throws NumberFormatException {
        long j;
        String headerField = ((FileDownloadUrlConnection) interfaceC0983gf).f2865a.getHeaderField(HttpConstant.CONTENT_LENGTH);
        if (headerField == null) {
            j = -1;
        } else {
            try {
                j = Long.parseLong(headerField);
            } catch (NumberFormatException unused) {
            }
        }
        String headerField2 = ((FileDownloadUrlConnection) interfaceC0983gf).f2865a.getHeaderField("Transfer-Encoding");
        if (j >= 0) {
            return j;
        }
        if ((headerField2 != null && headerField2.equals("chunked")) || FileDownloadProperties.b.f2783a.f2777c) {
            return -1L;
        }
        throw new FileDownloadGiveUpRetryException("can't know the size of the download file, and its Transfer-Encoding is not Chunked either.\nyou can ignore such exception by add http.lenient=true to the filedownloader.properties");
    }

    /* renamed from: e */
    public static String m1955e(String str, Object... objArr) {
        return String.format(Locale.ENGLISH, str, objArr);
    }

    /* renamed from: f */
    public static String m1956f(String str, String str2) {
        if (str2 == null) {
            throw new IllegalStateException("can't generate real path, the file name is null");
        }
        if (str != null) {
            return m1955e("%s%s%s", str, File.separator, str2);
        }
        throw new IllegalStateException("can't generate real path, the directory is null");
    }

    /* renamed from: g */
    public static int m1957g(String str, String str2) {
        return ((DefaultIdGenerator) CustomComponentHolder.a.f3463a.m2482d()).m2484a(str, str2, false);
    }

    /* renamed from: h */
    public static int m1958h(String str, String str2, boolean z) {
        return ((DefaultIdGenerator) CustomComponentHolder.a.f3463a.m2482d()).m2484a(str, str2, z);
    }

    /* renamed from: i */
    public static String m1959i(String str) {
        String absolutePath = null;
        if (TextUtils.isEmpty(null)) {
            boolean z = false;
            if (ConnectionProfile.b.f3400a.getExternalCacheDir() != null && Environment.getExternalStorageState().equals("mounted") && Environment.getExternalStorageDirectory().getFreeSpace() > 0) {
                z = true;
            }
            absolutePath = z ? ConnectionProfile.b.f3400a.getExternalCacheDir().getAbsolutePath() : ConnectionProfile.b.f3400a.getCacheDir().getAbsolutePath();
        }
        return m1956f(absolutePath, m1968r(str));
    }

    /* renamed from: j */
    public static String m1960j(String str) {
        int length = str.length();
        int i = (File.separatorChar == '\\' && length > 2 && str.charAt(1) == ':') ? 2 : 0;
        int iLastIndexOf = str.lastIndexOf(File.separatorChar);
        int i2 = (iLastIndexOf != -1 || i <= 0) ? iLastIndexOf : 2;
        if (i2 == -1) {
            return null;
        }
        char cCharAt = str.charAt(length - 1);
        char c = File.separatorChar;
        if (cCharAt == c) {
            return null;
        }
        return (str.indexOf(c) == i2 && str.charAt(i) == File.separatorChar) ? str.substring(0, i2 + 1) : str.substring(0, i2);
    }

    /* renamed from: k */
    public static String m1961k(String str, boolean z, String str2) {
        if (str == null) {
            return null;
        }
        if (!z) {
            return str;
        }
        if (str2 == null) {
            return null;
        }
        return m1956f(str, str2);
    }

    /* renamed from: l */
    public static String m1962l(String str) {
        return CompilerOutline.m1760e("FileDownloader-", str);
    }

    /* renamed from: m */
    public static boolean m1963m(int i, FileDownloadModel fileDownloadModel) {
        if (fileDownloadModel == null || fileDownloadModel.m3929d() == null) {
            return false;
        }
        return m1964n(i, fileDownloadModel, fileDownloadModel.m3929d(), null);
    }

    /* renamed from: n */
    public static boolean m1964n(int i, FileDownloadModel fileDownloadModel, String str, Boolean bool) {
        if (str != null) {
            File file = new File(str);
            boolean zExists = file.exists();
            boolean zIsDirectory = file.isDirectory();
            if (zExists && !zIsDirectory) {
                long length = file.length();
                long jM3926a = fileDownloadModel.m3926a();
                if (fileDownloadModel.f4844k > 1 || jM3926a != 0) {
                    long j = fileDownloadModel.f4841h;
                    if (length >= jM3926a && ((j == -1 || (length <= j && jM3926a < j)) && (bool == null || bool.booleanValue() || j != length))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: o */
    public static boolean m1965o(Context context) {
        Boolean bool = f2869c;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean zEndsWith = false;
        if (!FileDownloadProperties.b.f2783a.f2778d) {
            int iMyPid = Process.myPid();
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null) {
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
                if (runningAppProcesses != null && !runningAppProcesses.isEmpty()) {
                    Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        ActivityManager.RunningAppProcessInfo next = it.next();
                        if (next.pid == iMyPid) {
                            zEndsWith = next.processName.endsWith(":filedownloader");
                            break;
                        }
                    }
                } else {
                    FileDownloadLog.m1821e(FileDownloadUtils.class, "The running app process info list from ActivityManager is null or empty, maybe current App is not running.", new Object[0]);
                    return false;
                }
            } else {
                FileDownloadLog.m1821e(FileDownloadUtils.class, "fail to get the activity manager!", new Object[0]);
                return false;
            }
        } else {
            zEndsWith = true;
        }
        Boolean boolValueOf = Boolean.valueOf(zEndsWith);
        f2869c = boolValueOf;
        return boolValueOf.booleanValue();
    }

    /* renamed from: p */
    public static boolean m1966p() {
        ConnectivityManager connectivityManager = (ConnectivityManager) ConnectionProfile.b.f3400a.getSystemService("connectivity");
        if (connectivityManager == null) {
            FileDownloadLog.m1821e(FileDownloadUtils.class, "failed to get connectivity manager!", new Object[0]);
            return true;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo == null || activeNetworkInfo.getType() != 1;
    }

    /* renamed from: q */
    public static void m1967q(Context context) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getAbsolutePath());
        File file = new File(CompilerOutline.m1762g(sb, File.separator, "filedownloader"), ".old_file_converted");
        try {
            file.getParentFile().mkdirs();
            file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: r */
    public static String m1968r(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b : bArrDigest) {
                int i = b & Base64.EQUALS_SIGN_ENC;
                if (i < 16) {
                    sb.append(MessageService.MSG_DB_READY_REPORT);
                }
                sb.append(Integer.toHexString(i));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Huh, UTF-8 should be supported?", e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("Huh, MD5 should be supported?", e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m1969s(android.content.Context r5) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 1
            r2 = 0
            r3 = 26
            if (r0 < r3) goto L5b
            android.content.Context r0 = r5.getApplicationContext()
            java.lang.String r3 = "activity"
            java.lang.Object r0 = r0.getSystemService(r3)
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0
            if (r0 != 0) goto L18
        L16:
            r5 = r2
            goto L58
        L18:
            java.util.List r0 = r0.getRunningAppProcesses()
            if (r0 != 0) goto L1f
            goto L16
        L1f:
            java.lang.String r3 = "power"
            java.lang.Object r3 = r5.getSystemService(r3)
            android.os.PowerManager r3 = (android.os.PowerManager) r3
            if (r3 != 0) goto L2a
            goto L16
        L2a:
            boolean r3 = r3.isInteractive()
            if (r3 != 0) goto L31
            goto L16
        L31:
            android.content.Context r5 = r5.getApplicationContext()
            java.lang.String r5 = r5.getPackageName()
            java.util.Iterator r0 = r0.iterator()
        L3d:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L16
            java.lang.Object r3 = r0.next()
            android.app.ActivityManager$RunningAppProcessInfo r3 = (android.app.ActivityManager.RunningAppProcessInfo) r3
            java.lang.String r4 = r3.processName
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L3d
            int r3 = r3.importance
            r4 = 100
            if (r3 != r4) goto L3d
            r5 = r1
        L58:
            if (r5 != 0) goto L5b
            goto L5c
        L5b:
            r1 = r2
        L5c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1010hh.m1969s(android.content.Context):boolean");
    }
}
