package anetwork.channel.aidl.adapter;

import android.os.RemoteException;
import anet.channel.util.ErrorConstant;
import anetwork.channel.NetworkCallBack;
import anetwork.channel.NetworkEvent;
import anetwork.channel.aidl.Connection;
import anetwork.channel.aidl.ParcelableFuture;
import anetwork.channel.aidl.ParcelableInputStream;
import anetwork.channel.entity.C0458g;
import anetwork.channel.statist.StatisticData;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class ConnectionDelegate extends Connection.Stub implements NetworkCallBack.FinishListener, NetworkCallBack.InputStreamListener, NetworkCallBack.ResponseCodeListener {
    public C0458g config;
    public String desc;
    public ParcelableFuture future;
    public Map<String, List<String>> header;
    public ParcelableInputStreamImpl inputStream;
    public StatisticData statisticData;
    public int statusCode;
    public CountDownLatch statusLatch = new CountDownLatch(1);
    public CountDownLatch streamLatch = new CountDownLatch(1);

    public ConnectionDelegate(int i) {
        this.statusCode = i;
        this.desc = ErrorConstant.getErrMsg(i);
    }

    private RemoteException buildRemoteException(String str) {
        return new RemoteException(str);
    }

    private void waitCountDownLatch(CountDownLatch countDownLatch) throws RemoteException {
        try {
            if (countDownLatch.await(this.config.m429b() + 1000, TimeUnit.MILLISECONDS)) {
                return;
            }
            if (this.future != null) {
                this.future.cancel(true);
            }
            throw buildRemoteException("wait time out");
        } catch (InterruptedException unused) {
            throw buildRemoteException("thread interrupt");
        }
    }

    @Override // anetwork.channel.aidl.Connection
    public void cancel() {
        ParcelableFuture parcelableFuture = this.future;
        if (parcelableFuture != null) {
            parcelableFuture.cancel(true);
        }
    }

    @Override // anetwork.channel.aidl.Connection
    public Map<String, List<String>> getConnHeadFields() throws RemoteException {
        waitCountDownLatch(this.statusLatch);
        return this.header;
    }

    @Override // anetwork.channel.aidl.Connection
    public String getDesc() throws RemoteException {
        waitCountDownLatch(this.statusLatch);
        return this.desc;
    }

    @Override // anetwork.channel.aidl.Connection
    public ParcelableInputStream getInputStream() throws RemoteException {
        waitCountDownLatch(this.streamLatch);
        return this.inputStream;
    }

    @Override // anetwork.channel.aidl.Connection
    public StatisticData getStatisticData() {
        return this.statisticData;
    }

    @Override // anetwork.channel.aidl.Connection
    public int getStatusCode() throws RemoteException {
        waitCountDownLatch(this.statusLatch);
        return this.statusCode;
    }

    @Override // anetwork.channel.NetworkCallBack.FinishListener
    public void onFinished(NetworkEvent.FinishEvent finishEvent, Object obj) {
        this.statusCode = finishEvent.getHttpCode();
        this.desc = finishEvent.getDesc() != null ? finishEvent.getDesc() : ErrorConstant.getErrMsg(this.statusCode);
        this.statisticData = finishEvent.getStatisticData();
        ParcelableInputStreamImpl parcelableInputStreamImpl = this.inputStream;
        if (parcelableInputStreamImpl != null) {
            parcelableInputStreamImpl.writeEnd();
        }
        this.streamLatch.countDown();
        this.statusLatch.countDown();
    }

    @Override // anetwork.channel.NetworkCallBack.InputStreamListener
    public void onInputStreamGet(ParcelableInputStream parcelableInputStream, Object obj) {
        this.inputStream = (ParcelableInputStreamImpl) parcelableInputStream;
        this.streamLatch.countDown();
    }

    @Override // anetwork.channel.NetworkCallBack.ResponseCodeListener
    public boolean onResponseCode(int i, Map<String, List<String>> map, Object obj) {
        this.statusCode = i;
        this.desc = ErrorConstant.getErrMsg(i);
        this.header = map;
        this.statusLatch.countDown();
        return false;
    }

    public void setFuture(ParcelableFuture parcelableFuture) {
        this.future = parcelableFuture;
    }

    public ConnectionDelegate(C0458g c0458g) {
        this.config = c0458g;
    }
}
