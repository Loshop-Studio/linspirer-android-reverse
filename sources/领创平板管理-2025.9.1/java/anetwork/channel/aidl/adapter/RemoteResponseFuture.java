package anetwork.channel.aidl.adapter;

import android.os.RemoteException;
import anet.channel.util.ALog;
import anetwork.channel.Response;
import anetwork.channel.aidl.ParcelableFuture;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.aidl.adapter.a */
/* loaded from: classes.dex */
public class RemoteResponseFuture implements Future<Response> {

    /* renamed from: a */
    public ParcelableFuture f631a;

    /* renamed from: b */
    public Response f632b;

    public RemoteResponseFuture(ParcelableFuture parcelableFuture) {
        this.f631a = parcelableFuture;
    }

    @Override // java.util.concurrent.Future
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Response get() {
        Response response = this.f632b;
        if (response != null) {
            return response;
        }
        ParcelableFuture parcelableFuture = this.f631a;
        if (parcelableFuture != null) {
            try {
                return parcelableFuture.get(20000L);
            } catch (RemoteException e) {
                ALog.m341w("anet.FutureResponse", "[get]", null, e, new Object[0]);
            }
        }
        return null;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        ParcelableFuture parcelableFuture = this.f631a;
        if (parcelableFuture == null) {
            return false;
        }
        try {
            return parcelableFuture.cancel(z);
        } catch (RemoteException e) {
            ALog.m341w("anet.FutureResponse", "[cancel]", null, e, new Object[0]);
            return false;
        }
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        try {
            return this.f631a.isCancelled();
        } catch (RemoteException e) {
            ALog.m341w("anet.FutureResponse", "[isCancelled]", null, e, new Object[0]);
            return false;
        }
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        try {
            return this.f631a.isDone();
        } catch (RemoteException e) {
            ALog.m341w("anet.FutureResponse", "[isDone]", null, e, new Object[0]);
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public /* synthetic */ Response get(long j, TimeUnit timeUnit) {
        return m372a(j);
    }

    public RemoteResponseFuture(Response response) {
        this.f632b = response;
    }

    /* renamed from: a */
    public Response m372a(long j) {
        Response response = this.f632b;
        if (response != null) {
            return response;
        }
        ParcelableFuture parcelableFuture = this.f631a;
        if (parcelableFuture != null) {
            try {
                return parcelableFuture.get(j);
            } catch (RemoteException e) {
                ALog.m341w("anet.FutureResponse", "[get(long timeout, TimeUnit unit)]", null, e, new Object[0]);
            }
        }
        return null;
    }
}
