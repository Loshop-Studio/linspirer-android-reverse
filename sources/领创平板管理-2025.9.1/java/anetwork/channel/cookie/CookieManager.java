package anetwork.channel.cookie;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import anet.channel.strategy.dispatch.DispatchConstants;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import anet.channel.util.HttpConstant;
import anetwork.channel.config.NetworkConfigCenter;
import anetwork.channel.http.NetworkSdkSetting;
import com.taobao.accs.common.Constants;
import java.util.List;
import java.util.Map;
import org.android.agoo.common.AgooConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class CookieManager {
    public static final String TAG = "anet.CookieManager";

    /* renamed from: a */
    public static volatile boolean f675a = false;

    /* renamed from: b */
    public static android.webkit.CookieManager f676b = null;

    /* renamed from: c */
    public static boolean f677c = true;

    /* renamed from: d */
    public static C0444a f678d;

    /* renamed from: e */
    public static SharedPreferences f679e;

    /* compiled from: Taobao */
    /* renamed from: anetwork.channel.cookie.CookieManager$a */
    public static class C0444a {

        /* renamed from: a */
        public String f680a;

        /* renamed from: b */
        public String f681b;

        /* renamed from: c */
        public String f682c;

        /* renamed from: d */
        public String f683d;

        /* renamed from: e */
        public long f684e;

        public C0444a(String str) {
            this.f680a = str;
            String string = CookieManager.f679e.getString("networksdk_cookie_monitor", null);
            if (TextUtils.isEmpty(string)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(string);
                if (!TextUtils.isEmpty(this.f680a) && this.f680a.equals(jSONObject.getString("cookieName"))) {
                    this.f684e = jSONObject.getLong("time");
                    if (System.currentTimeMillis() - this.f684e < Constants.CLIENT_FLUSH_INTERVAL) {
                        this.f681b = jSONObject.getString("cookieText");
                        this.f682c = jSONObject.getString("setCookie");
                        this.f683d = jSONObject.getString(DispatchConstants.DOMAIN);
                    } else {
                        this.f684e = 0L;
                        CookieManager.f679e.edit().remove("networksdk_cookie_monitor").apply();
                    }
                }
            } catch (JSONException e) {
                ALog.m338e(CookieManager.TAG, "cookie json parse error.", null, e, new Object[0]);
            }
        }

        /* renamed from: a */
        public void m398a() throws JSONException {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("cookieName", this.f680a);
                jSONObject.put("cookieText", this.f681b);
                jSONObject.put("setCookie", this.f682c);
                long jCurrentTimeMillis = System.currentTimeMillis();
                this.f684e = jCurrentTimeMillis;
                jSONObject.put("time", jCurrentTimeMillis);
                jSONObject.put(DispatchConstants.DOMAIN, this.f683d);
                CookieManager.f679e.edit().putString("networksdk_cookie_monitor", jSONObject.toString()).apply();
            } catch (Exception e) {
                ALog.m338e(CookieManager.TAG, "cookie json save error.", null, e, new Object[0]);
            }
        }
    }

    /* renamed from: d */
    public static boolean m395d() {
        if (!f675a && NetworkSdkSetting.getContext() != null) {
            setup(NetworkSdkSetting.getContext());
        }
        return f675a;
    }

    /* renamed from: e */
    public static void m396e() {
        ThreadPoolExecutorFactory.submitCookieMonitor(new RunnableC0445a());
    }

    /* renamed from: f */
    public static String m397f() {
        SharedPreferences sharedPreferences = f679e;
        if (sharedPreferences == null) {
            return null;
        }
        return sharedPreferences.getString("networksdk_target_cookie_name", null);
    }

    public static synchronized String getCookie(String str) {
        String cookie = null;
        if (!NetworkConfigCenter.isCookieEnable()) {
            return null;
        }
        if (!m395d() || !f677c) {
            return null;
        }
        try {
            cookie = f676b.getCookie(str);
        } catch (Throwable th) {
            ALog.m338e(TAG, "get cookie failed. url=" + str, null, th, new Object[0]);
        }
        m392a(str, cookie);
        return cookie;
    }

    public static synchronized void setCookie(String str, String str2) {
        if (NetworkConfigCenter.isCookieEnable()) {
            if (m395d() && f677c) {
                try {
                    f676b.setCookie(str, str2);
                    f676b.flush();
                } catch (Throwable th) {
                    ALog.m338e(TAG, "set cookie failed.", null, th, AgooConstants.OPEN_URL, str, "cookies", str2);
                }
            }
        }
    }

    public static void setTargetMonitorCookieName(String str) {
        SharedPreferences sharedPreferences;
        if (str == null || (sharedPreferences = f679e) == null) {
            return;
        }
        sharedPreferences.edit().putString("networksdk_target_cookie_name", str).apply();
    }

    public static synchronized void setup(Context context) {
        if (NetworkConfigCenter.isCookieEnable()) {
            if (f675a) {
                return;
            }
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                android.webkit.CookieManager cookieManager = android.webkit.CookieManager.getInstance();
                f676b = cookieManager;
                cookieManager.setAcceptCookie(true);
                f679e = PreferenceManager.getDefaultSharedPreferences(context);
                m396e();
                ALog.m339e(TAG, "CookieManager setup.", null, "cost", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
            } catch (Throwable th) {
                f677c = false;
                ALog.m338e(TAG, "Cookie Manager setup failed!!!", null, th, new Object[0]);
            }
            f675a = true;
        }
    }

    /* renamed from: a */
    public static void m391a(String str) {
        ThreadPoolExecutorFactory.submitCookieMonitor(new RunnableC0446b(str));
    }

    /* renamed from: a */
    public static void m392a(String str, String str2) {
        ThreadPoolExecutorFactory.submitCookieMonitor(new RunnableC0447c(str, str2));
    }

    public static void setCookie(String str, Map<String, List<String>> map) {
        if (!NetworkConfigCenter.isCookieEnable() || str == null || map == null) {
            return;
        }
        try {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key != null && (key.equalsIgnoreCase(HttpConstant.SET_COOKIE) || key.equalsIgnoreCase(HttpConstant.SET_COOKIE2))) {
                    for (String str2 : entry.getValue()) {
                        setCookie(str, str2);
                        m391a(str2);
                    }
                }
            }
        } catch (Exception e) {
            ALog.m338e(TAG, "set cookie failed", null, e, AgooConstants.OPEN_URL, str, "\nheaders", map);
        }
    }
}
