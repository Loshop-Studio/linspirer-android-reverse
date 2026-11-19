package anetwork.channel.entity;

import android.os.RemoteException;
import anet.channel.bytes.ByteArray;
import anetwork.channel.aidl.DefaultProgressEvent;
import anetwork.channel.aidl.ParcelableNetworkListener;
import anetwork.channel.aidl.adapter.ParcelableInputStreamImpl;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.entity.e */
/* loaded from: classes.dex */
public class DeliverResponseBodyTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f728a;

    /* renamed from: b */
    public final /* synthetic */ ByteArray f729b;

    /* renamed from: c */
    public final /* synthetic */ int f730c;

    /* renamed from: d */
    public final /* synthetic */ ParcelableNetworkListener f731d;

    /* renamed from: e */
    public final /* synthetic */ NetworkListenerDispatcher f732e;

    public DeliverResponseBodyTask(NetworkListenerDispatcher c0454c, int i, ByteArray byteArray, int i2, ParcelableNetworkListener parcelableNetworkListener) {
        this.f732e = c0454c;
        this.f728a = i;
        this.f729b = byteArray;
        this.f730c = i2;
        this.f731d = parcelableNetworkListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f732e.f722d) {
                try {
                    if (this.f732e.f721c == null) {
                        this.f732e.f721c = new ParcelableInputStreamImpl();
                        this.f732e.f721c.init(this.f732e.f723e, this.f730c);
                        this.f732e.f721c.write(this.f729b);
                        this.f731d.onInputStreamGet(this.f732e.f721c);
                    } else {
                        this.f732e.f721c.write(this.f729b);
                    }
                } catch (Exception unused) {
                    if (this.f732e.f721c == null) {
                    } else {
                        this.f732e.f721c.close();
                    }
                }
            } else {
                this.f731d.onDataReceived(new DefaultProgressEvent(this.f728a, this.f729b.getDataLength(), this.f730c, this.f729b.getBuffer()));
            }
        } catch (RemoteException unused2) {
        }
    }
}
