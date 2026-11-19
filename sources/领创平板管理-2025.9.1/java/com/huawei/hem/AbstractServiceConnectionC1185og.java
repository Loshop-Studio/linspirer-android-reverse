package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.huawei.hem.C1082ke;
import com.huawei.hem.C1283se;
import com.huawei.hem.C1384wf;
import com.huawei.hem.InterfaceC0984gg;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* compiled from: BaseFileServiceUIGuard.java */
/* renamed from: com.huawei.hem.og */
/* loaded from: classes.dex */
public abstract class AbstractServiceConnectionC1185og<CALLBACK extends Binder, INTERFACE extends IInterface> implements InterfaceC1383we, ServiceConnection {

    /* renamed from: a */
    public final CALLBACK f3401a;

    /* renamed from: b */
    public volatile INTERFACE f3402b;

    /* renamed from: c */
    public final Class<?> f3403c;

    /* renamed from: d */
    public boolean f3404d = false;

    /* renamed from: e */
    public final List<Context> f3405e;

    /* renamed from: f */
    public final ArrayList<Runnable> f3406f;

    public AbstractServiceConnectionC1185og(Class<?> cls) {
        new HashMap();
        this.f3405e = new ArrayList();
        this.f3406f = new ArrayList<>();
        this.f3403c = cls;
        this.f3401a = new C1283se.a();
    }

    @Override // com.huawei.hem.InterfaceC1383we
    public boolean isConnected() {
        return this.f3402b != null;
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: o */
    public boolean mo2449o() {
        return this.f3404d;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f3402b = InterfaceC0984gg.a.m1873v3(iBinder);
        try {
            ((InterfaceC0984gg) this.f3402b).mo1870q0((C1283se.a) this.f3401a);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        List list = (List) this.f3406f.clone();
        this.f3406f.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        C1082ke.b.f3080a.m2871a(new C1384wf(C1384wf.a.connected, this.f3403c));
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f3402b = null;
        C1082ke.b.f3080a.m2871a(new C1384wf(C1384wf.a.lost, this.f3403c));
    }

    @Override // com.huawei.hem.InterfaceC1383we
    /* renamed from: p */
    public void mo2450p(Context context) {
        if (C1010hh.m1965o(context)) {
            throw new IllegalStateException("Fatal-Exception: You can't bind the FileDownloadService in :filedownloader process.\n It's the invalid operation and is likely to cause unexpected problems.\n Maybe you want to use non-separate process mode for FileDownloader, More detail about non-separate mode, please move to wiki manually: https://github.com/lingochamp/FileDownloader/wiki/filedownloader.properties");
        }
        Intent intent = new Intent(context, this.f3403c);
        if (!this.f3405e.contains(context)) {
            this.f3405e.add(context);
        }
        boolean zM1969s = C1010hh.m1969s(context);
        this.f3404d = zM1969s;
        intent.putExtra("is_foreground", zM1969s);
        context.bindService(intent, this, 1);
        if (!this.f3404d) {
            context.startService(intent);
        } else if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        }
    }
}
