package anet.channel.strategy;

import anet.channel.AwcnConfig;
import anet.channel.entity.ConnType;
import anet.channel.p006e.C0339a;
import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.h */
/* loaded from: classes.dex */
public class C0403h implements IStrategyFilter {

    /* renamed from: a */
    public final /* synthetic */ C0402g f514a;

    public C0403h(C0402g c0402g) {
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
        boolean zM121b = C0339a.m121b();
        if ((zIsHttp3Enable && zM121b) || (!ConnType.HTTP3.equals(str) && !ConnType.HTTP3_PLAIN.equals(str))) {
            return true;
        }
        ALog.m340i("awcn.StrategyCenter", "http3 strategy disabled", null, "strategy", iConnStrategy);
        return false;
    }
}
