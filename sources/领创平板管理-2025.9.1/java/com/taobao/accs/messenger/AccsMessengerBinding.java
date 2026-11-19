package com.taobao.accs.messenger;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.messenger.d */
/* loaded from: classes.dex */
public class AccsMessengerBinding implements ServiceConnection {

    /* renamed from: a */
    public Context f6193a;

    /* renamed from: c */
    public Messenger f6195c;

    /* renamed from: d */
    public String f6196d;

    /* renamed from: e */
    public AccsMessengerServiceBinder f6197e;

    /* renamed from: b */
    public int f6194b = 1;

    /* renamed from: f */
    public long f6198f = System.currentTimeMillis();

    public AccsMessengerBinding(Context context, String str, AccsMessengerServiceBinder c1932a) {
        this.f6193a = context;
        this.f6196d = str;
        this.f6197e = c1932a;
    }

    /* renamed from: a */
    public void m5615a(Intent intent) throws RemoteException {
        Message message = new Message();
        message.getData().putParcelable("intent", intent);
        this.f6195c.send(message);
    }

    /* renamed from: b */
    public boolean m5617b() {
        int i = this.f6194b;
        return i == 1 || i == 2;
    }

    /* renamed from: c */
    public boolean m5618c() {
        return this.f6194b == 1 && System.currentTimeMillis() - this.f6198f > 5000;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f6193a.unbindService(this);
            this.f6194b = 0;
        } else {
            this.f6195c = new Messenger(iBinder);
            this.f6194b = 2;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f6197e.m5613a(this.f6196d, this);
        this.f6194b = 0;
        this.f6195c = null;
    }

    /* renamed from: a */
    public boolean m5616a() {
        return this.f6194b == 2;
    }
}
