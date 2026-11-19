package anet.channel.detect;

/* compiled from: Taobao */
/* renamed from: anet.channel.detect.g */
/* loaded from: classes.dex */
public class HorseRaceLifecycleTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ HorseRaceLifecycleListener f207a;

    public HorseRaceLifecycleTask(HorseRaceLifecycleListener c0329f) {
        this.f207a = c0329f;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f207a.f206a.m100a();
    }
}
