package anetwork.channel.aidl;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import anet.channel.util.ALog;
import anetwork.channel.aidl.IRemoteNetworkGetter;
import anetwork.channel.aidl.RemoteNetwork;
import anetwork.channel.degrade.DegradableNetworkDelegate;
import anetwork.channel.http.HttpNetworkDelegate;
import com.huawei.hem.C0948f6;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class NetworkService extends Service {

    /* renamed from: b */
    public Context f623b;

    /* renamed from: c */
    public RemoteNetwork.Stub f624c = null;

    /* renamed from: d */
    public RemoteNetwork.Stub f625d = null;

    /* renamed from: a */
    public IRemoteNetworkGetter.Stub f622a = new IRemoteNetworkGetter.Stub() { // from class: anetwork.channel.aidl.NetworkService.1
        @Override // anetwork.channel.aidl.IRemoteNetworkGetter
        public RemoteNetwork get(int i) {
            return i == 1 ? NetworkService.this.f624c : NetworkService.this.f625d;
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.f623b = getApplicationContext();
        if (ALog.isPrintLog(2)) {
            StringBuilder sbM1765j = C0948f6.m1765j("onBind:");
            sbM1765j.append(intent.getAction());
            ALog.m340i("anet.NetworkService", sbM1765j.toString(), null, new Object[0]);
        }
        this.f624c = new DegradableNetworkDelegate(this.f623b);
        this.f625d = new HttpNetworkDelegate(this.f623b);
        if (IRemoteNetworkGetter.class.getName().equals(intent.getAction())) {
            return this.f622a;
        }
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 2;
    }
}
