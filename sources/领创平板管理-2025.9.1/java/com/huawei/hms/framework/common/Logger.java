package com.huawei.hms.framework.common;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import android.util.Log;
import com.huawei.hem.C0948f6;
import java.io.IOException;
import java.util.Arrays;
import java.util.IllegalFormatException;
import org.json.JSONException;

/* loaded from: classes.dex */
public class Logger {
    public static final boolean DEBUG = false;
    public static final int MAX_STACK_DEEP_LENGTH = 20;
    public static final int MAX_STACK_DEEP_LENGTH_NORMAL = 8;
    public static final String SPLIT = "|";
    public static final String TAG = "NetworkKit_Logger";
    public static final String TAG_NETWORKKIT_PRE = "NetworkKit_";
    public static final String TAG_NETWORK_SDK_PRE = "NetworkSdk_";
    public static ExtLogger extLogger = null;
    public static boolean println = true;

    public static class ThrowableWrapper extends Throwable {
        public static final long serialVersionUID = 7129050843360571879L;
        public String message;
        public Throwable ownerThrowable;
        public Throwable thisCause;

        public ThrowableWrapper(Throwable th) {
            this.ownerThrowable = th;
            StackTraceElement[] stackTrace = th.getStackTrace();
            int i = ((th instanceof IOException) || (th instanceof JSONException)) ? 8 : 20;
            if (stackTrace.length > i) {
                setStackTrace((StackTraceElement[]) Arrays.copyOf(stackTrace, i));
            } else {
                setStackTrace(stackTrace);
            }
            setMessage(StringUtils.anonymizeMessage(th.getMessage()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCause(Throwable th) {
            this.thisCause = th;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            Throwable th = this.thisCause;
            if (th == this) {
                return null;
            }
            return th;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return this.message;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        @Override // java.lang.Throwable
        public String toString() {
            Throwable th = this.ownerThrowable;
            if (th == null) {
                return "";
            }
            String name = th.getClass().getName();
            if (this.message == null) {
                return name;
            }
            String strM1760e = C0948f6.m1760e(name, ": ");
            if (this.message.startsWith(strM1760e)) {
                return this.message;
            }
            StringBuilder sbM1765j = C0948f6.m1765j(strM1760e);
            sbM1765j.append(this.message);
            return sbM1765j.toString();
        }
    }

    public static String complexAppTag(String str) {
        return C0948f6.m1760e(TAG_NETWORK_SDK_PRE, str);
    }

    public static String complexMsg(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return getCallMethodInfo(i);
        }
        return getCallMethodInfo(i) + "|" + str;
    }

    public static String complexTag(String str) {
        return C0948f6.m1760e("NetworkKit_", str);
    }

    @SuppressLint({"LogTagMismatch"})
    /* renamed from: d */
    public static void m3429d(String str, Object obj) {
        println(3, str, obj);
    }

    @SuppressLint({"LogTagMismatch"})
    /* renamed from: d */
    public static void m3430d(String str, String str2, Object... objArr) {
        println(3, str, str2, objArr);
    }

    /* renamed from: e */
    public static void m3431e(String str, Object obj) {
        println(6, str, obj);
    }

    /* renamed from: e */
    public static void m3432e(String str, String str2, Throwable th) {
        if (isAPPLoggable(6)) {
            extLogger.m3424e(complexAppTag(str), complexMsg(str2, 5), getNewThrowable(th));
        }
        if (println) {
            Log.e(complexTag(str), complexMsg(str2, 5), getNewThrowable(th));
        }
    }

    /* renamed from: e */
    public static void m3433e(String str, String str2, Object... objArr) {
        println(6, str, str2, objArr);
    }

    public static void extLogPrintln(int i, String str, String str2) {
        if (i == 2) {
            extLogger.m3426v(str, str2);
            return;
        }
        if (i == 3) {
            extLogger.m3422d(str, str2);
            return;
        }
        if (i == 4) {
            extLogger.m3425i(str, str2);
        } else if (i == 5) {
            extLogger.m3427w(str, str2);
        } else {
            if (i != 6) {
                return;
            }
            extLogger.m3423e(str, str2);
        }
    }

    public static String getCallMethodInfo(int i) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length <= i) {
            return "";
        }
        StackTraceElement stackTraceElement = stackTrace[i];
        return Thread.currentThread().getName() + "|" + stackTraceElement.getFileName() + "|" + stackTraceElement.getClassName() + "|" + stackTraceElement.getMethodName() + "|" + stackTraceElement.getLineNumber();
    }

    public static Throwable getNewThrowable(Throwable th) {
        if (isLoggable(3)) {
            return th;
        }
        if (th == null) {
            return null;
        }
        ThrowableWrapper throwableWrapper = new ThrowableWrapper(th);
        Throwable cause = th.getCause();
        ThrowableWrapper throwableWrapper2 = throwableWrapper;
        while (cause != null) {
            ThrowableWrapper throwableWrapper3 = new ThrowableWrapper(cause);
            throwableWrapper2.setCause(throwableWrapper3);
            cause = cause.getCause();
            throwableWrapper2 = throwableWrapper3;
        }
        return throwableWrapper;
    }

    @SuppressLint({"LogTagMismatch"})
    /* renamed from: i */
    public static void m3434i(String str, Object obj) {
        println(4, str, obj);
    }

    @SuppressLint({"LogTagMismatch"})
    /* renamed from: i */
    public static void m3435i(String str, String str2, Object... objArr) {
        println(4, str, str2, objArr);
    }

    public static boolean isAPPLoggable(int i) {
        if (extLogger != null) {
            return Log.isLoggable(TAG_NETWORK_SDK_PRE, i);
        }
        return false;
    }

    public static boolean isLoggable(int i) {
        return Log.isLoggable("NetworkKit_", i);
    }

    public static int logPrintln(int i, String str, String str2) {
        if (isAPPLoggable(i)) {
            extLogPrintln(i, complexAppTag(str), complexMsg(str2, 7));
        }
        if (println) {
            return Log.println(i, complexTag(str), complexMsg(str2, 7));
        }
        return 1;
    }

    public static void println(int i, String str, Object obj) {
        if (i >= 3 && isLoggable(i)) {
            logPrintln(i, str, obj == null ? "null" : obj.toString());
        }
    }

    public static void println(int i, String str, String str2, Object... objArr) {
        if (i < 3) {
            return;
        }
        if (str2 == null) {
            Log.w(TAG, "format is null, not log");
            return;
        }
        try {
            if (isLoggable(i)) {
                logPrintln(i, str, StringUtils.format(str2, objArr));
            }
        } catch (IllegalFormatException e) {
            m3439w(TAG, "log format error" + str2, e);
        }
    }

    public static void setExtLogger(ExtLogger extLogger2, boolean z) {
        extLogger = extLogger2;
        println = z;
        m3434i(TAG, "logger = " + extLogger2 + z);
    }

    /* renamed from: v */
    public static void m3436v(String str, Object obj) {
        println(2, str, obj);
    }

    /* renamed from: v */
    public static void m3437v(String str, String str2, Object... objArr) {
        println(2, str, str2, objArr);
    }

    /* renamed from: w */
    public static void m3438w(String str, Object obj) {
        println(5, str, obj);
    }

    /* renamed from: w */
    public static void m3439w(String str, String str2, Throwable th) {
        if (isAPPLoggable(5)) {
            extLogger.m3428w(complexAppTag(str), complexMsg(str2, 5), getNewThrowable(th));
        }
        if (println) {
            Log.w(complexTag(str), complexMsg(str2, 5), getNewThrowable(th));
        }
    }

    /* renamed from: w */
    public static void m3440w(String str, String str2, Object... objArr) {
        println(5, str, str2, objArr);
    }
}
