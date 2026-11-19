package com.huawei.hem;

/* compiled from: DownloadServiceConnectChangedEvent.java */
/* renamed from: com.huawei.hem.wf */
/* loaded from: classes.dex */
public class DownloadServiceConnectChangedEvent extends IDownloadEvent {

    /* renamed from: c */
    public final a f4020c;

    /* compiled from: DownloadServiceConnectChangedEvent.java */
    /* renamed from: com.huawei.hem.wf$a */
    public enum a {
        connected,
        disconnected,
        lost
    }

    public DownloadServiceConnectChangedEvent(a aVar, Class<?> cls) {
        super("event.service.connect.changed");
        this.f4020c = aVar;
    }
}
