package anet.channel.util;

import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.status.NetworkStatusHelper;

/* compiled from: Taobao */
/* renamed from: anet.channel.util.e */
/* loaded from: classes.dex */
public class DetectNetworkAddressesTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ QueueNetworkAddressCheckTask f592a;

    public DetectNetworkAddressesTask(QueueNetworkAddressCheckTask runnableC0423d) {
        this.f592a = runnableC0423d;
    }

    @Override // java.lang.Runnable
    public void run() {
        NetworkAddressSnapshot c0425fM359k;
        try {
            if (this.f592a.f590a.equals(NetworkAddressRegistry.m349b(NetworkStatusHelper.getStatus()))) {
                ALog.m339e("awcn.Inet64Util", "startIpStackDetect double check", null, new Object[0]);
                int iM358j = NetworkAddressRegistry.m358j();
                if (this.f592a.f591b.ipStackType != iM358j) {
                    NetworkAddressRegistry.f589e.put(this.f592a.f590a, Integer.valueOf(iM358j));
                    this.f592a.f591b.lastIpStackType = this.f592a.f591b.ipStackType;
                    this.f592a.f591b.ipStackType = iM358j;
                }
                if ((iM358j == 2 || iM358j == 3) && (c0425fM359k = NetworkAddressRegistry.m359k()) != null) {
                    NetworkAddressRegistry.f588d.put(this.f592a.f590a, c0425fM359k);
                    this.f592a.f591b.nat64Prefix = c0425fM359k.toString();
                }
                if (GlobalAppRuntimeInfo.isTargetProcess()) {
                    AppMonitor.getInstance().commitStat(this.f592a.f591b);
                }
            }
        } catch (Exception unused) {
        }
    }
}
