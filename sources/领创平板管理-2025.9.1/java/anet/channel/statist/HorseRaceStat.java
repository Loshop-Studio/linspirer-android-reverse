package anet.channel.statist;

import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.AmdcStrategyResultParser;
import anet.channel.strategy.ConnProtocol;
import anet.channel.util.NetworkAddressRegistry;

/* compiled from: Taobao */
@Monitor(module = "networkPrefer", monitorPoint = "horseRace")
/* loaded from: classes.dex */
public class HorseRaceStat extends StatObject {

    @Dimension
    public volatile int connErrorCode;

    @Measure
    public volatile long connTime;

    @Dimension
    public volatile String host;

    /* renamed from: ip */
    @Dimension
    public volatile String f411ip;

    @Dimension
    public volatile String localIP;

    @Dimension
    public volatile String path;

    @Dimension
    public volatile int pingSuccessCount;

    @Dimension
    public volatile int pingTimeoutCount;

    @Dimension
    public volatile int port;

    @Dimension
    public volatile String protocol;

    @Dimension
    public volatile int reqErrorCode;

    @Measure
    public volatile long reqTime;

    @Dimension
    public volatile int connRet = 0;

    @Dimension
    public volatile int reqRet = 0;

    @Dimension
    public volatile String nettype = NetworkStatusHelper.getNetworkSubType();

    @Dimension
    public volatile String mnc = NetworkStatusHelper.getSimOp();

    @Dimension
    public volatile String bssid = NetworkStatusHelper.getWifiBSSID();

    @Dimension
    public volatile int ipStackType = NetworkAddressRegistry.m351c();

    public HorseRaceStat(String str, AmdcStrategyResultParser.e eVar) {
        this.host = str;
        this.f411ip = eVar.f551a;
        this.port = eVar.f552b.f521a;
        this.protocol = ConnProtocol.valueOf(eVar.f552b).name;
        this.path = eVar.f553c;
    }
}
