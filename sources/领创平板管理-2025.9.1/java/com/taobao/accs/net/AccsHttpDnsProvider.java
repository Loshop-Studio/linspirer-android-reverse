package com.taobao.accs.net;

import anet.channel.entity.ConnType;
import anet.channel.strategy.IConnStrategy;
import anet.channel.strategy.StrategyCenter;
import anet.channel.strategy.dispatch.HttpDispatcher;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.utl.ALog;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.g */
/* loaded from: classes.dex */
public class AccsHttpDnsProvider {

    /* renamed from: a */
    public int f6240a = 0;

    /* renamed from: b */
    public List<IConnStrategy> f6241b = new ArrayList();

    public AccsHttpDnsProvider(String str) {
        HttpDispatcher.getInstance().addListener(new AccsDispatchListener(this));
        m5665a(str);
    }

    /* renamed from: a */
    public List<IConnStrategy> m5665a(String str) {
        List<IConnStrategy> connStrategyListByHost;
        if ((this.f6240a == 0 || this.f6241b.isEmpty()) && (connStrategyListByHost = StrategyCenter.getInstance().getConnStrategyListByHost(str)) != null && !connStrategyListByHost.isEmpty()) {
            this.f6241b.clear();
            for (IConnStrategy iConnStrategy : connStrategyListByHost) {
                ConnType connTypeValueOf = ConnType.valueOf(iConnStrategy.getProtocol());
                if (connTypeValueOf.getTypeLevel() == ConnType.TypeLevel.SPDY && connTypeValueOf.isSSL()) {
                    this.f6241b.add(iConnStrategy);
                }
            }
        }
        return this.f6241b;
    }

    /* renamed from: b */
    public void m5666b() {
        this.f6240a++;
        if (ALog.isPrintLog(ALog.Level.D)) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("updateStrategyPos StrategyPos:");
            sbM1765j.append(this.f6240a);
            ALog.m5726d("HttpDnsProvider", sbM1765j.toString(), new Object[0]);
        }
    }

    /* renamed from: c */
    public int m5668c() {
        return this.f6240a;
    }

    /* renamed from: b */
    public void m5667b(String str) {
        StrategyCenter.getInstance().forceRefreshStrategy(str);
    }

    /* renamed from: a */
    public IConnStrategy m5663a() {
        return m5664a(this.f6241b);
    }

    /* renamed from: a */
    public IConnStrategy m5664a(List<IConnStrategy> list) {
        if (list != null && !list.isEmpty()) {
            int i = this.f6240a;
            if (i < 0 || i >= list.size()) {
                this.f6240a = 0;
            }
            return list.get(this.f6240a);
        }
        ALog.m5726d("HttpDnsProvider", "strategys null or 0", new Object[0]);
        return null;
    }
}
