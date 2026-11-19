package org.android.spdy;

import com.huawei.hms.framework.network.grs.GrsManager;

/* loaded from: classes.dex */
public class SessionInfo {
    public static int INVALID_PUBLIC_SEQNUM = -1;
    public String domain;
    public String host;
    public int mode;
    public int port;
    public String proxyHost;
    public int proxyPort;
    public SessionCb sessionCb;
    public Object sessionUserData;
    public String certHost = null;
    public int pubkey_seqnum = INVALID_PUBLIC_SEQNUM;
    public int connTimeoutMs = -1;

    public SessionInfo(String str, int i, String str2, String str3, int i2, Object obj, SessionCb sessionCb, int i3) {
        this.host = str;
        this.port = i;
        this.domain = str2;
        this.proxyHost = str3;
        this.proxyPort = i2;
        this.sessionUserData = obj;
        this.sessionCb = sessionCb;
        this.mode = i3;
    }

    public String getAuthority() {
        if (this.proxyHost == null || this.proxyPort == 0) {
            return this.host + ":" + this.port;
        }
        return this.host + ":" + this.port + GrsManager.SEPARATOR + this.proxyHost + ":" + this.proxyPort;
    }

    public String getCertHost() {
        if (this.pubkey_seqnum != INVALID_PUBLIC_SEQNUM) {
            return null;
        }
        return this.certHost;
    }

    public int getConnectionTimeoutMs() {
        return this.connTimeoutMs;
    }

    public String getDomain() {
        return this.domain;
    }

    public int getMode() {
        return this.mode;
    }

    public int getPubKeySeqNum() {
        return this.pubkey_seqnum;
    }

    public SessionCb getSessionCb() {
        return this.sessionCb;
    }

    public Object getSessonUserData() {
        return this.sessionUserData;
    }

    public void setCertHost(String str) {
        this.certHost = str;
    }

    public void setConnectionTimeoutMs(int i) {
        this.connTimeoutMs = i;
    }

    public void setPubKeySeqNum(int i) {
        this.pubkey_seqnum = i;
    }
}
