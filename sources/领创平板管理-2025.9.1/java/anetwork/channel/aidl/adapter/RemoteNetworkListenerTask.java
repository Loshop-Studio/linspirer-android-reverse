package anetwork.channel.aidl.adapter;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.aidl.adapter.c */
/* loaded from: classes.dex */
public class RemoteNetworkListenerTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ byte f633a;

    /* renamed from: b */
    public final /* synthetic */ Object f634b;

    /* renamed from: c */
    public final /* synthetic */ ParcelableNetworkListenerWrapper f635c;

    public RemoteNetworkListenerTask(ParcelableNetworkListenerWrapper parcelableNetworkListenerWrapper, byte b, Object obj) {
        this.f635c = parcelableNetworkListenerWrapper;
        this.f633a = b;
        this.f634b = obj;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f635c.dispatchCallback(this.f633a, this.f634b);
    }
}
