package com.huawei.hem;

/* compiled from: FileDownloadListener.java */
/* renamed from: com.huawei.hem.ne */
/* loaded from: classes.dex */
public abstract class FileDownloadListener {
    public FileDownloadListener() {
    }

    public void blockComplete(BaseDownloadTask interfaceC0956fe) {
    }

    public abstract void completed(BaseDownloadTask interfaceC0956fe);

    public void connected(BaseDownloadTask interfaceC0956fe, String str, boolean z, int i, int i2) {
    }

    public abstract void error(BaseDownloadTask interfaceC0956fe, Throwable th);

    public boolean isInvalid() {
        return false;
    }

    public abstract void paused(BaseDownloadTask interfaceC0956fe, int i, int i2);

    public abstract void pending(BaseDownloadTask interfaceC0956fe, int i, int i2);

    public abstract void progress(BaseDownloadTask interfaceC0956fe, int i, int i2);

    public void retry(BaseDownloadTask interfaceC0956fe, Throwable th, int i, int i2) {
    }

    public void started(BaseDownloadTask interfaceC0956fe) {
    }

    public abstract void warn(BaseDownloadTask interfaceC0956fe);

    public FileDownloadListener(int i) {
        FileDownloadLog.m1821e(this, "not handle priority any more", new Object[0]);
    }
}
