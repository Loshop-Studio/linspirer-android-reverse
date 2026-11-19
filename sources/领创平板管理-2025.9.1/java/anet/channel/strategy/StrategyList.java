package anet.channel.strategy;

import anet.channel.strategy.AmdcStrategyResultParser;
import anet.channel.strategy.utils.AmdcStringEncoding;
import anet.channel.strategy.utils.SerialLruCache;
import anet.channel.util.ALog;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class StrategyList implements Serializable {

    /* renamed from: a */
    public List<IPConnStrategy> f469a;

    /* renamed from: b */
    public Map<Integer, ConnHistoryItem> f470b;

    /* renamed from: c */
    public boolean f471c;

    /* renamed from: d */
    public transient Comparator<IPConnStrategy> f472d;

    /* compiled from: Taobao */
    public interface Predicate<T> {
        boolean apply(T t);
    }

    public StrategyList() {
        this.f469a = new ArrayList();
        this.f470b = new SerialLruCache(40);
        this.f471c = false;
        this.f472d = null;
    }

    public void checkInit() {
        if (this.f469a == null) {
            this.f469a = new ArrayList();
        }
        if (this.f470b == null) {
            this.f470b = new SerialLruCache(40);
        }
        Iterator<Map.Entry<Integer, ConnHistoryItem>> it = this.f470b.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().m254d()) {
                it.remove();
            }
        }
        for (IPConnStrategy iPConnStrategy : this.f469a) {
            if (!this.f470b.containsKey(Integer.valueOf(iPConnStrategy.getUniqueId()))) {
                this.f470b.put(Integer.valueOf(iPConnStrategy.getUniqueId()), new ConnHistoryItem());
            }
        }
        Collections.sort(this.f469a, m274a());
    }

    public List<IConnStrategy> getStrategyList() {
        if (this.f469a.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        LinkedList linkedList = null;
        for (IPConnStrategy iPConnStrategy : this.f469a) {
            ConnHistoryItem connHistoryItem = this.f470b.get(Integer.valueOf(iPConnStrategy.getUniqueId()));
            if (connHistoryItem == null || !connHistoryItem.m253c()) {
                if (linkedList == null) {
                    linkedList = new LinkedList();
                }
                linkedList.add(iPConnStrategy);
            } else {
                ALog.m340i("awcn.StrategyList", "strategy ban!", null, "strategy", iPConnStrategy);
            }
        }
        return linkedList == null ? Collections.EMPTY_LIST : linkedList;
    }

    public void notifyConnEvent(IConnStrategy iConnStrategy, ConnEvent connEvent) {
        if (!(iConnStrategy instanceof IPConnStrategy) || this.f469a.indexOf(iConnStrategy) == -1) {
            return;
        }
        this.f470b.get(Integer.valueOf(((IPConnStrategy) iConnStrategy).getUniqueId())).m251a(connEvent.isSuccess);
        Collections.sort(this.f469a, this.f472d);
    }

    public boolean shouldRefresh() {
        boolean z;
        boolean z2 = true;
        loop0: while (true) {
            z = z2;
            for (IPConnStrategy iPConnStrategy : this.f469a) {
                if (!this.f470b.get(Integer.valueOf(iPConnStrategy.getUniqueId())).m252b()) {
                    if (iPConnStrategy.f448a == 0) {
                        break;
                    }
                    z = false;
                }
            }
            z2 = false;
        }
        return (this.f471c && z2) || z;
    }

    public String toString() {
        return new ArrayList(this.f469a).toString();
    }

    public void update(AmdcStrategyResultParser.b bVar) {
        Iterator<IPConnStrategy> it = this.f469a.iterator();
        while (it.hasNext()) {
            it.next().f450c = true;
        }
        int i = 0;
        for (int i2 = 0; i2 < bVar.f536h.length; i2++) {
            int i3 = 0;
            while (true) {
                String[] strArr = bVar.f534f;
                if (i3 >= strArr.length) {
                    break;
                }
                m276a(strArr[i3], 1, bVar.f536h[i2]);
                i3++;
            }
            if (bVar.f535g != null) {
                this.f471c = true;
                int i4 = 0;
                while (true) {
                    String[] strArr2 = bVar.f535g;
                    if (i4 < strArr2.length) {
                        m276a(strArr2[i4], 0, bVar.f536h[i2]);
                        i4++;
                    }
                }
            } else {
                this.f471c = false;
            }
        }
        if (bVar.f537i != null) {
            while (true) {
                AmdcStrategyResultParser.e[] eVarArr = bVar.f537i;
                if (i >= eVarArr.length) {
                    break;
                }
                AmdcStrategyResultParser.e eVar = eVarArr[i];
                String str = eVar.f551a;
                m276a(str, AmdcStringEncoding.m333c(str) ? -1 : 1, eVar.f552b);
                i++;
            }
        }
        ListIterator<IPConnStrategy> listIterator = this.f469a.listIterator();
        while (listIterator.hasNext()) {
            if (listIterator.next().f450c) {
                listIterator.remove();
            }
        }
        Collections.sort(this.f469a, m274a());
    }

    /* renamed from: a */
    private void m276a(String str, int i, AmdcStrategyResultParser.a aVar) {
        int iM273a = m273a(this.f469a, new IpStrategyEndpointPredicate(this, aVar, str, ConnProtocol.valueOf(aVar)));
        if (iM273a != -1) {
            IPConnStrategy iPConnStrategy = this.f469a.get(iM273a);
            iPConnStrategy.cto = aVar.f523c;
            iPConnStrategy.rto = aVar.f524d;
            iPConnStrategy.heartbeat = aVar.f526f;
            iPConnStrategy.f448a = i;
            iPConnStrategy.f449b = 0;
            iPConnStrategy.f450c = false;
            return;
        }
        IPConnStrategy iPConnStrategyM256a = IPConnStrategy.m256a(str, aVar);
        if (iPConnStrategyM256a != null) {
            iPConnStrategyM256a.f448a = i;
            iPConnStrategyM256a.f449b = 0;
            if (!this.f470b.containsKey(Integer.valueOf(iPConnStrategyM256a.getUniqueId()))) {
                this.f470b.put(Integer.valueOf(iPConnStrategyM256a.getUniqueId()), new ConnHistoryItem());
            }
            this.f469a.add(iPConnStrategyM256a);
        }
    }

    public StrategyList(List<IPConnStrategy> list) {
        this.f469a = new ArrayList();
        this.f470b = new SerialLruCache(40);
        this.f471c = false;
        this.f472d = null;
        this.f469a = list;
    }

    /* renamed from: a */
    private Comparator m274a() {
        if (this.f472d == null) {
            this.f472d = new IpStrategyComparator(this);
        }
        return this.f472d;
    }

    /* renamed from: a */
    public static <T> int m273a(Collection<T> collection, Predicate<T> predicate) {
        if (collection == null) {
            return -1;
        }
        int i = 0;
        Iterator<T> it = collection.iterator();
        while (it.hasNext() && !predicate.apply(it.next())) {
            i++;
        }
        if (i == collection.size()) {
            return -1;
        }
        return i;
    }
}
