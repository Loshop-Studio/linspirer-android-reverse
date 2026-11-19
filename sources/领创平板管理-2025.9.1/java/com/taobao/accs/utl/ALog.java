package com.taobao.accs.utl;

import anet.channel.util.ALog;
import com.alibaba.sdk.android.logger.ILog;
import com.alibaba.sdk.android.logger.LogLevel;
import com.huawei.hem.CompilerOutline;

/* compiled from: Taobao */
@Deprecated
/* loaded from: classes.dex */
public class ALog {
    public static ILog log = AccsLogger.getLogger("DefaultLog");

    /* compiled from: Taobao */
    public enum Level {
        V,
        D,
        I,
        W,
        E,
        L
    }

    public static String buildLogMsg(String str, Object... objArr) {
        if (str == null && objArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append(" ");
            sb.append(str);
        }
        if (objArr != null) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (i2 >= objArr.length) {
                    break;
                }
                sb.append(" ");
                sb.append(formatKv(objArr[i], objArr[i2]));
                i = i2 + 1;
            }
            if (i == objArr.length - 1) {
                sb.append(" ");
                sb.append(objArr[i]);
            }
        }
        return sb.toString();
    }

    /* renamed from: d */
    public static void m5726d(String str, String str2, Object... objArr) {
        ILog iLog = log;
        StringBuilder sbM1769n = CompilerOutline.m1769n("[", str, "]");
        sbM1769n.append(buildLogMsg(str2, objArr));
        iLog.mo664d(sbM1769n.toString());
    }

    /* renamed from: e */
    public static void m5728e(String str, String str2, Object... objArr) {
        ILog iLog = log;
        StringBuilder sbM1769n = CompilerOutline.m1769n("[", str, "]");
        sbM1769n.append(buildLogMsg(str2, objArr));
        iLog.mo666e(sbM1769n.toString());
    }

    public static String formatKv(Object obj, Object obj2) {
        StringBuilder sb = new StringBuilder();
        if (obj == null) {
            obj = "";
        }
        sb.append(obj);
        sb.append(":");
        if (obj2 == null) {
            obj2 = "";
        }
        sb.append(obj2);
        return sb.toString();
    }

    /* renamed from: i */
    public static void m5729i(String str, String str2, Object... objArr) {
        ILog iLog = log;
        StringBuilder sbM1769n = CompilerOutline.m1769n("[", str, "]");
        sbM1769n.append(buildLogMsg(str2, objArr));
        iLog.mo669i(sbM1769n.toString());
    }

    @Deprecated
    public static void initALog(String str, int i) {
    }

    @Deprecated
    public static boolean isPrintLog() {
        return true;
    }

    public static boolean isPrintLog(Level level) {
        return true;
    }

    @Deprecated
    public static boolean isTLogExist() {
        return false;
    }

    @Deprecated
    public static void setEnableTLog(boolean z) {
    }

    @Deprecated
    public static void setLogLevel(Level level) {
        LogLevel logLevel = LogLevel.ERROR;
        switch (C1974b.f6388b[level.ordinal()]) {
            case 1:
            case 2:
                logLevel = LogLevel.DEBUG;
                break;
            case 3:
                logLevel = LogLevel.INFO;
                break;
            case 4:
                logLevel = LogLevel.WARN;
                break;
            case 5:
            case 6:
                logLevel = LogLevel.ERROR;
                break;
        }
        AccsLogger.setLevel(logLevel);
    }

    @Deprecated
    public static void setLogger(ALog.ILog iLog) {
        if (iLog != null) {
            AccsLogger.addILogger(new C1973a(iLog));
        }
    }

    public static void setPrintLog(boolean z) {
        AccsLogger.enable(z);
    }

    @Deprecated
    public static void setUseTlog(boolean z) {
    }

    /* renamed from: v */
    public static void m5730v(String str, String str2, Object... objArr) {
        ILog iLog = log;
        StringBuilder sbM1769n = CompilerOutline.m1769n("[", str, "]");
        sbM1769n.append(buildLogMsg(str2, objArr));
        iLog.mo664d(sbM1769n.toString());
    }

    /* renamed from: w */
    public static void m5732w(String str, String str2, Object... objArr) {
        ILog iLog = log;
        StringBuilder sbM1769n = CompilerOutline.m1769n("[", str, "]");
        sbM1769n.append(buildLogMsg(str2, objArr));
        iLog.mo671w(sbM1769n.toString());
    }

    /* renamed from: e */
    public static void m5727e(String str, String str2, Throwable th, Object... objArr) {
        ILog iLog = log;
        StringBuilder sbM1769n = CompilerOutline.m1769n("[", str, "]");
        sbM1769n.append(buildLogMsg(str2, objArr));
        iLog.mo667e(sbM1769n.toString(), th);
    }

    /* renamed from: w */
    public static void m5731w(String str, String str2, Throwable th, Object... objArr) {
        ILog iLog = log;
        StringBuilder sbM1769n = CompilerOutline.m1769n("[", str, "]");
        sbM1769n.append(buildLogMsg(str2, objArr));
        iLog.mo672w(sbM1769n.toString(), th);
    }
}
