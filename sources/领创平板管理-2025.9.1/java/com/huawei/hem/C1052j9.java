package com.huawei.hem;

import com.huawei.hms.framework.network.grs.GrsManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/* renamed from: com.huawei.hem.j9 */
/* loaded from: classes.dex */
public class C1052j9 {

    /* renamed from: a */
    public String f2939a = LauncherMenuHelper.m2998s().getFilesDir().getPath();

    /* renamed from: e */
    public static boolean m2120e(File file) {
        File[] fileArrListFiles;
        if (!file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length == 0) {
            return false;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isFile()) {
                if (!file2.delete()) {
                    StringBuilder sbM1765j = CompilerOutline.m1765j("delete file failed : ");
                    sbM1765j.append(file2.getName());
                    C1404xa.m2937d("hmsSdk", sbM1765j.toString());
                }
            } else if (file2.isDirectory()) {
                m2120e(file2);
            }
        }
        return file.delete();
    }

    /* renamed from: f */
    public static boolean m2121f() {
        return m2120e(new File(LauncherMenuHelper.m2998s().getFilesDir().getPath() + GrsManager.SEPARATOR + "hms"));
    }

    /* renamed from: a */
    public final String m2122a(String str) {
        return this.f2939a + "/hms/component/".replace("component", str);
    }

    /* renamed from: b */
    public final void m2123b(String str, String str2) throws Throwable {
        File file = new File(m2122a(str));
        File file2 = new File(m2122a(str), CompilerOutline.m1760e("hianalytics_", str));
        if (!file.exists() && file.mkdirs()) {
            C1404xa.m2937d("hmsSdk", "file directory is mkdirs");
        }
        if (m2124c(file2)) {
            AbstractC1102l9.m2293p(file2, str2);
        } else {
            C1404xa.m2940g("hmsSdk", "refreshComponent():file is not found,and file is create failed");
        }
    }

    /* renamed from: c */
    public final boolean m2124c(File file) {
        if (file.exists()) {
            return true;
        }
        try {
            return file.createNewFile();
        } catch (IOException unused) {
            C1404xa.m2940g("hmsSdk", "create new file error!");
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v9, types: [byte[]] */
    /* renamed from: d */
    public final String m2125d(String str) throws Throwable {
        FileInputStream fileInputStream;
        String str2;
        FileInputStream fileInputStream2;
        ?? r1;
        int i;
        byte[] bArr;
        File file = new File(m2122a(str), CompilerOutline.m1760e("hianalytics_", str));
        if (!m2124c(file)) {
            String strM1674b = C0927eb.m1674b(128);
            AbstractC1102l9.m2293p(file, strM1674b);
            return strM1674b;
        }
        FileInputStream fileInputStream3 = null;
        FileInputStream fileInputStream4 = null;
        FileInputStream fileInputStream5 = null;
        try {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream3;
            }
        } catch (FileNotFoundException unused) {
        } catch (IOException unused2) {
        }
        try {
            r1 = new byte[1024];
            byte[] bArr2 = new byte[1024];
            i = 0;
            while (true) {
                int i2 = fileInputStream.read(bArr2);
                if (i2 == -1) {
                    break;
                }
                if (i2 > 0) {
                    if (r1.length - i >= i2) {
                        System.arraycopy(bArr2, 0, r1, i, i2);
                        r1 = r1;
                    } else {
                        byte[] bArr3 = new byte[(r1.length + i2) << 1];
                        System.arraycopy(r1, 0, bArr3, 0, i);
                        System.arraycopy(bArr2, 0, bArr3, i, i2);
                        r1 = bArr3;
                    }
                    i += i2;
                }
            }
        } catch (FileNotFoundException unused3) {
            fileInputStream4 = fileInputStream;
            str2 = "getInfoFromFile(): No files need to be read";
            fileInputStream2 = fileInputStream4;
            C1404xa.m2940g("hmsSdk", str2);
            AbstractC1102l9.m2292o(fileInputStream2);
            fileInputStream3 = fileInputStream2;
            return "";
        } catch (IOException unused4) {
            fileInputStream5 = fileInputStream;
            str2 = "getInfoFromFile(): stream.read or new string exception";
            fileInputStream2 = fileInputStream5;
            C1404xa.m2940g("hmsSdk", str2);
            AbstractC1102l9.m2292o(fileInputStream2);
            fileInputStream3 = fileInputStream2;
            return "";
        } catch (Throwable th2) {
            th = th2;
            AbstractC1102l9.m2292o(fileInputStream);
            throw th;
        }
        if (i == 0) {
            AbstractC1102l9.m2292o(fileInputStream);
            fileInputStream3 = r1;
            return "";
        }
        if (i <= 0) {
            bArr = new byte[0];
        } else {
            byte[] bArr4 = new byte[i];
            System.arraycopy(r1, 0, bArr4, 0, i);
            bArr = bArr4;
        }
        String str3 = new String(bArr, "UTF-8");
        AbstractC1102l9.m2292o(fileInputStream);
        return str3;
    }
}
