package com.alibaba.sdk.android.ams.common.logger;

import android.util.Log;
import com.alibaba.sdk.android.logger.ILogger;
import com.alibaba.sdk.android.logger.LogLevel;
import com.taobao.accs.utl.AccsLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class AmsLogger {
    public static final int DEBUG = 2;
    public static final int ERROR = 0;
    public static final int INFO = 1;
    public static volatile int log_level = 3;
    public String TAG;
    public static List<LoggerListener> listener = new ArrayList();
    public static final String IMPORTANT_LOG_TAG = "[MPS]";
    public static final AmsLogger importantLogger = getLogger(IMPORTANT_LOG_TAG);

    /* renamed from: com.alibaba.sdk.android.ams.common.logger.AmsLogger$2 */
    public static /* synthetic */ class AmsLoggerLevelSwitch {

        /* renamed from: a */
        public static final /* synthetic */ int[] f847a;

        static {
            int[] iArr = new int[LogLevel.values().length];
            f847a = iArr;
            try {
                LogLevel logLevel = LogLevel.ERROR;
                iArr[3] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f847a;
                LogLevel logLevel2 = LogLevel.WARN;
                iArr2[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f847a;
                LogLevel logLevel3 = LogLevel.INFO;
                iArr3[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = f847a;
                LogLevel logLevel4 = LogLevel.DEBUG;
                iArr4[0] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static void addListener(final LoggerListener loggerListener) {
        listener.add(loggerListener);
        AccsLogger.addILogger(new ILogger() { // from class: com.alibaba.sdk.android.ams.common.logger.AmsLogger.1
            @Override // com.alibaba.sdk.android.logger.ILogger
            public void print(LogLevel logLevel, String str, String str2) {
                int i = AmsLoggerLevelSwitch.f847a[logLevel.ordinal()];
                if (i == 1) {
                    loggerListener.m512e(str, str2, null, 0);
                    return;
                }
                if (i == 2) {
                    loggerListener.m514w(str, str2, null, 0);
                } else if (i == 3) {
                    loggerListener.m513i(str, str2, null, 0);
                } else {
                    if (i != 4) {
                        return;
                    }
                    loggerListener.m511d(str, str2, null, 0);
                }
            }
        });
    }

    public static void clearListeners() {
        listener.clear();
    }

    public static AmsLogger getImportantLogger() {
        return importantLogger;
    }

    public static AmsLogger getLogger(String str) {
        AmsLogger amsLogger = new AmsLogger();
        amsLogger.TAG = str;
        return amsLogger;
    }

    /* renamed from: d */
    public void m498d(String str) {
        m500d(str, null, 0);
    }

    /* renamed from: d */
    public void m499d(String str, Throwable th) {
        m500d(str, th, 0);
    }

    /* renamed from: d */
    public void m500d(String str, Throwable th, int i) {
        if (log_level >= 2) {
            String str2 = this.TAG;
            if (th == null) {
                Log.d(str2, str);
            } else {
                Log.d(str2, str, th);
            }
        }
        Iterator<LoggerListener> it = listener.iterator();
        while (it.hasNext()) {
            it.next().m511d(this.TAG, str, th, i);
        }
    }

    /* renamed from: e */
    public void m501e(String str) {
        m503e(str, null, 0);
    }

    /* renamed from: e */
    public void m502e(String str, Throwable th) {
        m503e(str, th, 0);
    }

    /* renamed from: e */
    public void m503e(String str, Throwable th, int i) {
        if (log_level >= 0) {
            String str2 = this.TAG;
            if (th == null) {
                Log.e(str2, str);
            } else {
                Log.e(str2, str, th);
            }
        }
        Iterator<LoggerListener> it = listener.iterator();
        while (it.hasNext()) {
            it.next().m512e(this.TAG, str, th, i);
        }
    }

    /* renamed from: i */
    public void m504i(String str) {
        m506i(str, null, 0);
    }

    /* renamed from: i */
    public void m505i(String str, Throwable th) {
        m506i(str, th, 0);
    }

    /* renamed from: i */
    public void m506i(String str, Throwable th, int i) {
        if (log_level >= 1) {
            String str2 = this.TAG;
            if (th == null) {
                Log.i(str2, str);
            } else {
                Log.i(str2, str, th);
            }
        }
        Iterator<LoggerListener> it = listener.iterator();
        while (it.hasNext()) {
            it.next().m513i(this.TAG, str, th, i);
        }
    }

    /* renamed from: w */
    public void m507w(String str) {
        m509w(str, null, 0);
    }

    /* renamed from: w */
    public void m508w(String str, Throwable th) {
        m509w(str, th, 0);
    }

    /* renamed from: w */
    public void m509w(String str, Throwable th, int i) {
        if (log_level >= 1) {
            String str2 = this.TAG;
            if (th == null) {
                Log.w(str2, str);
            } else if (str == null) {
                Log.w(str2, th);
            } else {
                Log.w(str2, str, th);
            }
        }
        Iterator<LoggerListener> it = listener.iterator();
        while (it.hasNext()) {
            it.next().m514w(this.TAG, str, th, i);
        }
    }

    /* renamed from: w */
    public void m510w(Throwable th) {
        m509w(null, th, 0);
    }
}
