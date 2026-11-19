package anetwork.channel.entity;

import android.os.RemoteException;
import anet.channel.bytes.ByteArray;
import anet.channel.statist.RequestStatistic;
import anet.channel.util.ALog;
import anetwork.channel.aidl.DefaultFinishEvent;
import anetwork.channel.aidl.ParcelableNetworkListener;
import anetwork.channel.aidl.adapter.ParcelableInputStreamImpl;
import anetwork.channel.interceptor.Callback;
import java.util.List;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.entity.c */
/* loaded from: classes.dex */
public class C0454c implements Callback {

    /* renamed from: a */
    public ParcelableNetworkListener f719a;

    /* renamed from: b */
    public String f720b;

    /* renamed from: c */
    public ParcelableInputStreamImpl f721c = null;

    /* renamed from: d */
    public boolean f722d;

    /* renamed from: e */
    public C0458g f723e;

    public C0454c(ParcelableNetworkListener parcelableNetworkListener, C0458g c0458g) {
        this.f722d = false;
        this.f723e = null;
        this.f719a = parcelableNetworkListener;
        this.f723e = c0458g;
        if (parcelableNetworkListener != null) {
            try {
                if ((parcelableNetworkListener.getListenerState() & 8) != 0) {
                    this.f722d = true;
                }
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // anetwork.channel.interceptor.Callback
    public void onDataReceiveSize(int i, int i2, ByteArray byteArray) {
        ParcelableNetworkListener parcelableNetworkListener = this.f719a;
        if (parcelableNetworkListener != null) {
            m416a(new RunnableC0456e(this, i, byteArray, i2, parcelableNetworkListener));
        }
    }

    @Override // anetwork.channel.interceptor.Callback
    public void onFinish(DefaultFinishEvent defaultFinishEvent) {
        if (ALog.isPrintLog(2)) {
            ALog.m340i("anet.Repeater", "[onFinish] ", this.f720b, new Object[0]);
        }
        ParcelableNetworkListener parcelableNetworkListener = this.f719a;
        if (parcelableNetworkListener != null) {
            RunnableC0457f runnableC0457f = new RunnableC0457f(this, defaultFinishEvent, parcelableNetworkListener);
            RequestStatistic requestStatistic = defaultFinishEvent.f609rs;
            if (requestStatistic != null) {
                requestStatistic.rspCbDispatch = System.currentTimeMillis();
            }
            m416a(runnableC0457f);
        }
        this.f719a = null;
    }

    @Override // anetwork.channel.interceptor.Callback
    public void onResponseCode(int i, Map<String, List<String>> map) {
        if (ALog.isPrintLog(2)) {
            ALog.m340i("anet.Repeater", "[onResponseCode]", this.f720b, new Object[0]);
        }
        ParcelableNetworkListener parcelableNetworkListener = this.f719a;
        if (parcelableNetworkListener != null) {
            m416a(new RunnableC0455d(this, parcelableNetworkListener, i, map));
        }
    }

    /* renamed from: a */
    private void m416a(Runnable runnable) {
        if (this.f723e.m430c()) {
            runnable.run();
        } else {
            String str = this.f720b;
            C0452a.m414a(str != null ? str.hashCode() : hashCode(), runnable);
        }
    }

    /* renamed from: a */
    public void m421a(String str) {
        this.f720b = str;
    }
}
