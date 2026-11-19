package anetwork.channel.unified;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import anet.channel.bytes.ByteArray;
import anet.channel.bytes.AwcnByteArrayPool;
import anet.channel.util.ALog;
import anet.channel.util.ErrorConstant;
import anet.channel.util.StringUtils;
import anetwork.channel.aidl.Connection;
import anetwork.channel.aidl.NetworkResponse;
import anetwork.channel.aidl.ParcelableFuture;
import anetwork.channel.aidl.ParcelableInputStream;
import anetwork.channel.aidl.ParcelableNetworkListener;
import anetwork.channel.aidl.ParcelableRequest;
import anetwork.channel.aidl.RemoteNetwork;
import anetwork.channel.aidl.adapter.ConnectionDelegate;
import anetwork.channel.aidl.adapter.ParcelableFutureResponse;
import anetwork.channel.aidl.adapter.ParcelableNetworkListenerWrapper;
import anetwork.channel.entity.NetworkListenerDispatcher;
import anetwork.channel.entity.UnifiedRequestConfig;
import anetwork.channel.http.NetworkSdkSetting;
import java.io.ByteArrayOutputStream;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public abstract class UnifiedNetworkDelegate extends RemoteNetwork.Stub {
    public static final int DEGRADABLE = 1;
    public static final int HTTP = 0;
    public static final String TAG = "anet.UnifiedNetworkDelegate";
    public int type = 1;

    public UnifiedNetworkDelegate(Context context) {
        NetworkSdkSetting.init(context);
    }

    private NetworkResponse convertToSync(ParcelableRequest parcelableRequest) {
        NetworkResponse networkResponse = new NetworkResponse();
        try {
            ConnectionDelegate connectionDelegate = (ConnectionDelegate) getConnection(parcelableRequest);
            ParcelableInputStream inputStream = connectionDelegate.getInputStream();
            if (inputStream != null) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(inputStream.length() > 0 ? inputStream.length() : 1024);
                ByteArray byteArrayM70a = AwcnByteArrayPool.a.f177a.m70a(2048);
                while (true) {
                    int i = inputStream.read(byteArrayM70a.getBuffer());
                    if (i == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(byteArrayM70a.getBuffer(), 0, i);
                }
                networkResponse.setBytedata(byteArrayOutputStream.toByteArray());
            }
            int statusCode = connectionDelegate.getStatusCode();
            if (statusCode < 0) {
                networkResponse.setBytedata(null);
            } else {
                networkResponse.setConnHeadFields(connectionDelegate.getConnHeadFields());
            }
            networkResponse.setStatusCode(statusCode);
            networkResponse.setStatisticData(connectionDelegate.getStatisticData());
            return networkResponse;
        } catch (RemoteException e) {
            networkResponse.setStatusCode(-103);
            String message = e.getMessage();
            if (!TextUtils.isEmpty(message)) {
                networkResponse.setDesc(StringUtils.concatString(networkResponse.getDesc(), "|", message));
            }
            return networkResponse;
        } catch (Exception unused) {
            networkResponse.setStatusCode(ErrorConstant.ERROR_REQUEST_FAIL);
            return networkResponse;
        }
    }

    @Override // anetwork.channel.aidl.RemoteNetwork
    public ParcelableFuture asyncSend(ParcelableRequest parcelableRequest, ParcelableNetworkListener parcelableNetworkListener) throws RemoteException {
        try {
            return asyncSend(new UnifiedRequestConfig(parcelableRequest, this.type, false), parcelableNetworkListener);
        } catch (Exception e) {
            ALog.m338e(TAG, "asyncSend failed", parcelableRequest.seqNo, e, new Object[0]);
            throw new RemoteException(e.getMessage());
        }
    }

    @Override // anetwork.channel.aidl.RemoteNetwork
    public Connection getConnection(ParcelableRequest parcelableRequest) throws RemoteException {
        try {
            UnifiedRequestConfig c0458g = new UnifiedRequestConfig(parcelableRequest, this.type, true);
            ConnectionDelegate connectionDelegate = new ConnectionDelegate(c0458g);
            connectionDelegate.setFuture(asyncSend(c0458g, new ParcelableNetworkListenerWrapper(connectionDelegate, null, null)));
            return connectionDelegate;
        } catch (Exception e) {
            ALog.m338e(TAG, "asyncSend failed", parcelableRequest.seqNo, e, new Object[0]);
            throw new RemoteException(e.getMessage());
        }
    }

    @Override // anetwork.channel.aidl.RemoteNetwork
    public NetworkResponse syncSend(ParcelableRequest parcelableRequest) {
        return convertToSync(parcelableRequest);
    }

    private ParcelableFuture asyncSend(UnifiedRequestConfig c0458g, ParcelableNetworkListener parcelableNetworkListener) {
        return new ParcelableFutureResponse(new UnifiedRequestCoordinator(c0458g, new NetworkListenerDispatcher(parcelableNetworkListener, c0458g)).m462a());
    }
}
