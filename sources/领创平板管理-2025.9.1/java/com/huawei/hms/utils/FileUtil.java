package com.huawei.hms.utils;

import android.content.Context;
import com.huawei.hms.support.log.HMSLog;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public abstract class FileUtil {
    public static final String LOCAL_REPORT_FILE = "hms/HwMobileServiceReport.txt";
    public static final String LOCAL_REPORT_FILE_CONFIG = "hms/config.txt";
    public static final long LOCAL_REPORT_FILE_MAX_SIZE = 10240;

    /* renamed from: a */
    public static boolean f4589a = false;

    /* renamed from: b */
    public static ScheduledExecutorService f4590b = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: com.huawei.hms.utils.FileUtil$a */
    public static class HmsWriteFileTask implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ File f4591a;

        /* renamed from: b */
        public final /* synthetic */ long f4592b;

        /* renamed from: c */
        public final /* synthetic */ String f4593c;

        public HmsWriteFileTask(File file, long j, String str) {
            this.f4591a = file;
            this.f4592b = j;
            this.f4593c = str;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            File file = this.f4591a;
            if (file == null) {
                HMSLog.m3461e("FileUtil", "In writeFile Failed to get local file.");
                return;
            }
            File parentFile = file.getParentFile();
            if (parentFile == null || !(parentFile.mkdirs() || parentFile.isDirectory())) {
                HMSLog.m3461e("FileUtil", "In writeFile, Failed to create directory.");
                return;
            }
            RandomAccessFile randomAccessFile = null;
            try {
                try {
                    long length = this.f4591a.length();
                    if (length > this.f4592b) {
                        String canonicalPath = this.f4591a.getCanonicalPath();
                        if (!this.f4591a.delete()) {
                            HMSLog.m3461e("FileUtil", "last file delete failed.");
                        }
                        randomAccessFile = new RandomAccessFile(new File(canonicalPath), "rw");
                    } else {
                        RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.f4591a, "rw");
                        try {
                            randomAccessFile2.seek(length);
                            randomAccessFile = randomAccessFile2;
                        } catch (IOException e) {
                            e = e;
                            randomAccessFile = randomAccessFile2;
                            HMSLog.m3462e("FileUtil", "writeFile exception:", e);
                            IOUtils.closeQuietly(randomAccessFile);
                        } catch (Throwable th) {
                            th = th;
                            randomAccessFile = randomAccessFile2;
                            IOUtils.closeQuietly(randomAccessFile);
                            throw th;
                        }
                    }
                    randomAccessFile.writeBytes(this.f4593c + System.getProperty("line.separator"));
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e2) {
                e = e2;
            }
            IOUtils.closeQuietly(randomAccessFile);
        }
    }

    public static boolean verifyHash(String str, File file) throws Throwable {
        byte[] bArrDigest = SHA256.digest(file);
        return bArrDigest != null && HEX.encodeHexString(bArrDigest, true).equalsIgnoreCase(str);
    }

    public static void writeFile(File file, String str, long j) {
        f4590b.execute(new HmsWriteFileTask(file, j, str));
    }

    public static void writeFileReport(Context context, File file, File file2, String str, long j, int i) {
        if (file != null && file.isFile() && file.exists()) {
            if (!f4589a) {
                if (file2 != null && file2.exists() && !file2.delete()) {
                    HMSLog.m3461e("FileUtil", "file delete failed.");
                }
                f4589a = true;
            }
            writeFile(file2, str + "|" + j + "|" + i, LOCAL_REPORT_FILE_MAX_SIZE);
        }
    }
}
