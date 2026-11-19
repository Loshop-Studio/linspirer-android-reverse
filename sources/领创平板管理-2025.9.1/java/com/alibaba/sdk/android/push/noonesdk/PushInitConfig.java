package com.alibaba.sdk.android.push.noonesdk;

import android.app.Application;
import com.google.zxing.client.android.InactivityTimer;

/* loaded from: classes.dex */
public class PushInitConfig {
    public String appKey;
    public String appSecret;
    public Application application;
    public boolean disableChannelProcess;
    public boolean disableChannelProcessHeartbeat;
    public boolean disableForegroundCheck;
    public long loopInterval;
    public boolean loopStartChannel;

    public static class Builder {
        public Application application;
        public String appKey = null;
        public String appSecret = null;
        public boolean disableChannelProcess = false;
        public boolean disableChannelProcessHeartbeat = true;
        public boolean loopStartChannel = false;
        public long loopInterval = InactivityTimer.INACTIVITY_DELAY_MS;
        public boolean disableForegroundCheck = false;

        public Builder appKey(String str) {
            this.appKey = str;
            return this;
        }

        public Builder appSecret(String str) {
            this.appSecret = str;
            return this;
        }

        public Builder application(Application application) {
            this.application = application;
            return this;
        }

        public PushInitConfig build() {
            return new PushInitConfig(this);
        }

        public Builder disableChannelProcess(boolean z) {
            this.disableChannelProcess = z;
            return this;
        }

        public Builder disableChannelProcessheartbeat(boolean z) {
            this.disableChannelProcessHeartbeat = z;
            return this;
        }

        public Builder disableForegroundCheck(boolean z) {
            this.disableForegroundCheck = z;
            return this;
        }

        public Builder loopInterval(long j) {
            this.loopInterval = j;
            return this;
        }

        public Builder loopStartChannel(boolean z) {
            this.loopStartChannel = z;
            return this;
        }
    }

    public PushInitConfig(Builder builder) {
        this.application = builder.application;
        this.appKey = builder.appKey;
        this.appSecret = builder.appSecret;
        this.disableChannelProcess = builder.disableChannelProcess;
        this.loopStartChannel = builder.loopStartChannel;
        this.loopInterval = builder.loopInterval;
        this.disableForegroundCheck = builder.disableForegroundCheck;
        this.disableChannelProcessHeartbeat = builder.disableChannelProcessHeartbeat;
    }

    public String getAppKey() {
        return this.appKey;
    }

    public String getAppSecret() {
        return this.appSecret;
    }

    public Application getApplication() {
        return this.application;
    }

    public long getLoopInterval() {
        return this.loopInterval;
    }

    public boolean isDisableChannelProcess() {
        return this.disableChannelProcess;
    }

    public boolean isDisableChannelProcessHeartbeat() {
        return this.disableChannelProcessHeartbeat;
    }

    public boolean isDisableForegroundCheck() {
        return this.disableForegroundCheck;
    }

    public boolean isLoopStartChannel() {
        return this.loopStartChannel;
    }
}
