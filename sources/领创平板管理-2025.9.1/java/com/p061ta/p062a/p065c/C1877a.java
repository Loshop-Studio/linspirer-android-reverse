package com.p061ta.p062a.p065c;

import android.text.TextUtils;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStreamReader;

/* renamed from: com.ta.a.c.a */
/* loaded from: classes.dex */
public class C1877a {
    /* renamed from: b */
    public static void m5385b(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                File file = new File(str);
                if (file.exists()) {
                    C1882f.m5407b("FileUtils", "path exists", str);
                } else {
                    C1882f.m5407b("FileUtils", "mkdirs path", str, "created", Boolean.valueOf(file.mkdirs()));
                }
            }
        } catch (Exception e) {
            C1882f.m5406b("FileUtils", e, new Object[0]);
        }
    }

    /* renamed from: c */
    public static String m5387c(String str) throws Throwable {
        InputStreamReader inputStreamReader;
        InputStreamReader inputStreamReader2 = null;
        try {
            try {
                inputStreamReader = new InputStreamReader(new FileInputStream(str));
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            char[] cArr = new char[100];
            StringBuilder sb = new StringBuilder("");
            while (true) {
                int i = inputStreamReader.read(cArr);
                if (i == -1) {
                    break;
                }
                sb.append(cArr, 0, i);
            }
            String string = sb.toString();
            try {
                inputStreamReader.close();
            } catch (Exception e2) {
                C1882f.m5406b("FileUtils", e2, new Object[0]);
            }
            return string;
        } catch (Exception e3) {
            e = e3;
            inputStreamReader2 = inputStreamReader;
            C1882f.m5406b("FileUtils", e, new Object[0]);
            if (inputStreamReader2 != null) {
                try {
                    inputStreamReader2.close();
                } catch (Exception e4) {
                    C1882f.m5406b("FileUtils", e4, new Object[0]);
                }
            }
            return "";
        } catch (Throwable th2) {
            th = th2;
            inputStreamReader2 = inputStreamReader;
            if (inputStreamReader2 != null) {
                try {
                    inputStreamReader2.close();
                } catch (Exception e5) {
                    C1882f.m5406b("FileUtils", e5, new Object[0]);
                }
            }
            throw th;
        }
    }

    /* renamed from: b */
    public static boolean m5386b(String str, String str2) throws Throwable {
        FileWriter fileWriter;
        BufferedWriter bufferedWriter;
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                fileWriter = new FileWriter(new File(str));
                try {
                    bufferedWriter = new BufferedWriter(fileWriter);
                } catch (Exception e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e2) {
            e = e2;
            fileWriter = null;
        } catch (Throwable th2) {
            th = th2;
            fileWriter = null;
        }
        try {
            bufferedWriter.write(str2);
            bufferedWriter.flush();
            try {
                bufferedWriter.close();
            } catch (Exception e3) {
                C1882f.m5406b("FileUtils", e3, new Object[0]);
            }
            try {
                fileWriter.close();
            } catch (Exception e4) {
                C1882f.m5406b("FileUtils", e4, new Object[0]);
            }
            return true;
        } catch (Exception e5) {
            e = e5;
            bufferedWriter2 = bufferedWriter;
            C1882f.m5406b("FileUtils", e, new Object[0]);
            if (bufferedWriter2 != null) {
                try {
                    bufferedWriter2.close();
                } catch (Exception e6) {
                    C1882f.m5406b("FileUtils", e6, new Object[0]);
                }
            }
            if (fileWriter != null) {
                try {
                    fileWriter.close();
                } catch (Exception e7) {
                    C1882f.m5406b("FileUtils", e7, new Object[0]);
                }
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
            bufferedWriter2 = bufferedWriter;
            if (bufferedWriter2 != null) {
                try {
                    bufferedWriter2.close();
                } catch (Exception e8) {
                    C1882f.m5406b("FileUtils", e8, new Object[0]);
                }
            }
            if (fileWriter != null) {
                try {
                    fileWriter.close();
                    throw th;
                } catch (Exception e9) {
                    C1882f.m5406b("FileUtils", e9, new Object[0]);
                    throw th;
                }
            }
            throw th;
        }
    }
}
