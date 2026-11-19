package anet.channel;

import android.content.Intent;
import anet.channel.util.ALog;
import java.util.Iterator;

/* compiled from: Taobao */
/* renamed from: anet.channel.a */
/* loaded from: classes.dex */
public class AccsSessionNotificationTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Intent f155a;

    /* renamed from: b */
    public final /* synthetic */ AccsSessionManager f156b;

    public AccsSessionNotificationTask(AccsSessionManager accsSessionManager, Intent intent) {
        this.f156b = accsSessionManager;
        this.f155a = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = AccsSessionManager.f44c.iterator();
        while (it.hasNext()) {
            try {
                ((ISessionListener) it.next()).onConnectionChanged(this.f155a);
            } catch (Exception e) {
                ALog.m338e("awcn.AccsSessionManager", "notifyListener exception.", null, e, new Object[0]);
            }
        }
    }
}
