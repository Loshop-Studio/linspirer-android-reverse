package anet.channel.strategy;

import anet.channel.appmonitor.AppMonitor;
import anet.channel.statist.PolicyVersionStat;
import anet.channel.strategy.AmdcStrategyResultParser;
import anet.channel.strategy.dispatch.DispatchConstants;
import anet.channel.util.ALog;
import com.taobao.accs.common.Constants;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class StrategyCollection implements Serializable {

    /* renamed from: a */
    public String f452a;

    /* renamed from: b */
    public volatile long f453b;

    /* renamed from: c */
    public volatile String f454c;

    /* renamed from: d */
    public boolean f455d;

    /* renamed from: e */
    public int f456e;

    /* renamed from: f */
    public StrategyList f457f;

    /* renamed from: g */
    public transient long f458g;

    /* renamed from: h */
    public transient boolean f459h;

    public StrategyCollection() {
        this.f457f = null;
        this.f453b = 0L;
        this.f454c = null;
        this.f455d = false;
        this.f456e = 0;
        this.f458g = 0L;
        this.f459h = true;
    }

    public synchronized void checkInit() {
        if (System.currentTimeMillis() - this.f453b > 172800000) {
            this.f457f = null;
        } else {
            if (this.f457f != null) {
                this.f457f.checkInit();
            }
        }
    }

    public boolean isExpired() {
        return System.currentTimeMillis() > this.f453b;
    }

    public synchronized void notifyConnEvent(IConnStrategy iConnStrategy, ConnEvent connEvent) {
        if (this.f457f != null) {
            this.f457f.notifyConnEvent(iConnStrategy, connEvent);
            if (!connEvent.isSuccess && this.f457f.shouldRefresh()) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.f458g > 60000) {
                    StrategyCenter.getInstance().forceRefreshStrategy(this.f452a);
                    this.f458g = jCurrentTimeMillis;
                }
            }
        }
    }

    public synchronized List<IConnStrategy> queryStrategyList() {
        if (this.f457f == null) {
            return Collections.EMPTY_LIST;
        }
        if (this.f459h) {
            this.f459h = false;
            PolicyVersionStat policyVersionStat = new PolicyVersionStat(this.f452a, this.f456e);
            policyVersionStat.reportType = 0;
            AppMonitor.getInstance().commitStat(policyVersionStat);
        }
        return this.f457f.getStrategyList();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append("\nStrategyList = ");
        sb.append(this.f453b);
        StrategyList strategyList = this.f457f;
        if (strategyList != null) {
            sb.append(strategyList.toString());
        } else if (this.f454c != null) {
            sb.append('[');
            sb.append(this.f452a);
            sb.append("=>");
            sb.append(this.f454c);
            sb.append(']');
        } else {
            sb.append("[]");
        }
        return sb.toString();
    }

    public synchronized void update(AmdcStrategyResultParser.b bVar) {
        this.f453b = (bVar.f530b * 1000) + System.currentTimeMillis();
        if (!bVar.f529a.equalsIgnoreCase(this.f452a)) {
            ALog.m339e("StrategyCollection", "update error!", null, Constants.KEY_HOST, this.f452a, "dnsInfo.host", bVar.f529a);
            return;
        }
        if (this.f456e != bVar.f540l) {
            int i = bVar.f540l;
            this.f456e = i;
            PolicyVersionStat policyVersionStat = new PolicyVersionStat(this.f452a, i);
            policyVersionStat.reportType = 1;
            AppMonitor.getInstance().commitStat(policyVersionStat);
        }
        this.f454c = bVar.f532d;
        if ((bVar.f534f != null && bVar.f534f.length != 0 && bVar.f536h != null && bVar.f536h.length != 0) || (bVar.f537i != null && bVar.f537i.length != 0)) {
            if (this.f457f == null) {
                this.f457f = new StrategyList();
            }
            this.f457f.update(bVar);
            return;
        }
        this.f457f = null;
    }

    public StrategyCollection(String str) {
        this.f457f = null;
        this.f453b = 0L;
        this.f454c = null;
        this.f455d = false;
        this.f456e = 0;
        this.f458g = 0L;
        this.f459h = true;
        this.f452a = str;
        this.f455d = DispatchConstants.isAmdcServerDomain(str);
    }
}
