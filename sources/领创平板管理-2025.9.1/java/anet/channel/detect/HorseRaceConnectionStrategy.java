package anet.channel.detect;

import anet.channel.strategy.AmdcStrategyResultParser;
import anet.channel.strategy.ConnProtocol;
import anet.channel.strategy.IConnStrategy;

/* compiled from: Taobao */
/* renamed from: anet.channel.detect.j */
/* loaded from: classes.dex */
public final class HorseRaceConnectionStrategy implements IConnStrategy {

    /* renamed from: a */
    public final /* synthetic */ AmdcStrategyResultParser.e f215a;

    /* renamed from: b */
    public final /* synthetic */ ConnProtocol f216b;

    public HorseRaceConnectionStrategy(AmdcStrategyResultParser.e eVar, ConnProtocol connProtocol) {
        this.f215a = eVar;
        this.f216b = connProtocol;
    }

    @Override // anet.channel.strategy.IConnStrategy
    public int getConnectionTimeout() {
        return this.f215a.f552b.f523c;
    }

    @Override // anet.channel.strategy.IConnStrategy
    public int getHeartbeat() {
        return 0;
    }

    @Override // anet.channel.strategy.IConnStrategy
    public String getIp() {
        return this.f215a.f551a;
    }

    @Override // anet.channel.strategy.IConnStrategy
    public int getIpSource() {
        return 2;
    }

    @Override // anet.channel.strategy.IConnStrategy
    public int getIpType() {
        return 1;
    }

    @Override // anet.channel.strategy.IConnStrategy
    public int getPort() {
        return this.f215a.f552b.f521a;
    }

    @Override // anet.channel.strategy.IConnStrategy
    public ConnProtocol getProtocol() {
        return this.f216b;
    }

    @Override // anet.channel.strategy.IConnStrategy
    public int getReadTimeout() {
        return this.f215a.f552b.f524d;
    }

    @Override // anet.channel.strategy.IConnStrategy
    public int getRetryTimes() {
        return 0;
    }
}
