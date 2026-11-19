package com.loc;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import com.huawei.hem.C1094l1;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;

/* compiled from: FileStorageModel.java */
/* renamed from: com.loc.m */
/* loaded from: classes.dex */
public final class FileStorageModel {

    /* renamed from: a */
    public static final String f5901a = C1094l1.m2251t("SYmFja3Vwcw");

    /* renamed from: b */
    public static final String f5902b = C1094l1.m2251t("SLmFkaXU");

    /* renamed from: c */
    public static final String f5903c = C1094l1.m2251t("JIw");

    /* renamed from: a */
    public static String m5268a(Context context) {
        File externalFilesDir;
        if (Build.VERSION.SDK_INT >= 31 || (context.getApplicationInfo().targetSdkVersion >= 30 && Build.VERSION.SDK_INT >= 30)) {
            externalFilesDir = context.getApplicationContext().getExternalFilesDir("");
        } else {
            StorageManager storageManager = (StorageManager) context.getSystemService("storage");
            try {
                Class<?> cls = Class.forName(C1094l1.m2251t("SYW5kcm9pZC5vcy5zdG9yYWdlLlN0b3JhZ2VWb2x1bWU"));
                Method method = storageManager.getClass().getMethod(C1094l1.m2251t("FZ2V0Vm9sdW1lTGlzdA"), new Class[0]);
                Method method2 = cls.getMethod(C1094l1.m2251t("ZZ2V0UGF0aA"), new Class[0]);
                Method method3 = cls.getMethod(C1094l1.m2251t("AaXNSZW1vdmFibGUK"), new Class[0]);
                Object objInvoke = method.invoke(storageManager, new Object[0]);
                int length = Array.getLength(objInvoke);
                for (int i = 0; i < length; i++) {
                    Object obj = Array.get(objInvoke, i);
                    String str = (String) method2.invoke(obj, new Object[0]);
                    if (!((Boolean) method3.invoke(obj, new Object[0])).booleanValue()) {
                        return str;
                    }
                }
                return null;
            } catch (Throwable unused) {
                externalFilesDir = Environment.getExternalStorageDirectory();
            }
        }
        return externalFilesDir.getAbsolutePath();
    }

    /* renamed from: a */
    public static synchronized void m5269a(Context context, String str, String str2) {
        FileChannel channel;
        RandomAccessFile randomAccessFile;
        String strM5268a = m5268a(context);
        if (TextUtils.isEmpty(strM5268a)) {
            return;
        }
        String str3 = str + f5903c + str2;
        File file = new File(strM5268a + File.separator + f5901a);
        File file2 = new File(file, f5902b);
        FileLock fileLockTryLock = null;
        try {
            if (!file.exists() || file.isDirectory()) {
                file.mkdirs();
            }
            file2.createNewFile();
            randomAccessFile = new RandomAccessFile(file2, "rws");
            try {
                channel = randomAccessFile.getChannel();
            } catch (Throwable unused) {
                channel = null;
            }
        } catch (Throwable unused2) {
            channel = null;
            randomAccessFile = null;
        }
        try {
            fileLockTryLock = channel.tryLock();
            if (fileLockTryLock != null) {
                channel.write(ByteBuffer.wrap(str3.getBytes("UTF-8")));
            }
            if (fileLockTryLock != null) {
                try {
                    fileLockTryLock.release();
                } catch (IOException unused3) {
                }
            }
            try {
                channel.close();
            } catch (IOException unused4) {
            }
            try {
                randomAccessFile.close();
            } catch (Throwable unused5) {
            }
        } catch (Throwable unused6) {
            if (fileLockTryLock != null) {
                try {
                    fileLockTryLock.release();
                } catch (IOException unused7) {
                }
            }
            if (channel != null) {
                try {
                    channel.close();
                } catch (IOException unused8) {
                }
            }
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (Throwable unused9) {
                }
            }
        }
    }
}
