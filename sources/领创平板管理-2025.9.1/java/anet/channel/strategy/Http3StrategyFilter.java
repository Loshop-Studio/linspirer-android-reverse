package anet.channel.strategy;

import anet.channel.AwcnConfig;
import anet.channel.entity.ConnType;
import anet.channel.p006e.ConnectionProtocolDetector;
import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.h */
/* loaded from: classes.dex */
public class Http3StrategyFilter implements IStrategyFilter {

    /* renamed from: a */
    public final /* synthetic */ NetworkStrategyCenter f514a;

    public Http3StrategyFilter(NetworkStrategyCenter c0402g) {
        this.f514a = c0402g;
    }

    @Override // anet.channel.strategy.IStrategyFilter
    public boolean accept(IConnStrategy iConnStrategy) {
        String str = iConnStrategy.getProtocol().protocol;
        if (ConnType.QUIC.equals(str) || ConnType.QUIC_PLAIN.equals(str)) {
            ALog.m340i("awcn.StrategyCenter", "gquic strategy disabled", null, "strategy", iConnStrategy);
            return false;
        }
        boolean zIsHttp3Enable = AwcnConfig.isHttp3Enable();
        boolean zM121b = ConnectionProtocolDetector.m121b();
        if ((zIsHttp3Enable && zM121b) || (!ConnType.HTTP3.equals(str) && !ConnType.HTTP3_PLAIN.equals(str))) {
            return true;
        }
        ALog.m340i("awcn.StrategyCenter", "http3 strategy disabled", null, "strategy", iConnStrategy);
        return false;
    }
}
