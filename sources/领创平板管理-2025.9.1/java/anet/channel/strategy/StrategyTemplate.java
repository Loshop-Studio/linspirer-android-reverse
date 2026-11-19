package anet.channel.strategy;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class StrategyTemplate {
    public Map<String, ConnProtocol> templateMap = new ConcurrentHashMap();

    /* compiled from: Taobao */
    /* renamed from: anet.channel.strategy.StrategyTemplate$a */
    public static class C0389a {

        /* renamed from: a */
        public static StrategyTemplate f480a = new StrategyTemplate();
    }

    public static StrategyTemplate getInstance() {
        return C0389a.f480a;
    }

    public ConnProtocol getConnProtocol(String str) {
        return this.templateMap.get(str);
    }

    public void registerConnProtocol(String str, ConnProtocol connProtocol) {
        if (connProtocol != null) {
            this.templateMap.put(str, connProtocol);
            try {
                IStrategyInstance strategyCenter = StrategyCenter.getInstance();
                if (strategyCenter instanceof C0402g) {
                    ((C0402g) strategyCenter).f510b.f465c.m288a(str, connProtocol);
                }
            } catch (Exception unused) {
            }
        }
    }
}
