package anet.channel;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anet.channel.h */
/* loaded from: classes.dex */
public class ServiceConnectionC0353h implements ServiceConnection {

    /* renamed from: a */
    public final /* synthetic */ Intent f273a;

    /* renamed from: b */
    public final /* synthetic */ Context f274b;

    /* renamed from: c */
    public final /* synthetic */ SessionRequest f275c;

    public ServiceConnectionC0353h(SessionRequest sessionRequest, Intent intent, Context context) {
        this.f275c = sessionRequest;
        this.f273a = intent;
        this.f274b = context;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ALog.m337d("awcn.SessionRequest", "onServiceConnected", null, new Object[0]);
        try {
            try {
                Messenger messenger = new Messenger(iBinder);
                Message message = new Message();
                message.getData().putParcelable("intent", this.f273a);
                messenger.send(message);
            } catch (Exception e) {
                ALog.m338e("awcn.SessionRequest", "onServiceConnected sendMessage error.", null, e, new Object[0]);
            }
        } finally {
            this.f274b.unbindService(this);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        ALog.m337d("awcn.SessionRequest", "onServiceDisconnected", null, new Object[0]);
        this.f274b.unbindService(this);
    }
}
