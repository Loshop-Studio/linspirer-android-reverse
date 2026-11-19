package anetwork.channel.stat;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class NetworkStat {
    public static INetworkStat getNetworkStat() {
        return NetworkStatCache.getInstance();
    }
}
