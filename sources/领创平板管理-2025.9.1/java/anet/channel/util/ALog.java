package anet.channel.util;

import android.text.TextUtils;
import android.util.Log;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class ALog {
    public static Object LOG_BREAK;
    public static boolean canUseTlog;
    public static boolean isPrintLog;
    public static volatile ILog log;
    public static Logcat logcat;

    /* compiled from: Taobao */
    public interface ILog {
        /* renamed from: d */
        void mo80d(String str, String str2);

        /* renamed from: e */
        void mo81e(String str, String str2);

        /* renamed from: e */
        void mo82e(String str, String str2, Throwable th);

        /* renamed from: i */
        void mo83i(String str, String str2);

        boolean isPrintLog(int i);

        boolean isValid();

        void setLogLevel(int i);

        /* renamed from: w */
        void mo84w(String str, String str2);

        /* renamed from: w */
        void mo85w(String str, String str2, Throwable th);
    }

    /* compiled from: Taobao */
    public static class Level {

        /* renamed from: D */
        public static final int f575D = 1;

        /* renamed from: E */
        public static final int f576E = 4;

        /* renamed from: I */
        public static final int f577I = 2;

        /* renamed from: N */
        public static final int f578N = 5;

        /* renamed from: V */
        public static final int f579V = 0;

        /* renamed from: W */
        public static final int f580W = 3;
    }

    /* compiled from: Taobao */
    public static class Logcat implements ILog {
        public int defaultLevel = 1;

        @Override // anet.channel.util.ALog.ILog
        /* renamed from: d */
        public void mo80d(String str, String str2) {
            Log.d(str, str2);
        }

        @Override // anet.channel.util.ALog.ILog
        /* renamed from: e */
        public void mo81e(String str, String str2) {
            Log.e(str, str2);
        }

        @Override // anet.channel.util.ALog.ILog
        /* renamed from: i */
        public void mo83i(String str, String str2) {
            Log.i(str, str2);
        }

        @Override // anet.channel.util.ALog.ILog
        public boolean isPrintLog(int i) {
            return i >= this.defaultLevel;
        }

        @Override // anet.channel.util.ALog.ILog
        public boolean isValid() {
            return true;
        }

        @Override // anet.channel.util.ALog.ILog
        public void setLogLevel(int i) {
            if (i < 0 || i > 5) {
                this.defaultLevel = 5;
            } else {
                this.defaultLevel = i;
            }
        }

        @Override // anet.channel.util.ALog.ILog
        /* renamed from: w */
        public void mo84w(String str, String str2) {
            Log.w(str, str2);
        }

        @Override // anet.channel.util.ALog.ILog
        /* renamed from: e */
        public void mo82e(String str, String str2, Throwable th) {
            Log.e(str, str2, th);
        }

        @Override // anet.channel.util.ALog.ILog
        /* renamed from: w */
        public void mo85w(String str, String str2, Throwable th) {
            Log.w(str, str2, th);
        }
    }

    static {
        Logcat logcat2 = new Logcat();
        logcat = logcat2;
        log = logcat2;
        LOG_BREAK = "|";
        isPrintLog = true;
        canUseTlog = true;
    }

    public static String buildLogMsg(String str, String str2, Object... objArr) {
        if (str == null && str2 == null && objArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(64);
        if (!TextUtils.isEmpty(str2)) {
            sb.append(LOG_BREAK);
            sb.append("[seq:");
            sb.append(str2);
            sb.append("]");
        }
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
                sb.append(objArr[i] != null ? objArr[i] : "");
                sb.append(":");
                sb.append(objArr[i2] != null ? objArr[i2] : "");
                i += 2;
            }
            if (i < objArr.length) {
                sb.append(" ");
                sb.append(objArr[i]);
            }
        }
        return sb.toString();
    }

    public static String buildLogTag(String str) {
        return str;
    }

    /* renamed from: d */
    public static void m337d(String str, String str2, String str3, Object... objArr) {
        if (!isPrintLog(1) || log == null) {
            return;
        }
        log.mo80d(buildLogTag(str), buildLogMsg(str2, str3, objArr));
    }

    /* renamed from: e */
    public static void m339e(String str, String str2, String str3, Object... objArr) {
        if (!isPrintLog(4) || log == null) {
            return;
        }
        log.mo81e(buildLogTag(str), buildLogMsg(str2, str3, objArr));
    }

    public static ILog getLog() {
        return log;
    }

    /* renamed from: i */
    public static void m340i(String str, String str2, String str3, Object... objArr) {
        if (!isPrintLog(2) || log == null) {
            return;
        }
        log.mo83i(buildLogTag(str), buildLogMsg(str2, str3, objArr));
    }

    public static boolean isPrintLog(int i) {
        if (isPrintLog && log != null) {
            return log.isPrintLog(i);
        }
        return false;
    }

    public static void setLevel(int i) {
        if (log != null) {
            log.setLogLevel(i);
        }
    }

    public static void setLog(ILog iLog) {
        if (iLog == null) {
            return;
        }
        if ((canUseTlog || !iLog.getClass().getSimpleName().toLowerCase().contains("tlog")) && iLog.isValid()) {
            log = iLog;
        }
    }

    public static void setPrintLog(boolean z) {
        isPrintLog = z;
    }

    @Deprecated
    public static void setUseTlog(boolean z) {
        if (z) {
            canUseTlog = true;
        } else {
            canUseTlog = false;
            log = logcat;
        }
    }

    /* renamed from: w */
    public static void m342w(String str, String str2, String str3, Object... objArr) {
        if (!isPrintLog(3) || log == null) {
            return;
        }
        log.mo84w(buildLogTag(str), buildLogMsg(str2, str3, objArr));
    }

    /* renamed from: e */
    public static void m338e(String str, String str2, String str3, Throwable th, Object... objArr) {
        if (!isPrintLog(4) || log == null) {
            return;
        }
        log.mo82e(buildLogTag(str), buildLogMsg(str2, str3, objArr), th);
    }

    /* renamed from: w */
    public static void m341w(String str, String str2, String str3, Throwable th, Object... objArr) {
        if (!isPrintLog(3) || log == null) {
            return;
        }
        log.mo85w(buildLogTag(str), buildLogMsg(str2, str3, objArr), th);
    }
}
