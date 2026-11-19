package anet.channel;

import android.text.TextUtils;
import anet.channel.entity.ENV;
import anet.channel.security.NetworkSecurityFactoryHolder;
import anet.channel.security.ISecurity;
import anet.channel.util.ALog;
import anet.channel.util.StringUtils;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public final class Config {

    /* renamed from: b */
    public String f73b;

    /* renamed from: c */
    public String f74c;

    /* renamed from: d */
    public ENV f75d = ENV.ONLINE;

    /* renamed from: e */
    public ISecurity f76e;

    /* renamed from: a */
    public static Map<String, Config> f72a = new HashMap();
    public static final Config DEFAULT_CONFIG = new Builder().setTag("[default]").setAppkey("[default]").setEnv(ENV.ONLINE).build();

    /* compiled from: Taobao */
    public static class Builder {

        /* renamed from: a */
        public String f77a;

        /* renamed from: b */
        public String f78b;

        /* renamed from: c */
        public ENV f79c = ENV.ONLINE;

        /* renamed from: d */
        public String f80d;

        /* renamed from: e */
        public String f81e;

        public Config build() {
            if (TextUtils.isEmpty(this.f78b)) {
                throw new RuntimeException("appkey can not be null or empty!");
            }
            synchronized (Config.f72a) {
                for (Config config : Config.f72a.values()) {
                    if (config.f75d == this.f79c && config.f74c.equals(this.f78b)) {
                        ALog.m342w("awcn.Config", "duplicated config exist!", null, "appkey", this.f78b, "env", this.f79c);
                        if (!TextUtils.isEmpty(this.f77a)) {
                            Config.f72a.put(this.f77a, config);
                        }
                        return config;
                    }
                }
                Config config2 = new Config();
                config2.f74c = this.f78b;
                config2.f75d = this.f79c;
                if (TextUtils.isEmpty(this.f77a)) {
                    config2.f73b = StringUtils.concatString(this.f78b, "$", this.f79c.toString());
                } else {
                    config2.f73b = this.f77a;
                }
                if (TextUtils.isEmpty(this.f81e)) {
                    config2.f76e = NetworkSecurityFactoryHolder.m205a().createSecurity(this.f80d);
                } else {
                    config2.f76e = NetworkSecurityFactoryHolder.m205a().createNonSecurity(this.f81e);
                }
                synchronized (Config.f72a) {
                    Config.f72a.put(config2.f73b, config2);
                }
                return config2;
            }
        }

        public Builder setAppSecret(String str) {
            this.f81e = str;
            return this;
        }

        public Builder setAppkey(String str) {
            this.f78b = str;
            return this;
        }

        public Builder setAuthCode(String str) {
            this.f80d = str;
            return this;
        }

        public Builder setEnv(ENV env) {
            this.f79c = env;
            return this;
        }

        public Builder setTag(String str) {
            this.f77a = str;
            return this;
        }
    }

    public static Config getConfig(String str, ENV env) {
        synchronized (f72a) {
            for (Config config : f72a.values()) {
                if (config.f75d == env && config.f74c.equals(str)) {
                    return config;
                }
            }
            return null;
        }
    }

    public static Config getConfigByTag(String str) {
        Config config;
        synchronized (f72a) {
            config = f72a.get(str);
        }
        return config;
    }

    public String getAppkey() {
        return this.f74c;
    }

    public ENV getEnv() {
        return this.f75d;
    }

    public ISecurity getSecurity() {
        return this.f76e;
    }

    public String getTag() {
        return this.f73b;
    }

    public String toString() {
        return this.f73b;
    }
}
