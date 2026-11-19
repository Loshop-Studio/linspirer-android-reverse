package com.taobao.accs.data;

import anet.channel.appmonitor.AppMonitor;
import com.taobao.accs.common.Constants;
import com.taobao.accs.p072ut.monitor.AssembleMonitor;
import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.data.c */
/* loaded from: classes.dex */
public class RunnableC1920c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1918a f6140a;

    public RunnableC1920c(C1918a c1918a) {
        this.f6140a = c1918a;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f6140a) {
            if (this.f6140a.f6136f == 0) {
                ALog.m5728e("AssembleMessage", "timeout", Constants.KEY_DATA_ID, this.f6140a.f6132b);
                this.f6140a.f6136f = 1;
                this.f6140a.f6138h.clear();
                AppMonitor.getInstance().commitStat(new AssembleMonitor(this.f6140a.f6132b, String.valueOf(this.f6140a.f6136f)));
            }
        }
    }
}
