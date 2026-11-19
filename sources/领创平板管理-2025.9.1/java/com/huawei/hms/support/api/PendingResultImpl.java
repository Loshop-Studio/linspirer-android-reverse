package com.huawei.hms.support.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Pair;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.adapter.BaseAdapter;
import com.huawei.hms.common.internal.TransactionIdCreater;
import com.huawei.hms.core.aidl.AbstractMessageEntity;
import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.support.api.client.ApiClient;
import com.huawei.hms.support.api.client.InnerPendingResult;
import com.huawei.hms.support.api.client.Result;
import com.huawei.hms.support.api.client.ResultCallback;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.client.SubAppInfo;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.huawei.hms.support.api.transport.DatagramTransport;
import com.huawei.hms.support.gentyref.GenericTypeReflector;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.hianalytics.HiAnalyticsUtil;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Util;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.android.agoo.message.MessageService;

/* loaded from: classes.dex */
public abstract class PendingResultImpl<R extends Result, T extends IMessageEntity> extends InnerPendingResult<R> {
    public static final String TAG = "PendingResultImpl";
    public WeakReference<ApiClient> api;
    public CountDownLatch countLatch;
    public DatagramTransport transport = null;
    public R result = null;
    public String url = null;
    public String transId = null;
    public boolean isNeedReport = true;

    /* renamed from: com.huawei.hms.support.api.PendingResultImpl$a */
    public class C1561a implements DatagramTransport.InterfaceC1571a {
        public C1561a() {
        }

        @Override // com.huawei.hms.support.api.transport.DatagramTransport.InterfaceC1571a
        /* renamed from: a */
        public void mo3452a(int i, IMessageEntity iMessageEntity) {
            PendingResultImpl.this.setResult(i, iMessageEntity);
            PendingResultImpl.this.countLatch.countDown();
        }
    }

    /* renamed from: com.huawei.hms.support.api.PendingResultImpl$b */
    public class C1562b implements DatagramTransport.InterfaceC1571a {

        /* renamed from: a */
        public final /* synthetic */ AtomicBoolean f4547a;

        public C1562b(AtomicBoolean atomicBoolean) {
            this.f4547a = atomicBoolean;
        }

        @Override // com.huawei.hms.support.api.transport.DatagramTransport.InterfaceC1571a
        /* renamed from: a */
        public void mo3452a(int i, IMessageEntity iMessageEntity) {
            if (!this.f4547a.get()) {
                PendingResultImpl.this.setResult(i, iMessageEntity);
            }
            PendingResultImpl.this.countLatch.countDown();
        }
    }

    /* renamed from: com.huawei.hms.support.api.PendingResultImpl$c */
    public class C1563c implements DatagramTransport.InterfaceC1571a {

        /* renamed from: a */
        public final /* synthetic */ HandlerC1564d f4549a;

        /* renamed from: b */
        public final /* synthetic */ ResultCallback f4550b;

        public C1563c(HandlerC1564d handlerC1564d, ResultCallback resultCallback) {
            this.f4549a = handlerC1564d;
            this.f4550b = resultCallback;
        }

        @Override // com.huawei.hms.support.api.transport.DatagramTransport.InterfaceC1571a
        /* renamed from: a */
        public void mo3452a(int i, IMessageEntity iMessageEntity) {
            PendingResultImpl.this.setResult(i, iMessageEntity);
            HandlerC1564d handlerC1564d = this.f4549a;
            ResultCallback resultCallback = this.f4550b;
            Result result = PendingResultImpl.this.result;
            if (handlerC1564d == null) {
                throw null;
            }
            handlerC1564d.sendMessage(handlerC1564d.obtainMessage(1, new Pair(resultCallback, result)));
        }
    }

    /* renamed from: com.huawei.hms.support.api.PendingResultImpl$d */
    public static class HandlerC1564d<R extends Result> extends Handler {
        public HandlerC1564d(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            Pair pair = (Pair) message.obj;
            ((ResultCallback) pair.first).onResult((Result) pair.second);
        }
    }

    public PendingResultImpl(ApiClient apiClient, String str, IMessageEntity iMessageEntity) {
        init(apiClient, str, iMessageEntity, getResponseType(), 0);
    }

    private void biReportEvent(int i, int i2) {
        SubAppInfo subAppInfo;
        HMSLog.m3463i(TAG, "biReportEvent ====== ");
        ApiClient apiClient = this.api.get();
        if (apiClient == null || this.url == null || HiAnalyticsUtil.getInstance().hasError(apiClient.getContext())) {
            return;
        }
        HashMap map = new HashMap();
        map.put("package", apiClient.getPackageName());
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_BASE_VERSION, "5.2.0.300");
        if (i2 == 1) {
            map.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.REQUEST);
        } else {
            map.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.RESPONSE);
            map.put("result", String.valueOf(i));
            R r = this.result;
            if (r != null && r.getStatus() != null) {
                map.put(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, String.valueOf(this.result.getStatus().getStatusCode()));
            }
        }
        map.put("version", MessageService.MSG_DB_READY_REPORT);
        String appId = Util.getAppId(apiClient.getContext());
        if (TextUtils.isEmpty(appId) && (subAppInfo = apiClient.getSubAppInfo()) != null) {
            appId = subAppInfo.getSubAppID();
        }
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_APPID, appId);
        if (TextUtils.isEmpty(this.transId)) {
            String id = TransactionIdCreater.getId(appId, this.url);
            this.transId = id;
            map.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, id);
        } else {
            map.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, this.transId);
            this.transId = null;
        }
        String[] strArrSplit = this.url.split("\\.");
        if (strArrSplit.length >= 2) {
            map.put("service", strArrSplit[0]);
            map.put(HiAnalyticsConstant.HaKey.BI_KEY_APINAME, strArrSplit[1]);
        }
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_CALLTMEI, String.valueOf(System.currentTimeMillis()));
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onEvent(apiClient.getContext(), HiAnalyticsConstant.HMS_SDK_BASE_CALL_AIDL, map);
    }

    private void init(ApiClient apiClient, String str, IMessageEntity iMessageEntity, Class<T> cls, int i) {
        HMSLog.m3463i(TAG, "init uri:" + str);
        this.url = str;
        if (apiClient == null) {
            HMSLog.m3461e(TAG, "client is null");
            return;
        }
        this.api = new WeakReference<>(apiClient);
        this.countLatch = new CountDownLatch(1);
        try {
            this.transport = (DatagramTransport) Class.forName(apiClient.getTransportName()).getConstructor(String.class, IMessageEntity.class, Class.class, Integer.TYPE).newInstance(str, iMessageEntity, cls, Integer.valueOf(i));
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("gen transport error:");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e(TAG, sbM1765j.toString());
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("Instancing transport exception, ");
            sbM1765j2.append(e.getMessage());
            throw new IllegalStateException(sbM1765j2.toString(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResult(int i, IMessageEntity iMessageEntity) {
        Status status;
        CompilerOutline.m1777v("setResult:", i, TAG);
        Status commonStatus = iMessageEntity instanceof AbstractMessageEntity ? ((AbstractMessageEntity) iMessageEntity).getCommonStatus() : null;
        if (i == 0) {
            this.result = (R) onComplete(iMessageEntity);
        } else {
            this.result = (R) onError(i);
        }
        if (this.isNeedReport) {
            biReportEvent(i, 2);
        }
        R r = this.result;
        if (r == null || (status = r.getStatus()) == null || commonStatus == null) {
            return;
        }
        int statusCode = status.getStatusCode();
        String statusMessage = status.getStatusMessage();
        int statusCode2 = commonStatus.getStatusCode();
        String statusMessage2 = commonStatus.getStatusMessage();
        if (statusCode == statusCode2) {
            if (!TextUtils.isEmpty(statusMessage) || TextUtils.isEmpty(statusMessage2)) {
                return;
            }
            HMSLog.m3463i(TAG, "rstStatus msg (" + statusMessage + ") is not equal commonStatus msg (" + statusMessage2 + ")");
            this.result.setStatus(new Status(statusCode, statusMessage2, status.getResolution()));
            return;
        }
        HMSLog.m3461e(TAG, "rstStatus code (" + statusCode + ") is not equal commonStatus code (" + statusCode2 + ")");
        HMSLog.m3461e(TAG, "rstStatus msg (" + statusMessage + ") is not equal commonStatus msg (" + statusMessage2 + ")");
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    public final R await() {
        HMSLog.m3463i(TAG, "await");
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return (R) awaitOnAnyThread();
        }
        HMSLog.m3461e(TAG, "await in main thread");
        throw new IllegalStateException("await must not be called on the UI thread");
    }

    @Override // com.huawei.hms.support.api.client.InnerPendingResult
    public final R awaitOnAnyThread() throws InterruptedException {
        HMSLog.m3463i(TAG, "awaitOnAnyThread");
        WeakReference<ApiClient> weakReference = this.api;
        if (weakReference == null) {
            HMSLog.m3461e(TAG, "api is null");
            setResult(CommonCode.ErrorCode.CLIENT_API_INVALID, null);
            return this.result;
        }
        ApiClient apiClient = weakReference.get();
        if (!checkApiClient(apiClient)) {
            HMSLog.m3461e(TAG, "client invalid");
            setResult(CommonCode.ErrorCode.CLIENT_API_INVALID, null);
            return this.result;
        }
        if (this.isNeedReport) {
            biReportEvent(0, 1);
        }
        this.transport.send(apiClient, new C1561a());
        try {
            this.countLatch.await();
        } catch (InterruptedException unused) {
            HMSLog.m3461e(TAG, "await in anythread InterruptedException");
            setResult(CommonCode.ErrorCode.INTERNAL_ERROR, null);
        }
        return this.result;
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    @Deprecated
    public void cancel() {
    }

    public boolean checkApiClient(ApiClient apiClient) {
        return true;
    }

    public Class<T> getResponseType() {
        Type type;
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass == null || (type = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[1]) == null) {
            return null;
        }
        return (Class) type;
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    @Deprecated
    public boolean isCanceled() {
        return false;
    }

    public abstract R onComplete(T t);

    public R onError(int i) {
        Type genericSuperclass = getClass().getGenericSuperclass();
        Type type = genericSuperclass != null ? ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0] : null;
        Class<?> type2 = type != null ? GenericTypeReflector.getType(type) : null;
        if (type2 != null) {
            try {
                R r = (R) type2.newInstance();
                this.result = r;
                r.setStatus(new Status(i));
            } catch (Exception e) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("on Error:");
                sbM1765j.append(e.getMessage());
                HMSLog.m3461e(TAG, sbM1765j.toString());
                return null;
            }
        }
        return this.result;
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    public void setResultCallback(ResultCallback<R> resultCallback) {
        this.isNeedReport = !(resultCallback instanceof BaseAdapter.BaseRequestResultCallback);
        setResultCallback(Looper.getMainLooper(), resultCallback);
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    public final void setResultCallback(Looper looper, ResultCallback<R> resultCallback) {
        HMSLog.m3463i(TAG, "setResultCallback");
        if (looper == null) {
            looper = Looper.myLooper();
        }
        HandlerC1564d handlerC1564d = new HandlerC1564d(looper);
        WeakReference<ApiClient> weakReference = this.api;
        if (weakReference == null) {
            HMSLog.m3461e(TAG, "api is null");
            setResult(CommonCode.ErrorCode.CLIENT_API_INVALID, null);
            return;
        }
        ApiClient apiClient = weakReference.get();
        if (!checkApiClient(apiClient)) {
            HMSLog.m3461e(TAG, "client is invalid");
            setResult(CommonCode.ErrorCode.CLIENT_API_INVALID, null);
            handlerC1564d.sendMessage(handlerC1564d.obtainMessage(1, new Pair(resultCallback, this.result)));
        } else {
            if (this.isNeedReport) {
                biReportEvent(0, 1);
            }
            this.transport.post(apiClient, new C1563c(handlerC1564d, resultCallback));
        }
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    public R await(long j, TimeUnit timeUnit) {
        HMSLog.m3463i(TAG, "await timeout:" + j + " unit:" + timeUnit.toString());
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return (R) awaitOnAnyThread(j, timeUnit);
        }
        HMSLog.m3463i(TAG, "await in main thread");
        throw new IllegalStateException("await must not be called on the UI thread");
    }

    public PendingResultImpl(ApiClient apiClient, String str, IMessageEntity iMessageEntity, Class<T> cls) {
        init(apiClient, str, iMessageEntity, cls, 0);
    }

    public PendingResultImpl(ApiClient apiClient, String str, IMessageEntity iMessageEntity, int i) {
        init(apiClient, str, iMessageEntity, getResponseType(), i);
    }

    @Override // com.huawei.hms.support.api.client.InnerPendingResult
    public final R awaitOnAnyThread(long j, TimeUnit timeUnit) {
        HMSLog.m3463i(TAG, "awaitOnAnyThread timeout:" + j + " unit:" + timeUnit.toString());
        WeakReference<ApiClient> weakReference = this.api;
        if (weakReference == null) {
            HMSLog.m3461e(TAG, "api is null");
            setResult(CommonCode.ErrorCode.CLIENT_API_INVALID, null);
            return this.result;
        }
        ApiClient apiClient = weakReference.get();
        if (!checkApiClient(apiClient)) {
            HMSLog.m3461e(TAG, "client invalid");
            setResult(CommonCode.ErrorCode.CLIENT_API_INVALID, null);
            return this.result;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        if (this.isNeedReport) {
            biReportEvent(0, 1);
        }
        this.transport.post(apiClient, new C1562b(atomicBoolean));
        try {
            if (!this.countLatch.await(j, timeUnit)) {
                atomicBoolean.set(true);
                setResult(CommonCode.ErrorCode.EXECUTE_TIMEOUT, null);
            }
        } catch (InterruptedException unused) {
            HMSLog.m3461e(TAG, "awaitOnAnyThread InterruptedException");
            setResult(CommonCode.ErrorCode.INTERNAL_ERROR, null);
        }
        return this.result;
    }

    @Override // com.huawei.hms.support.api.client.PendingResult
    @Deprecated
    public void setResultCallback(ResultCallback<R> resultCallback, long j, TimeUnit timeUnit) {
        setResultCallback(resultCallback);
    }
}
