package com.huawei.hms.common;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.huawei.hem.HmsResultTaskBase;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.HmsTaskRegistry;
import com.huawei.hem.HmsTaskResultState;
import com.huawei.hem.HiAnalyticsBase;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.Api.ApiOptions;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.common.internal.ClientSettings;
import com.huawei.hms.common.internal.ConnectionManagerKey;
import com.huawei.hms.common.internal.HuaweiApiManager;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.common.internal.TransactionIdCreater;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.client.SubAppInfo;
import com.huawei.hms.support.api.entity.auth.Scope;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.hianalytics.HiAnalyticsUtil;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.HMSBIInitializer;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.Util;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class HuaweiApi<TOption extends Api.ApiOptions> {
    public static final String TAG = "HuaweiApi";
    public String innerHmsPkg;
    public WeakReference<Activity> mActivity;
    public String mAppID;
    public AbstractClientBuilder<?, TOption> mClientBuilder;
    public ConnectionManagerKey<TOption> mConnectionManagerKey;
    public Context mContext;
    public String mCpID;
    public String mHostAppid;
    public HuaweiApiManager mHuaweiApiManager;
    public int mKitSdkVersion;
    public TOption mOption;
    public SubAppInfo mSubAppInfo;
    public int apiLevel = 1;
    public boolean isFirstReqSent = false;

    public HuaweiApi(Activity activity, Api<TOption> api, TOption toption, AbstractClientBuilder abstractClientBuilder, int i) {
        Checker.checkNonNull(activity, "Null activity is not permitted.");
        this.mActivity = new WeakReference<>(activity);
        init(activity, api, toption, abstractClientBuilder, i, null);
    }

    private void init(Context context, Api<TOption> api, TOption toption, AbstractClientBuilder abstractClientBuilder, int i, String str) {
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mHuaweiApiManager = HuaweiApiManager.getInstance(applicationContext);
        this.mConnectionManagerKey = ConnectionManagerKey.createConnectionManagerKey(context, api, toption, str);
        this.mOption = toption;
        this.mClientBuilder = abstractClientBuilder;
        String appId = Util.getAppId(context);
        this.mHostAppid = appId;
        this.mAppID = appId;
        this.mCpID = Util.getCpId(context);
        this.mSubAppInfo = new SubAppInfo("");
        this.mKitSdkVersion = i;
        if (!TextUtils.isEmpty(str)) {
            if (str.equals(this.mHostAppid)) {
                HMSLog.m3461e(TAG, "subAppId is host appid");
            } else {
                HMSLog.m3463i(TAG, "subAppId is " + str);
                this.mSubAppInfo = new SubAppInfo(str);
            }
        }
        initBI(context);
    }

    private void initBI(Context context) {
        HMSBIInitializer.getInstance(context).initBI();
    }

    private <TResult, TClient extends AnyClient> HmsResultTaskBase<TResult> sendRequest(TaskApiCall<TClient, TResult> taskApiCall) {
        if (taskApiCall.getToken() == null) {
            HmsTaskRegistry<TResult> c1401x7 = new HmsTaskRegistry<>();
            this.mHuaweiApiManager.sendRequest(this, taskApiCall, c1401x7);
            return c1401x7.f4053a;
        }
        taskApiCall.getToken();
        new HmsTaskResultState();
        throw null;
    }

    public HmsResultTaskBase<Boolean> disconnectService() {
        HmsTaskRegistry<Boolean> c1401x7 = new HmsTaskRegistry<>();
        this.mHuaweiApiManager.disconnectService(this, c1401x7);
        return c1401x7.f4053a;
    }

    public <TResult, TClient extends AnyClient> HmsResultTaskBase<TResult> doWrite(TaskApiCall<TClient, TResult> taskApiCall) {
        this.isFirstReqSent = true;
        if (taskApiCall == null) {
            HMSLog.m3461e(TAG, "in doWrite:taskApiCall is null");
            HmsTaskResultState c1426y7 = new HmsTaskResultState();
            new ApiException(Status.FAILURE);
            synchronized (c1426y7.f4204a) {
                if (!c1426y7.f4205b) {
                    c1426y7.f4205b = true;
                    c1426y7.f4204a.notifyAll();
                    c1426y7.m3082a();
                }
            }
            return c1426y7;
        }
        String subAppID = TextUtils.isEmpty(this.mSubAppInfo.getSubAppID()) ? this.mAppID : this.mSubAppInfo.getSubAppID();
        Context context = this.mContext;
        String uri = taskApiCall.getUri();
        String transactionId = taskApiCall.getTransactionId();
        String strValueOf = String.valueOf(getKitSdkVersion());
        Map<String, String> mapForBi = HiAnalyticsBase.getMapForBi(context, uri);
        mapForBi.put(HiAnalyticsConstant.HaKey.BI_KEY_APPID, subAppID);
        if (TextUtils.isEmpty(transactionId)) {
            transactionId = TransactionIdCreater.getId(subAppID, uri);
        }
        mapForBi.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, transactionId);
        mapForBi.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.REQUEST);
        if (!TextUtils.isEmpty(strValueOf)) {
            mapForBi.put("version", HiAnalyticsUtil.versionCodeToName(strValueOf));
        }
        mapForBi.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_BASE_API_CALLED, mapForBi);
        return sendRequest(taskApiCall);
    }

    public Activity getActivity() {
        WeakReference<Activity> weakReference = this.mActivity;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public int getApiLevel() {
        return this.apiLevel;
    }

    public String getAppID() {
        return this.mAppID;
    }

    public AnyClient getClient(Looper looper, HuaweiApiManager.ConnectionManager connectionManager) {
        return this.mClientBuilder.buildClient(this.mContext, getClientSetting(), connectionManager, connectionManager);
    }

    public ClientSettings getClientSetting() {
        ClientSettings clientSettings = new ClientSettings(this.mContext.getPackageName(), this.mContext.getClass().getName(), getScopes(), this.mHostAppid, null, this.mSubAppInfo);
        clientSettings.setCpID(this.mCpID);
        if (TextUtils.isEmpty(this.innerHmsPkg)) {
            this.innerHmsPkg = HMSPackageManager.getInstance(this.mContext).getHMSPackageName();
            StringBuilder sbM1765j = CompilerOutline.m1765j("inner hms is empty,hms pkg name is ");
            sbM1765j.append(this.innerHmsPkg);
            HMSLog.m3463i(TAG, sbM1765j.toString());
        }
        clientSettings.setInnerHmsPkg(this.innerHmsPkg);
        WeakReference<Activity> weakReference = this.mActivity;
        if (weakReference != null) {
            clientSettings.setCpActivity(weakReference.get());
        }
        return clientSettings;
    }

    public ConnectionManagerKey<TOption> getConnectionManagerKey() {
        return this.mConnectionManagerKey;
    }

    public Context getContext() {
        return this.mContext;
    }

    public int getKitSdkVersion() {
        return this.mKitSdkVersion;
    }

    public TOption getOption() {
        return this.mOption;
    }

    public List<Scope> getScopes() {
        return Collections.emptyList();
    }

    public String getSubAppID() {
        return this.mSubAppInfo.getSubAppID();
    }

    public void setApiLevel(int i) {
        this.apiLevel = i;
    }

    public void setInnerHms() {
        this.innerHmsPkg = this.mContext.getPackageName();
        StringBuilder sbM1765j = CompilerOutline.m1765j("init inner hms pkg info:");
        sbM1765j.append(this.innerHmsPkg);
        HMSLog.m3463i(TAG, sbM1765j.toString());
    }

    public void setKitSdkVersion(int i) {
        this.mKitSdkVersion = i;
    }

    public void setSubAppId(String str) throws ApiException {
        if (!setSubAppInfo(new SubAppInfo(str))) {
            throw new ApiException(Status.FAILURE);
        }
    }

    @Deprecated
    public boolean setSubAppInfo(SubAppInfo subAppInfo) {
        HMSLog.m3463i(TAG, "Enter setSubAppInfo");
        SubAppInfo subAppInfo2 = this.mSubAppInfo;
        if (subAppInfo2 != null && !TextUtils.isEmpty(subAppInfo2.getSubAppID())) {
            HMSLog.m3461e(TAG, "subAppInfo is already set");
            return false;
        }
        if (subAppInfo == null) {
            HMSLog.m3461e(TAG, "subAppInfo is null");
            return false;
        }
        String subAppID = subAppInfo.getSubAppID();
        if (TextUtils.isEmpty(subAppID)) {
            HMSLog.m3461e(TAG, "subAppId is empty");
            return false;
        }
        if (subAppID.equals(this.mHostAppid)) {
            HMSLog.m3461e(TAG, "subAppId is host appid");
            return false;
        }
        if (this.isFirstReqSent) {
            HMSLog.m3461e(TAG, "Client has sent request to Huawei Mobile Services, setting subAppId is not allowed");
            return false;
        }
        this.mSubAppInfo = new SubAppInfo(subAppInfo);
        return true;
    }

    public HuaweiApi(Activity activity, Api<TOption> api, TOption toption, AbstractClientBuilder abstractClientBuilder, int i, String str) {
        Checker.checkNonNull(activity, "Null activity is not permitted.");
        this.mActivity = new WeakReference<>(activity);
        init(activity, api, toption, abstractClientBuilder, i, str);
    }

    public HuaweiApi(Activity activity, Api<TOption> api, TOption toption, AbstractClientBuilder abstractClientBuilder) {
        Checker.checkNonNull(activity, "Null activity is not permitted.");
        this.mActivity = new WeakReference<>(activity);
        init(activity, api, toption, abstractClientBuilder, 0, null);
    }

    public HuaweiApi(Context context, Api<TOption> api, TOption toption, AbstractClientBuilder abstractClientBuilder, int i) {
        Checker.checkNonNull(context, "Null context is not permitted.");
        init(context, api, toption, abstractClientBuilder, i, null);
    }

    public HuaweiApi(Context context, Api<TOption> api, TOption toption, AbstractClientBuilder abstractClientBuilder, int i, String str) {
        Checker.checkNonNull(context, "Null context is not permitted.");
        init(context, api, toption, abstractClientBuilder, i, str);
    }

    public HuaweiApi(Context context, Api<TOption> api, TOption toption, AbstractClientBuilder abstractClientBuilder) {
        Checker.checkNonNull(context, "Null context is not permitted.");
        init(context, api, toption, abstractClientBuilder, 0, null);
    }
}
