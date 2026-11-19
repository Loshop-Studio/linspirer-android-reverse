package anet.channel.p006e;

import anet.channel.entity.ConnType;
import anet.channel.strategy.ConnProtocol;
import anet.channel.strategy.IConnStrategy;

/* compiled from: Taobao */
/* renamed from: anet.channel.e.g */
/* loaded from: classes.dex */
public final class ProbeConnectionStrategy implements IConnStrategy {

    /* renamed from: a */
    public final /* synthetic */ IConnStrategy f246a;

    public ProbeConnectionStrategy(IConnStrategy iConnStrategy) {
        this.f246a = iConnStrategy;
    }

    @Override // anet.channel.strategy.IConnStrategy
    public int getConnectionTimeout() {
        return this.f246a.getConnectionTimeout();
    }

    @Override // anet.channel.strategy.IConnStrategy
    public int getHeartbeat() {
        return this.f246a.getHeartbeat();
    }

    @Override // anet.channel.strategy.IConnStrategy
    public String getIp() {
        return this.f246a.getIp();
    }

    @Override // anet.channel.strategy.IConnStrategy
    public int getIpSource() {
        return this.f246a.getIpSource();
    }

    @Override // anet.channel.strategy.IConnStrategy
    public int getIpType() {
        return this.f246a.getIpType();
    }

    @Override // anet.channel.strategy.IConnStrategy
    public int getPort() {
        return this.f246a.getPort();
    }

    @Override // anet.channel.strategy.IConnStrategy
    public ConnProtocol getProtocol() {
        this.f246a.getProtocol();
        return ConnProtocol.valueOf(ConnType.HTTP3_1RTT, null, null);
    }

    @Override // anet.channel.strategy.IConnStrategy
    public int getReadTimeout() {
        return this.f246a.getReadTimeout();
    }

    @Override // anet.channel.strategy.IConnStrategy
    public int getRetryTimes() {
        return this.f246a.getRetryTimes();
    }
}
