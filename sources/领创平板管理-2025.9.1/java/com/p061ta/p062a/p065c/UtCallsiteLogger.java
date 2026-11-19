package com.p061ta.p062a.p065c;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.huawei.hem.CompilerOutline;

/* renamed from: com.ta.a.c.f */
/* loaded from: classes.dex */
public class UtCallsiteLogger {

    /* renamed from: b */
    public static boolean f6004b = false;

    /* renamed from: c */
    public static boolean f6005c = false;

    /* renamed from: a */
    public static boolean m5405a() {
        return f6004b;
    }

    /* renamed from: b */
    public static void m5407b(String str, Object... objArr) {
        if (f6005c) {
            Log.d(m5409g(), m5402a(str, objArr));
        }
    }

    /* renamed from: e */
    public static void m5408e() {
        if (f6004b) {
            Log.d(m5409g(), m5402a((String) null, new Object[0]));
        }
    }

    /* renamed from: g */
    public static String m5409g() {
        String methodName;
        String strSubstring;
        StackTraceElement stackTraceElementM5400a = m5400a();
        if (stackTraceElementM5400a != null) {
            String className = stackTraceElementM5400a.getClassName();
            strSubstring = !TextUtils.isEmpty(className) ? className.substring(className.lastIndexOf(46) + 1) : "";
            methodName = stackTraceElementM5400a.getMethodName();
        } else {
            methodName = "";
            strSubstring = methodName;
        }
        return CompilerOutline.m1763h(CompilerOutline.m1770o("Utdid.", strSubstring, ".", methodName, "."), String.valueOf(Process.myPid()), ".", Thread.currentThread().getId() + "");
    }

    /* renamed from: a */
    public static void m5404a(String str, Object... objArr) {
        if (f6004b) {
            Log.d(m5409g(), m5402a(str, objArr));
        }
    }

    /* renamed from: b */
    public static void m5406b(String str, Throwable th, Object... objArr) {
        if (f6005c) {
            Log.e(m5409g(), m5402a(str, objArr), th);
        }
    }

    /* renamed from: a */
    public static void m5403a(String str, Throwable th, Object... objArr) {
        if (f6004b) {
            Log.e(m5409g(), m5402a(str, objArr), th);
        }
    }

    /* renamed from: a */
    public static String m5401a(Object obj, Object obj2) {
        Object[] objArr = new Object[2];
        if (obj == null) {
            obj = "";
        }
        objArr[0] = obj;
        if (obj2 == null) {
            obj2 = "";
        }
        objArr[1] = obj2;
        return String.format("%s:%s", objArr);
    }

    /* renamed from: a */
    public static String m5402a(String str, Object... objArr) {
        if (str == null && objArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Object[] objArr2 = new Object[1];
        if (str == null) {
            str = "-";
        }
        int i = 0;
        objArr2[0] = str;
        sb.append(String.format("[%s] ", objArr2));
        if (objArr != null) {
            int length = objArr.length;
            while (true) {
                int i2 = i + 1;
                if (i2 >= objArr.length) {
                    break;
                }
                sb.append(m5401a(objArr[i], objArr[i2]));
                if (i2 < length - 1) {
                    sb.append(",");
                }
                i = i2 + 1;
            }
            if (i == objArr.length - 1) {
                sb.append(objArr[i]);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static StackTraceElement m5400a() {
        try {
            for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
                if (!stackTraceElement.isNativeMethod() && !stackTraceElement.getClassName().equals(Thread.class.getName()) && !stackTraceElement.getClassName().equals(UtCallsiteLogger.class.getName())) {
                    return stackTraceElement;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
