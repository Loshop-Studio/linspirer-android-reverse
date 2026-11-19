package anetwork.channel.config;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import anet.channel.AwcnConfig;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.statist.RequestStatistic;
import anet.channel.strategy.dispatch.HttpDispatcher;
import anet.channel.strategy.utils.AmdcStringEncoding;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import anet.channel.util.HttpUrl;
import anetwork.channel.cache.CacheManager;
import anetwork.channel.http.NetworkSdkSetting;
import com.alibaba.sdk.android.tbrest.request.UrlWrapper;
import com.taobao.accs.common.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class NetworkConfigCenter {
    public static final String SERVICE_OPTIMIZE = "SERVICE_OPTIMIZE";
    public static final String SESSION_ASYNC_OPTIMIZE = "SESSION_ASYNC_OPTIMIZE";

    /* renamed from: a */
    public static volatile boolean f651a = true;

    /* renamed from: b */
    public static volatile boolean f652b = true;

    /* renamed from: c */
    public static volatile boolean f653c = true;

    /* renamed from: d */
    public static volatile int f654d = 5;

    /* renamed from: e */
    public static volatile boolean f655e = true;

    /* renamed from: f */
    public static volatile boolean f656f = true;

    /* renamed from: g */
    public static volatile boolean f657g = false;

    /* renamed from: h */
    public static volatile long f658h = 0;

    /* renamed from: i */
    public static volatile boolean f659i = false;

    /* renamed from: j */
    public static volatile ConcurrentHashMap<String, List<String>> f660j;

    /* renamed from: k */
    public static volatile CopyOnWriteArrayList<String> f661k;

    /* renamed from: l */
    public static final List<String> f662l = new ArrayList();

    /* renamed from: m */
    public static volatile int f663m = 10000;

    /* renamed from: n */
    public static volatile boolean f664n = true;

    /* renamed from: o */
    public static volatile boolean f665o = false;

    /* renamed from: p */
    public static volatile int f666p = UrlWrapper.MAX_READ_CONNECTION_STREAM_TIME_OUT;

    /* renamed from: q */
    public static volatile CopyOnWriteArrayList<String> f667q = null;

    /* renamed from: r */
    public static volatile ConcurrentHashMap<String, List<String>> f668r = null;

    /* renamed from: s */
    public static volatile boolean f669s = true;

    /* renamed from: t */
    public static volatile boolean f670t = false;

    /* renamed from: u */
    public static volatile boolean f671u = false;

    /* renamed from: v */
    public static volatile boolean f672v = true;

    /* renamed from: w */
    public static volatile boolean f673w = true;

    /* renamed from: x */
    public static volatile IRemoteConfig f674x;

    public static void enableNetworkSdkOptimizeTest(boolean z) {
        if (!z) {
            setGetSessionAsyncEnable(false);
            ThreadPoolExecutorFactory.setNormalExecutorPoolSize(6);
        } else {
            setGetSessionAsyncEnable(true);
            ThreadPoolExecutorFactory.setNormalExecutorPoolSize(16);
            AwcnConfig.registerPresetSessions("[{\"host\":\"trade-acs.m.taobao.com\", \"protocol\":\"http2\", \"rtt\":\"0rtt\", \"publicKey\": \"acs\", \"isKeepAlive\":true}]");
        }
    }

    public static int getBgForbidRequestThreshold() {
        return f666p;
    }

    public static int getRequestStatisticSampleRate() {
        return f663m;
    }

    public static int getServiceBindWaitTime() {
        return f654d;
    }

    public static void init() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(NetworkSdkSetting.getContext());
        f658h = defaultSharedPreferences.getLong("Cache.Flag", 0L);
        f671u = defaultSharedPreferences.getBoolean("CHANNEL_LOCAL_INSTANCE_ENABLE", false);
        f672v = defaultSharedPreferences.getBoolean("ALLOW_SPDY_WHEN_BIND_SERVICE_FAILED", true);
    }

    public static boolean isAllowHttpIpRetry() {
        return f655e && f657g;
    }

    public static boolean isAllowSpdyWhenBindServiceFailed() {
        return f672v;
    }

    public static boolean isBgRequestForbidden() {
        return f659i;
    }

    public static boolean isBindServiceOptimize() {
        return f670t;
    }

    public static boolean isBizInWhiteList(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        CopyOnWriteArrayList<String> copyOnWriteArrayList = f661k;
        if (f661k == null) {
            return false;
        }
        Iterator<String> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (str.equalsIgnoreCase(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isChannelLocalInstanceEnable() {
        return f671u;
    }

    public static boolean isCookieEnable() {
        return f673w;
    }

    public static boolean isGetSessionAsyncEnable() {
        return f665o;
    }

    public static boolean isHttpCacheEnable() {
        return f656f;
    }

    public static boolean isHttpSessionEnable() {
        return f655e;
    }

    public static boolean isRemoteNetworkServiceEnable() {
        return f653c;
    }

    public static boolean isRequestDelayRetryForNoNetwork() {
        return f669s;
    }

    public static boolean isRequestInMonitorList(RequestStatistic requestStatistic) {
        CopyOnWriteArrayList<String> copyOnWriteArrayList;
        if (requestStatistic == null || (copyOnWriteArrayList = f667q) == null || TextUtils.isEmpty(requestStatistic.host)) {
            return false;
        }
        Iterator<String> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (requestStatistic.host.equalsIgnoreCase(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isResponseBufferEnable() {
        return f664n;
    }

    public static boolean isSSLEnabled() {
        return f651a;
    }

    public static boolean isSpdyEnabled() {
        return f652b;
    }

    public static boolean isUrlInDegradeList(HttpUrl httpUrl) {
        ConcurrentHashMap<String, List<String>> concurrentHashMap;
        List<String> list;
        if (httpUrl == null || (concurrentHashMap = f668r) == null || (list = concurrentHashMap.get(httpUrl.host())) == null) {
            return false;
        }
        if (list == f662l) {
            return true;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (httpUrl.path().startsWith(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isUrlInWhiteList(HttpUrl httpUrl) {
        ConcurrentHashMap<String, List<String>> concurrentHashMap;
        List<String> list;
        if (httpUrl == null || (concurrentHashMap = f660j) == null || (list = concurrentHashMap.get(httpUrl.host())) == null) {
            return false;
        }
        if (list == f662l) {
            return true;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (httpUrl.path().startsWith(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static void setAllowHttpIpRetry(boolean z) {
        f657g = z;
    }

    public static void setAllowSpdyWhenBindServiceFailed(boolean z) {
        f672v = z;
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(NetworkSdkSetting.getContext()).edit();
        editorEdit.putBoolean("ALLOW_SPDY_WHEN_BIND_SERVICE_FAILED", f672v);
        editorEdit.apply();
    }

    public static void setAmdcPresetHosts(String str) throws JSONException {
        if (GlobalAppRuntimeInfo.isTargetProcess()) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                int length = jSONArray.length();
                ArrayList arrayList = new ArrayList(length);
                for (int i = 0; i < length; i++) {
                    String string = jSONArray.getString(i);
                    if (AmdcStringEncoding.m333c(string)) {
                        arrayList.add(string);
                    }
                }
                HttpDispatcher.getInstance().addHosts(arrayList);
            } catch (JSONException e) {
                ALog.m338e("anet.NetworkConfigCenter", "parse hosts failed", null, e, new Object[0]);
            }
        }
    }

    public static void setBgForbidRequestThreshold(int i) {
        f666p = i;
    }

    public static void setBgRequestForbidden(boolean z) {
        f659i = z;
    }

    public static void setBindServiceOptimize(boolean z) {
        f670t = z;
    }

    public static void setCacheFlag(long j) {
        if (j != f658h) {
            ALog.m340i("anet.NetworkConfigCenter", "set cache flag", null, "old", Long.valueOf(f658h), "new", Long.valueOf(j));
            f658h = j;
            SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(NetworkSdkSetting.getContext()).edit();
            editorEdit.putLong("Cache.Flag", f658h);
            editorEdit.apply();
            CacheManager.clearAllCache();
        }
    }

    public static void setChannelLocalInstanceEnable(boolean z) {
        f671u = z;
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(NetworkSdkSetting.getContext()).edit();
        editorEdit.putBoolean("CHANNEL_LOCAL_INSTANCE_ENABLE", f671u);
        editorEdit.apply();
    }

    public static void setCookieEnable(boolean z) {
        f673w = z;
    }

    public static void setDegradeRequestList(String str) throws JSONException {
        if (ALog.isPrintLog(2)) {
            ALog.m340i("anet.NetworkConfigCenter", "setDegradeRequestList", null, "Degrade List", str);
        }
        if (TextUtils.isEmpty(str)) {
            f668r = null;
            return;
        }
        ConcurrentHashMap<String, List<String>> concurrentHashMap = new ConcurrentHashMap<>();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject.get(next);
                try {
                    if ("*".equals(obj)) {
                        concurrentHashMap.put(next, f662l);
                    } else if (obj instanceof JSONArray) {
                        JSONArray jSONArray = (JSONArray) obj;
                        int length = jSONArray.length();
                        ArrayList arrayList = new ArrayList(length);
                        for (int i = 0; i < length; i++) {
                            Object obj2 = jSONArray.get(i);
                            if (obj2 instanceof String) {
                                arrayList.add((String) obj2);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            concurrentHashMap.put(next, arrayList);
                        }
                    }
                } catch (JSONException unused) {
                }
            }
        } catch (JSONException e) {
            ALog.m338e("anet.NetworkConfigCenter", "parse jsonObject failed", null, e, new Object[0]);
        }
        f668r = concurrentHashMap;
    }

    public static void setGetSessionAsyncEnable(boolean z) {
        f665o = z;
    }

    public static void setHttpCacheEnable(boolean z) {
        f656f = z;
    }

    public static void setHttpSessionEnable(boolean z) {
        f655e = z;
    }

    @Deprecated
    public static void setHttpsValidationEnabled(boolean z) {
    }

    public static void setMonitorRequestList(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            f667q = null;
        }
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONArray(Constants.KEY_HOST);
            int length = jSONArray.length();
            CopyOnWriteArrayList<String> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            for (int i = 0; i < length; i++) {
                String string = jSONArray.getString(i);
                if (AmdcStringEncoding.m333c(string)) {
                    copyOnWriteArrayList.add(string);
                }
            }
            f667q = copyOnWriteArrayList;
        } catch (JSONException e) {
            ALog.m338e("anet.NetworkConfigCenter", "parse hosts failed", null, e, new Object[0]);
        }
    }

    public static void setRemoteConfig(IRemoteConfig iRemoteConfig) {
        if (f674x != null) {
            f674x.unRegister();
        }
        if (iRemoteConfig != null) {
            iRemoteConfig.register();
        }
        f674x = iRemoteConfig;
    }

    public static void setRemoteNetworkServiceEnable(boolean z) {
        f653c = z;
    }

    public static void setRequestDelayRetryForNoNetwork(boolean z) {
        f669s = z;
    }

    public static void setRequestStatisticSampleRate(int i) {
        f663m = i;
    }

    public static void setResponseBufferEnable(boolean z) {
        f664n = z;
    }

    public static void setSSLEnabled(boolean z) {
        ALog.m340i("anet.NetworkConfigCenter", "[setSSLEnabled]", null, "enable", Boolean.valueOf(z));
        f651a = z;
    }

    public static void setServiceBindWaitTime(int i) {
        f654d = i;
    }

    public static void setSpdyEnabled(boolean z) {
        ALog.m340i("anet.NetworkConfigCenter", "[setSpdyEnabled]", null, "enable", Boolean.valueOf(z));
        f652b = z;
    }

    public static void updateBizWhiteList(String str) throws JSONException {
        if (ALog.isPrintLog(2)) {
            ALog.m340i("anet.NetworkConfigCenter", "updateRequestWhiteList", null, "White List", str);
        }
        if (TextUtils.isEmpty(str)) {
            f661k = null;
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            int length = jSONArray.length();
            CopyOnWriteArrayList<String> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            for (int i = 0; i < length; i++) {
                String string = jSONArray.getString(i);
                if (!string.isEmpty()) {
                    copyOnWriteArrayList.add(string);
                }
            }
            f661k = copyOnWriteArrayList;
        } catch (JSONException e) {
            ALog.m338e("anet.NetworkConfigCenter", "parse bizId failed", null, e, new Object[0]);
        }
    }

    public static void updateWhiteListMap(String str) throws JSONException {
        if (ALog.isPrintLog(2)) {
            ALog.m340i("anet.NetworkConfigCenter", "updateWhiteUrlList", null, "White List", str);
        }
        if (TextUtils.isEmpty(str)) {
            f660j = null;
            return;
        }
        ConcurrentHashMap<String, List<String>> concurrentHashMap = new ConcurrentHashMap<>();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject.get(next);
                try {
                    if ("*".equals(obj)) {
                        concurrentHashMap.put(next, f662l);
                    } else if (obj instanceof JSONArray) {
                        JSONArray jSONArray = (JSONArray) obj;
                        int length = jSONArray.length();
                        ArrayList arrayList = new ArrayList(length);
                        for (int i = 0; i < length; i++) {
                            Object obj2 = jSONArray.get(i);
                            if (obj2 instanceof String) {
                                arrayList.add((String) obj2);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            concurrentHashMap.put(next, arrayList);
                        }
                    }
                } catch (JSONException unused) {
                }
            }
        } catch (JSONException e) {
            ALog.m338e("anet.NetworkConfigCenter", "parse jsonObject failed", null, e, new Object[0]);
        }
        f660j = concurrentHashMap;
    }
}
