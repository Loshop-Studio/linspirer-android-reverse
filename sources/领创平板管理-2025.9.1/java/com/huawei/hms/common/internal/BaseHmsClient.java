package com.huawei.hms.common.internal;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import com.huawei.hem.C0948f6;
import com.huawei.hms.adapter.AvailableAdapter;
import com.huawei.hms.adapter.BinderAdapter;
import com.huawei.hms.api.ConnectionResult;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.api.IPCTransport;
import com.huawei.hms.core.aidl.InterfaceC1543d;
import com.huawei.hms.support.api.client.AidlApiClient;
import com.huawei.hms.support.api.client.SubAppInfo;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Util;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class BaseHmsClient implements AidlApiClient {
    public static final int BINDING = 5;
    public static final int CONNECTED = 3;
    public static final int DISCONNECTED = 1;
    public static final int DISCONNECTING = 4;
    public static final Object LOCK_CONNECT_TIMEOUT_HANDLER = new Object();
    public static final int MSG_CONN_TIMEOUT = 2;
    public static final String TAG = "BaseHmsClient";
    public String mAppID;
    public BinderAdapter mBinderAdapter;
    public final ClientSettings mClientSettings;
    public final AtomicInteger mConnStatus = new AtomicInteger(1);
    public Handler mConnectTimeoutHandler = null;
    public final ConnectionCallbacks mConnectionCallbacks;
    public final OnConnectionFailedListener mConnectionFailedListener;
    public final Context mContext;
    public volatile InterfaceC1543d mService;
    public String sessionId;

    public interface ConnectionCallbacks {
        public static final int CAUSE_API_CLIENT_EXPIRED = 3;
        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;

        void onConnected();

        void onConnectionSuspended(int i);
    }

    public interface OnConnectionFailedListener {
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    public BaseHmsClient(Context context, ClientSettings clientSettings, OnConnectionFailedListener onConnectionFailedListener, ConnectionCallbacks connectionCallbacks) {
        this.mContext = context;
        this.mClientSettings = clientSettings;
        this.mAppID = clientSettings.getAppID();
        this.mConnectionFailedListener = onConnectionFailedListener;
        this.mConnectionCallbacks = connectionCallbacks;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindCoreService() {
        String innerHmsPkg = this.mClientSettings.getInnerHmsPkg();
        String serviceAction = getServiceAction();
        if (innerHmsPkg.equalsIgnoreCase(this.mContext.getPackageName())) {
            String serviceActionMetadata = Util.getServiceActionMetadata(this.mContext);
            if (!TextUtils.isEmpty(serviceActionMetadata)) {
                serviceAction = serviceActionMetadata;
            }
        }
        HMSLog.m3463i(TAG, "enter bindCoreService, packageName is " + innerHmsPkg + ", serviceAction is " + serviceAction);
        BinderAdapter binderAdapter = new BinderAdapter(this.mContext, serviceAction, innerHmsPkg);
        this.mBinderAdapter = binderAdapter;
        binderAdapter.binder(new BinderAdapter.BinderCallBack() { // from class: com.huawei.hms.common.internal.BaseHmsClient.1
            @Override // com.huawei.hms.adapter.BinderAdapter.BinderCallBack
            public void onBinderFailed(int i) {
                onBinderFailed(i, null);
            }

            @Override // com.huawei.hms.adapter.BinderAdapter.BinderCallBack
            public void onNullBinding(ComponentName componentName) {
                BaseHmsClient.this.setConnectStatus(1);
                BaseHmsClient.this.notifyFailed(10);
            }

            @Override // com.huawei.hms.adapter.BinderAdapter.BinderCallBack
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                HMSLog.m3463i(BaseHmsClient.TAG, "Enter onServiceConnected.");
                BaseHmsClient.this.mService = InterfaceC1543d.a.m3395a(iBinder);
                if (BaseHmsClient.this.mService != null) {
                    BaseHmsClient.this.onConnecting();
                    return;
                }
                HMSLog.m3461e(BaseHmsClient.TAG, "Failed to get service as interface, trying to unbind.");
                BaseHmsClient.this.mBinderAdapter.unBind();
                BaseHmsClient.this.setConnectStatus(1);
                BaseHmsClient.this.notifyFailed(10);
            }

            @Override // com.huawei.hms.adapter.BinderAdapter.BinderCallBack
            public void onServiceDisconnected(ComponentName componentName) {
                HMSLog.m3463i(BaseHmsClient.TAG, "Enter onServiceDisconnected.");
                BaseHmsClient.this.setConnectStatus(1);
                if (BaseHmsClient.this.mConnectionCallbacks != null) {
                    BaseHmsClient.this.mConnectionCallbacks.onConnectionSuspended(1);
                }
            }

            @Override // com.huawei.hms.adapter.BinderAdapter.BinderCallBack
            public void onBinderFailed(int i, Intent intent) {
                if (intent == null) {
                    HMSLog.m3463i(BaseHmsClient.TAG, "onBinderFailed: pendingIntent is null!");
                    BaseHmsClient.this.notifyFailed(new ConnectionResult(10, (PendingIntent) null));
                    BaseHmsClient.this.mService = null;
                    return;
                }
                Activity activeActivity = Util.getActiveActivity(BaseHmsClient.this.getClientSettings().getCpActivity(), BaseHmsClient.this.getContext());
                if (activeActivity != null) {
                    HMSLog.m3463i(BaseHmsClient.TAG, "onBinderFailed: SDK try to resolve and reConnect!");
                    activeActivity.startActivity(intent);
                } else {
                    HMSLog.m3463i(BaseHmsClient.TAG, "onBinderFailed: return pendingIntent to kit and cp");
                    BaseHmsClient.this.notifyFailed(new ConnectionResult(10, PendingIntent.getActivity(BaseHmsClient.this.mContext, 11, intent, 134217728)));
                    BaseHmsClient.this.mService = null;
                }
            }
        });
    }

    private void cancelConnDelayHandle() {
        synchronized (LOCK_CONNECT_TIMEOUT_HANDLER) {
            if (this.mConnectTimeoutHandler != null) {
                this.mConnectTimeoutHandler.removeMessages(2);
                this.mConnectTimeoutHandler = null;
            }
        }
    }

    private void checkAvailabilityAndConnect(int i, boolean z) {
        HMSLog.m3463i(TAG, "====== HMSSDK version: 50200300 ======");
        int i2 = this.mConnStatus.get();
        C0948f6.m1777v("Enter connect, Connection Status: ", i2, TAG);
        if (z || !(i2 == 3 || i2 == 5 || i2 == 4)) {
            setConnectStatus(5);
            if (getMinApkVersion() > i) {
                i = getMinApkVersion();
            }
            StringBuilder sbM1766k = C0948f6.m1766k("connect minVersion:", i, " packageName:");
            sbM1766k.append(this.mClientSettings.getInnerHmsPkg());
            HMSLog.m3463i(TAG, sbM1766k.toString());
            if (this.mContext.getPackageName().equals(this.mClientSettings.getInnerHmsPkg())) {
                HMSLog.m3463i(TAG, "service packageName is same, bind core service return");
                bindCoreService();
                return;
            }
            if (!Util.isAvailableLibExist(this.mContext)) {
                int iIsHuaweiMobileServicesAvailable = HuaweiApiAvailability.getInstance().isHuaweiMobileServicesAvailable(this.mContext, i);
                C0948f6.m1777v("HuaweiApiAvailability check available result: ", iIsHuaweiMobileServicesAvailable, TAG);
                if (iIsHuaweiMobileServicesAvailable == 0) {
                    bindCoreService();
                    return;
                } else {
                    notifyFailed(iIsHuaweiMobileServicesAvailable);
                    return;
                }
            }
            AvailableAdapter availableAdapter = new AvailableAdapter(i);
            int iIsHuaweiMobileServicesAvailable2 = availableAdapter.isHuaweiMobileServicesAvailable(this.mContext);
            C0948f6.m1777v("check available result: ", iIsHuaweiMobileServicesAvailable2, TAG);
            if (iIsHuaweiMobileServicesAvailable2 == 0) {
                bindCoreService();
                return;
            }
            if (availableAdapter.isUserResolvableError(iIsHuaweiMobileServicesAvailable2)) {
                HMSLog.m3463i(TAG, "bindCoreService3.0 fail, start resolution now.");
                resolution(availableAdapter, iIsHuaweiMobileServicesAvailable2);
                return;
            }
            HMSLog.m3463i(TAG, "bindCoreService3.0 fail: " + iIsHuaweiMobileServicesAvailable2 + " is not resolvable.");
            notifyFailed(iIsHuaweiMobileServicesAvailable2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFailed(int i) {
        C0948f6.m1777v("notifyFailed result: ", i, TAG);
        OnConnectionFailedListener onConnectionFailedListener = this.mConnectionFailedListener;
        if (onConnectionFailedListener != null) {
            onConnectionFailedListener.onConnectionFailed(new ConnectionResult(i));
        }
    }

    private void resolution(AvailableAdapter availableAdapter, int i) {
        HMSLog.m3463i(TAG, "enter HmsCore resolution");
        if (!getClientSettings().isHasActivity()) {
            notifyFailed(new ConnectionResult(26, HuaweiApiAvailability.getInstance().getErrPendingIntent(this.mContext, i, 0)));
            return;
        }
        Activity activeActivity = Util.getActiveActivity(getClientSettings().getCpActivity(), getContext());
        if (activeActivity != null) {
            availableAdapter.startResolution(activeActivity, new AvailableAdapter.AvailableCallBack() { // from class: com.huawei.hms.common.internal.BaseHmsClient.2
                @Override // com.huawei.hms.adapter.AvailableAdapter.AvailableCallBack
                public void onComplete(int i2) {
                    if (i2 == 0) {
                        BaseHmsClient.this.bindCoreService();
                    } else {
                        BaseHmsClient.this.notifyFailed(i2);
                    }
                }
            });
        } else {
            notifyFailed(26);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setConnectStatus(int i) {
        this.mConnStatus.set(i);
    }

    public final void checkConnected() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public void connect(int i) {
        checkAvailabilityAndConnect(i, false);
    }

    public final void connectionConnected() {
        setConnectStatus(3);
        ConnectionCallbacks connectionCallbacks = this.mConnectionCallbacks;
        if (connectionCallbacks != null) {
            connectionCallbacks.onConnected();
        }
    }

    public void disconnect() {
        int i = this.mConnStatus.get();
        C0948f6.m1777v("Enter disconnect, Connection Status: ", i, TAG);
        if (i != 1) {
            if (i == 3) {
                BinderAdapter binderAdapter = this.mBinderAdapter;
                if (binderAdapter != null) {
                    binderAdapter.unBind();
                }
                setConnectStatus(1);
                return;
            }
            if (i == 4 || i != 5) {
                return;
            }
            cancelConnDelayHandle();
            setConnectStatus(4);
        }
    }

    @Override // com.huawei.hms.support.api.client.AidlApiClient
    public List<String> getApiNameList() {
        return this.mClientSettings.getApiName();
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getAppID() {
        return this.mAppID;
    }

    public ClientSettings getClientSettings() {
        return this.mClientSettings;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getCpID() {
        return this.mClientSettings.getCpID();
    }

    @Deprecated
    public int getMinApkVersion() {
        return 30000000;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getPackageName() {
        return this.mClientSettings.getClientPackageName();
    }

    @Override // com.huawei.hms.support.api.client.AidlApiClient
    public InterfaceC1543d getService() {
        return this.mService;
    }

    public String getServiceAction() {
        return "com.huawei.hms.core.aidlservice";
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getSessionId() {
        return this.sessionId;
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public SubAppInfo getSubAppInfo() {
        return this.mClientSettings.getSubAppID();
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public String getTransportName() {
        return IPCTransport.class.getName();
    }

    @Override // com.huawei.hms.support.api.client.ApiClient
    public boolean isConnected() {
        return this.mConnStatus.get() == 3 || this.mConnStatus.get() == 4;
    }

    public boolean isConnecting() {
        return this.mConnStatus.get() == 5;
    }

    public void onConnecting() {
        connectionConnected();
    }

    public void connect(int i, boolean z) {
        checkAvailabilityAndConnect(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFailed(ConnectionResult connectionResult) {
        StringBuilder sbM1765j = C0948f6.m1765j("notifyFailed result: ");
        sbM1765j.append(connectionResult.getErrorCode());
        HMSLog.m3463i(TAG, sbM1765j.toString());
        OnConnectionFailedListener onConnectionFailedListener = this.mConnectionFailedListener;
        if (onConnectionFailedListener != null) {
            onConnectionFailedListener.onConnectionFailed(connectionResult);
        }
    }
}
