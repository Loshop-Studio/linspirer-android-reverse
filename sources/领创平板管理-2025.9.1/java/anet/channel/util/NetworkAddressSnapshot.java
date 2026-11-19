package anet.channel.util;

import com.huawei.hms.framework.network.grs.GrsManager;
import java.net.Inet6Address;

/* compiled from: Taobao */
/* renamed from: anet.channel.util.f */
/* loaded from: classes.dex */
public class NetworkAddressSnapshot {

    /* renamed from: a */
    public int f593a;

    /* renamed from: b */
    public Inet6Address f594b;

    public NetworkAddressSnapshot(Inet6Address inet6Address, int i) {
        this.f593a = i;
        this.f594b = inet6Address;
    }

    public String toString() {
        return this.f594b.getHostAddress() + GrsManager.SEPARATOR + this.f593a;
    }
}
