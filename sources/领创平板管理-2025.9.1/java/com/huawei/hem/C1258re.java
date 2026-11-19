package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.huawei.hem.BinderC1285sg;
import com.huawei.hem.C1082ke;
import com.huawei.hem.C1384wf;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.services.FileDownloadService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: FileDownloadServiceSharedTransmit.java */
/* renamed from: com.huawei.hem.re */
/* loaded from: classes.dex */
public class C1258re implements InterfaceC1383we, BinderC1285sg.a {

    /* renamed from: d */
    public static final Class<?> f3627d = FileDownloadService.SharedMainProcessService.class;

    /* renamed from: a */
    public boolean f3628a = false;

    /* renamed from: b */
    public final ArrayList<Runnable> f3629b = new ArrayList<>();

    /* renamed from: c */
    public BinderC1285sg f3630c;

    @Override // com.huawei.hem.BinderC1285sg.a
    /* renamed from: a */
    public void mo2663a(BinderC1285sg binderC1285sg) {
        this.f3630c = binderC1285sg;
        List list = (List) this.f3629b.clone();
        this.f3629b.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        C1082ke.b.f3080a.m2871a(new C1384wf(C1384wf.a.connected, f3627d));
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: b */
    public byte mo2621b(int i) {
        if (isConnected()) {
            return this.f3630c.mo1863b(i);
        }
        C1460zg.m3147a("request get the status for the task[%d] in the download service", Integer.valueOf(i));
        return (byte) 0;
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: d */
    public boolean mo2622d(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        if (isConnected()) {
            this.f3630c.mo1866d(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
            return true;
        }
        C1460zg.m3148b(str, str2, z);
        return false;
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: g */
    public void mo2623g(boolean z) {
        if (!isConnected()) {
            C1460zg.m3147a("request cancel the foreground status[%B] for the download service", Boolean.valueOf(z));
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
        C1460zg.m3147a("request pause the task[%d] in the download service", Integer.valueOf(i));
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
        boolean zM1969s = C1010hh.m1969s(context);
        this.f3628a = zM1969s;
        intent.putExtra("is_foreground", zM1969s);
        if (!this.f3628a) {
            context.startService(intent);
        } else if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        }
    }
}
