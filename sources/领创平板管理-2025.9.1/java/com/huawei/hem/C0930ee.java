package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.provider.MediaStore;
import java.io.File;
import java.util.Arrays;

/* compiled from: FileUtil.java */
/* renamed from: com.huawei.hem.ee */
/* loaded from: classes.dex */
public class C0930ee {

    /* renamed from: a */
    public static String[] f2544a = {"jpg", "png", "bmp", "psd", "jpeg", "gif", "tif", "wmf"};

    /* renamed from: b */
    public static String[] f2545b = {"mp4", "avi", "mov", "rmvb", "rm", "flv", "3gb"};

    /* compiled from: FileUtil.java */
    /* renamed from: com.huawei.hem.ee$a */
    public static class a implements MediaScannerConnection.OnScanCompletedListener {
        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
        public void onScanCompleted(String str, Uri uri) {
        }
    }

    /* renamed from: a */
    public static String m1676a(String str) {
        File file = new File(str);
        if (file.exists()) {
            return str;
        }
        if (!str.endsWith(File.separator)) {
            StringBuilder sbM1765j = C0948f6.m1765j(str);
            sbM1765j.append(File.separator);
            str = sbM1765j.toString();
        }
        if (file.mkdirs() || file.isDirectory()) {
            C0850bc.m1403m(" -- 创建目录 = " + str + " -- 成功！");
        } else {
            C0850bc.m1393c(" -- 创建目录 = " + str + " -- 失败！");
        }
        return str;
    }

    /* renamed from: b */
    public static void m1677b(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (int i = 0; i < fileArrListFiles.length; i++) {
            m1677b(fileArrListFiles[i]);
            m1678c(fileArrListFiles[i]);
        }
    }

    /* renamed from: c */
    public static void m1678c(File file) {
        if (file == null || !file.exists() || file.delete()) {
            return;
        }
        StringBuilder sbM1765j = C0948f6.m1765j("-=-=-=>");
        sbM1765j.append(file.getPath());
        sbM1765j.append(" clean fail");
        C0850bc.m1393c(sbM1765j.toString());
    }

    /* renamed from: d */
    public static void m1679d(String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
                C0850bc.m1403m("delete path:" + str);
            }
        } catch (Exception e) {
            e.printStackTrace();
            C0850bc.m1403m("delete path error :" + str + " " + e.getMessage());
        }
    }

    /* renamed from: e */
    public static boolean m1680e(String str) {
        try {
            return new File(str).exists();
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: f */
    public static boolean m1681f(String str) {
        File file = new File(str);
        file.isFile();
        return file.exists();
    }

    /* renamed from: g */
    public static void m1682g(Context context, String str, String str2) {
        try {
            String lowerCase = str2.toLowerCase();
            String strSubstring = lowerCase.substring(lowerCase.indexOf(".") + 1);
            MediaScannerConnection.scanFile(context, new String[]{str}, null, new a());
            if (Arrays.asList(f2545b).contains(strSubstring)) {
                context.getContentResolver().delete(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, "_data= \"" + strSubstring + "\"", null);
            } else if (Arrays.asList(f2544a).contains(strSubstring)) {
                context.getContentResolver().delete(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "_data= \"" + strSubstring + "\"", null);
            }
            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent.setData(Uri.fromFile(new File(str)));
            context.sendBroadcast(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
