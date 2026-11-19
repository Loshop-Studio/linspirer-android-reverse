package com.p061ta.p062a.p064b;

import android.content.Context;
import com.huawei.hem.C0948f6;
import com.p061ta.p062a.C1866a;
import com.p061ta.p062a.p065c.C1877a;
import com.p061ta.p062a.p065c.C1882f;
import java.io.File;

/* renamed from: com.ta.a.b.e */
/* loaded from: classes.dex */
public class C1873e {
    /* renamed from: a */
    public static void m5376a(String str) {
        try {
            C1882f.m5408e();
            C1877a.m5386b(m5378b(), str);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: b */
    public static String m5378b() {
        Context context = C1866a.m5365a().getContext();
        StringBuilder sb = new StringBuilder();
        sb.append(m5375a(context));
        String strM1762g = C0948f6.m1762g(sb, File.separator, "4635b664f789000d");
        C1882f.m5407b("", strM1762g);
        return strM1762g;
    }

    /* renamed from: c */
    public static String m5379c() {
        Context context = C1866a.m5365a().getContext();
        StringBuilder sb = new StringBuilder();
        sb.append(m5375a(context));
        return C0948f6.m1762g(sb, File.separator, "9983c160aa044115");
    }

    /* renamed from: d */
    public static String m5380d() {
        try {
            return C1877a.m5387c(m5378b());
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: a */
    public static String m5375a(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getAbsolutePath());
        String strM1762g = C0948f6.m1762g(sb, File.separator, ".7934039a7252be16");
        C1882f.m5407b("", C0948f6.m1760e("UtdidAppRoot dir:", strM1762g));
        C1877a.m5385b(strM1762g);
        return strM1762g;
    }

    /* renamed from: a */
    public static boolean m5377a(Context context) {
        try {
            return !context.getFileStreamPath("3c9b584e65e6c983").exists();
        } catch (Exception unused) {
            return true;
        }
    }
}
