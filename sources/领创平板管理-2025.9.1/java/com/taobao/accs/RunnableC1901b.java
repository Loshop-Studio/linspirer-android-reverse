package com.taobao.accs;

import android.app.Notification;
import com.taobao.accs.ChannelService;
import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.b */
/* loaded from: classes.dex */
public class RunnableC1901b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ChannelService.KernelService f6055a;

    public RunnableC1901b(ChannelService.KernelService kernelService) {
        this.f6055a = kernelService;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            ChannelService channelService = ChannelService.getInstance();
            int i = this.f6055a.f6045b.getPackageManager().getPackageInfo(this.f6055a.getPackageName(), 0).applicationInfo.icon;
            if (i != 0) {
                Notification.Builder builder = new Notification.Builder(this.f6055a.f6045b);
                builder.setSmallIcon(i);
                channelService.startForeground(ChannelService.NOTIFY_ID, builder.build());
                Notification.Builder builder2 = new Notification.Builder(this.f6055a.f6045b);
                builder2.setSmallIcon(i);
                ChannelService.KernelService.f6044a.startForeground(ChannelService.NOTIFY_ID, builder2.build());
                ChannelService.KernelService.f6044a.stopForeground(true);
            }
            ChannelService.KernelService.f6044a.stopSelf();
        } catch (Throwable th) {
            ALog.m5727e(ChannelService.TAG, " onStartCommand run", th, new Object[0]);
        }
    }
}
