package com.huawei.hms.adapter;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.adapter.p030ui.BaseResolutionAdapter;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.adapter.sysobs.SystemObserver;
import com.huawei.hms.common.internal.RequestHeader;
import com.huawei.hms.common.internal.ResponseHeader;
import com.huawei.hms.common.internal.ResponseWrap;
import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.support.api.PendingResultImpl;
import com.huawei.hms.support.api.ResolveResult;
import com.huawei.hms.support.api.client.ApiClient;
import com.huawei.hms.support.api.client.PendingResult;
import com.huawei.hms.support.api.client.ResultCallback;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.hianalytics.HiAnalyticsUtil;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.kpms.KpmsConstant;
import com.huawei.hms.utils.JsonUtil;
import com.huawei.hms.utils.Util;
import com.taobao.accs.common.Constants;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class BaseAdapter {
    public static final String TAG = "BaseAdapter";
    public WeakReference<Activity> activityWeakReference;
    public WeakReference<ApiClient> api;
    public Context appContext;
    public BaseCallBack baseCallBackReplay;
    public BaseCallBack callback;
    public String jsonHeaderReplay;
    public String jsonObjectReplay;
    public SystemObserver observer;
    public Parcelable parcelableReplay;
    public RequestHeader requestHeader = new RequestHeader();
    public ResponseHeader responseHeader = new ResponseHeader();
    public String transactionId;

    public interface BaseCallBack {
        void onComplete(String str, String str2, Parcelable parcelable);

        void onError(String str);
    }

    public class BaseRequestResultCallback implements ResultCallback<ResolveResult<CoreBaseResponse>> {
        public AtomicBoolean isFirstRsp = new AtomicBoolean(true);

        public BaseRequestResultCallback() {
        }

        private void handleSolutionIntent(BaseCallBack baseCallBack, CoreBaseResponse coreBaseResponse) {
            HMSLog.m3463i(BaseAdapter.TAG, "baseCallBack.onComplete");
            PendingIntent pendingIntent = coreBaseResponse.getPendingIntent();
            if (pendingIntent != null) {
                baseCallBack.onComplete(coreBaseResponse.getJsonHeader(), coreBaseResponse.getJsonBody(), pendingIntent);
                return;
            }
            Intent intent = coreBaseResponse.getIntent();
            if (intent != null) {
                baseCallBack.onComplete(coreBaseResponse.getJsonHeader(), coreBaseResponse.getJsonBody(), intent);
            } else {
                baseCallBack.onComplete(coreBaseResponse.getJsonHeader(), coreBaseResponse.getJsonBody(), null);
            }
        }

        @Override // com.huawei.hms.support.api.client.ResultCallback
        public void onResult(ResolveResult<CoreBaseResponse> resolveResult) throws IllegalArgumentException {
            BaseCallBack callBack = BaseAdapter.this.getCallBack();
            if (callBack == null) {
                HMSLog.m3461e(BaseAdapter.TAG, "onResult baseCallBack null");
                return;
            }
            if (resolveResult == null) {
                HMSLog.m3461e(BaseAdapter.TAG, "result null");
                callBack.onError(BaseAdapter.this.getResponseHeaderForError(-1));
                return;
            }
            CoreBaseResponse value = resolveResult.getValue();
            if (value == null) {
                HMSLog.m3461e(BaseAdapter.TAG, "response null");
                callBack.onError(BaseAdapter.this.getResponseHeaderForError(-1));
                return;
            }
            if (TextUtils.isEmpty(value.getJsonHeader())) {
                HMSLog.m3461e(BaseAdapter.TAG, "jsonHeader null");
                callBack.onError(BaseAdapter.this.getResponseHeaderForError(-1));
                return;
            }
            JsonUtil.jsonToEntity(value.getJsonHeader(), BaseAdapter.this.responseHeader);
            if (this.isFirstRsp.compareAndSet(true, false)) {
                BaseAdapter baseAdapter = BaseAdapter.this;
                baseAdapter.biReportRequestReturnIpc(baseAdapter.appContext, BaseAdapter.this.responseHeader);
            }
            if (!"intent".equals(BaseAdapter.this.responseHeader.getResolution())) {
                handleSolutionIntent(callBack, value);
                return;
            }
            Activity cpActivity = BaseAdapter.this.getCpActivity();
            HMSLog.m3463i(BaseAdapter.TAG, "activity is " + cpActivity);
            if (cpActivity == null || cpActivity.isFinishing()) {
                HMSLog.m3461e(BaseAdapter.TAG, "activity null");
                handleSolutionIntent(callBack, value);
                return;
            }
            PendingIntent pendingIntent = value.getPendingIntent();
            if (pendingIntent != null) {
                if (Util.isAvailableLibExist(BaseAdapter.this.appContext)) {
                    BaseAdapter.this.startResolution(cpActivity, pendingIntent);
                    return;
                } else {
                    callBack.onError(BaseAdapter.this.getResponseHeaderForError(-9));
                    return;
                }
            }
            Intent intent = value.getIntent();
            if (intent == null) {
                HMSLog.m3461e(BaseAdapter.TAG, "hasResolution is true but NO_SOLUTION");
                callBack.onError(BaseAdapter.this.getResponseHeaderForError(-4));
            } else if (Util.isAvailableLibExist(BaseAdapter.this.appContext)) {
                BaseAdapter.this.startResolution(cpActivity, intent);
            } else {
                callBack.onError(BaseAdapter.this.getResponseHeaderForError(-9));
            }
        }
    }

    public static class MPendingResultImpl extends PendingResultImpl<ResolveResult<CoreBaseResponse>, CoreBaseResponse> {
        public MPendingResultImpl(ApiClient apiClient, String str, IMessageEntity iMessageEntity) {
            super(apiClient, str, iMessageEntity);
        }

        @Override // com.huawei.hms.support.api.PendingResultImpl
        public ResolveResult<CoreBaseResponse> onComplete(CoreBaseResponse coreBaseResponse) {
            ResolveResult<CoreBaseResponse> resolveResult = new ResolveResult<>(coreBaseResponse);
            resolveResult.setStatus(Status.SUCCESS);
            return resolveResult;
        }
    }

    public BaseAdapter(ApiClient apiClient) {
        this.api = new WeakReference<>(apiClient);
    }

    private void biReportRequestEntryIpc(Context context, RequestHeader requestHeader) {
        Map<String, String> mapFromRequestHeader = HiAnalyticsUtil.getInstance().getMapFromRequestHeader(requestHeader);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.REQUEST);
        mapFromRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(requestHeader.getKitSdkVersion())));
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_BASE_CALL_AIDL, mapFromRequestHeader);
    }

    private void biReportRequestEntrySolution(Context context, RequestHeader requestHeader) {
        Map<String, String> mapFromRequestHeader = HiAnalyticsUtil.getInstance().getMapFromRequestHeader(requestHeader);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.REQUEST);
        mapFromRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(requestHeader.getKitSdkVersion())));
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_BASE_START_RESOLUTION, mapFromRequestHeader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void biReportRequestReturnIpc(Context context, ResponseHeader responseHeader) {
        HiAnalyticsUtil.getInstance();
        Map<String, String> mapFromRequestHeader = HiAnalyticsUtil.getMapFromRequestHeader(responseHeader);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.RESPONSE);
        mapFromRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(this.requestHeader.getKitSdkVersion())));
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_BASE_CALL_AIDL, mapFromRequestHeader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void biReportRequestReturnSolution(Context context, ResponseHeader responseHeader, long j) {
        HiAnalyticsUtil.getInstance();
        Map<String, String> mapFromRequestHeader = HiAnalyticsUtil.getMapFromRequestHeader(responseHeader);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.RESPONSE);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_WAITTIME, String.valueOf(j));
        mapFromRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(this.requestHeader.getKitSdkVersion())));
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_BASE_START_RESOLUTION, mapFromRequestHeader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String buildBodyStr(int i) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(Constants.KEY_ERROR_CODE, i);
        } catch (JSONException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("buildBodyStr failed: ");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e(TAG, sbM1765j.toString());
        }
        return jSONObject.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ResponseWrap buildResponseWrap(int i, String str) {
        setResponseHeader(i);
        ResponseWrap responseWrap = new ResponseWrap(this.responseHeader);
        responseWrap.setBody(str);
        return responseWrap;
    }

    private BaseCallBack getBaseCallBackReplay() {
        return this.baseCallBackReplay;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BaseCallBack getCallBack() {
        BaseCallBack baseCallBack = this.callback;
        if (baseCallBack != null) {
            return baseCallBack;
        }
        HMSLog.m3461e(TAG, "callback null");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Activity getCpActivity() {
        if (this.activityWeakReference == null) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("activityWeakReference is ");
            sbM1765j.append(this.activityWeakReference);
            HMSLog.m3463i(TAG, sbM1765j.toString());
            return null;
        }
        ApiClient apiClient = this.api.get();
        if (apiClient != null) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("activityWeakReference has ");
            sbM1765j2.append(this.activityWeakReference.get());
            HMSLog.m3463i(TAG, sbM1765j2.toString());
            return Util.getActiveActivity(this.activityWeakReference.get(), apiClient.getContext());
        }
        HMSLog.m3463i(TAG, "tmpApi is " + apiClient);
        return null;
    }

    private String getJsonHeaderReplay() {
        return this.jsonHeaderReplay;
    }

    private String getJsonObjectReplay() {
        return this.jsonObjectReplay;
    }

    private Parcelable getParcelableReplay() {
        return this.parcelableReplay;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getResponseHeaderForError(int i) {
        setResponseHeader(i);
        return this.responseHeader.toJson();
    }

    private void initObserver() {
        this.observer = new SystemObserver() { // from class: com.huawei.hms.adapter.BaseAdapter.1
            @Override // com.huawei.hms.adapter.sysobs.SystemObserver
            public boolean onSolutionResult(Intent intent, String str) throws JSONException {
                if (TextUtils.isEmpty(str)) {
                    HMSLog.m3461e(BaseAdapter.TAG, "onSolutionResult but id is null");
                    BaseCallBack callBack = BaseAdapter.this.getCallBack();
                    if (callBack == null) {
                        HMSLog.m3461e(BaseAdapter.TAG, "onSolutionResult baseCallBack null");
                        return true;
                    }
                    callBack.onError(BaseAdapter.this.getResponseHeaderForError(-6));
                    return true;
                }
                if (!str.equals(BaseAdapter.this.transactionId)) {
                    return false;
                }
                HMSLog.m3463i(BaseAdapter.TAG, "onSolutionResult + id is :" + str);
                BaseCallBack callBack2 = BaseAdapter.this.getCallBack();
                if (callBack2 == null) {
                    HMSLog.m3461e(BaseAdapter.TAG, "onResult baseCallBack null");
                    return true;
                }
                long jLongValue = 0;
                if (intent == null) {
                    HMSLog.m3461e(BaseAdapter.TAG, "onSolutionResult but data is null");
                    String responseHeaderForError = BaseAdapter.this.getResponseHeaderForError(-7);
                    BaseAdapter baseAdapter = BaseAdapter.this;
                    baseAdapter.biReportRequestReturnSolution(baseAdapter.appContext, BaseAdapter.this.responseHeader, 0L);
                    callBack2.onError(responseHeaderForError);
                    return true;
                }
                if (intent.hasExtra(KpmsConstant.KIT_UPDATE_RESULT)) {
                    int intExtra = intent.getIntExtra(KpmsConstant.KIT_UPDATE_RESULT, 0);
                    CompilerOutline.m1777v("kit_update_result is ", intExtra, BaseAdapter.TAG);
                    if (intExtra == 1) {
                        HMSLog.m3461e(BaseAdapter.TAG, "kit update success,replay request");
                        BaseAdapter.this.replayRequest();
                    } else {
                        HMSLog.m3461e(BaseAdapter.TAG, "kit update failed");
                        BaseAdapter baseAdapter2 = BaseAdapter.this;
                        callBack2.onError(baseAdapter2.buildResponseWrap(-10, baseAdapter2.buildBodyStr(intExtra)).toJson());
                    }
                    return true;
                }
                HMSLog.m3461e(BaseAdapter.TAG, "onComplete for on activity result");
                String stringExtra = intent.getStringExtra(CommonCode.MapKey.JSON_HEADER);
                String stringExtra2 = intent.getStringExtra(CommonCode.MapKey.JSON_BODY);
                Object infoFromJsonobject = JsonUtil.getInfoFromJsonobject(stringExtra, "status_code");
                Object infoFromJsonobject2 = JsonUtil.getInfoFromJsonobject(stringExtra, "error_code");
                if (intent.hasExtra(CommonCode.MapKey.HMS_FOREGROUND_RES_UI)) {
                    Object infoFromJsonobject3 = JsonUtil.getInfoFromJsonobject(intent.getStringExtra(CommonCode.MapKey.HMS_FOREGROUND_RES_UI), "uiDuration");
                    if (infoFromJsonobject3 instanceof Long) {
                        jLongValue = ((Long) infoFromJsonobject3).longValue();
                    }
                }
                if ((infoFromJsonobject instanceof Integer) && (infoFromJsonobject2 instanceof Integer)) {
                    int iIntValue = ((Integer) infoFromJsonobject).intValue();
                    BaseAdapter.this.getResponseHeaderForError(((Integer) infoFromJsonobject2).intValue());
                    BaseAdapter.this.responseHeader.setStatusCode(iIntValue);
                    BaseAdapter baseAdapter3 = BaseAdapter.this;
                    baseAdapter3.biReportRequestReturnSolution(baseAdapter3.appContext, BaseAdapter.this.responseHeader, jLongValue);
                } else {
                    BaseAdapter.this.getResponseHeaderForError(-8);
                    BaseAdapter baseAdapter4 = BaseAdapter.this;
                    baseAdapter4.biReportRequestReturnSolution(baseAdapter4.appContext, BaseAdapter.this.responseHeader, jLongValue);
                }
                callBack2.onComplete(stringExtra, stringExtra2, null);
                return true;
            }

            @Override // com.huawei.hms.adapter.sysobs.SystemObserver
            public boolean onUpdateResult(int i) {
                return false;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replayRequest() {
        if (this.jsonHeaderReplay == null || this.baseCallBackReplay == null) {
            return;
        }
        this.responseHeader = null;
        this.responseHeader = new ResponseHeader();
        baseRequest(getJsonHeaderReplay(), getJsonObjectReplay(), getParcelableReplay(), getBaseCallBackReplay());
    }

    private void setBaseCallBackReplay(BaseCallBack baseCallBack) {
        this.baseCallBackReplay = baseCallBack;
    }

    private void setJsonHeaderReplay(String str) {
        this.jsonHeaderReplay = str;
    }

    private void setJsonObjectReplay(String str) {
        this.jsonObjectReplay = str;
    }

    private void setParcelableReplay(Parcelable parcelable) {
        this.parcelableReplay = parcelable;
    }

    private void setReplayData(String str, String str2, Parcelable parcelable, BaseCallBack baseCallBack) {
        setJsonHeaderReplay(str);
        setJsonObjectReplay(str2);
        setParcelableReplay(parcelable);
        setBaseCallBackReplay(baseCallBack);
    }

    private void setResponseHeader(int i) {
        this.responseHeader.setTransactionId(this.requestHeader.getTransactionId());
        this.responseHeader.setAppID(this.requestHeader.getAppID());
        this.responseHeader.setApiName(this.requestHeader.getApiName());
        this.responseHeader.setSrvName(this.requestHeader.getSrvName());
        this.responseHeader.setPkgName(this.requestHeader.getPkgName());
        this.responseHeader.setStatusCode(1);
        this.responseHeader.setErrorCode(i);
        this.responseHeader.setErrorReason("Core error");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startResolution(Activity activity, Parcelable parcelable) {
        HMSLog.m3463i(TAG, "startResolution");
        RequestHeader requestHeader = this.requestHeader;
        if (requestHeader != null) {
            biReportRequestEntrySolution(this.appContext, requestHeader);
        }
        if (this.observer == null) {
            initObserver();
        }
        SystemManager.getSystemNotifier().registerObserver(this.observer);
        Intent intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(activity, BaseResolutionAdapter.class.getName());
        Bundle bundle = new Bundle();
        bundle.putParcelable(CommonCode.MapKey.HAS_RESOLUTION, parcelable);
        intentStartBridgeActivity.putExtras(bundle);
        intentStartBridgeActivity.putExtra(CommonCode.MapKey.TRANSACTION_ID, this.transactionId);
        activity.startActivity(intentStartBridgeActivity);
    }

    public void baseRequest(String str, String str2, Parcelable parcelable, BaseCallBack baseCallBack) {
        setReplayData(str, str2, parcelable, baseCallBack);
        if (this.api == null) {
            HMSLog.m3461e(TAG, "client is null");
            baseCallBack.onError(getResponseHeaderForError(-2));
            return;
        }
        this.callback = baseCallBack;
        JsonUtil.jsonToEntity(str, this.requestHeader);
        CoreBaseRequest coreBaseRequest = new CoreBaseRequest();
        coreBaseRequest.setJsonObject(str2);
        coreBaseRequest.setJsonHeader(str);
        coreBaseRequest.setParcelable(parcelable);
        String apiName = this.requestHeader.getApiName();
        if (TextUtils.isEmpty(apiName)) {
            HMSLog.m3461e(TAG, "get uri null");
            baseCallBack.onError(getResponseHeaderForError(-5));
            return;
        }
        String transactionId = this.requestHeader.getTransactionId();
        this.transactionId = transactionId;
        if (TextUtils.isEmpty(transactionId)) {
            HMSLog.m3461e(TAG, "get transactionId null");
            baseCallBack.onError(getResponseHeaderForError(-6));
            return;
        }
        StringBuilder sbM1769n = CompilerOutline.m1769n("in baseRequest + uri is :", apiName, ", transactionId is : ");
        sbM1769n.append(this.transactionId);
        HMSLog.m3463i(TAG, sbM1769n.toString());
        biReportRequestEntryIpc(this.appContext, this.requestHeader);
        baseRequest(this.api.get(), apiName, coreBaseRequest).setResultCallback(new BaseRequestResultCallback());
    }

    public BaseAdapter(ApiClient apiClient, Activity activity) {
        this.api = new WeakReference<>(apiClient);
        this.activityWeakReference = new WeakReference<>(activity);
        this.appContext = activity.getApplicationContext();
    }

    private PendingResult<ResolveResult<CoreBaseResponse>> baseRequest(ApiClient apiClient, String str, CoreBaseRequest coreBaseRequest) {
        return new MPendingResultImpl(apiClient, str, coreBaseRequest);
    }
}
