package com.alibaba.sdk.android.push.p024f;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.huawei.hms.framework.network.grs.GrsManager;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

/* renamed from: com.alibaba.sdk.android.push.f.a */
/* loaded from: classes.dex */
public class C0574a {
    /* renamed from: a */
    public static Bitmap m790a(Context context, String str) {
        File file;
        File file2 = new File(context.getCacheDir(), "aliyun_push_images");
        String strM791a = m791a(str);
        if (new File(file2, strM791a).exists()) {
            file = new File(file2, strM791a);
        } else {
            try {
                m794a(str, file2, strM791a);
                file = new File(file2, strM791a);
            } catch (Exception unused) {
                return null;
            }
        }
        return BitmapFactory.decodeFile(file.getAbsolutePath());
    }

    /* renamed from: a */
    public static String m791a(String str) {
        String strSubstring = str.substring(str.lastIndexOf(GrsManager.SEPARATOR) + 1);
        return strSubstring.contains("?") ? strSubstring.substring(0, strSubstring.indexOf("?")) : strSubstring;
    }

    /* renamed from: a */
    public static StringBuilder m792a(BufferedReader bufferedReader) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return sb;
            }
            sb.append(line);
        }
    }

    /* renamed from: a */
    public static void m793a(InputStream inputStream, File file) {
        FileOutputStream fileOutputStream;
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream);
            try {
                byte[] bArr = new byte[10240];
                fileOutputStream = new FileOutputStream(file);
                while (true) {
                    try {
                        int i = bufferedInputStream2.read(bArr);
                        if (i != -1) {
                            fileOutputStream.write(bArr, 0, i);
                        } else {
                            try {
                                break;
                            } catch (Throwable unused) {
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedInputStream = bufferedInputStream2;
                        try {
                            throw th;
                        } finally {
                        }
                    }
                }
                bufferedInputStream2.close();
                try {
                    fileOutputStream.close();
                } catch (Throwable unused2) {
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    /* renamed from: a */
    public static void m794a(String str, File file, String str2) throws IOException {
        InputStream inputStream;
        BufferedReader bufferedReader;
        File file2;
        System.currentTimeMillis();
        HttpURLConnection httpURLConnection = null;
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection2.setDoInput(true);
                httpURLConnection2.setDoOutput(false);
                httpURLConnection2.setRequestMethod("GET");
                httpURLConnection2.setRequestProperty("charset", "utf-8");
                if (httpURLConnection2.getResponseCode() == 200) {
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    file2 = new File(file, str2);
                    try {
                        InputStream inputStream2 = httpURLConnection2.getInputStream();
                        try {
                            m793a(inputStream2, file2);
                            System.currentTimeMillis();
                            httpURLConnection2.disconnect();
                            if (inputStream2 != null) {
                                try {
                                    inputStream2.close();
                                    return;
                                } catch (IOException unused) {
                                    return;
                                }
                            }
                            return;
                        } catch (Throwable th) {
                            httpURLConnection = httpURLConnection2;
                            inputStream = inputStream2;
                            th = th;
                            bufferedReader = null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = null;
                        httpURLConnection = httpURLConnection2;
                        inputStream = null;
                    }
                } else {
                    InputStream errorStream = httpURLConnection2.getErrorStream();
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(errorStream, "UTF-8"));
                        try {
                            throw new Exception(httpURLConnection2.getResponseCode() + m792a(bufferedReader).toString());
                        } catch (Throwable th3) {
                            httpURLConnection = httpURLConnection2;
                            inputStream = errorStream;
                            th = th3;
                            file2 = null;
                        }
                    } catch (Throwable th4) {
                        file2 = null;
                        httpURLConnection = httpURLConnection2;
                        inputStream = errorStream;
                        th = th4;
                        bufferedReader = null;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                bufferedReader = null;
                file2 = null;
                httpURLConnection = httpURLConnection2;
                inputStream = null;
            }
        } catch (Throwable th6) {
            th = th6;
            inputStream = null;
            bufferedReader = null;
            file2 = null;
        }
        try {
            throw th;
        } finally {
        }
    }
}
