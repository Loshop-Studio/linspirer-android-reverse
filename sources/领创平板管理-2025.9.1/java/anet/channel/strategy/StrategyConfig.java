package anet.channel.strategy;

import android.text.TextUtils;
import anet.channel.strategy.C0407l;
import anet.channel.strategy.utils.C0413c;
import anet.channel.strategy.utils.SerialLruCache;
import anet.channel.util.ALog;
import anet.channel.util.HttpConstant;
import java.io.Serializable;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class StrategyConfig implements Serializable {
    public static final String NO_RESULT = "No_Result";

    /* renamed from: a */
    public SerialLruCache<String, String> f460a = null;

    /* renamed from: b */
    public Map<String, String> f461b = null;

    /* renamed from: c */
    public transient StrategyInfoHolder f462c = null;

    /* renamed from: a */
    public StrategyConfig m257a() {
        StrategyConfig strategyConfig = new StrategyConfig();
        synchronized (this) {
            strategyConfig.f460a = new SerialLruCache<>(this.f460a, 256);
            strategyConfig.f461b = new ConcurrentHashMap(this.f461b);
            strategyConfig.f462c = this.f462c;
        }
        return strategyConfig;
    }

    /* renamed from: b */
    public void m262b() {
        if (this.f460a == null) {
            this.f460a = new SerialLruCache<>(256);
        }
        if (this.f461b == null) {
            this.f461b = new ConcurrentHashMap();
        }
    }

    /* renamed from: b */
    public String m261b(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this) {
            str2 = this.f461b.get(str);
        }
        return str2;
    }

    /* renamed from: a */
    public void m259a(StrategyInfoHolder strategyInfoHolder) {
        this.f462c = strategyInfoHolder;
    }

    /* renamed from: a */
    public void m260a(C0407l.d dVar) {
        if (dVar.f544b == null) {
            return;
        }
        synchronized (this) {
            TreeMap treeMap = null;
            for (int i = 0; i < dVar.f544b.length; i++) {
                C0407l.b bVar = dVar.f544b[i];
                if (bVar.f538j) {
                    this.f460a.remove(bVar.f529a);
                } else if (bVar.f532d != null) {
                    if (treeMap == null) {
                        treeMap = new TreeMap();
                    }
                    treeMap.put(bVar.f529a, bVar.f532d);
                } else {
                    if (!HttpConstant.HTTP.equalsIgnoreCase(bVar.f531c) && !HttpConstant.HTTPS.equalsIgnoreCase(bVar.f531c)) {
                        this.f460a.put(bVar.f529a, NO_RESULT);
                    } else {
                        this.f460a.put(bVar.f529a, bVar.f531c);
                    }
                    if (!TextUtils.isEmpty(bVar.f533e)) {
                        this.f461b.put(bVar.f529a, bVar.f533e);
                    } else {
                        this.f461b.remove(bVar.f529a);
                    }
                }
            }
            if (treeMap != null) {
                for (Map.Entry entry : treeMap.entrySet()) {
                    String str = (String) entry.getValue();
                    if (this.f460a.containsKey(str)) {
                        this.f460a.put(entry.getKey(), this.f460a.get(str));
                    } else {
                        this.f460a.put(entry.getKey(), NO_RESULT);
                    }
                }
            }
        }
        if (ALog.isPrintLog(1)) {
            ALog.m337d("awcn.StrategyConfig", "", null, "SchemeMap", this.f460a.toString());
            ALog.m337d("awcn.StrategyConfig", "", null, "UnitMap", this.f461b.toString());
        }
    }

    /* renamed from: a */
    public String m258a(String str) {
        String str2;
        if (TextUtils.isEmpty(str) || !C0413c.m333c(str)) {
            return null;
        }
        synchronized (this) {
            str2 = this.f460a.get(str);
            if (str2 == null) {
                this.f460a.put(str, NO_RESULT);
            }
        }
        if (str2 == null) {
            this.f462c.m272d().m284a(str, false);
        } else if (NO_RESULT.equals(str2)) {
            return null;
        }
        return str2;
    }
}
