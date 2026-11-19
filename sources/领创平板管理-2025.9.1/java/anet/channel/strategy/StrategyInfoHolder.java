package anet.channel.strategy;

import android.text.TextUtils;
import anet.channel.AwcnConfig;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.statist.StrategyStatObject;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.C0407l;
import anet.channel.strategy.dispatch.AmdcRuntimeInfo;
import anet.channel.strategy.utils.C0411a;
import anet.channel.strategy.utils.SerialLruCache;
import anet.channel.util.ALog;
import anet.channel.util.StringUtils;
import com.alibaba.sdk.android.tbrest.utils.DeviceUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class StrategyInfoHolder implements NetworkStatusHelper.INetworkStatusChangeListener {

    /* renamed from: a */
    public Map<String, StrategyTable> f463a = new LruStrategyMap();

    /* renamed from: b */
    public volatile StrategyConfig f464b = null;

    /* renamed from: c */
    public final C0390a f465c = new C0390a();

    /* renamed from: d */
    public final StrategyTable f466d = new StrategyTable(DeviceUtils.NETWORK_CLASS_UNKNOWN);

    /* renamed from: e */
    public final Set<String> f467e = new HashSet();

    /* renamed from: f */
    public volatile String f468f = "";

    /* compiled from: Taobao */
    public static class LruStrategyMap extends SerialLruCache<String, StrategyTable> {
        public LruStrategyMap() {
            super(3);
        }

        @Override // anet.channel.strategy.utils.SerialLruCache
        public boolean entryRemoved(Map.Entry<String, StrategyTable> entry) {
            C0411a.m326a(new RunnableC0401f(this, entry));
            return true;
        }
    }

    public StrategyInfoHolder() {
        try {
            m265e();
            m267g();
        } catch (Throwable unused) {
        }
        m266f();
    }

    /* renamed from: a */
    public static StrategyInfoHolder m263a() {
        return new StrategyInfoHolder();
    }

    /* renamed from: e */
    private void m265e() {
        NetworkStatusHelper.addStatusChangeListener(this);
        this.f468f = m264a(NetworkStatusHelper.getStatus());
    }

    /* renamed from: f */
    private void m266f() {
        Iterator<Map.Entry<String, StrategyTable>> it = this.f463a.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().m282a();
        }
        synchronized (this) {
            if (this.f464b == null) {
                StrategyConfig strategyConfig = new StrategyConfig();
                strategyConfig.m262b();
                strategyConfig.m259a(this);
                this.f464b = strategyConfig;
            }
        }
    }

    /* renamed from: g */
    private void m267g() {
        ALog.m340i("awcn.StrategyInfoHolder", "restore", null, new Object[0]);
        String str = this.f468f;
        if (!AwcnConfig.isAsyncLoadStrategyEnable()) {
            if (!TextUtils.isEmpty(str)) {
                m269a(str, true);
            }
            this.f464b = (StrategyConfig) C0408m.m316a("StrategyConfig", null);
            if (this.f464b != null) {
                this.f464b.m262b();
                this.f464b.m259a(this);
            }
        }
        C0411a.m326a(new RunnableC0393d(this, str));
    }

    /* renamed from: b */
    public void m270b() {
        NetworkStatusHelper.removeStatusChangeListener(this);
    }

    /* renamed from: c */
    public void m271c() {
        synchronized (this) {
            for (StrategyTable strategyTable : this.f463a.values()) {
                if (strategyTable.f477d) {
                    StrategyStatObject strategyStatObject = new StrategyStatObject(1);
                    strategyStatObject.writeStrategyFileId = strategyTable.f474a;
                    C0408m.m319a(strategyTable, strategyTable.f474a, strategyStatObject);
                    strategyTable.f477d = false;
                }
            }
            C0408m.m319a(this.f464b.m257a(), "StrategyConfig", null);
        }
    }

    /* renamed from: d */
    public StrategyTable m272d() {
        StrategyTable strategyTable = this.f466d;
        String str = this.f468f;
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.f463a) {
                strategyTable = this.f463a.get(str);
                if (strategyTable == null) {
                    strategyTable = new StrategyTable(str);
                    this.f463a.put(str, strategyTable);
                }
            }
        }
        return strategyTable;
    }

    @Override // anet.channel.status.NetworkStatusHelper.INetworkStatusChangeListener
    public void onNetworkStatusChanged(NetworkStatusHelper.NetworkStatus networkStatus) {
        this.f468f = m264a(networkStatus);
        String str = this.f468f;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f463a) {
            if (!this.f463a.containsKey(str)) {
                C0411a.m326a(new RunnableC0400e(this, str));
            }
        }
    }

    /* renamed from: a */
    public void m269a(String str, boolean z) {
        synchronized (this.f467e) {
            if (this.f467e.contains(str)) {
                return;
            }
            this.f467e.add(str);
            StrategyStatObject strategyStatObject = null;
            if (z) {
                strategyStatObject = new StrategyStatObject(0);
                strategyStatObject.readStrategyFileId = str;
            }
            StrategyTable strategyTable = (StrategyTable) C0408m.m316a(str, strategyStatObject);
            if (strategyTable != null) {
                strategyTable.m282a();
                synchronized (this.f463a) {
                    this.f463a.put(strategyTable.f474a, strategyTable);
                }
            }
            synchronized (this.f467e) {
                this.f467e.remove(str);
            }
            if (z) {
                strategyStatObject.isSucceed = strategyTable != null ? 1 : 0;
                AppMonitor.getInstance().commitStat(strategyStatObject);
            }
        }
    }

    /* renamed from: a */
    private String m264a(NetworkStatusHelper.NetworkStatus networkStatus) {
        if (networkStatus.isWifi()) {
            String strMd5ToHex = StringUtils.md5ToHex(NetworkStatusHelper.getWifiBSSID());
            return "WIFI$" + (TextUtils.isEmpty(strMd5ToHex) ? "" : strMd5ToHex);
        }
        if (!networkStatus.isMobile()) {
            return "";
        }
        return networkStatus.getType() + "$" + NetworkStatusHelper.getApn();
    }

    /* renamed from: a */
    public void m268a(C0407l.d dVar) {
        int i = dVar.f549g;
        if (i != 0) {
            AmdcRuntimeInfo.updateAmdcLimit(i, dVar.f550h);
        }
        m272d().update(dVar);
        this.f464b.m260a(dVar);
    }
}
