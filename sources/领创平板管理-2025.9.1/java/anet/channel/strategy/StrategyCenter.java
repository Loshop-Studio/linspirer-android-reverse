package anet.channel.strategy;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class StrategyCenter {
    public static volatile IStrategyInstance instance;

    public static IStrategyInstance getInstance() {
        if (instance == null) {
            synchronized (StrategyCenter.class) {
                if (instance == null) {
                    instance = new C0402g();
                }
            }
        }
        return instance;
    }

    public static void setInstance(IStrategyInstance iStrategyInstance) {
        instance = iStrategyInstance;
    }
}
