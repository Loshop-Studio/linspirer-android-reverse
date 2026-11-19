package com.huawei.hem;

import com.huawei.hem.DownloadSnapshotThreadPool;
import com.liulishuo.filedownloader.message.MessageSnapshot;

/* compiled from: MessageSnapshotThreadPool.java */
/* renamed from: com.huawei.hem.lg */
/* loaded from: classes.dex */
public class DispatchDownloadSnapshotTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ MessageSnapshot f3185a;

    /* renamed from: b */
    public final /* synthetic */ DownloadSnapshotThreadPool.a f3186b;

    public DispatchDownloadSnapshotTask(DownloadSnapshotThreadPool.a aVar, MessageSnapshot messageSnapshot) {
        this.f3186b = aVar;
        this.f3185a = messageSnapshot;
    }

    @Override // java.lang.Runnable
    public void run() {
        DownloadSnapshotThreadPool.this.f3263b.mo1532J(this.f3185a);
        this.f3186b.f3264a.remove(Integer.valueOf(this.f3185a.f4819a));
    }
}
