package com.loc;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.amap.apis.utils.core.DeviceInfo;
import com.huawei.hem.AppInfo;
import com.huawei.hem.ConstConfig;
import java.lang.ref.WeakReference;

/* compiled from: OfflineLocManager.java */
/* renamed from: com.loc.aw */
/* loaded from: classes.dex */
public class OfflineLocManager {

    /* renamed from: a */
    public static int f5066a = 1000;

    /* renamed from: b */
    public static boolean f5067b = false;

    /* renamed from: c */
    public static int f5068c = 20;

    /* renamed from: d */
    public static int f5069d = 0;

    /* renamed from: e */
    public static WeakReference<LogConfig> f5070e = null;

    /* renamed from: f */
    public static int f5071f = 10;

    /* compiled from: OfflineLocManager.java */
    /* renamed from: com.loc.aw$a */
    public static class a extends ThreadTask {

        /* renamed from: a */
        public int f5072a;

        /* renamed from: b */
        public Context f5073b;

        /* renamed from: c */
        public OfflineLocEntity f5074c;

        public a(Context context, int i) {
            this.f5073b = context;
            this.f5072a = i;
        }

        public a(Context context, OfflineLocEntity c1732av) {
            this(context, 1);
            this.f5074c = c1732av;
        }

        @Override // com.loc.AbstractRunnableC1754bq
        /* renamed from: a */
        public final void mo1093a() {
            int i = this.f5072a;
            if (i == 1) {
                try {
                    synchronized (OfflineLocManager.class) {
                        String string = Long.toString(System.currentTimeMillis());
                        LogConfig c1730atM4191a = C1736az.m4191a(OfflineLocManager.f5070e);
                        C1736az.m4195a(this.f5073b, c1730atM4191a, AMapLog.f5949i, OfflineLocManager.f5066a, 2097152, "6");
                        if (c1730atM4191a.f5058e == null) {
                            c1730atM4191a.f5058e = new Base64EncryptProcessor(new GZipEncryptProcessor(new RSAAESEncryptProcessor(new GZipEncryptProcessor())));
                        }
                        LogEngine.m4168a(string, this.f5074c.m4172a(), c1730atM4191a);
                    }
                    return;
                } catch (Throwable th) {
                    SDKLogHandler.m5333b(th, "ofm", "aple");
                    return;
                }
            }
            if (i == 2) {
                try {
                    LogConfig c1730atM4191a2 = C1736az.m4191a(OfflineLocManager.f5070e);
                    C1736az.m4195a(this.f5073b, c1730atM4191a2, AMapLog.f5949i, OfflineLocManager.f5066a, 2097152, "6");
                    c1730atM4191a2.f5061h = 14400000;
                    if (c1730atM4191a2.f5060g == null) {
                        c1730atM4191a2.f5060g = new LogJsonDataStrategy(new HeaderAddStrategy(this.f5073b, new ZipUpdateDataStrategy(), new Base64EncryptProcessor(new GZipEncryptProcessor(new RSAAESEncryptProcessor())), new String(ConstConfig.m2346c(10)), AppInfo.m1641g(this.f5073b), DeviceInfo.m1091y(this.f5073b), DeviceInfo.m1086t(this.f5073b), DeviceInfo.m1083q(this.f5073b), DeviceInfo.f1607d, Build.MANUFACTURER, Build.DEVICE, DeviceInfo.m1092z(this.f5073b), AppInfo.m1638d(this.f5073b), Build.MODEL, AppInfo.m1639e(this.f5073b), AppInfo.m1636b(this.f5073b), DeviceInfo.m1081o(this.f5073b), DeviceInfo.m1078l(this.f5073b), String.valueOf(Build.VERSION.SDK_INT)));
                    }
                    if (TextUtils.isEmpty(c1730atM4191a2.f5062i)) {
                        c1730atM4191a2.f5062i = "fKey";
                    }
                    c1730atM4191a2.f5059f = new TimeUpdateStrategy(this.f5073b, c1730atM4191a2.f5061h, c1730atM4191a2.f5062i, new MobileUpdateStrategy(this.f5073b, OfflineLocManager.f5067b, OfflineLocManager.f5071f * 1024, OfflineLocManager.f5068c * 1024, "offLocKey", OfflineLocManager.f5069d * 1024));
                    LogEngine.m4166a(c1730atM4191a2);
                } catch (Throwable th2) {
                    SDKLogHandler.m5333b(th2, "ofm", "uold");
                }
            }
        }
    }

    /* renamed from: a */
    public static synchronized void m4174a(int i, boolean z, int i2, int i3) {
        f5066a = i;
        f5067b = z;
        if (i2 < 10 || i2 > 100) {
            i2 = 20;
        }
        f5068c = i2;
        if (i2 / 5 > f5071f) {
            f5071f = i2 / 5;
        }
        f5069d = i3;
    }

    /* renamed from: a */
    public static void m4175a(Context context) {
        ThreadPool.m4236a().m4242b(new a(context, 2));
    }

    /* renamed from: a */
    public static synchronized void m4176a(OfflineLocEntity c1732av, Context context) {
        ThreadPool.m4236a().m4242b(new a(context, c1732av));
    }
}
