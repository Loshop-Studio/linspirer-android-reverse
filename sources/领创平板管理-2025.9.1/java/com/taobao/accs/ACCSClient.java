package com.taobao.accs;

import android.content.Context;
import android.text.TextUtils;
import anet.channel.AwcnConfig;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.SessionCenter;
import anet.channel.entity.ENV;
import anet.channel.util.ALog;
import anetwork.channel.util.RequestConstant;
import com.alibaba.sdk.android.logger.ILog;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.ACCSManager;
import com.taobao.accs.AccsClientConfig;
import com.taobao.accs.ChannelService;
import com.taobao.accs.base.AccsAbstractDataListener;
import com.taobao.accs.base.TaoBaseService;
import com.taobao.accs.client.GlobalClientInfo;
import com.taobao.accs.common.Constants;
import com.taobao.accs.internal.AccsJobService;
import com.taobao.accs.utl.AccsLogger;
import com.taobao.accs.utl.AdapterUtilityImpl;
import com.taobao.accs.utl.C1975c;
import com.taobao.accs.utl.C1981i;
import com.taobao.accs.utl.C1983k;
import com.taobao.accs.utl.C1984l;
import com.taobao.accs.utl.UtilityImpl;
import com.taobao.accs.utl.Utils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class ACCSClient {
    public static ILog defaultLog = AccsLogger.getLogger("ACCSClient");
    public static Map<String, ACCSClient> mACCSClients = new ConcurrentHashMap(2);
    public static Context mContext;
    public HashSet<ConnectionListener> listeners = new HashSet<>();
    public ILog log;
    public IACCSManager mAccsManager;
    public AccsClientConfig mConfig;

    public ACCSClient(AccsClientConfig accsClientConfig) {
        this.mConfig = accsClientConfig;
        StringBuilder sbM1765j = CompilerOutline.m1765j("ACCSClient");
        sbM1765j.append(accsClientConfig.getTag());
        this.log = AccsLogger.getLogger(sbM1765j.toString());
        this.mAccsManager = ACCSManager.getAccsInstance(mContext, accsClientConfig.getAppKey(), accsClientConfig.getTag());
    }

    public static void changeNetworkSdkLoggerToAccs() {
        defaultLog.mo664d("changeNetworkSdkLoggerToAccs");
        ALog.setLog(new C1983k(new C1984l(), C1981i.m5789a()));
    }

    public static void enableChannelProcess(Context context, boolean z) {
        UtilityImpl.m5746a(context, z);
        try {
            if (z) {
                try {
                    UtilityImpl.m5743a(context, ChannelService.class.getName());
                } catch (Throwable unused) {
                }
                UtilityImpl.m5743a(context, ChannelService.KernelService.class.getName());
            } else {
                try {
                    UtilityImpl.m5752b(context, ChannelService.class.getName());
                } catch (Throwable unused2) {
                }
                UtilityImpl.m5752b(context, ChannelService.KernelService.class.getName());
            }
        } catch (Throwable unused3) {
        }
    }

    public static void enableChannelProcessHeartbeat(Context context, boolean z) {
        try {
            if (z) {
                try {
                    UtilityImpl.m5743a(context, EventReceiver.class.getName());
                } catch (Throwable unused) {
                }
                try {
                    UtilityImpl.m5743a(context, ServiceReceiver.class.getName());
                } catch (Throwable unused2) {
                }
                UtilityImpl.m5743a(context, AccsJobService.class.getName());
            } else {
                try {
                    UtilityImpl.m5752b(context, EventReceiver.class.getName());
                } catch (Throwable unused3) {
                }
                try {
                    UtilityImpl.m5752b(context, ServiceReceiver.class.getName());
                } catch (Throwable unused4) {
                }
                UtilityImpl.m5752b(context, AccsJobService.class.getName());
            }
        } catch (Throwable unused5) {
        }
    }

    public static synchronized ACCSClient getAccsClient(String str) {
        if (TextUtils.isEmpty(str)) {
            str = AccsClientConfig.DEFAULT_CONFIGTAG;
            defaultLog.mo671w("getAccsClient with null tag, use default");
        }
        AccsClientConfig configByTag = AccsClientConfig.getConfigByTag(str);
        if (configByTag == null) {
            defaultLog.mo668e("getAccsClient with null config, please init config first", Constants.KEY_CONFIG_TAG, str);
            throw new AccsException("configTag not exist");
        }
        ACCSClient aCCSClient = mACCSClients.get(str);
        if (aCCSClient != null) {
            if (!configByTag.equals(aCCSClient.mConfig)) {
                defaultLog.mo673w("getAccsClient update config", "old", aCCSClient.mConfig, "new", configByTag);
                aCCSClient.updateConfig(configByTag);
            }
            return aCCSClient;
        }
        defaultLog.mo664d("getAccsClient create client");
        ACCSClient aCCSClient2 = new ACCSClient(configByTag);
        mACCSClients.put(str, aCCSClient2);
        aCCSClient2.updateConfig(configByTag);
        return aCCSClient2;
    }

    public static synchronized String init(Context context, AccsClientConfig accsClientConfig) {
        if (context == null || accsClientConfig == null) {
            defaultLog.mo668e("init AccsClient params error", "context", context, "config", accsClientConfig);
            throw new AccsException("init AccsClient params error");
        }
        GlobalClientInfo.getInstance(context);
        mContext = context.getApplicationContext();
        setCurrentProcessName(context);
        defaultLog.mo665d("init", "config", accsClientConfig);
        AccsState.getInstance().m5449a(AccsState.SDK_VERSION, "4.6.2-emas");
        changeNetworkSdkLoggerToAccs();
        try {
            AwcnConfig.setAccsSessionCreateForbiddenInBg(false);
        } catch (Throwable unused) {
        }
        return accsClientConfig.getTag();
    }

    public static void setCurrentProcessName(Context context) {
        try {
            GlobalAppRuntimeInfo.setCurrentProcess(AdapterUtilityImpl.getProcessName(context.getApplicationContext()));
        } catch (Throwable th) {
            defaultLog.mo667e("setCurrentProcess", th);
        }
    }

    public static synchronized void setEnvironment(Context context, @AccsClientConfig.ENV int i) {
        if (i < 0 || i > 2) {
            try {
                defaultLog.mo673w("env invalid, reset to release", "env", Integer.valueOf(i));
                i = 0;
            } finally {
                try {
                } finally {
                }
            }
        }
        int i2 = AccsClientConfig.mEnv;
        AccsClientConfig.mEnv = i;
        if (i2 != i && Utils.isMainProcess(context)) {
            defaultLog.mo670i("setEnvironment", RequestConstant.ENV_PRE, Integer.valueOf(i2), "to", Integer.valueOf(i));
            Utils.clearAllSharePreferences(context);
            Utils.clearAgooBindCache(context);
            Utils.killService(context);
            if (i == 2) {
                SessionCenter.switchEnvironment(ENV.TEST);
            } else if (i == 1) {
                SessionCenter.switchEnvironment(ENV.PREPARE);
            }
            Iterator<Map.Entry<String, ACCSClient>> it = mACCSClients.entrySet().iterator();
            while (it.hasNext()) {
                try {
                    getAccsClient(it.next().getKey());
                } catch (AccsException e) {
                    defaultLog.mo667e("setEnvironment update client", e);
                }
            }
        }
    }

    private void updateConfig(AccsClientConfig accsClientConfig) {
        this.mConfig = accsClientConfig;
        IACCSManager accsInstance = ACCSManager.getAccsInstance(mContext, accsClientConfig.getAppKey(), accsClientConfig.getTag());
        this.mAccsManager = accsInstance;
        if (accsInstance != null) {
            accsInstance.updateConfig(accsClientConfig);
        }
    }

    public void addConnectionListener(ConnectionListener connectionListener) {
        if (connectionListener != null) {
            this.listeners.add(connectionListener);
        }
    }

    public void bindApp(String str, IAppReceiver iAppReceiver) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager != null) {
            iACCSManager.bindApp(mContext, this.mConfig.getAppKey(), this.mConfig.getAppSecret(), str, iAppReceiver);
        } else {
            this.log.mo666e("bindApp mAccsManager null");
            C1975c.m5776a(AccsErrorCode.ERROR_SHOULD_NEVER_HAPPEN.copy().detail("bindApp accs is null").build(), iAppReceiver, null);
        }
    }

    public void bindService(String str) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager == null) {
            this.log.mo666e("bindService mAccsManager null");
        } else {
            iACCSManager.bindService(mContext, str);
        }
    }

    public void bindUser(String str) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager == null) {
            this.log.mo666e("bindUser mAccsManager null");
        } else {
            iACCSManager.bindUser(mContext, str);
        }
    }

    public boolean cancel(String str) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager != null) {
            return iACCSManager.cancel(mContext, str);
        }
        this.log.mo666e("cancel mAccsManager null");
        return false;
    }

    public void cleanLocalBindInfo() {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager == null) {
            this.log.mo666e("cleanLocalBindInfo mAccsManager null");
        } else {
            iACCSManager.cleanLocalBindInfo();
        }
    }

    public void clearLoginInfo() {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager == null) {
            this.log.mo666e("clearLoginInfo mAccsManager null");
        } else {
            iACCSManager.clearLoginInfo(mContext);
        }
    }

    public void disconnect() {
        this.mAccsManager.disconnect();
    }

    public Map<String, Boolean> forceReConnectChannel() {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager != null) {
            return iACCSManager.forceReConnectChannel();
        }
        this.log.mo666e("forceReConnectChannel mAccsManager null");
        return null;
    }

    public Map<String, Boolean> getChannelState() {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager != null) {
            return iACCSManager.getChannelState();
        }
        this.log.mo666e("getChannelState mAccsManager null");
        return null;
    }

    public List<ConnectionListener> getConnectionListeners() {
        return new ArrayList(this.listeners);
    }

    public int getLastConnectErrorCode() {
        return this.mAccsManager.getLastConnectErrorCode();
    }

    public boolean isChannelError(int i) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager != null) {
            return iACCSManager.isChannelError(i);
        }
        this.log.mo666e("isChannelError mAccsManager null");
        return true;
    }

    public boolean isConnected() {
        return this.mAccsManager.isConnected();
    }

    public boolean isNetworkReachable() {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager != null) {
            return iACCSManager.isNetworkReachable(mContext);
        }
        this.log.mo666e("isNetworkReachable mAccsManager null");
        return false;
    }

    public void reconnect() {
        this.mAccsManager.reconnect();
    }

    public void registerDataListener(String str, AccsAbstractDataListener accsAbstractDataListener) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager == null) {
            this.log.mo666e("registerDataListener mAccsManager null");
        } else {
            iACCSManager.registerDataListener(mContext, str, accsAbstractDataListener);
        }
    }

    public void registerSerivce(String str, String str2) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager == null) {
            this.log.mo666e("registerSerivce mAccsManager null");
        } else {
            iACCSManager.registerSerivce(mContext, str, str2);
        }
    }

    public void removeConnectionListener(ConnectionListener connectionListener) {
        if (connectionListener != null) {
            this.listeners.remove(connectionListener);
        }
    }

    public void reset() {
        this.mAccsManager.reset();
    }

    public void sendBusinessAck(String str, String str2, String str3, short s, String str4, Map<Integer, String> map) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager == null) {
            this.log.mo666e("sendBusinessAck mAccsManager null");
        } else {
            iACCSManager.sendBusinessAck(str, str2, str3, s, str4, map);
        }
    }

    public String sendData(ACCSManager.AccsRequest accsRequest) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager != null) {
            return iACCSManager.sendData(mContext, accsRequest);
        }
        this.log.mo666e("sendData mAccsManager null");
        return null;
    }

    public String sendPushResponse(ACCSManager.AccsRequest accsRequest, TaoBaseService.ExtraInfo extraInfo) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager != null) {
            return iACCSManager.sendPushResponse(mContext, accsRequest, extraInfo);
        }
        this.log.mo666e("sendPushResponse mAccsManager null");
        return null;
    }

    public String sendRequest(ACCSManager.AccsRequest accsRequest) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager != null) {
            return iACCSManager.sendRequest(mContext, accsRequest);
        }
        this.log.mo666e("sendRequest mAccsManager null");
        return null;
    }

    public void setLoginInfo(ILoginInfo iLoginInfo) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager == null) {
            this.log.mo666e("setLoginInfo mAccsManager null");
        } else {
            iACCSManager.setLoginInfo(mContext, iLoginInfo);
        }
    }

    public void startInAppConnection(String str, IAppReceiver iAppReceiver) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager == null) {
            this.log.mo666e("startInAppConnection mAccsManager null");
        } else {
            iACCSManager.startInAppConnection(mContext, this.mConfig.getAppKey(), this.mConfig.getAppSecret(), str, iAppReceiver);
        }
    }

    public void unRegisterDataListener(String str) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager == null) {
            this.log.mo666e("unRegisterDataListener mAccsManager null");
        } else {
            iACCSManager.unRegisterDataListener(mContext, str);
        }
    }

    public void unRegisterSerivce(String str) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager == null) {
            this.log.mo666e("unRegisterSerivce mAccsManager null");
        } else {
            iACCSManager.unRegisterSerivce(mContext, str);
        }
    }

    public void unbindService(String str) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager == null) {
            this.log.mo666e("unbindService mAccsManager null");
        } else {
            iACCSManager.unbindService(mContext, str);
        }
    }

    public void unbindUser() {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager == null) {
            this.log.mo666e("unbindUser mAccsManager null");
        } else {
            iACCSManager.unbindUser(mContext);
        }
    }

    public void bindUser(String str, boolean z) {
        IACCSManager iACCSManager = this.mAccsManager;
        if (iACCSManager == null) {
            this.log.mo666e("bindUser mAccsManager null");
        } else {
            iACCSManager.bindUser(mContext, str, z);
        }
    }
}
