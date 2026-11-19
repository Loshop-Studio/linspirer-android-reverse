package anet.channel;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import anet.channel.Config;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.appmonitor.AwcnAppMonitor;
import anet.channel.entity.SessionTypeFlags;
import anet.channel.entity.ConnType;
import anet.channel.entity.ENV;
import anet.channel.flow.NetworkAnalysis;
import anet.channel.fulltrace.FullTraceAnalysisRegistry;
import anet.channel.p002a.AwcnFullTraceAnalysis;
import anet.channel.p002a.AwcnNetworkFlowAnalysis;
import anet.channel.p004c.OrangeNetworkConfig;
import anet.channel.p005d.TaobaoLogAdapter;
import anet.channel.strategy.ConnProtocol;
import anet.channel.strategy.StrategyTemplate;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import anet.channel.util.HttpConstant;
import anet.channel.util.HttpUrl;
import anet.channel.util.StringUtils;
import anet.channel.util.Utils;
import anetwork.channel.config.NetworkConfigCenter;
import anetwork.channel.util.RequestConstant;
import java.io.Serializable;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.android.agoo.common.AgooConstants;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes.dex */
public class TaobaoNetworkAdapter implements Serializable {
    public static AtomicBoolean isInited = new AtomicBoolean();

    /* renamed from: a */
    public static void m66a(String str, String str2, ConnProtocol connProtocol, boolean z, boolean z2) {
        StrategyTemplate.getInstance().registerConnProtocol(str, connProtocol);
        if (z) {
            if (!z2) {
                SessionCenter.getInstance(new Config.Builder().setAppkey(str2).setEnv(ENV.ONLINE).build()).registerSessionInfo(SessionInfo.create(str, z, false, null, null, null));
            } else {
                SessionCenter.getInstance(new Config.Builder().setAppkey(str2).setEnv(ENV.ONLINE).build()).get(HttpUrl.parse(StringUtils.concatString(HttpConstant.HTTPS, HttpConstant.SCHEME_SPLIT, str)), SessionTypeFlags.f255a, 0L);
            }
        }
    }

    public static void init(Context context, HashMap<String, Object> map) throws JSONException {
        boolean z;
        if (isInited.compareAndSet(false, true)) {
            if (map != null && AgooConstants.TAOBAO_PACKAGE.equals(map.get("process"))) {
                AwcnConfig.setAccsSessionCreateForbiddenInBg(true);
                JSONArray jSONArray = new JSONArray();
                jSONArray.put("liveng-bfrtc.alibabausercontent.com");
                jSONArray.put("livecb-bfrtc.alibabausercontent.com");
                jSONArray.put("liveca-bfrtc.alibabausercontent.com");
                AwcnConfig.setHttpDnsNotifyWhiteList(jSONArray.toString());
            }
            if (map != null && "com.taobao.taobao:channel".equals(map.get("process")) && NetworkConfigCenter.isChannelLocalInstanceEnable()) {
                ALog.m339e("awcn.TaobaoNetworkAdapter", "channelLocalInstanceEnable", null, new Object[0]);
                NetworkConfigCenter.setRemoteNetworkServiceEnable(false);
            }
            ALog.setLog(new TaobaoLogAdapter());
            NetworkConfigCenter.setRemoteConfig(new OrangeNetworkConfig());
            AppMonitor.setInstance(new AwcnAppMonitor());
            NetworkAnalysis.setInstance(new AwcnNetworkFlowAnalysis());
            FullTraceAnalysisRegistry.m141a(new AwcnFullTraceAnalysis());
            ThreadPoolExecutorFactory.submitPriorityTask(new InstallNetworkCacheTask(), ThreadPoolExecutorFactory.Priority.NORMAL);
            if (map != null) {
                try {
                    if (AgooConstants.TAOBAO_PACKAGE.equals(map.get("process")) && ((Boolean) map.get("isDebuggable")).booleanValue()) {
                        Utils.invokeStaticMethodThrowException("com.taobao.android.request.analysis.RequestRecorder", "init", new Class[]{Context.class}, context);
                    }
                } catch (Exception e) {
                    ALog.m338e("awcn.TaobaoNetworkAdapter", "RequestRecorder error.", null, e, new Object[0]);
                }
            }
            if (map != null) {
                try {
                    if (!map.containsKey("isNextLaunch") || PreferenceManager.getDefaultSharedPreferences(context).getBoolean(AwcnConfig.NEXT_LAUNCH_FORBID, false)) {
                        z = false;
                    } else {
                        GlobalAppRuntimeInfo.addBucketInfo("isNextLaunch", RequestConstant.TRUE);
                        z = true;
                    }
                    AwcnConfig.setTbNextLaunch(z);
                } catch (Exception unused) {
                }
            }
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            boolean z2 = defaultSharedPreferences.getBoolean(AwcnConfig.HTTP3_ENABLE, true);
            AwcnConfig.setHttp3OrangeEnable(z2);
            if (z2 && map != null && AgooConstants.TAOBAO_PACKAGE.equals(map.get("process"))) {
                AwcnConfig.setHttp3Enable(true);
                ALog.m339e("awcn.TaobaoNetworkAdapter", "http3 enabled.", null, new Object[0]);
            }
            if (map != null) {
                try {
                    String str = (String) map.get("process");
                    boolean zContainsKey = map.containsKey("ngLaunch");
                    if (AgooConstants.TAOBAO_PACKAGE.equals(str)) {
                        if (defaultSharedPreferences.getBoolean(NetworkConfigCenter.SERVICE_OPTIMIZE, true)) {
                            NetworkConfigCenter.setBindServiceOptimize(true);
                            ALog.m339e("awcn.TaobaoNetworkAdapter", "bindservice optimize enabled.", null, new Object[0]);
                        }
                        String str2 = (String) map.get("onlineAppKey");
                        m66a("guide-acs.m.taobao.com", str2, ConnProtocol.valueOf(ConnType.HTTP2, ConnType.RTT_0, ConnType.PK_ACS), true, zContainsKey);
                        ConnProtocol connProtocolValueOf = ConnProtocol.valueOf(ConnType.HTTP2, ConnType.RTT_0, ConnType.PK_CDN);
                        m66a("gw.alicdn.com", str2, connProtocolValueOf, false, zContainsKey);
                        m66a("dorangesource.alicdn.com", str2, connProtocolValueOf, false, zContainsKey);
                        m66a("ossgw.alicdn.com", str2, connProtocolValueOf, false, zContainsKey);
                    }
                } catch (Exception unused2) {
                }
            }
        }
    }
}
