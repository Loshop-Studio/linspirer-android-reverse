package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.huawei.hem.FDServiceSharedHandler;
import com.huawei.hem.FileDownloadEventPool;
import com.huawei.hem.DownloadServiceConnectChangedEvent;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.services.FileDownloadService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: FileDownloadServiceSharedTransmit.java */
/* renamed from: com.huawei.hem.re */
/* loaded from: classes.dex */
public class FileDownloadServiceSharedTransmit implements IFileDownloadServiceProxy, FDServiceSharedHandler.a {

    /* renamed from: d */
    public static final Class<?> f3627d = FileDownloadService.SharedMainProcessService.class;

    /* renamed from: a */
    public boolean f3628a = false;

    /* renamed from: b */
    public final ArrayList<Runnable> f3629b = new ArrayList<>();

    /* renamed from: c */
    public FDServiceSharedHandler f3630c;

    @Override // com.huawei.hem.BinderC1285sg.a
    /* renamed from: a */
    public void mo2663a(FDServiceSharedHandler binderC1285sg) {
        this.f3630c = binderC1285sg;
        List list = (List) this.f3629b.clone();
        this.f3629b.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        FileDownloadEventPool.b.f3080a.m2871a(new DownloadServiceConnectChangedEvent(DownloadServiceConnectChangedEvent.a.connected, f3627d));
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: b */
    public byte mo2621b(int i) {
        if (isConnected()) {
            return this.f3630c.mo1863b(i);
        }
        DownloadServiceNotConnectedHelper.m3147a("request get the status for the task[%d] in the download service", Integer.valueOf(i));
        return (byte) 0;
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: d */
    public boolean mo2622d(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        if (isConnected()) {
            this.f3630c.mo1866d(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
            return true;
        }
        DownloadServiceNotConnectedHelper.m3148b(str, str2, z);
        return false;
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: g */
    public void mo2623g(boolean z) {
        if (!isConnected()) {
            DownloadServiceNotConnectedHelper.m3147a("request cancel the foreground status[%B] for the download service", Boolean.valueOf(z));
        } else {
            this.f3630c.mo1867g(z);
            this.f3628a = false;
        }
    }

    @Override // com.huawei.hem.InterfaceC1383we
    public boolean isConnected() {
        return this.f3630c != null;
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: n */
    public boolean mo2624n(int i) {
        if (isConnected()) {
            return this.f3630c.f3711a.m2739e(i);
        }
        DownloadServiceNotConnectedHelper.m3147a("request pause the task[%d] in the download service", Integer.valueOf(i));
        return false;
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: o */
    public boolean mo2449o() {
        return this.f3628a;
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: p */
    public void mo2450p(Context context) {
        Intent intent = new Intent(context, f3627d);
        boolean zM1969s = FileDownloadUtils.m1969s(context);
        this.f3628a = zM1969s;
        intent.putExtra("is_foreground", zM1969s);
        if (!this.f3628a) {
            context.startService(intent);
        } else if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        }
    }
}
