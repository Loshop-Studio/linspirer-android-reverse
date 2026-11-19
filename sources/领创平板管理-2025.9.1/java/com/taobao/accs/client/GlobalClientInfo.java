package com.taobao.accs.client;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.text.TextUtils;
import com.taobao.accs.ILoginInfo;
import com.taobao.accs.base.AccsAbstractDataListener;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import com.taobao.accs.utl.ALog;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.android.agoo.common.AgooConstants;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class GlobalClientInfo {
    public static final String AGOO_SERVICE_ID = "agooSend";

    /* renamed from: a */
    public static Context f6059a = null;

    /* renamed from: b */
    public static String f6060b = null;

    /* renamed from: c */
    public static boolean f6061c = false;

    /* renamed from: d */
    public static volatile GlobalClientInfo f6062d;

    /* renamed from: i */
    public static Map<String, String> f6063i;

    /* renamed from: e */
    public ConcurrentHashMap<String, ILoginInfo> f6064e;

    /* renamed from: f */
    public ActivityManager f6065f;

    /* renamed from: g */
    public ConnectivityManager f6066g;

    /* renamed from: h */
    public PackageInfo f6067h;

    /* renamed from: j */
    public Map<String, AccsAbstractDataListener> f6068j = new ConcurrentHashMap();

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        f6063i = concurrentHashMap;
        concurrentHashMap.put("agooSend", "org.android.agoo.accs.AgooService");
        f6063i.put(AgooConstants.AGOO_SERVICE_AGOOACK, "org.android.agoo.accs.AgooService");
        f6063i.put("agooTokenReport", "org.android.agoo.accs.AgooService");
    }

    public GlobalClientInfo(Context context) {
        if (context == null) {
            throw new RuntimeException("Context is null!!");
        }
        if (f6059a == null) {
            f6059a = context.getApplicationContext();
        }
        ThreadPoolExecutorFactory.execute(new RunnableC1913d(this));
    }

    public static Context getContext() {
        return f6059a;
    }

    public static GlobalClientInfo getInstance(Context context) {
        if (f6062d == null) {
            synchronized (GlobalClientInfo.class) {
                if (f6062d == null) {
                    f6062d = new GlobalClientInfo(context);
                }
            }
        }
        return f6062d;
    }

    public void clearLoginInfoImpl() {
        this.f6064e = null;
    }

    public ActivityManager getActivityManager() {
        if (this.f6065f == null) {
            this.f6065f = (ActivityManager) f6059a.getSystemService("activity");
        }
        return this.f6065f;
    }

    public ConnectivityManager getConnectivityManager() {
        if (this.f6066g == null) {
            this.f6066g = (ConnectivityManager) f6059a.getSystemService("connectivity");
        }
        return this.f6066g;
    }

    public AccsAbstractDataListener getListener(String str) {
        return this.f6068j.get(str);
    }

    public String getNick(String str) {
        ILoginInfo iLoginInfo;
        ConcurrentHashMap<String, ILoginInfo> concurrentHashMap = this.f6064e;
        if (concurrentHashMap == null || (iLoginInfo = concurrentHashMap.get(str)) == null) {
            return null;
        }
        return iLoginInfo.getNick();
    }

    public PackageInfo getPackageInfo() {
        try {
            if (this.f6067h == null) {
                this.f6067h = f6059a.getPackageManager().getPackageInfo(f6059a.getPackageName(), 0);
            }
        } catch (Throwable th) {
            ALog.m5727e("GlobalClientInfo", "getPackageInfo", th, new Object[0]);
        }
        return this.f6067h;
    }

    public String getService(String str) {
        return f6063i.get(str);
    }

    public String getSid(String str) {
        ILoginInfo iLoginInfo;
        ConcurrentHashMap<String, ILoginInfo> concurrentHashMap = this.f6064e;
        if (concurrentHashMap == null || (iLoginInfo = concurrentHashMap.get(str)) == null) {
            return null;
        }
        return iLoginInfo.getSid();
    }

    public String getUserId(String str) {
        ILoginInfo iLoginInfo;
        ConcurrentHashMap<String, ILoginInfo> concurrentHashMap = this.f6064e;
        if (concurrentHashMap == null || (iLoginInfo = concurrentHashMap.get(str)) == null) {
            return null;
        }
        return iLoginInfo.getUserId();
    }

    public void registerListener(String str, AccsAbstractDataListener accsAbstractDataListener) {
        if (TextUtils.isEmpty(str) || accsAbstractDataListener == null) {
            return;
        }
        this.f6068j.put(str, accsAbstractDataListener);
    }

    public void registerService(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        f6063i.put(str, str2);
    }

    public void setLoginInfoImpl(String str, ILoginInfo iLoginInfo) {
        if (this.f6064e == null) {
            this.f6064e = new ConcurrentHashMap<>(1);
        }
        if (iLoginInfo != null) {
            this.f6064e.put(str, iLoginInfo);
        }
    }

    public void unRegisterService(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f6063i.remove(str);
    }

    public void unregisterListener(String str) {
        this.f6068j.remove(str);
    }
}
