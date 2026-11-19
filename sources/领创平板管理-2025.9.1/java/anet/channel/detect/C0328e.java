package anet.channel.detect;

import anet.channel.AwcnConfig;
import anet.channel.strategy.C0407l;
import anet.channel.strategy.IStrategyListener;
import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anet.channel.detect.e */
/* loaded from: classes.dex */
public class C0328e implements IStrategyListener {

    /* renamed from: a */
    public final /* synthetic */ C0327d f205a;

    public C0328e(C0327d c0327d) {
        this.f205a = c0327d;
    }

    @Override // anet.channel.strategy.IStrategyListener
    public void onStrategyUpdated(C0407l.d dVar) {
        C0407l.c[] cVarArr;
        ALog.m340i("anet.HorseRaceDetector", "onStrategyUpdated", null, new Object[0]);
        if (!AwcnConfig.isHorseRaceEnable() || (cVarArr = dVar.f545c) == null || cVarArr.length == 0) {
            return;
        }
        synchronized (this.f205a.f203a) {
            for (int i = 0; i < dVar.f545c.length; i++) {
                C0407l.c cVar = dVar.f545c[i];
                this.f205a.f203a.put(cVar.f541a, cVar);
            }
        }
    }
}
