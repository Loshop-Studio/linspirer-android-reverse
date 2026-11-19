package com.huawei.hem;

import android.content.Context;
import com.huawei.hem.FileDownloadProperties;
import com.liulishuo.filedownloader.model.FileDownloadHeader;

/* compiled from: FileDownloadServiceProxy.java */
/* renamed from: com.huawei.hem.qe */
/* loaded from: classes.dex */
public class FileDownloadServiceProxy implements IFileDownloadServiceProxy {

    /* renamed from: a */
    public final IFileDownloadServiceProxy f3534a;

    /* compiled from: FileDownloadServiceProxy.java */
    /* renamed from: com.huawei.hem.qe$b */
    public static final class b {

        /* renamed from: a */
        public static final FileDownloadServiceProxy f3535a = new FileDownloadServiceProxy(null);
    }

    public FileDownloadServiceProxy(a aVar) {
        this.f3534a = FileDownloadProperties.b.f2783a.f2778d ? new FileDownloadServiceSharedTransmit() : new FileDownloadServiceUIGuard();
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: b */
    public byte mo2621b(int i) {
        return this.f3534a.mo2621b(i);
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: d */
    public boolean mo2622d(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        return this.f3534a.mo2622d(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: g */
    public void mo2623g(boolean z) {
        this.f3534a.mo2623g(z);
    }

    @Override // com.huawei.hem.InterfaceC1383we
    public boolean isConnected() {
        return this.f3534a.isConnected();
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: n */
    public boolean mo2624n(int i) {
        return this.f3534a.mo2624n(i);
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: o */
    public boolean mo2449o() {
        return this.f3534a.mo2449o();
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: p */
    public void mo2450p(Context context) {
        this.f3534a.mo2450p(context);
    }
}
