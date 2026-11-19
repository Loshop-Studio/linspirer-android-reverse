package com.loc;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1069k1;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: Log.java */
/* renamed from: com.loc.u */
/* loaded from: classes.dex */
public final class C1860u {

    /* renamed from: a */
    public static final String f5941a = "/a/";

    /* renamed from: b */
    public static final String f5942b = "b";

    /* renamed from: c */
    public static final String f5943c = "c";

    /* renamed from: d */
    public static final String f5944d = "d";

    /* renamed from: e */
    public static String f5945e = "s";

    /* renamed from: f */
    public static final String f5946f = "g";

    /* renamed from: g */
    public static final String f5947g = "h";

    /* renamed from: h */
    public static final String f5948h = "e";

    /* renamed from: i */
    public static final String f5949i = "f";

    /* renamed from: j */
    public static final String f5950j = "j";

    /* renamed from: k */
    public static final String f5951k = "k";

    /* renamed from: l */
    public static long f5952l;

    /* renamed from: m */
    public static Vector<C1069k1> f5953m = new Vector<>();

    /* renamed from: a */
    public static String m5317a(Context context, String str) {
        return context.getSharedPreferences("AMSKLG_CFG", 0).getString(str, "");
    }

    /* renamed from: a */
    public static List<C1069k1> m5318a() {
        Vector<C1069k1> vector;
        try {
            synchronized (Looper.getMainLooper()) {
                vector = f5953m;
            }
            return vector;
        } catch (Throwable th) {
            th.printStackTrace();
            return f5953m;
        }
    }

    /* renamed from: a */
    public static void m5319a(final Context context) {
        try {
            if (System.currentTimeMillis() - f5952l < 60000) {
                return;
            }
            f5952l = System.currentTimeMillis();
            C1753bp.m4236a().m4242b(new AbstractRunnableC1754bq() { // from class: com.loc.u.1
                @Override // com.loc.AbstractRunnableC1754bq
                /* renamed from: a */
                public final void mo1093a() {
                    try {
                        C1863x.m5345b(context);
                        C1863x.m5347d(context);
                        C1863x.m5346c(context);
                        C1735ay.m4183a(context);
                        C1733aw.m4175a(context);
                    } catch (RejectedExecutionException unused) {
                    } catch (Throwable th) {
                        C1862w.m5333b(th, "Lg", "proL");
                    }
                }
            });
        } catch (Throwable th) {
            C1862w.m5333b(th, "Lg", "proL");
        }
    }

    @TargetApi(9)
    /* renamed from: a */
    public static void m5320a(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("AMSKLG_CFG", 0).edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    /* renamed from: a */
    public static void m5321a(C1069k1 c1069k1) {
        try {
            synchronized (Looper.getMainLooper()) {
                if (c1069k1 == null) {
                    return;
                }
                if (f5953m.contains(c1069k1)) {
                    return;
                }
                f5953m.add(c1069k1);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0035, code lost:
    
        r1 = r7.length;
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0037, code lost:
    
        if (r2 >= r1) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0043, code lost:
    
        if (m5324b(r6, r7[r2].trim()) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0045, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0046, code lost:
    
        r2 = r2 + 1;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m5322a(java.lang.String[] r6, java.lang.String r7) {
        /*
            r0 = 0
            if (r6 == 0) goto L4d
            if (r7 != 0) goto L6
            goto L4d
        L6:
            java.lang.String r1 = "\n"
            java.lang.String[] r7 = r7.split(r1)     // Catch: java.lang.Throwable -> L49
            int r1 = r7.length     // Catch: java.lang.Throwable -> L49
            r2 = r0
        Le:
            r3 = 1
            if (r2 >= r1) goto L35
            r4 = r7[r2]     // Catch: java.lang.Throwable -> L49
            java.lang.String r4 = r4.trim()     // Catch: java.lang.Throwable -> L49
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L49
            if (r5 != 0) goto L2e
            java.lang.String r5 = "at "
            boolean r5 = r4.startsWith(r5)     // Catch: java.lang.Throwable -> L49
            if (r5 == 0) goto L2e
            java.lang.String r5 = "uncaughtException"
            boolean r4 = r4.contains(r5)     // Catch: java.lang.Throwable -> L49
            if (r4 == 0) goto L2e
            goto L2f
        L2e:
            r3 = r0
        L2f:
            if (r3 == 0) goto L32
            return r0
        L32:
            int r2 = r2 + 1
            goto Le
        L35:
            int r1 = r7.length     // Catch: java.lang.Throwable -> L49
            r2 = r0
        L37:
            if (r2 >= r1) goto L4d
            r4 = r7[r2]     // Catch: java.lang.Throwable -> L49
            java.lang.String r4 = r4.trim()     // Catch: java.lang.Throwable -> L49
            boolean r4 = m5324b(r6, r4)     // Catch: java.lang.Throwable -> L49
            if (r4 == 0) goto L46
            return r3
        L46:
            int r2 = r2 + 1
            goto L37
        L49:
            r6 = move-exception
            r6.printStackTrace()
        L4d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1860u.m5322a(java.lang.String[], java.lang.String):boolean");
    }

    /* renamed from: b */
    public static void m5323b(Context context, String str) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("AMSKLG_CFG", 0).edit();
        editorEdit.remove(str);
        editorEdit.apply();
    }

    /* renamed from: b */
    public static boolean m5324b(String[] strArr, String str) {
        if (strArr != null && str != null) {
            try {
                for (String str2 : strArr) {
                    str = str.trim();
                    if (str.startsWith("at ")) {
                        if (str.contains(str2 + ".") && str.endsWith(")") && !str.contains("uncaughtException")) {
                            return true;
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    /* renamed from: c */
    public static String m5325c(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getAbsolutePath());
        return C0948f6.m1762g(sb, f5941a, str);
    }
}
