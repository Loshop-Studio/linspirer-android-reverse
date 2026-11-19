package com.huawei.hem;

import android.os.RemoteException;
import com.huawei.hem.MessageSnapshotFlow;
import com.huawei.hem.IFileDownloadIPCCallback;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.services.FileDownloadService;

/* compiled from: FileDownloadServiceUIGuard.java */
/* renamed from: com.huawei.hem.se */
/* loaded from: classes.dex */
public class FileDownloadServiceUIGuard extends BaseFileServiceUIGuard<a, IFileDownloadIPCService> {

    /* compiled from: FileDownloadServiceUIGuard.java */
    /* renamed from: com.huawei.hem.se$a */
    public static class a extends IFileDownloadIPCCallback.a {
        @Override // com.huawei.hem.InterfaceC0958fg
        /* renamed from: u0 */
        public void mo1815u0(MessageSnapshot messageSnapshot) {
            MessageSnapshotFlow.a.f2953a.m2132a(messageSnapshot);
        }
    }

    public FileDownloadServiceUIGuard() {
        super(FileDownloadService.SeparateProcessService.class);
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: b */
    public byte mo2621b(int i) {
        if (!isConnected()) {
            DownloadServiceNotConnectedHelper.m3147a("request get the status for the task[%d] in the download service", Integer.valueOf(i));
            return (byte) 0;
        }
        try {
            return ((IFileDownloadIPCService) this.f3402b).mo1863b(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return (byte) 0;
        }
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: d */
    public boolean mo2622d(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        if (!isConnected()) {
            DownloadServiceNotConnectedHelper.m3148b(str, str2, z);
            return false;
        }
        try {
            ((IFileDownloadIPCService) this.f3402b).mo1866d(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
            return true;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: g */
    public void mo2623g(boolean z) {
        if (!isConnected()) {
            DownloadServiceNotConnectedHelper.m3147a("request cancel the foreground status[%B] for the download service", Boolean.valueOf(z));
            return;
        }
        try {
            try {
                ((IFileDownloadIPCService) this.f3402b).mo1867g(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } finally {
            this.f3404d = false;
        }
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: n */
    public boolean mo2624n(int i) {
        if (!isConnected()) {
            DownloadServiceNotConnectedHelper.m3147a("request pause the task[%d] in the download service", Integer.valueOf(i));
            return false;
        }
        try {
            return ((IFileDownloadIPCService) this.f3402b).mo1869n(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }
}
