package com.huawei.hem;

import android.os.Environment;
import com.android.launcher3.R;
import com.android.launcher3.model.RubbishFileInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: DataCleanUtil.java */
/* renamed from: com.huawei.hem.t5 */
/* loaded from: classes.dex */
public class C1299t5 {

    /* renamed from: a */
    public static String f3754a = Environment.getExternalStorageDirectory() + File.separator;

    /* renamed from: b */
    public static List<RubbishFileInfo> f3755b = new ArrayList();

    /* renamed from: c */
    public static List<RubbishFileInfo> f3756c = new ArrayList();

    /* renamed from: d */
    public static List<RubbishFileInfo> f3757d = new ArrayList();

    /* renamed from: e */
    public static List<RubbishFileInfo> f3758e = new ArrayList();

    /* renamed from: f */
    public static List<RubbishFileInfo> f3759f = new ArrayList();

    /* renamed from: g */
    public static List<RubbishFileInfo> f3760g = new ArrayList();

    /* renamed from: h */
    public static List<RubbishFileInfo> f3761h = new ArrayList();

    /* renamed from: i */
    public static int[] f3762i = {R.string.specify_download_directory, R.string.image_video, R.string.big_file, R.string.app_cache, R.string.unuser_apk, R.string.apk_log, R.string.image_video_cache};

    /* renamed from: j */
    public static String[] f3763j = {C0948f6.m1762g(new StringBuilder(), f3754a, "Download/"), C0948f6.m1762g(new StringBuilder(), f3754a, "Downloads/"), C0948f6.m1762g(new StringBuilder(), f3754a, "ETPlayer/")};

    /* renamed from: k */
    public static String[] f3764k = {C0948f6.m1762g(new StringBuilder(), f3754a, "DCIM/.thumbnails/"), C0948f6.m1762g(new StringBuilder(), f3754a, "DCIM/Camera/cache/")};

    /* renamed from: l */
    public static String[] f3765l = {C0948f6.m1762g(new StringBuilder(), f3754a, "DCIM/Camera/"), C0948f6.m1762g(new StringBuilder(), f3754a, "DCIM/Video/")};

    /* renamed from: m */
    public static String[] f3766m = {"com.datedu.ebook/files", "GuardSecure", "AppStore", "com.friday.cloudsnote", "Evaluation", "Dialogue"};

    /* renamed from: n */
    public static String[] f3767n = {"jpg", "png", "bmp", "psd", "jpeg", "gif", "tif", "wmf"};

    /* renamed from: o */
    public static String[] f3768o = {"mp4", "avi", "mov", "rmvb", "rm", "flv", "3gb"};

    /* renamed from: a */
    public static List<RubbishFileInfo> m2720a(int i) {
        return i == 0 ? f3755b : i == 1 ? f3760g : i == 2 ? f3759f : i == 3 ? f3756c : i == 4 ? f3757d : i == 5 ? f3758e : i == 6 ? f3761h : new ArrayList();
    }

    /* renamed from: b */
    public static boolean m2721b(String str) {
        return !str.endsWith(".hwbk") && Arrays.asList(f3767n).contains(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01ab  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2722c(java.io.File r12, android.content.Context r13) {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1299t5.m2722c(java.io.File, android.content.Context):void");
    }
}
