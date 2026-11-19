package com.huawei.hms.common.internal;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.huawei.hem.MobileSdkPlatformUtilities;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.HmsTaskRegistry;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.ConnectionResult;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.common.internal.BaseHmsClient;
import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.Util;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class HuaweiApiManager implements Handler.Callback {
    public static final String HANDLER_NAME = "HuaweiApiHandler";
    public static final Object LOCK_OBJECT = new Object();
    public static final int MSG_RECEIVE_SEND_REQ = 4;
    public static final String TAG = "HuaweiApiManager";
    public static HuaweiApiManager mInstance;
    public final Handler mHandler;
    public final AtomicInteger mSerial = new AtomicInteger(0);
    public final Map<ConnectionManagerKey<?>, ConnectionManager<?>> mConnectionCache = new ConcurrentHashMap(5, 0.75f, 1);

    public class ConnectionManager<OptionsT extends Api.ApiOptions> implements BaseHmsClient.ConnectionCallbacks, BaseHmsClient.OnConnectionFailedListener {
        public final HuaweiApi<OptionsT> mApi;
        public final AnyClient mClient;
        public final ConnectionManagerKey mConnectionManagerKey;
        public ResolveClientBean mResolveClientBean;
        public final Queue<TaskApiCallbackWrapper> callbackQueue = new LinkedList();
        public ConnectionResult mConnectionResult = null;

        public ConnectionManager(HuaweiApi<OptionsT> huaweiApi) {
            this.mApi = huaweiApi;
            this.mClient = huaweiApi.getClient(HuaweiApiManager.this.mHandler.getLooper(), this);
            this.mConnectionManagerKey = huaweiApi.getConnectionManagerKey();
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0046 A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.String errorReason(com.huawei.hms.api.ConnectionResult r5) {
            /*
                r4 = this;
                com.huawei.hms.common.HuaweiApi<OptionsT extends com.huawei.hms.api.Api$ApiOptions> r0 = r4.mApi
                android.content.Context r0 = r0.getContext()
                boolean r0 = com.huawei.hms.utils.Util.isAvailableLibExist(r0)
                r1 = 10
                r2 = 8
                r3 = -1
                if (r0 == 0) goto L3c
                int r5 = r5.getErrorCode()
                if (r5 == r3) goto L4f
                r0 = 3
                if (r5 == r0) goto L39
                if (r5 == r2) goto L4c
                if (r5 == r1) goto L49
                r0 = 13
                if (r5 == r0) goto L36
                r0 = 21
                if (r5 == r0) goto L33
                switch(r5) {
                    case 25: goto L30;
                    case 26: goto L2d;
                    case 27: goto L2a;
                    default: goto L29;
                }
            L29:
                goto L46
            L2a:
                java.lang.String r5 = "there is already an update popup at the front desk, but it hasn't been clicked or it is not effective for a while"
                goto L51
            L2d:
                java.lang.String r5 = "update failed, because no activity incoming, can't pop update page"
                goto L51
            L30:
                java.lang.String r5 = "failed to get update result"
                goto L51
            L33:
                java.lang.String r5 = "device is too old to be support"
                goto L51
            L36:
                java.lang.String r5 = "update cancelled"
                goto L51
            L39:
                java.lang.String r5 = "HuaWei Mobile Service is disabled"
                goto L51
            L3c:
                int r5 = r5.getErrorCode()
                if (r5 == r3) goto L4f
                if (r5 == r2) goto L4c
                if (r5 == r1) goto L49
            L46:
                java.lang.String r5 = "unknown errorReason"
                goto L51
            L49:
                java.lang.String r5 = "application configuration error, please developer check configuration"
                goto L51
            L4c:
                java.lang.String r5 = "internal error"
                goto L51
            L4f:
                java.lang.String r5 = "get update result, but has other error codes"
            L51:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.common.internal.HuaweiApiManager.ConnectionManager.errorReason(com.huawei.hms.api.ConnectionResult):java.lang.String");
        }

        private String getTransactionId(String str, String str2) {
            return TextUtils.isEmpty(str) ? TransactionIdCreater.getId(this.mApi.getAppID(), str2) : str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void innerConnected() {
            Checker.assertHandlerThread(HuaweiApiManager.this.mHandler);
            this.mConnectionResult = null;
            Iterator<TaskApiCallbackWrapper> it = this.callbackQueue.iterator();
            while (it.hasNext()) {
                postMessage(it.next());
            }
            this.callbackQueue.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void innerConnectionFailed(ConnectionResult connectionResult) {
            Checker.assertHandlerThread(HuaweiApiManager.this.mHandler);
            this.mConnectionResult = connectionResult;
            Iterator<TaskApiCallbackWrapper> it = this.callbackQueue.iterator();
            boolean z = true;
            while (it.hasNext()) {
                TaskApiCallWrapper apiCallWrapper = it.next().getApiCallWrapper();
                StringBuilder sbM1765j = CompilerOutline.m1765j("Connection Failed:");
                sbM1765j.append(errorReason(connectionResult));
                sbM1765j.append("(");
                sbM1765j.append(connectionResult.getErrorCode());
                sbM1765j.append(")");
                ResponseHeader responseHeader = new ResponseHeader(1, CommonCode.ErrorCode.CLIENT_API_INVALID, sbM1765j.toString());
                responseHeader.setTransactionId(apiCallWrapper.getTaskApiCall().getTransactionId());
                MobileSdkPlatformUtilities.m2290m(this.mApi.getContext(), responseHeader, String.valueOf(this.mApi.getKitSdkVersion()));
                if (this.mConnectionResult.getResolution() != null && z) {
                    responseHeader.setParcelable(this.mConnectionResult.getResolution());
                    z = false;
                    if (Util.isAvailableLibExist(this.mApi.getContext()) && this.mConnectionResult.getErrorCode() == 26) {
                        responseHeader.setResolution(CommonCode.Resolution.HAS_RESOLUTION);
                    }
                }
                apiCallWrapper.getTaskApiCall().onResponse(this.mClient, responseHeader, null, apiCallWrapper.getTaskCompletionSource());
            }
            this.callbackQueue.clear();
            this.mConnectionResult = null;
            this.mClient.disconnect();
            HuaweiApiManager.this.mConnectionCache.remove(this.mConnectionManagerKey);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void innerConnectionSuspended(int i) {
            Checker.assertHandlerThread(HuaweiApiManager.this.mHandler);
            Iterator<TaskApiCallbackWrapper> it = this.callbackQueue.iterator();
            while (it.hasNext()) {
                TaskApiCallWrapper apiCallWrapper = it.next().getApiCallWrapper();
                ResponseHeader responseHeader = new ResponseHeader(1, CommonCode.ErrorCode.CLIENT_API_INVALID, "Connection Suspended");
                responseHeader.setTransactionId(apiCallWrapper.getTaskApiCall().getTransactionId());
                apiCallWrapper.getTaskApiCall().onResponse(this.mClient, responseHeader, null, apiCallWrapper.getTaskCompletionSource());
            }
            this.callbackQueue.clear();
            this.mConnectionResult = null;
            this.mClient.disconnect();
            HuaweiApiManager.this.mConnectionCache.remove(this.mConnectionManagerKey);
        }

        private void postMessage(TaskApiCallbackWrapper taskApiCallbackWrapper) {
            String uri = taskApiCallbackWrapper.getApiCallWrapper().getTaskApiCall().getUri();
            RequestHeader requestHeader = new RequestHeader();
            requestHeader.setSrvName(uri.split("\\.")[0]);
            requestHeader.setApiName(uri);
            requestHeader.setAppID(this.mApi.getAppID() + "|" + this.mApi.getSubAppID());
            requestHeader.setPkgName(this.mApi.getContext().getPackageName());
            requestHeader.setSessionId(this.mClient.getSessionId());
            TaskApiCall taskApiCall = taskApiCallbackWrapper.getApiCallWrapper().getTaskApiCall();
            requestHeader.setTransactionId(getTransactionId(taskApiCall.getTransactionId(), uri));
            requestHeader.setParcelable(taskApiCall.getParcelable());
            requestHeader.setKitSdkVersion(this.mApi.getKitSdkVersion());
            requestHeader.setApiLevel(Math.max(this.mApi.getApiLevel(), taskApiCall.getApiLevel()));
            this.mClient.post(requestHeader, taskApiCall.getRequestJson(), taskApiCallbackWrapper.getCallBack());
        }

        private TaskApiCallbackWrapper wrapperRequest(final TaskApiCallWrapper taskApiCallWrapper) {
            return new TaskApiCallbackWrapper(taskApiCallWrapper, new AnyClient.CallBack() { // from class: com.huawei.hms.common.internal.HuaweiApiManager.ConnectionManager.1
                public AtomicBoolean isFirstRsp = new AtomicBoolean(true);

                @Override // com.huawei.hms.common.internal.AnyClient.CallBack
                public void onCallback(IMessageEntity iMessageEntity, String str) {
                    if (!(iMessageEntity instanceof ResponseHeader)) {
                        HMSLog.m3461e(HuaweiApiManager.TAG, "header is not instance of ResponseHeader");
                        return;
                    }
                    ResponseHeader responseHeader = (ResponseHeader) iMessageEntity;
                    if (!TextUtils.isEmpty(responseHeader.getResolution())) {
                        StringBuilder sbM1765j = CompilerOutline.m1765j("Response has resolution: ");
                        sbM1765j.append(responseHeader.getResolution());
                        HMSLog.m3461e(HuaweiApiManager.TAG, sbM1765j.toString());
                    }
                    if (this.isFirstRsp.compareAndSet(true, false)) {
                        MobileSdkPlatformUtilities.m2290m(ConnectionManager.this.mApi.getContext(), responseHeader, String.valueOf(ConnectionManager.this.mApi.getKitSdkVersion()));
                    }
                    taskApiCallWrapper.getTaskApiCall().onResponse(ConnectionManager.this.mClient, responseHeader, str, taskApiCallWrapper.getTaskCompletionSource());
                }
            });
        }

        public synchronized void connect(int i) {
            Checker.assertHandlerThread(HuaweiApiManager.this.mHandler);
            if (this.mClient.isConnected()) {
                HMSLog.m3458d(HuaweiApiManager.TAG, "client is connected");
                return;
            }
            if (this.mClient.isConnecting()) {
                HMSLog.m3458d(HuaweiApiManager.TAG, "client is isConnecting");
                return;
            }
            if (this.mApi.getActivity() != null) {
                if (this.mResolveClientBean == null) {
                    this.mResolveClientBean = new ResolveClientBean(this.mClient, i);
                }
                if (BindResolveClients.getInstance().isClientRegistered(this.mResolveClientBean)) {
                    HMSLog.m3463i(HuaweiApiManager.TAG, "mResolveClientBean has already register, return!");
                    return;
                }
                BindResolveClients.getInstance().register(this.mResolveClientBean);
            }
            this.mClient.connect(i);
        }

        public boolean disconnect() {
            Checker.assertHandlerThread(HuaweiApiManager.this.mHandler);
            this.mClient.disconnect();
            return true;
        }

        @Override // com.huawei.hms.common.internal.BaseHmsClient.ConnectionCallbacks
        public void onConnected() {
            HMSLog.m3458d(HuaweiApiManager.TAG, "onConnected");
            BindResolveClients.getInstance().unRegister(this.mResolveClientBean);
            this.mResolveClientBean = null;
            if (Looper.myLooper() == HuaweiApiManager.this.mHandler.getLooper()) {
                innerConnected();
            } else {
                HuaweiApiManager.this.mHandler.post(new Runnable() { // from class: com.huawei.hms.common.internal.HuaweiApiManager.ConnectionManager.3
                    @Override // java.lang.Runnable
                    public void run() {
                        ConnectionManager.this.innerConnected();
                    }
                });
            }
        }

        @Override // com.huawei.hms.common.internal.BaseHmsClient.OnConnectionFailedListener
        public void onConnectionFailed(final ConnectionResult connectionResult) {
            HMSLog.m3463i(HuaweiApiManager.TAG, "onConnectionFailed");
            BindResolveClients.getInstance().unRegister(this.mResolveClientBean);
            this.mResolveClientBean = null;
            if (Looper.myLooper() == HuaweiApiManager.this.mHandler.getLooper()) {
                innerConnectionFailed(connectionResult);
            } else {
                HuaweiApiManager.this.mHandler.post(new Runnable() { // from class: com.huawei.hms.common.internal.HuaweiApiManager.ConnectionManager.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ConnectionManager.this.innerConnectionFailed(connectionResult);
                    }
                });
            }
        }

        @Override // com.huawei.hms.common.internal.BaseHmsClient.ConnectionCallbacks
        public void onConnectionSuspended(final int i) {
            HMSLog.m3463i(HuaweiApiManager.TAG, "onConnectionSuspended");
            BindResolveClients.getInstance().unRegister(this.mResolveClientBean);
            this.mResolveClientBean = null;
            if (Looper.myLooper() == HuaweiApiManager.this.mHandler.getLooper()) {
                innerConnectionSuspended(i);
            } else {
                HuaweiApiManager.this.mHandler.post(new Runnable() { // from class: com.huawei.hms.common.internal.HuaweiApiManager.ConnectionManager.4
                    @Override // java.lang.Runnable
                    public void run() {
                        ConnectionManager.this.innerConnectionSuspended(i);
                    }
                });
            }
        }

        public void sendRequest(TaskApiCallWrapper taskApiCallWrapper) {
            HMSLog.m3463i(HuaweiApiManager.TAG, "sendRequest");
            Checker.assertHandlerThread(HuaweiApiManager.this.mHandler);
            TaskApiCallbackWrapper taskApiCallbackWrapperWrapperRequest = wrapperRequest(taskApiCallWrapper);
            int minApkVersion = taskApiCallWrapper.getTaskApiCall().getMinApkVersion();
            if (this.mClient.isConnected()) {
                if (HMSPackageManager.getInstance(this.mApi.getContext()).hmsVerHigherThan(minApkVersion)) {
                    postMessage(taskApiCallbackWrapperWrapperRequest);
                    return;
                }
                disconnect();
                this.callbackQueue.add(taskApiCallbackWrapperWrapperRequest);
                connect(minApkVersion);
                return;
            }
            this.callbackQueue.add(taskApiCallbackWrapperWrapperRequest);
            ConnectionResult connectionResult = this.mConnectionResult;
            if (connectionResult == null || connectionResult.getErrorCode() == 0) {
                connect(minApkVersion);
            } else {
                onConnectionFailed(this.mConnectionResult);
            }
        }
    }

    public static class TaskApiCallbackWrapper {
        public final TaskApiCallWrapper mApiCallWrapper;
        public final AnyClient.CallBack mCallBack;

        public TaskApiCallbackWrapper(TaskApiCallWrapper taskApiCallWrapper, AnyClient.CallBack callBack) {
            this.mApiCallWrapper = taskApiCallWrapper;
            this.mCallBack = callBack;
        }

        public TaskApiCallWrapper getApiCallWrapper() {
            return this.mApiCallWrapper;
        }

        public AnyClient.CallBack getCallBack() {
            return this.mCallBack;
        }
    }

    public HuaweiApiManager(Context context, Looper looper, HuaweiApiAvailability huaweiApiAvailability) {
        this.mHandler = new Handler(looper, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void connectAndSendRequest(HandlerMessageWrapper handlerMessageWrapper) {
        HuaweiApi<?> huaweiApi = handlerMessageWrapper.mApi;
        ConnectionManager<?> connectionManager = this.mConnectionCache.get(huaweiApi.getConnectionManagerKey());
        if (connectionManager == null) {
            connectionManager = new ConnectionManager<>(huaweiApi);
            this.mConnectionCache.put(huaweiApi.getConnectionManagerKey(), connectionManager);
        }
        connectionManager.sendRequest((TaskApiCallWrapper) handlerMessageWrapper.mContentWrapper);
    }

    public static HuaweiApiManager getInstance(Context context) {
        synchronized (LOCK_OBJECT) {
            if (mInstance == null) {
                HandlerThread handlerThread = new HandlerThread(TAG);
                handlerThread.start();
                mInstance = new HuaweiApiManager(context.getApplicationContext(), handlerThread.getLooper(), HuaweiApiAvailability.getInstance());
            }
        }
        return mInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void innerDisconnect(HuaweiApi<?> huaweiApi, HmsTaskRegistry<Boolean> c1401x7) {
        ConnectionManager<?> connectionManager = this.mConnectionCache.get(huaweiApi.getConnectionManagerKey());
        if (connectionManager == null) {
            c1401x7.m2931b(Boolean.FALSE);
        } else {
            c1401x7.m2931b(Boolean.valueOf(connectionManager.disconnect()));
        }
    }

    public void disconnectService(final HuaweiApi<?> huaweiApi, final HmsTaskRegistry<Boolean> c1401x7) {
        if (Looper.myLooper() == this.mHandler.getLooper()) {
            innerDisconnect(huaweiApi, c1401x7);
        } else {
            this.mHandler.post(new Runnable() { // from class: com.huawei.hms.common.internal.HuaweiApiManager.1
                @Override // java.lang.Runnable
                public void run() {
                    HuaweiApiManager.this.innerDisconnect(huaweiApi, c1401x7);
                }
            });
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 4) {
            connectAndSendRequest((HandlerMessageWrapper) message.obj);
            return true;
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("Unknown message id: ");
        sbM1765j.append(message.what);
        HMSLog.m3464w(TAG, sbM1765j.toString());
        return false;
    }

    public final <TOption extends Api.ApiOptions, TResult> void sendRequest(HuaweiApi<TOption> huaweiApi, TaskApiCall<? extends AnyClient, TResult> taskApiCall, HmsTaskRegistry<TResult> c1401x7) {
        TaskApiCallWrapper taskApiCallWrapper = new TaskApiCallWrapper(taskApiCall, c1401x7);
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(4, new HandlerMessageWrapper(taskApiCallWrapper, this.mSerial.getAndIncrement(), huaweiApi)));
    }
}
