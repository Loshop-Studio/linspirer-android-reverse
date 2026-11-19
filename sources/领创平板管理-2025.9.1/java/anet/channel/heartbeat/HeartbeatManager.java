package anet.channel.heartbeat;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class HeartbeatManager {
    public static IHeartbeat getDefaultBackgroundAccsHeartbeat() {
        return new SessionPingHeartbeat();
    }

    public static IHeartbeat getDefaultHeartbeat() {
        return new DefaultSessionHeartbeat();
    }
}
