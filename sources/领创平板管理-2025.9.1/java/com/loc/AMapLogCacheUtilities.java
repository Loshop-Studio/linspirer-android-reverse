package com.loc;

import android.content.Context;
import android.os.Build;
import com.amap.apis.utils.core.DeviceInfo;
import com.huawei.hem.SDKInfo;
import com.huawei.hem.AMapCoreUtilities;
import com.loc.AMapDiskLruCache;
import java.io.InputStream;
import java.lang.ref.WeakReference;

/* compiled from: Utils.java */
/* renamed from: com.loc.az */
/* loaded from: classes.dex */
public final class AMapLogCacheUtilities {
    /* renamed from: a */
    public static LogConfig m4191a(WeakReference<LogConfig> weakReference) {
        if (weakReference == null || weakReference.get() == null) {
            weakReference = new WeakReference<>(new LogConfig());
        }
        return weakReference.get();
    }

    /* renamed from: a */
    public static String m4192a() {
        return AMapCoreUtilities.m2233b(System.currentTimeMillis(), "yyyyMMdd HH:mm:ss:SSS");
    }

    /* renamed from: a */
    public static String m4194a(String str, String str2, int i, String str3, String str4) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(",\"timestamp\":\"");
        stringBuffer.append(str2);
        stringBuffer.append("\",\"et\":\"");
        stringBuffer.append(i);
        stringBuffer.append("\",\"classname\":\"");
        stringBuffer.append(str3);
        stringBuffer.append("\",");
        stringBuffer.append("\"detail\":\"");
        stringBuffer.append(str4);
        stringBuffer.append("\"");
        return stringBuffer.toString();
    }

    /* renamed from: a */
    public static void m4195a(Context context, LogConfig c1730at, String str, int i, int i2, String str2) {
        c1730at.f5054a = AMapLog.m5325c(context, str);
        c1730at.f5057d = i;
        c1730at.f5055b = i2;
        c1730at.f5056c = str2;
    }

    /* renamed from: a */
    public static byte[] m4196a(AMapDiskLruCache c1720aj, String str) {
        AMapDiskLruCache.b bVarM4024a;
        byte[] bArr = new byte[0];
        InputStream inputStream = null;
        try {
            bVarM4024a = c1720aj.m4024a(str);
            if (bVarM4024a == null) {
                if (bVarM4024a != null) {
                    try {
                        bVarM4024a.close();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                return bArr;
            }
            try {
                InputStream inputStreamM4038a = bVarM4024a.m4038a();
                if (inputStreamM4038a == null) {
                    if (inputStreamM4038a != null) {
                        try {
                            inputStreamM4038a.close();
                        } catch (Throwable th2) {
                            th2.printStackTrace();
                        }
                    }
                    try {
                        bVarM4024a.close();
                    } catch (Throwable th3) {
                        th3.printStackTrace();
                    }
                    return bArr;
                }
                bArr = new byte[inputStreamM4038a.available()];
                inputStreamM4038a.read(bArr);
                try {
                    inputStreamM4038a.close();
                } catch (Throwable th4) {
                    th4.printStackTrace();
                }
                try {
                    bVarM4024a.close();
                } catch (Throwable th5) {
                    th5.printStackTrace();
                }
                return bArr;
            } catch (Throwable th6) {
                th = th6;
                try {
                    SDKLogHandler.m5333b(th, "sui", "rdS");
                    if (0 != 0) {
                        try {
                            inputStream.close();
                        } catch (Throwable th7) {
                            th7.printStackTrace();
                        }
                    }
                    if (bVarM4024a != null) {
                        try {
                            bVarM4024a.close();
                        } catch (Throwable th8) {
                            th8.printStackTrace();
                        }
                    }
                    return bArr;
                } finally {
                }
            }
        } catch (Throwable th9) {
            th = th9;
            bVarM4024a = null;
        }
    }

    /* renamed from: a */
    public static String m4193a(Context context, SDKInfo c1069k1) {
        String strM1071e;
        int iM1074h;
        String strM1072f;
        String strSubstring = "";
        StringBuilder sb = new StringBuilder();
        try {
            try {
                strM1071e = DeviceInfo.m1071e(context);
            } catch (Throwable th) {
                th.printStackTrace();
                strM1071e = "";
            }
            sb.append("\"sim\":\"");
            sb.append(strM1071e);
            sb.append("\",\"sdkversion\":\"");
            sb.append(c1069k1.m2157b());
            sb.append("\",\"product\":\"");
            sb.append(c1069k1.m2156a());
            sb.append("\",\"ed\":\"");
            sb.append(c1069k1.m2158c());
            sb.append("\",\"nt\":\"");
            int iM1073g = -1;
            try {
                iM1074h = DeviceInfo.m1074h(context);
            } catch (Throwable th2) {
                th2.printStackTrace();
                iM1074h = -1;
            }
            sb.append(iM1074h);
            sb.append("\",\"np\":\"");
            try {
                strM1072f = DeviceInfo.m1072f(context);
            } catch (Throwable th3) {
                th3.printStackTrace();
                strM1072f = "";
            }
            sb.append(strM1072f);
            sb.append("\",\"mnc\":\"");
            if (Build.VERSION.SDK_INT < 29) {
                try {
                    String strM1092z = DeviceInfo.m1092z(context);
                    if (strM1092z != null && strM1092z.length() >= 5) {
                        strSubstring = strM1092z.substring(3, 5);
                    }
                } catch (Throwable th4) {
                    th4.printStackTrace();
                }
            }
            sb.append(strSubstring);
            sb.append("\",\"ant\":\"");
            try {
                iM1073g = DeviceInfo.m1073g(context);
            } catch (Throwable th5) {
                th5.printStackTrace();
            }
            sb.append(iM1073g);
            sb.append("\"");
        } catch (Throwable th6) {
            th6.printStackTrace();
        }
        return sb.toString();
    }
}
