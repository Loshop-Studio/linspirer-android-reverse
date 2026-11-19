package com.taobao.accs;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.sdk.android.logger.ILog;
import com.google.zxing.client.android.InactivityTimer;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.common.Constants;
import com.taobao.accs.utl.AccsLogger;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class AccsClientConfig {
    public static final String DEFAULT_CONFIGTAG = "default";
    public static final int SECURITY_OFF = 2;
    public static final int SECURITY_OPEN = 1;
    public static final int SECURITY_TAOBAO = 0;
    public static Context mContext;
    public long loopInterval;
    public boolean mAccsHeartbeatEnable;
    public String mAppKey;
    public String mAppSecret;
    public String mAuthCode;
    public boolean mAutoUnit;
    public String mChannelHost;
    public boolean mChannelLoopStart;
    public int mChannelPubKey;
    public int mConfigEnv;
    public boolean mDisableChannel;
    public String mInappHost;
    public int mInappPubKey;
    public boolean mKeepalive;
    public boolean mQuickReconnect;
    public int mSecurity;
    public String mStoreId;
    public String mTag;
    public static ILog log = AccsLogger.getLogger("AccsClientConfig");
    public static final String[] DEFAULT_CENTER_HOSTS = {"msgacs.m.taobao.com", "msgacs.wapa.taobao.com", "msgacs.waptest.taobao.com"};
    public static final String[] DEFAULT_CHANNEL_HOSTS = {"accscdn.m.taobao.com", "acs.wapa.taobao.com", "acs.waptest.taobao.com"};

    @Deprecated
    public static boolean loadedStaticConfig = true;

    @ENV
    public static int mEnv = 0;
    public static Map<String, AccsClientConfig> mReleaseConfigs = new ConcurrentHashMap(1);
    public static Map<String, AccsClientConfig> mPreviewConfigs = new ConcurrentHashMap(1);
    public static Map<String, AccsClientConfig> mDebugConfigs = new ConcurrentHashMap(1);

    /* compiled from: Taobao */
    public static class Builder {
        public String mAppKey;
        public String mAppSecret;
        public String mAuthCode;
        public String mChannelHost;
        public String mInappHost;
        public String mStoreId;
        public String mTag;
        public int mInappPubKey = -1;
        public int mChannelPubKey = -1;
        public boolean mKeepalive = true;
        public boolean mAutoUnit = true;
        public int mConfigEnv = -1;
        public boolean mDisableChannel = false;
        public boolean mQuickReconnect = false;
        public boolean mAccsHeartbeatEnable = false;
        public boolean mChannelLoopStart = false;
        public long loopInterval = InactivityTimer.INACTIVITY_DELAY_MS;

        public AccsClientConfig build() throws AccsException {
            if (TextUtils.isEmpty(this.mAppKey)) {
                throw new AccsException("appkey null");
            }
            if (TextUtils.isEmpty(this.mAppSecret)) {
                throw new AccsException("appSecret null");
            }
            AccsClientConfig accsClientConfig = new AccsClientConfig();
            accsClientConfig.mAppKey = this.mAppKey;
            accsClientConfig.mAppSecret = this.mAppSecret;
            accsClientConfig.mAuthCode = this.mAuthCode;
            accsClientConfig.mKeepalive = this.mKeepalive;
            accsClientConfig.mAutoUnit = this.mAutoUnit;
            accsClientConfig.mInappPubKey = this.mInappPubKey;
            accsClientConfig.mChannelPubKey = this.mChannelPubKey;
            accsClientConfig.mInappHost = this.mInappHost;
            accsClientConfig.mChannelHost = this.mChannelHost;
            accsClientConfig.mTag = this.mTag;
            accsClientConfig.mStoreId = this.mStoreId;
            accsClientConfig.mConfigEnv = this.mConfigEnv;
            accsClientConfig.mDisableChannel = this.mDisableChannel;
            accsClientConfig.mQuickReconnect = this.mQuickReconnect;
            accsClientConfig.mAccsHeartbeatEnable = this.mAccsHeartbeatEnable;
            accsClientConfig.mChannelLoopStart = this.mChannelLoopStart;
            accsClientConfig.loopInterval = this.loopInterval;
            if (accsClientConfig.mConfigEnv < 0) {
                accsClientConfig.mConfigEnv = AccsClientConfig.mEnv;
            }
            accsClientConfig.mSecurity = 2;
            if (TextUtils.isEmpty(accsClientConfig.mInappHost)) {
                accsClientConfig.mInappHost = AccsClientConfig.DEFAULT_CENTER_HOSTS[accsClientConfig.mConfigEnv];
            }
            if (TextUtils.isEmpty(accsClientConfig.mChannelHost)) {
                accsClientConfig.mChannelHost = AccsClientConfig.DEFAULT_CHANNEL_HOSTS[accsClientConfig.mConfigEnv];
            }
            if (TextUtils.isEmpty(accsClientConfig.mTag)) {
                accsClientConfig.mTag = accsClientConfig.mAppKey;
            }
            int i = accsClientConfig.mConfigEnv;
            Map map = i != 1 ? i != 2 ? AccsClientConfig.mReleaseConfigs : AccsClientConfig.mDebugConfigs : AccsClientConfig.mPreviewConfigs;
            AccsClientConfig.log.mo665d("build config", accsClientConfig);
            AccsClientConfig accsClientConfig2 = (AccsClientConfig) map.get(accsClientConfig.getTag());
            if (accsClientConfig2 != null) {
                AccsClientConfig.log.mo673w("build cover", "old", accsClientConfig2, "new", accsClientConfig);
            }
            map.put(accsClientConfig.getTag(), accsClientConfig);
            return accsClientConfig;
        }

        public Builder loopChannelInterval(long j) {
            this.loopInterval = j;
            return this;
        }

        public Builder loopChannelStart(boolean z) {
            this.mChannelLoopStart = z;
            return this;
        }

        public Builder setAccsHeartbeatEnable(boolean z) {
            this.mAccsHeartbeatEnable = z;
            return this;
        }

        public Builder setAppKey(String str) {
            this.mAppKey = str;
            return this;
        }

        public Builder setAppSecret(String str) {
            this.mAppSecret = str;
            return this;
        }

        @Deprecated
        public Builder setAutoCode(String str) {
            this.mAuthCode = str;
            return this;
        }

        public Builder setAutoUnit(boolean z) {
            this.mAutoUnit = z;
            return this;
        }

        public Builder setChannelHost(String str) {
            this.mChannelHost = str;
            return this;
        }

        public Builder setChannelPubKey(int i) {
            this.mChannelPubKey = i;
            return this;
        }

        public Builder setConfigEnv(@ENV int i) {
            this.mConfigEnv = i;
            return this;
        }

        public Builder setDisableChannel(boolean z) {
            this.mDisableChannel = z;
            return this;
        }

        public Builder setInappHost(String str) {
            this.mInappHost = str;
            return this;
        }

        public Builder setInappPubKey(int i) {
            this.mInappPubKey = i;
            return this;
        }

        public Builder setKeepAlive(boolean z) {
            this.mKeepalive = z;
            return this;
        }

        public Builder setQuickReconnect(boolean z) {
            this.mQuickReconnect = z;
            return this;
        }

        public Builder setStoreId(String str) {
            this.mStoreId = str;
            return this;
        }

        public Builder setTag(String str) {
            this.mTag = str;
            return this;
        }
    }

    /* compiled from: Taobao */
    @Retention(RetentionPolicy.CLASS)
    public @interface ENV {
    }

    /* compiled from: Taobao */
    @Retention(RetentionPolicy.CLASS)
    public @interface SECURITY_TYPE {
    }

    @Deprecated
    public static AccsClientConfig getConfig(String str) {
        int i = mEnv;
        for (AccsClientConfig accsClientConfig : (i != 1 ? i != 2 ? mReleaseConfigs : mDebugConfigs : mPreviewConfigs).values()) {
            if (accsClientConfig.mAppKey.equals(str) && accsClientConfig.mConfigEnv == mEnv) {
                return accsClientConfig;
            }
        }
        log.mo668e("getConfigByTag return null", Constants.KEY_APP_KEY, str);
        return null;
    }

    public static AccsClientConfig getConfigByTag(String str) {
        int i = mEnv;
        AccsClientConfig accsClientConfig = (i != 1 ? i != 2 ? mReleaseConfigs : mDebugConfigs : mPreviewConfigs).get(str);
        if (accsClientConfig == null) {
            log.mo673w("getConfigByTag return null", Constants.KEY_CONFIG_TAG, str);
        }
        return accsClientConfig;
    }

    public static Context getContext() {
        Context context = mContext;
        if (context != null) {
            return context;
        }
        synchronized (AccsClientConfig.class) {
            if (mContext != null) {
                return mContext;
            }
            try {
                Class<?> cls = Class.forName("android.app.ActivityThread");
                Object objInvoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(cls, new Object[0]);
                mContext = (Context) objInvoke.getClass().getMethod("getApplication", new Class[0]).invoke(objInvoke, new Object[0]);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return mContext;
        }
    }

    public static List<String> tags() {
        int i = mEnv;
        return new ArrayList((i != 1 ? i != 2 ? mReleaseConfigs : mDebugConfigs : mPreviewConfigs).keySet());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AccsClientConfig.class != obj.getClass()) {
            return false;
        }
        AccsClientConfig accsClientConfig = (AccsClientConfig) obj;
        if (!this.mInappHost.equals(accsClientConfig.mInappHost) || this.mInappPubKey != accsClientConfig.mInappPubKey || !this.mChannelHost.equals(accsClientConfig.mChannelHost) || this.mChannelPubKey != accsClientConfig.mChannelPubKey || this.mSecurity != accsClientConfig.mSecurity || this.mConfigEnv != accsClientConfig.mConfigEnv || !this.mAppKey.equals(accsClientConfig.mAppKey) || this.mKeepalive != accsClientConfig.mKeepalive || this.mDisableChannel != accsClientConfig.mDisableChannel) {
            return false;
        }
        String str = this.mAuthCode;
        if (str == null ? accsClientConfig.mAuthCode != null : !str.equals(accsClientConfig.mAuthCode)) {
            return false;
        }
        String str2 = this.mAppSecret;
        if (str2 == null ? accsClientConfig.mAppSecret == null : str2.equals(accsClientConfig.mAppSecret)) {
            return this.mTag.equals(accsClientConfig.mTag);
        }
        return false;
    }

    public String getAppKey() {
        return this.mAppKey;
    }

    public String getAppSecret() {
        return this.mAppSecret;
    }

    public String getAuthCode() {
        return this.mAuthCode;
    }

    public String getChannelHost() {
        return this.mChannelHost;
    }

    public int getChannelPubKey() {
        return this.mChannelPubKey;
    }

    public int getConfigEnv() {
        return this.mConfigEnv;
    }

    public boolean getDisableChannel() {
        return this.mDisableChannel;
    }

    public String getInappHost() {
        return this.mInappHost;
    }

    public int getInappPubKey() {
        return this.mInappPubKey;
    }

    public long getLoopInterval() {
        return this.loopInterval;
    }

    public int getSecurity() {
        return this.mSecurity;
    }

    public String getStoreId() {
        return this.mStoreId;
    }

    public String getTag() {
        return this.mTag;
    }

    public boolean isAccsHeartbeatEnable() {
        return this.mAccsHeartbeatEnable;
    }

    public boolean isAutoUnit() {
        return this.mAutoUnit;
    }

    public boolean isChannelLoopStart() {
        return this.mChannelLoopStart;
    }

    public boolean isKeepalive() {
        return this.mKeepalive;
    }

    public boolean isQuickReconnect() {
        return this.mQuickReconnect;
    }

    public String toString() {
        StringBuilder sbM1767l = CompilerOutline.m1767l("AccsClientConfig{", "Tag=");
        sbM1767l.append(this.mTag);
        sbM1767l.append(", ConfigEnv=");
        sbM1767l.append(this.mConfigEnv);
        sbM1767l.append(", AppKey=");
        sbM1767l.append(this.mAppKey);
        sbM1767l.append(", AppSecret=");
        sbM1767l.append(this.mAppSecret);
        sbM1767l.append(", InappHost=");
        sbM1767l.append(this.mInappHost);
        sbM1767l.append(", ChannelHost=");
        sbM1767l.append(this.mChannelHost);
        sbM1767l.append(", Security=");
        sbM1767l.append(this.mSecurity);
        sbM1767l.append(", AuthCode=");
        sbM1767l.append(this.mAuthCode);
        sbM1767l.append(", InappPubKey=");
        sbM1767l.append(this.mInappPubKey);
        sbM1767l.append(", ChannelPubKey=");
        sbM1767l.append(this.mChannelPubKey);
        sbM1767l.append(", Keepalive=");
        sbM1767l.append(this.mKeepalive);
        sbM1767l.append(", AutoUnit=");
        sbM1767l.append(this.mAutoUnit);
        sbM1767l.append(", DisableChannel=");
        sbM1767l.append(this.mDisableChannel);
        sbM1767l.append(", QuickReconnect=");
        sbM1767l.append(this.mQuickReconnect);
        sbM1767l.append("}");
        return sbM1767l.toString();
    }
}
