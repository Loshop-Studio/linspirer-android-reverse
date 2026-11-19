package com.huawei.hem;

import android.app.Notification;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.huawei.hem.MessageSnapshotFlow;
import com.huawei.hem.IFileDownloadIPCService;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.liulishuo.filedownloader.services.FileDownloadService;
import java.lang.ref.WeakReference;

/* compiled from: FDServiceSeparateHandler.java */
/* renamed from: com.huawei.hem.rg */
/* loaded from: classes.dex */
public class FDServiceSeparateHandler extends IFileDownloadIPCService.a implements MessageSnapshotFlow.b, IFileDownloadServiceHandler {

    /* renamed from: a */
    public final RemoteCallbackList<IFileDownloadIPCCallback> f3639a = new RemoteCallbackList<>();

    /* renamed from: b */
    public final FileDownloadManager f3640b;

    /* renamed from: c */
    public final WeakReference<FileDownloadService> f3641c;

    public FDServiceSeparateHandler(WeakReference<FileDownloadService> weakReference, FileDownloadManager c1310tg) {
        this.f3641c = weakReference;
        this.f3640b = c1310tg;
        MessageSnapshotFlow c1059jg = MessageSnapshotFlow.a.f2953a;
        c1059jg.f2952b = this;
        c1059jg.f2951a = new DownloadSnapshotThreadPool(5, this);
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: C1 */
    public long mo1858C1(int i) {
        return this.f3640b.m2736b(i);
    }

    @Override // com.huawei.hem.C1059jg.b
    /* renamed from: J */
    public void mo1532J(MessageSnapshot messageSnapshot) {
        synchronized (this) {
            int iBeginBroadcast = this.f3639a.beginBroadcast();
            for (int i = 0; i < iBeginBroadcast; i++) {
                try {
                    try {
                        ((IFileDownloadIPCCallback) this.f3639a.getBroadcastItem(i)).mo1815u0(messageSnapshot);
                    } catch (RemoteException e) {
                        FileDownloadLog.m1820d(6, this, e, "callback error", new Object[0]);
                    }
                } catch (Throwable th) {
                    this.f3639a.finishBroadcast();
                    throw th;
                }
            }
            this.f3639a.finishBroadcast();
        }
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: K1 */
    public void mo1859K1() {
        this.f3640b.f3811a.clear();
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: P2 */
    public void mo1860P2(int i, Notification notification) {
        WeakReference<FileDownloadService> weakReference = this.f3641c;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f3641c.get().startForeground(i, notification);
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: V0 */
    public void mo1861V0(IFileDownloadIPCCallback interfaceC0958fg) {
        this.f3639a.unregister(interfaceC0958fg);
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: a0 */
    public long mo1862a0(int i) {
        FileDownloadModel fileDownloadModelMo2105o = this.f3640b.f3811a.mo2105o(i);
        if (fileDownloadModelMo2105o == null) {
            return 0L;
        }
        return fileDownloadModelMo2105o.f4841h;
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: b */
    public byte mo1863b(int i) {
        FileDownloadModel fileDownloadModelMo2105o = this.f3640b.f3811a.mo2105o(i);
        if (fileDownloadModelMo2105o == null) {
            return (byte) 0;
        }
        return fileDownloadModelMo2105o.m3927b();
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: b1 */
    public boolean mo1864b1() {
        return this.f3640b.m2738d();
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: c2 */
    public boolean mo1865c2(String str, String str2) {
        FileDownloadManager c1310tg = this.f3640b;
        if (c1310tg == null) {
            throw null;
        }
        return c1310tg.m2737c(c1310tg.f3811a.mo2105o(FileDownloadUtils.m1957g(str, str2)));
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: d */
    public void mo1866d(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        this.f3640b.m2741g(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: g */
    public void mo1867g(boolean z) {
        WeakReference<FileDownloadService> weakReference = this.f3641c;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f3641c.get().stopForeground(z);
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: l3 */
    public void mo1868l3() {
        this.f3640b.m2740f();
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: n */
    public boolean mo1869n(int i) {
        return this.f3640b.m2739e(i);
    }

    @Override // com.huawei.hem.InterfaceC1385wg
    public IBinder onBind(Intent intent) {
        return this;
    }

    @Override // com.huawei.hem.InterfaceC1385wg
    public void onStartCommand(Intent intent, int i, int i2) {
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: q0 */
    public void mo1870q0(IFileDownloadIPCCallback interfaceC0958fg) {
        this.f3639a.register(interfaceC0958fg);
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: q2 */
    public boolean mo1871q2(int i) {
        boolean zM2796c;
        FileDownloadManager c1310tg = this.f3640b;
        synchronized (c1310tg) {
            zM2796c = c1310tg.f3812b.m2796c(i);
        }
        return zM2796c;
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: t */
    public boolean mo1872t(int i) {
        return this.f3640b.m2735a(i);
    }
}
