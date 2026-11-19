package anetwork.channel.aidl.adapter;

import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.aidl.adapter.f */
/* loaded from: classes.dex */
public final class RunnableC0437f implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        if (C0435d.f638c) {
            C0435d.f638c = false;
            ALog.m339e("anet.RemoteGetter", "binding service timeout. reset status!", null, new Object[0]);
        }
    }
}
