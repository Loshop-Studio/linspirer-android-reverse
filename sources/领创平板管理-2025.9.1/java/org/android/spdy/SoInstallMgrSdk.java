package org.android.spdy;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.alibaba.sdk.android.tbrest.utils.DeviceUtils;
import com.huawei.hem.C0948f6;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public class SoInstallMgrSdk {
    public static final String ARMEABI = "armeabi";
    public static final int EventID_SO_INIT = 21033;
    public static final String LOGTAG = "INIT_SO";
    public static final String MIPS = "mips";
    public static final String X86 = "x86";
    public static Context mContext;

    public static String _cpuType() {
        String str_getFieldReflectively = _getFieldReflectively(new Build(), "CPU_ABI");
        if (str_getFieldReflectively == null || str_getFieldReflectively.length() == 0 || str_getFieldReflectively.equals(DeviceUtils.NETWORK_CLASS_UNKNOWN)) {
            str_getFieldReflectively = ARMEABI;
        }
        return str_getFieldReflectively.toLowerCase();
    }

    public static String _getFieldReflectively(Build build, String str) {
        try {
            return Build.class.getField(str).get(build).toString();
        } catch (Exception unused) {
            return DeviceUtils.NETWORK_CLASS_UNKNOWN;
        }
    }

    public static boolean _loadUnzipSo(String str, int i, ClassLoader classLoader) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            if (isExist(str, i)) {
                if (classLoader == null) {
                    System.load(_targetSoFile(str, i));
                } else {
                    Runtime runtime = Runtime.getRuntime();
                    Method declaredMethod = Runtime.class.getDeclaredMethod("load", String.class, ClassLoader.class);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(runtime, _targetSoFile(str, i), classLoader);
                }
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } catch (UnsatisfiedLinkError e2) {
            e2.printStackTrace();
            return false;
        } catch (Error e3) {
            e3.printStackTrace();
            return false;
        }
    }

    public static String _targetSoFile(String str, int i) {
        Context context = mContext;
        if (context == null) {
            return "";
        }
        StringBuilder sbM1765j = C0948f6.m1765j("/data/data/");
        sbM1765j.append(context.getPackageName());
        sbM1765j.append("/files");
        String string = sbM1765j.toString();
        File filesDir = context.getFilesDir();
        if (filesDir != null) {
            string = filesDir.getPath();
        }
        return string + "/lib" + str + "bk" + i + ".so";
    }

    public static void init(Context context) {
        mContext = context;
    }

    public static boolean initSo(String str, int i) {
        return initSo(str, i, null);
    }

    public static boolean isExist(String str, int i) {
        return new File(_targetSoFile(str, i)).exists();
    }

    public static void removeSoIfExit(String str, int i) {
        File file = new File(_targetSoFile(str, i));
        if (file.exists()) {
            file.delete();
        }
    }

    public static boolean unZipSelectedFiles(String str, int i, ClassLoader classLoader) throws Throwable {
        Context context;
        FileChannel fileChannel;
        FileOutputStream fileOutputStreamOpenFileOutput;
        String strM1761f = C0948f6.m1761f("lib/armeabi/lib", str, ".so");
        try {
            context = mContext;
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (context == null) {
            return false;
        }
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        ZipFile zipFile = new ZipFile(applicationInfo != null ? applicationInfo.sourceDir : "");
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        while (enumerationEntries.hasMoreElements()) {
            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
            String name = zipEntryNextElement.getName();
            if (!name.contains("..") && !name.contains("\\") && !name.contains("%")) {
                if (zipEntryNextElement.getName().startsWith(strM1761f)) {
                    InputStream inputStream = null;
                    channel = null;
                    FileChannel channel = null;
                    try {
                        removeSoIfExit(str, i);
                        InputStream inputStream2 = zipFile.getInputStream(zipEntryNextElement);
                        try {
                            fileOutputStreamOpenFileOutput = context.openFileOutput("lib" + str + "bk" + i + ".so", 0);
                            try {
                                channel = fileOutputStreamOpenFileOutput.getChannel();
                                byte[] bArr = new byte[1024];
                                int i2 = 0;
                                while (true) {
                                    int i3 = inputStream2.read(bArr);
                                    if (i3 > 0) {
                                        channel.write(ByteBuffer.wrap(bArr, 0, i3));
                                        i2 += i3;
                                    } else {
                                        try {
                                            break;
                                        } catch (Exception e2) {
                                            e2.printStackTrace();
                                        }
                                    }
                                }
                                inputStream2.close();
                                if (channel != null) {
                                    try {
                                        channel.close();
                                    } catch (Exception e3) {
                                        e3.printStackTrace();
                                    }
                                }
                                try {
                                    fileOutputStreamOpenFileOutput.close();
                                } catch (Exception e4) {
                                    e4.printStackTrace();
                                }
                                zipFile.close();
                                if (i2 > 0) {
                                    return _loadUnzipSo(str, i, classLoader);
                                }
                                return false;
                            } catch (Throwable th) {
                                th = th;
                                fileChannel = channel;
                                inputStream = inputStream2;
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (Exception e5) {
                                        e5.printStackTrace();
                                    }
                                }
                                if (fileChannel != null) {
                                    try {
                                        fileChannel.close();
                                    } catch (Exception e6) {
                                        e6.printStackTrace();
                                    }
                                }
                                if (fileOutputStreamOpenFileOutput != null) {
                                    try {
                                        fileOutputStreamOpenFileOutput.close();
                                    } catch (Exception e7) {
                                        e7.printStackTrace();
                                    }
                                }
                                zipFile.close();
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStreamOpenFileOutput = null;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        fileChannel = null;
                        fileOutputStreamOpenFileOutput = null;
                    }
                }
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x003d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean initSo(java.lang.String r7, int r8, java.lang.ClassLoader r9) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            r0 = 1
            r1 = 0
            if (r9 != 0) goto L8
            java.lang.System.loadLibrary(r7)     // Catch: java.lang.Error -> L2c java.lang.UnsatisfiedLinkError -> L31 java.lang.Exception -> L36
            goto L3b
        L8:
            java.lang.Runtime r2 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Error -> L2c java.lang.UnsatisfiedLinkError -> L31 java.lang.Exception -> L36
            r3 = 2
            java.lang.Class[] r4 = new java.lang.Class[r3]     // Catch: java.lang.Error -> L2c java.lang.UnsatisfiedLinkError -> L31 java.lang.Exception -> L36
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            r4[r1] = r5     // Catch: java.lang.Error -> L2c java.lang.UnsatisfiedLinkError -> L31 java.lang.Exception -> L36
            java.lang.Class<java.lang.ClassLoader> r5 = java.lang.ClassLoader.class
            r4[r0] = r5     // Catch: java.lang.Error -> L2c java.lang.UnsatisfiedLinkError -> L31 java.lang.Exception -> L36
            java.lang.Class<java.lang.Runtime> r5 = java.lang.Runtime.class
            java.lang.String r6 = "loadLibrary"
            java.lang.reflect.Method r4 = r5.getDeclaredMethod(r6, r4)     // Catch: java.lang.Error -> L2c java.lang.UnsatisfiedLinkError -> L31 java.lang.Exception -> L36
            r4.setAccessible(r0)     // Catch: java.lang.Error -> L2c java.lang.UnsatisfiedLinkError -> L31 java.lang.Exception -> L36
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Error -> L2c java.lang.UnsatisfiedLinkError -> L31 java.lang.Exception -> L36
            r3[r1] = r7     // Catch: java.lang.Error -> L2c java.lang.UnsatisfiedLinkError -> L31 java.lang.Exception -> L36
            r3[r0] = r9     // Catch: java.lang.Error -> L2c java.lang.UnsatisfiedLinkError -> L31 java.lang.Exception -> L36
            r4.invoke(r2, r3)     // Catch: java.lang.Error -> L2c java.lang.UnsatisfiedLinkError -> L31 java.lang.Exception -> L36
            goto L3b
        L2c:
            r0 = move-exception
            r0.printStackTrace()
            goto L3a
        L31:
            r0 = move-exception
            r0.printStackTrace()
            goto L3a
        L36:
            r0 = move-exception
            r0.printStackTrace()
        L3a:
            r0 = r1
        L3b:
            if (r0 != 0) goto L81
            boolean r2 = isExist(r7, r8)     // Catch: java.lang.Error -> L72 java.lang.UnsatisfiedLinkError -> L77 java.lang.Exception -> L7c
            if (r2 == 0) goto L4d
            boolean r2 = _loadUnzipSo(r7, r8, r9)     // Catch: java.lang.Error -> L72 java.lang.UnsatisfiedLinkError -> L77 java.lang.Exception -> L7c
            if (r2 == 0) goto L4a
            return r2
        L4a:
            removeSoIfExit(r7, r8)     // Catch: java.lang.Error -> L72 java.lang.UnsatisfiedLinkError -> L77 java.lang.Exception -> L7c
        L4d:
            java.lang.String r2 = _cpuType()     // Catch: java.lang.Error -> L72 java.lang.UnsatisfiedLinkError -> L77 java.lang.Exception -> L7c
            java.lang.String r3 = "mips"
            boolean r3 = r2.equalsIgnoreCase(r3)     // Catch: java.lang.Error -> L72 java.lang.UnsatisfiedLinkError -> L77 java.lang.Exception -> L7c
            if (r3 != 0) goto L81
            java.lang.String r3 = "x86"
            boolean r2 = r2.equalsIgnoreCase(r3)     // Catch: java.lang.Error -> L72 java.lang.UnsatisfiedLinkError -> L77 java.lang.Exception -> L7c
            if (r2 == 0) goto L62
            goto L81
        L62:
            boolean r7 = unZipSelectedFiles(r7, r8, r9)     // Catch: java.io.IOException -> L68 java.util.zip.ZipException -> L6d java.lang.Error -> L72 java.lang.UnsatisfiedLinkError -> L77 java.lang.Exception -> L7c
            r1 = r7
            goto L82
        L68:
            r7 = move-exception
            r7.printStackTrace()     // Catch: java.lang.Error -> L72 java.lang.UnsatisfiedLinkError -> L77 java.lang.Exception -> L7c
            goto L81
        L6d:
            r7 = move-exception
            r7.printStackTrace()     // Catch: java.lang.Error -> L72 java.lang.UnsatisfiedLinkError -> L77 java.lang.Exception -> L7c
            goto L81
        L72:
            r7 = move-exception
            r7.printStackTrace()
            goto L82
        L77:
            r7 = move-exception
            r7.printStackTrace()
            goto L82
        L7c:
            r7 = move-exception
            r7.printStackTrace()
            goto L82
        L81:
            r1 = r0
        L82:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.android.spdy.SoInstallMgrSdk.initSo(java.lang.String, int, java.lang.ClassLoader):boolean");
    }
}
