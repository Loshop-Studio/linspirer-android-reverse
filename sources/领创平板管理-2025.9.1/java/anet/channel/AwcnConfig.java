package anet.channel;

import android.text.TextUtils;
import anet.channel.strategy.ConnProtocol;
import anet.channel.strategy.StrategyTemplate;
import anet.channel.strategy.utils.C0413c;
import anet.channel.util.ALog;
import com.taobao.accs.common.Constants;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class AwcnConfig {
    public static final String HTTP3_ENABLE = "HTTP3_ENABLE";
    public static final String NEXT_LAUNCH_FORBID = "NEXT_LAUNCH_FORBID";

    /* renamed from: a */
    public static volatile boolean f47a = false;

    /* renamed from: b */
    public static volatile boolean f48b = true;

    /* renamed from: c */
    public static volatile boolean f49c = true;

    /* renamed from: d */
    public static volatile boolean f50d = true;

    /* renamed from: e */
    public static volatile boolean f51e = false;

    /* renamed from: f */
    public static volatile boolean f52f = true;

    /* renamed from: g */
    public static volatile long f53g = 43200000;

    /* renamed from: h */
    public static volatile boolean f54h = true;

    /* renamed from: i */
    public static volatile boolean f55i = true;

    /* renamed from: j */
    public static boolean f56j = true;

    /* renamed from: k */
    public static boolean f57k = false;

    /* renamed from: l */
    public static volatile boolean f58l = false;

    /* renamed from: m */
    public static volatile boolean f59m = true;

    /* renamed from: n */
    public static volatile boolean f60n = false;

    /* renamed from: o */
    public static volatile int f61o = 10000;

    /* renamed from: p */
    public static volatile boolean f62p = false;

    /* renamed from: q */
    public static volatile boolean f63q = true;

    /* renamed from: r */
    public static volatile int f64r = -1;

    /* renamed from: s */
    public static volatile boolean f65s = true;

    /* renamed from: t */
    public static volatile boolean f66t = true;

    /* renamed from: u */
    public static volatile boolean f67u = false;

    /* renamed from: v */
    public static volatile boolean f68v = true;

    /* renamed from: w */
    public static volatile CopyOnWriteArrayList<String> f69w = null;

    /* renamed from: x */
    public static volatile boolean f70x = true;

    /* renamed from: y */
    public static volatile boolean f71y = true;

    public static int getAccsReconnectionDelayPeriod() {
        return f61o;
    }

    public static long getIpv6BlackListTtl() {
        return f53g;
    }

    public static int getXquicCongControl() {
        return f64r;
    }

    public static boolean isAccsSessionCreateForbiddenInBg() {
        return f47a;
    }

    public static boolean isAllowHttpDnsNotify(String str) {
        if (f69w == null || TextUtils.isEmpty(str)) {
            return false;
        }
        return f69w.contains(str);
    }

    public static boolean isAppLifeCycleListenerEnable() {
        return f56j;
    }

    public static boolean isAsyncLoadStrategyEnable() {
        return f57k;
    }

    public static boolean isCarrierInfoEnable() {
        return f71y;
    }

    public static boolean isCookieHeaderRedundantFix() {
        return f66t;
    }

    public static boolean isHorseRaceEnable() {
        return f49c;
    }

    public static boolean isHttp3Enable() {
        return f62p;
    }

    public static boolean isHttp3OrangeEnable() {
        return f63q;
    }

    public static boolean isHttpsSniEnable() {
        return f48b;
    }

    public static boolean isIdleSessionCloseEnable() {
        return f52f;
    }

    public static boolean isIpStackDetectByUdpConnect() {
        return f65s;
    }

    public static boolean isIpv6BlackListEnable() {
        return f55i;
    }

    public static boolean isIpv6Enable() {
        return f54h;
    }

    public static boolean isNetworkDetectEnable() {
        return f60n;
    }

    public static boolean isPing6Enable() {
        return f59m;
    }

    public static boolean isQuicEnable() {
        return f51e;
    }

    public static boolean isSendConnectInfoByBroadcast() {
        return f67u;
    }

    public static boolean isSendConnectInfoByService() {
        return f68v;
    }

    public static boolean isTbNextLaunch() {
        return f58l;
    }

    public static boolean isTnetHeaderCacheEnable() {
        return f50d;
    }

    public static boolean isWifiInfoEnable() {
        return f70x;
    }

    public static void registerPresetSessions(String str) {
        if (GlobalAppRuntimeInfo.isTargetProcess() && !TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    String string = jSONObject.getString(Constants.KEY_HOST);
                    if (!C0413c.m333c(string)) {
                        return;
                    }
                    StrategyTemplate.getInstance().registerConnProtocol(string, ConnProtocol.valueOf(jSONObject.getString("protocol"), jSONObject.getString("rtt"), jSONObject.getString("publicKey")));
                    if (jSONObject.getBoolean("isKeepAlive")) {
                        SessionCenter.getInstance().registerSessionInfo(SessionInfo.create(string, true, false, null, null, null));
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void setAccsReconnectionDelayPeriod(int i) {
        if (i < 0) {
            i = 0;
        }
        if (i > 10000) {
            i = 10000;
        }
        f61o = i;
    }

    public static void setAccsSessionCreateForbiddenInBg(boolean z) {
        f47a = z;
    }

    public static void setAppLifeCycleListenerEnable(boolean z) {
        f56j = z;
    }

    public static void setAsyncLoadStrategyEnable(boolean z) {
        f57k = z;
    }

    public static void setCarrierInfoEnable(boolean z) {
        f71y = z;
    }

    public static void setCookieHeaderRedundantFix(boolean z) {
        f66t = z;
    }

    public static void setHorseRaceEnable(boolean z) {
        f49c = z;
    }

    public static void setHttp3Enable(boolean z) {
        f62p = z;
        ALog.m339e("awcn.AwcnConfig", "[setHttp3Enable]", null, "enable", Boolean.valueOf(z));
    }

    public static void setHttp3OrangeEnable(boolean z) {
        f63q = z;
    }

    public static void setHttpDnsNotifyWhiteList(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            CopyOnWriteArrayList<String> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                String string = jSONArray.getString(i);
                if (!TextUtils.isEmpty(string)) {
                    copyOnWriteArrayList.add(string);
                }
            }
            f69w = copyOnWriteArrayList;
        } catch (Exception e) {
            ALog.m338e("awcn.AwcnConfig", "[setHttpDnsNotifyWhiteList] error", null, e, new Object[0]);
        }
    }

    public static void setHttpsSniEnable(boolean z) {
        f48b = z;
    }

    public static void setIdleSessionCloseEnable(boolean z) {
        f52f = z;
    }

    public static void setIpStackDetectByUdpConnect(boolean z) {
        f65s = z;
    }

    public static void setIpv6BlackListEnable(boolean z) {
        f55i = z;
    }

    public static void setIpv6BlackListTtl(long j) {
        f53g = j;
    }

    public static void setIpv6Enable(boolean z) {
        f54h = z;
    }

    public static void setNetworkDetectEnable(boolean z) {
        f60n = z;
    }

    public static void setPing6Enable(boolean z) {
        f59m = z;
    }

    public static void setQuicEnable(boolean z) {
        f51e = z;
    }

    public static void setSendConnectInfoByBroadcast(boolean z) {
        f67u = z;
    }

    public static void setSendConnectInfoByService(boolean z) {
        f68v = z;
    }

    public static void setTbNextLaunch(boolean z) {
        f58l = z;
    }

    public static void setTnetHeaderCacheEnable(boolean z) {
        f50d = z;
    }

    public static void setWifiInfoEnable(boolean z) {
        f70x = z;
    }

    public static void setXquicCongControl(int i) {
        if (i < 0) {
            return;
        }
        f64r = i;
    }
}
