package com.huawei.hem;

/* compiled from: FileDownloadListener.java */
/* renamed from: com.huawei.hem.ne */
/* loaded from: classes.dex */
public abstract class AbstractC1158ne {
    public AbstractC1158ne() {
    }

    public void blockComplete(InterfaceC0956fe interfaceC0956fe) {
    }

    public abstract void completed(InterfaceC0956fe interfaceC0956fe);

    public void connected(InterfaceC0956fe interfaceC0956fe, String str, boolean z, int i, int i2) {
    }

    public abstract void error(InterfaceC0956fe interfaceC0956fe, Throwable th);

    public boolean isInvalid() {
        return false;
    }

    public abstract void paused(InterfaceC0956fe interfaceC0956fe, int i, int i2);

    public abstract void pending(InterfaceC0956fe interfaceC0956fe, int i, int i2);

    public abstract void progress(InterfaceC0956fe interfaceC0956fe, int i, int i2);

    public void retry(InterfaceC0956fe interfaceC0956fe, Throwable th, int i, int i2) {
    }

    public void started(InterfaceC0956fe interfaceC0956fe) {
    }

    public abstract void warn(InterfaceC0956fe interfaceC0956fe);

    public AbstractC1158ne(int i) {
        C0959fh.m1821e(this, "not handle priority any more", new Object[0]);
    }
}
