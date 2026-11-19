package anet.channel.strategy;

import android.text.TextUtils;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.entity.ConnType;
import anet.channel.p006e.C0339a;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.C0407l;
import anet.channel.strategy.dispatch.AmdcRuntimeInfo;
import anet.channel.strategy.dispatch.HttpDispatcher;
import anet.channel.strategy.utils.C0413c;
import anet.channel.strategy.utils.SerialLruCache;
import anet.channel.util.ALog;
import anet.channel.util.AppLifecycle;
import anet.channel.util.HttpConstant;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.common.Constants;
import java.io.Serializable;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class StrategyTable implements Serializable {

    /* renamed from: e */
    public static Comparator<StrategyCollection> f473e = new C0410o();

    /* renamed from: a */
    public String f474a;

    /* renamed from: b */
    public volatile String f475b;

    /* renamed from: c */
    public Map<String, Long> f476c;

    /* renamed from: d */
    public transient boolean f477d = false;

    /* renamed from: f */
    public HostLruCache f478f;

    /* renamed from: g */
    public volatile transient int f479g;

    /* compiled from: Taobao */
    public static class HostLruCache extends SerialLruCache<String, StrategyCollection> {
        public HostLruCache(int i) {
            super(i);
        }

        @Override // anet.channel.strategy.utils.SerialLruCache
        public boolean entryRemoved(Map.Entry<String, StrategyCollection> entry) {
            if (!entry.getValue().f455d) {
                return true;
            }
            Iterator<Map.Entry<String, StrategyCollection>> it = entrySet().iterator();
            while (it.hasNext()) {
                if (!it.next().getValue().f455d) {
                    it.remove();
                    return false;
                }
            }
            return false;
        }
    }

    public StrategyTable(String str) {
        this.f474a = str;
        m282a();
    }

    /* renamed from: b */
    private void m279b() {
        if (HttpDispatcher.getInstance().isInitHostsChanged(this.f474a)) {
            for (String str : HttpDispatcher.getInstance().getInitHosts()) {
                this.f478f.put(str, new StrategyCollection(str));
            }
        }
    }

    /* renamed from: c */
    private void m281c() {
        try {
            if (HttpDispatcher.getInstance().isInitHostsChanged(this.f474a)) {
                TreeSet treeSet = null;
                synchronized (this.f478f) {
                    for (String str : HttpDispatcher.getInstance().getInitHosts()) {
                        if (!this.f478f.containsKey(str)) {
                            this.f478f.put(str, new StrategyCollection(str));
                            if (treeSet == null) {
                                treeSet = new TreeSet();
                            }
                            treeSet.add(str);
                        }
                    }
                }
                if (treeSet != null) {
                    m278a(treeSet);
                }
            }
        } catch (Exception e) {
            ALog.m338e("awcn.StrategyTable", "checkInitHost failed", this.f474a, e, new Object[0]);
        }
    }

    /* renamed from: a */
    public void m282a() {
        if (this.f478f == null) {
            this.f478f = new HostLruCache(256);
            m279b();
        }
        Iterator<StrategyCollection> it = this.f478f.values().iterator();
        while (it.hasNext()) {
            it.next().checkInit();
        }
        ALog.m340i("awcn.StrategyTable", "strategy map", null, "size", Integer.valueOf(this.f478f.size()));
        this.f479g = GlobalAppRuntimeInfo.isTargetProcess() ? 0 : -1;
        if (this.f476c == null) {
            this.f476c = new ConcurrentHashMap();
        }
    }

    public String getCnameByHost(String str) {
        StrategyCollection strategyCollection;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.f478f) {
            strategyCollection = this.f478f.get(str);
        }
        if (strategyCollection != null && strategyCollection.isExpired() && AmdcRuntimeInfo.getAmdcLimitLevel() == 0) {
            m277a(str);
        }
        if (strategyCollection != null) {
            return strategyCollection.f454c;
        }
        return null;
    }

    public List<IConnStrategy> queryByHost(String str) {
        StrategyCollection strategyCollection;
        if (TextUtils.isEmpty(str) || !C0413c.m333c(str)) {
            return Collections.EMPTY_LIST;
        }
        m281c();
        synchronized (this.f478f) {
            strategyCollection = this.f478f.get(str);
            if (strategyCollection == null) {
                strategyCollection = new StrategyCollection(str);
                this.f478f.put(str, strategyCollection);
            }
        }
        if (strategyCollection.f453b == 0 || (strategyCollection.isExpired() && AmdcRuntimeInfo.getAmdcLimitLevel() == 0)) {
            m277a(str);
        }
        return strategyCollection.queryStrategyList();
    }

    public void update(C0407l.d dVar) {
        C0407l.b[] bVarArr;
        ALog.m340i("awcn.StrategyTable", "update strategyTable with httpDns response", this.f474a, new Object[0]);
        try {
            this.f475b = dVar.f543a;
            this.f479g = dVar.f548f;
            bVarArr = dVar.f544b;
        } catch (Throwable th) {
            ALog.m338e("awcn.StrategyTable", "fail to update strategyTable", this.f474a, th, new Object[0]);
        }
        if (bVarArr == null) {
            return;
        }
        synchronized (this.f478f) {
            for (C0407l.b bVar : bVarArr) {
                if (bVar != null && bVar.f529a != null) {
                    if (bVar.f538j) {
                        this.f478f.remove(bVar.f529a);
                    } else {
                        StrategyCollection strategyCollection = this.f478f.get(bVar.f529a);
                        if (strategyCollection == null) {
                            strategyCollection = new StrategyCollection(bVar.f529a);
                            this.f478f.put(bVar.f529a, strategyCollection);
                        }
                        strategyCollection.update(bVar);
                    }
                }
            }
        }
        this.f477d = true;
        if (ALog.isPrintLog(1)) {
            StringBuilder sb = new StringBuilder("uniqueId : ");
            ALog.m337d("awcn.StrategyTable", CompilerOutline.m1762g(sb, this.f474a, "\n-------------------------domains:------------------------------------"), null, new Object[0]);
            synchronized (this.f478f) {
                for (Map.Entry<String, StrategyCollection> entry : this.f478f.entrySet()) {
                    sb.setLength(0);
                    sb.append(entry.getKey());
                    sb.append(" = ");
                    sb.append(entry.getValue().toString());
                    ALog.m337d("awcn.StrategyTable", sb.toString(), null, new Object[0]);
                }
            }
        }
    }

    /* renamed from: b */
    private void m280b(Set<String> set) {
        TreeSet treeSet = new TreeSet(f473e);
        synchronized (this.f478f) {
            treeSet.addAll(this.f478f.values());
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            StrategyCollection strategyCollection = (StrategyCollection) it.next();
            if (!strategyCollection.isExpired() || set.size() >= 40) {
                return;
            }
            strategyCollection.f453b = 30000 + jCurrentTimeMillis;
            set.add(strategyCollection.f452a);
        }
    }

    /* renamed from: a */
    private void m277a(String str) {
        TreeSet treeSet = new TreeSet();
        treeSet.add(str);
        m278a(treeSet);
    }

    /* renamed from: a */
    public void m284a(String str, boolean z) {
        StrategyCollection strategyCollection;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f478f) {
            strategyCollection = this.f478f.get(str);
            if (strategyCollection == null) {
                strategyCollection = new StrategyCollection(str);
                this.f478f.put(str, strategyCollection);
            }
        }
        if (z || strategyCollection.f453b == 0 || (strategyCollection.isExpired() && AmdcRuntimeInfo.getAmdcLimitLevel() == 0)) {
            m277a(str);
        }
    }

    /* renamed from: a */
    private void m278a(Set<String> set) {
        if (set == null || set.isEmpty()) {
            return;
        }
        if ((GlobalAppRuntimeInfo.isAppBackground() && AppLifecycle.lastEnterBackgroundTime > 0) || !NetworkStatusHelper.isConnected()) {
            ALog.m340i("awcn.StrategyTable", "app in background or no network", this.f474a, new Object[0]);
            return;
        }
        int amdcLimitLevel = AmdcRuntimeInfo.getAmdcLimitLevel();
        if (amdcLimitLevel == 3) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (this.f478f) {
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                StrategyCollection strategyCollection = this.f478f.get(it.next());
                if (strategyCollection != null) {
                    strategyCollection.f453b = 30000 + jCurrentTimeMillis;
                }
            }
        }
        if (amdcLimitLevel == 0) {
            m280b(set);
        }
        HttpDispatcher.getInstance().sendAmdcRequest(set, this.f479g);
    }

    /* renamed from: a */
    public void m283a(String str, IConnStrategy iConnStrategy, ConnEvent connEvent) {
        StrategyCollection strategyCollection;
        if (ALog.isPrintLog(1)) {
            ALog.m337d("awcn.StrategyTable", "[notifyConnEvent]", null, HttpConstant.HOST, str, "IConnStrategy", iConnStrategy, "ConnEvent", connEvent);
        }
        String str2 = iConnStrategy.getProtocol().protocol;
        if (ConnType.HTTP3.equals(str2) || ConnType.HTTP3_PLAIN.equals(str2)) {
            C0339a.m119a(connEvent.isSuccess);
            ALog.m339e("awcn.StrategyTable", "enable http3", null, "uniqueId", this.f474a, "enable", Boolean.valueOf(connEvent.isSuccess));
        }
        if (!connEvent.isSuccess && C0413c.m332b(iConnStrategy.getIp())) {
            this.f476c.put(str, Long.valueOf(System.currentTimeMillis()));
            ALog.m339e("awcn.StrategyTable", "disable ipv6", null, "uniqueId", this.f474a, Constants.KEY_HOST, str);
        }
        synchronized (this.f478f) {
            strategyCollection = this.f478f.get(str);
        }
        if (strategyCollection != null) {
            strategyCollection.notifyConnEvent(iConnStrategy, connEvent);
        }
    }

    /* renamed from: a */
    public boolean m285a(String str, long j) {
        Long l = this.f476c.get(str);
        if (l == null) {
            return false;
        }
        if (l.longValue() + j >= System.currentTimeMillis()) {
            return true;
        }
        this.f476c.remove(str);
        return false;
    }
}
