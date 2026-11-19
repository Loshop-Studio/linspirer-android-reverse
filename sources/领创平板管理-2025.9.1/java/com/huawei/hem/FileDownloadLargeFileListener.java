package com.huawei.hem;

/* compiled from: FileDownloadLargeFileListener.java */
/* renamed from: com.huawei.hem.le */
/* loaded from: classes.dex */
public abstract class FileDownloadLargeFileListener extends FileDownloadListener {
    /* renamed from: a */
    public void m2309a() {
    }

    /* renamed from: b */
    public abstract void m2310b(BaseDownloadTask interfaceC0956fe, long j, long j2);

    /* renamed from: c */
    public abstract void m2311c(BaseDownloadTask interfaceC0956fe, long j, long j2);

    @Override // com.huawei.hem.AbstractC1158ne
    public void connected(BaseDownloadTask interfaceC0956fe, String str, boolean z, int i, int i2) {
    }

    /* renamed from: d */
    public abstract void m2312d(BaseDownloadTask interfaceC0956fe, long j, long j2);

    /* renamed from: e */
    public void m2313e() {
    }

    @Override // com.huawei.hem.AbstractC1158ne
    public void paused(BaseDownloadTask interfaceC0956fe, int i, int i2) {
    }

    @Override // com.huawei.hem.AbstractC1158ne
    public void pending(BaseDownloadTask interfaceC0956fe, int i, int i2) {
    }

    @Override // com.huawei.hem.AbstractC1158ne
    public void progress(BaseDownloadTask interfaceC0956fe, int i, int i2) {
    }

    @Override // com.huawei.hem.AbstractC1158ne
    public void retry(BaseDownloadTask interfaceC0956fe, Throwable th, int i, int i2) {
    }
}
