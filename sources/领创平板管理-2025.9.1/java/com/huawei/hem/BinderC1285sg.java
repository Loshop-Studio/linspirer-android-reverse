package com.huawei.hem;

import android.app.Notification;
import android.content.Intent;
import android.os.IBinder;
import com.huawei.hem.C1233qe;
import com.huawei.hem.InterfaceC0984gg;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.liulishuo.filedownloader.services.FileDownloadService;
import java.lang.ref.WeakReference;

/* compiled from: FDServiceSharedHandler.java */
/* renamed from: com.huawei.hem.sg */
/* loaded from: classes.dex */
public class BinderC1285sg extends InterfaceC0984gg.a implements InterfaceC1385wg {

    /* renamed from: a */
    public final C1310tg f3711a;

    /* renamed from: b */
    public final WeakReference<FileDownloadService> f3712b;

    /* compiled from: FDServiceSharedHandler.java */
    /* renamed from: com.huawei.hem.sg$a */
    public interface a {
        /* renamed from: a */
        void mo2663a(BinderC1285sg binderC1285sg);
    }

    public BinderC1285sg(WeakReference<FileDownloadService> weakReference, C1310tg c1310tg) {
        this.f3712b = weakReference;
        this.f3711a = c1310tg;
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: C1 */
    public long mo1858C1(int i) {
        return this.f3711a.m2736b(i);
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: K1 */
    public void mo1859K1() {
        this.f3711a.f3811a.clear();
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: P2 */
    public void mo1860P2(int i, Notification notification) {
        WeakReference<FileDownloadService> weakReference = this.f3712b;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f3712b.get().startForeground(i, notification);
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: V0 */
    public void mo1861V0(InterfaceC0958fg interfaceC0958fg) {
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: a0 */
    public long mo1862a0(int i) {
        FileDownloadModel fileDownloadModelMo2105o = this.f3711a.f3811a.mo2105o(i);
        if (fileDownloadModelMo2105o == null) {
            return 0L;
        }
        return fileDownloadModelMo2105o.f4841h;
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: b */
    public byte mo1863b(int i) {
        FileDownloadModel fileDownloadModelMo2105o = this.f3711a.f3811a.mo2105o(i);
        if (fileDownloadModelMo2105o == null) {
            return (byte) 0;
        }
        return fileDownloadModelMo2105o.m3927b();
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: b1 */
    public boolean mo1864b1() {
        return this.f3711a.m2738d();
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: c2 */
    public boolean mo1865c2(String str, String str2) {
        C1310tg c1310tg = this.f3711a;
        if (c1310tg == null) {
            throw null;
        }
        return c1310tg.m2737c(c1310tg.f3811a.mo2105o(C1010hh.m1957g(str, str2)));
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: d */
    public void mo1866d(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        this.f3711a.m2741g(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: g */
    public void mo1867g(boolean z) {
        WeakReference<FileDownloadService> weakReference = this.f3712b;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f3712b.get().stopForeground(z);
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: l3 */
    public void mo1868l3() {
        this.f3711a.m2740f();
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: n */
    public boolean mo1869n(int i) {
        return this.f3711a.m2739e(i);
    }

    @Override // com.huawei.hem.InterfaceC1385wg
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // com.huawei.hem.InterfaceC1385wg
    public void onStartCommand(Intent intent, int i, int i2) {
        InterfaceC1383we interfaceC1383we = C1233qe.b.f3535a.f3534a;
        (interfaceC1383we instanceof C1258re ? (a) interfaceC1383we : null).mo2663a(this);
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: q0 */
    public void mo1870q0(InterfaceC0958fg interfaceC0958fg) {
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: q2 */
    public boolean mo1871q2(int i) {
        boolean zM2796c;
        C1310tg c1310tg = this.f3711a;
        synchronized (c1310tg) {
            zM2796c = c1310tg.f3812b.m2796c(i);
        }
        return zM2796c;
    }

    @Override // com.huawei.hem.InterfaceC0984gg
    /* renamed from: t */
    public boolean mo1872t(int i) {
        return this.f3711a.m2735a(i);
    }
}
