package org.android.agoo.control;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* compiled from: Taobao */
/* renamed from: org.android.agoo.control.j */
/* loaded from: classes.dex */
public class ServiceConnectionC2018j implements ServiceConnection {

    /* renamed from: a */
    public final /* synthetic */ BaseIntentService f6486a;

    public ServiceConnectionC2018j(BaseIntentService baseIntentService) {
        this.f6486a = baseIntentService;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}
