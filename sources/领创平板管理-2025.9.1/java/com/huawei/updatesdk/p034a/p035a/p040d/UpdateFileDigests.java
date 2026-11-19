package com.huawei.updatesdk.p034a.p035a.p040d;

import android.text.TextUtils;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.UpdateLogWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: com.huawei.updatesdk.a.a.d.d */
/* loaded from: classes.dex */
public abstract class UpdateFileDigests {
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* renamed from: a */
    public static String m3525a(String str, String str2) throws Throwable {
        FileInputStream fileInputStream;
        ?? IsEmpty = TextUtils.isEmpty(str);
        FileInputStream fileInputStream2 = null;
        strM3521a = null;
        strM3521a = null;
        strM3521a = null;
        strM3521a = null;
        strM3521a = null;
        strM3521a = null;
        strM3521a = null;
        strM3521a = null;
        strM3521a = null;
        strM3521a = null;
        String strM3521a = null;
        try {
            if (IsEmpty != 0) {
                return null;
            }
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str2);
                fileInputStream = new FileInputStream(str);
                try {
                    byte[] bArr = new byte[1024];
                    long j = 0;
                    while (true) {
                        int i = fileInputStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        messageDigest.update(bArr, 0, i);
                        j += i;
                    }
                    if (j > 0) {
                        strM3521a = UpdateDigestBuffer.m3521a(messageDigest.digest());
                    }
                } catch (FileNotFoundException e) {
                    e = e;
                    UpdateLogWriter.m3515a("FileUtil", "getFileHashData FileNotFoundException", e);
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    return strM3521a;
                } catch (IOException e2) {
                    e = e2;
                    UpdateLogWriter.m3515a("FileUtil", "getFileHashData IOException", e);
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    return strM3521a;
                } catch (IllegalArgumentException e3) {
                    e = e3;
                    UpdateLogWriter.m3515a("FileUtil", "getFileHashData IllegalArgumentException", e);
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    return strM3521a;
                } catch (IndexOutOfBoundsException e4) {
                    e = e4;
                    UpdateLogWriter.m3515a("FileUtil", "getFileHashData IndexOutOfBoundsException", e);
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    return strM3521a;
                } catch (NoSuchAlgorithmException e5) {
                    e = e5;
                    UpdateLogWriter.m3515a("FileUtil", "getFileHashData NoSuchAlgorithmException", e);
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    return strM3521a;
                }
            } catch (FileNotFoundException e6) {
                e = e6;
                fileInputStream = null;
            } catch (IOException e7) {
                e = e7;
                fileInputStream = null;
            } catch (IllegalArgumentException e8) {
                e = e8;
                fileInputStream = null;
            } catch (IndexOutOfBoundsException e9) {
                e = e9;
                fileInputStream = null;
            } catch (NoSuchAlgorithmException e10) {
                e = e10;
                fileInputStream = null;
            } catch (Throwable th) {
                th = th;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException unused) {
                        UpdateLogWriter.m3516b("FileUtil", "Close FileInputStream failed!");
                    }
                }
                throw th;
            }
            try {
                fileInputStream.close();
            } catch (IOException unused2) {
                UpdateLogWriter.m3516b("FileUtil", "Close FileInputStream failed!");
            }
            return strM3521a;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = IsEmpty;
        }
    }

    /* renamed from: a */
    public static void m3526a(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                UpdateLogWriter.m3515a("FileUtil", "Closeable exception", e);
            }
        }
    }

    /* renamed from: a */
    public static boolean m3527a(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        if (file.isFile()) {
            return file.delete();
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            for (File file2 : fileArrListFiles) {
                m3527a(file2);
            }
        }
        return file.delete();
    }
}
