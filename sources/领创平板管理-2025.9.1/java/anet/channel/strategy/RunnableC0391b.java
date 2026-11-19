package anet.channel.strategy;

import anet.channel.util.ALog;
import com.taobao.accs.common.Constants;
import java.net.InetAddress;
import java.util.Collections;
import java.util.LinkedList;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.b */
/* loaded from: classes.dex */
public class RunnableC0391b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f483a;

    /* renamed from: b */
    public final /* synthetic */ Object f484b;

    /* renamed from: c */
    public final /* synthetic */ C0390a f485c;

    public RunnableC0391b(C0390a c0390a, String str, Object obj) {
        this.f485c = c0390a;
        this.f483a = str;
        this.f484b = obj;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                String hostAddress = InetAddress.getByName(this.f483a).getHostAddress();
                LinkedList linkedList = new LinkedList();
                ConnProtocol connProtocol = StrategyTemplate.getInstance().getConnProtocol(this.f483a);
                if (connProtocol != null) {
                    linkedList.add(IPConnStrategy.m255a(hostAddress, !this.f485c.m290a(connProtocol) ? 80 : 443, connProtocol, 0, 0, 1, 45000));
                }
                linkedList.add(IPConnStrategy.m255a(hostAddress, 80, ConnProtocol.HTTP, 0, 0, 0, 0));
                linkedList.add(IPConnStrategy.m255a(hostAddress, 443, ConnProtocol.HTTPS, 0, 0, 0, 0));
                this.f485c.f481a.put(this.f483a, linkedList);
                if (ALog.isPrintLog(1)) {
                    ALog.m337d("awcn.LocalDnsStrategyTable", "resolve ip by local dns", null, Constants.KEY_HOST, this.f483a, "ip", hostAddress, "list", linkedList);
                }
                synchronized (this.f485c.f482b) {
                    this.f485c.f482b.remove(this.f483a);
                }
                synchronized (this.f484b) {
                    this.f484b.notifyAll();
                }
            } catch (Exception unused) {
                if (ALog.isPrintLog(1)) {
                    ALog.m337d("awcn.LocalDnsStrategyTable", "resolve ip by local dns failed", null, Constants.KEY_HOST, this.f483a);
                }
                this.f485c.f481a.put(this.f483a, Collections.EMPTY_LIST);
                synchronized (this.f485c.f482b) {
                    this.f485c.f482b.remove(this.f483a);
                    synchronized (this.f484b) {
                        this.f484b.notifyAll();
                    }
                }
            }
        } catch (Throwable th) {
            synchronized (this.f485c.f482b) {
                this.f485c.f482b.remove(this.f483a);
                synchronized (this.f484b) {
                    this.f484b.notifyAll();
                    throw th;
                }
            }
        }
    }
}
