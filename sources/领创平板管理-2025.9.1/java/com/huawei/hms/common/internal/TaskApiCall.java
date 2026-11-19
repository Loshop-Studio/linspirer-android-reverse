package com.huawei.hms.common.internal;

import android.os.Parcelable;
import com.huawei.hem.HmsTaskApiCallBase;
import com.huawei.hem.HmsTaskRegistry;
import com.huawei.hms.common.internal.AnyClient;

/* loaded from: classes.dex */
public abstract class TaskApiCall<ClientT extends AnyClient, ResultT> {
    public static final String TAG = "TaskApiCall";
    public int apiLevel;
    public final String mRequestJson;
    public final String mUri;
    public Parcelable parcelable;
    public HmsTaskApiCallBase token;
    public String transactionId;

    @Deprecated
    public TaskApiCall(String str, String str2) {
        this.apiLevel = 1;
        this.mUri = str;
        this.mRequestJson = str2;
        this.parcelable = null;
        this.transactionId = null;
    }

    public abstract void doExecute(ClientT clientt, ResponseErrorCode responseErrorCode, String str, HmsTaskRegistry<ResultT> c1401x7);

    public int getApiLevel() {
        return this.apiLevel;
    }

    @Deprecated
    public int getMinApkVersion() {
        return 30000000;
    }

    public Parcelable getParcelable() {
        return this.parcelable;
    }

    public String getRequestJson() {
        return this.mRequestJson;
    }

    public HmsTaskApiCallBase getToken() {
        return null;
    }

    public String getTransactionId() {
        return this.transactionId;
    }

    public String getUri() {
        return this.mUri;
    }

    public final void onResponse(ClientT clientt, ResponseErrorCode responseErrorCode, String str, HmsTaskRegistry<ResultT> c1401x7) {
        doExecute(clientt, responseErrorCode, str, c1401x7);
    }

    public void setApiLevel(int i) {
        this.apiLevel = i;
    }

    public void setParcelable(Parcelable parcelable) {
        this.parcelable = parcelable;
    }

    public void setToken(HmsTaskApiCallBase abstractC1326u7) {
        this.token = abstractC1326u7;
    }

    public void setTransactionId(String str) {
        this.transactionId = str;
    }

    public TaskApiCall(String str, String str2, String str3) {
        this.apiLevel = 1;
        this.mUri = str;
        this.mRequestJson = str2;
        this.parcelable = null;
        this.transactionId = str3;
    }

    public TaskApiCall(String str, String str2, String str3, int i) {
        this.apiLevel = 1;
        this.mUri = str;
        this.mRequestJson = str2;
        this.parcelable = null;
        this.transactionId = str3;
        this.apiLevel = i;
    }
}
