package anet.channel.detect;

import anet.channel.statist.RequestStatistic;
import anet.channel.util.ALog;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Taobao */
/* renamed from: anet.channel.detect.n */
/* loaded from: classes.dex */
public class AwcnNetworkDetector {

    /* renamed from: a */
    public static HorseRaceDetector f221a = new HorseRaceDetector();

    /* renamed from: b */
    public static ExceptionDetector f222b = new ExceptionDetector();

    /* renamed from: c */
    public static NetworkPingDetector f223c = new NetworkPingDetector();

    /* renamed from: d */
    public static AtomicBoolean f224d = new AtomicBoolean(false);

    /* renamed from: a */
    public static void m106a() {
        try {
            if (f224d.compareAndSet(false, true)) {
                ALog.m340i("awcn.NetworkDetector", "registerListener", null, new Object[0]);
                f221a.m101b();
                f222b.m90a();
                f223c.m105a();
            }
        } catch (Exception e) {
            ALog.m338e("awcn.NetworkDetector", "[registerListener]error", null, e, new Object[0]);
        }
    }

    /* renamed from: a */
    public static void m107a(RequestStatistic requestStatistic) {
        if (f224d.get()) {
            f222b.m91a(requestStatistic);
        }
    }
}
