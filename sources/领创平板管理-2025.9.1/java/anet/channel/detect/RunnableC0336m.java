package anet.channel.detect;

import anet.channel.status.NetworkStatusHelper;
import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anet.channel.detect.m */
/* loaded from: classes.dex */
public class RunnableC0336m implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ NetworkStatusHelper.NetworkStatus f219a;

    /* renamed from: b */
    public final /* synthetic */ C0335l f220b;

    public RunnableC0336m(C0335l c0335l, NetworkStatusHelper.NetworkStatus networkStatus) {
        this.f220b = c0335l;
        this.f219a = networkStatus;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f219a != NetworkStatusHelper.NetworkStatus.NO && this.f219a != NetworkStatusHelper.NetworkStatus.NONE) {
                this.f220b.f218a.m104a(NetworkStatusHelper.getUniqueId(this.f219a));
            }
        } catch (Throwable th) {
            ALog.m338e("anet.MTUDetector", "MTU detecet fail.", null, th, new Object[0]);
        }
    }
}
