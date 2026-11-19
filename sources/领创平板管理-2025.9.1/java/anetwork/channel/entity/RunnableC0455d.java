package anetwork.channel.entity;

import android.os.RemoteException;
import anetwork.channel.aidl.ParcelableHeader;
import anetwork.channel.aidl.ParcelableNetworkListener;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.entity.d */
/* loaded from: classes.dex */
public class RunnableC0455d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ParcelableNetworkListener f724a;

    /* renamed from: b */
    public final /* synthetic */ int f725b;

    /* renamed from: c */
    public final /* synthetic */ Map f726c;

    /* renamed from: d */
    public final /* synthetic */ C0454c f727d;

    public RunnableC0455d(C0454c c0454c, ParcelableNetworkListener parcelableNetworkListener, int i, Map map) {
        this.f727d = c0454c;
        this.f724a = parcelableNetworkListener;
        this.f725b = i;
        this.f726c = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f724a.onResponseCode(this.f725b, new ParcelableHeader(this.f725b, this.f726c));
        } catch (RemoteException unused) {
        }
    }
}
