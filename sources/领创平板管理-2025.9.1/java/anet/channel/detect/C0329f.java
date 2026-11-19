package anet.channel.detect;

import android.support.v4.app.NotificationCompat;
import anet.channel.AwcnConfig;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import anet.channel.util.AppLifecycle;

/* compiled from: Taobao */
/* renamed from: anet.channel.detect.f */
/* loaded from: classes.dex */
public class C0329f implements AppLifecycle.AppLifecycleListener {

    /* renamed from: a */
    public final /* synthetic */ C0327d f206a;

    public C0329f(C0327d c0327d) {
        this.f206a = c0327d;
    }

    @Override // anet.channel.util.AppLifecycle.AppLifecycleListener
    public void background() {
        ALog.m340i("anet.HorseRaceDetector", NotificationCompat.WearableExtender.KEY_BACKGROUND, null, new Object[0]);
        if (AwcnConfig.isHorseRaceEnable()) {
            ThreadPoolExecutorFactory.submitHRTask(new RunnableC0330g(this));
        }
    }

    @Override // anet.channel.util.AppLifecycle.AppLifecycleListener
    public void forground() {
    }
}
