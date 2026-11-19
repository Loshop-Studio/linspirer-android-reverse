package com.alibaba.sdk.android.tbrest;

import android.content.Context;
import android.util.Log;
import com.alibaba.sdk.android.tbrest.rest.RestReqSend;
import com.alibaba.sdk.android.tbrest.rest.RestConstants;
import com.alibaba.sdk.android.tbrest.utils.LogUtil;
import com.huawei.hem.CompilerOutline;
import java.util.Map;

/* loaded from: classes.dex */
public class SendService {
    public static final SendService instance = new SendService();
    public Context context = null;
    public String appId = null;
    public String appKey = null;
    public String appSecret = null;
    public String appVersion = null;
    public String channel = null;
    public String userNick = null;
    public String host = null;
    public Boolean openHttp = Boolean.FALSE;
    public String country = null;
    public SendAsyncExecutor sendAsyncExecutor = new SendAsyncExecutor();

    private Boolean canSend() {
        if (this.appId != null && this.appVersion != null && this.appKey != null && this.context != null) {
            return Boolean.TRUE;
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("have send args is null，you must init first. appId ");
        sbM1765j.append(this.appId);
        sbM1765j.append(" appVersion ");
        sbM1765j.append(this.appVersion);
        sbM1765j.append(" appKey ");
        sbM1765j.append(this.appKey);
        LogUtil.m997e(sbM1765j.toString());
        return Boolean.FALSE;
    }

    public static SendService getInstance() {
        return instance;
    }

    public void changeHost(String str) {
        if (str != null) {
            this.host = str;
        }
    }

    public String getAppKey() {
        return this.appKey;
    }

    public String getChangeHost() {
        return this.host;
    }

    public void init(Context context, String str, String str2, String str3, String str4, String str5) {
        this.context = context;
        this.appId = str;
        this.appKey = str2;
        this.appVersion = str3;
        this.channel = str4;
        this.userNick = str5;
    }

    public Boolean sendRequest(String str, long j, String str2, int i, Object obj, Object obj2, Object obj3, Map<String, String> map) {
        String str3;
        if (!canSend().booleanValue()) {
            return Boolean.FALSE;
        }
        if (str == null) {
            String str4 = this.host;
            if (str4 == null) {
                str4 = RestConstants.G_DEFAULT_ADASHX_HOST;
            }
            str3 = str4;
        } else {
            str3 = str;
        }
        return Boolean.valueOf(RestReqSend.m992a(this, this.appKey, this.context, str3, j, str2, i, obj, obj2, obj3, map));
    }

    public void sendRequestAsyn(String str, long j, String str2, int i, Object obj, Object obj2, Object obj3, Map<String, String> map) {
        String str3;
        if (canSend().booleanValue()) {
            if (str == null) {
                String str4 = this.host;
                if (str4 == null) {
                    str4 = RestConstants.G_DEFAULT_ADASHX_HOST;
                }
                str3 = str4;
            } else {
                str3 = str;
            }
            this.sendAsyncExecutor.m976a(new RestThread(this, "rest thread", this.appKey, this.context, str3, j, str2, i, obj, obj2, obj3, map, Boolean.FALSE));
        }
    }

    public void sendRequestAsynByAppkeyAndUrl(String str, String str2, long j, String str3, int i, Object obj, Object obj2, Object obj3, Map<String, String> map) {
        if (canSend().booleanValue()) {
            if (str == null) {
                Log.e(LogUtil.TAG, "need set url");
            } else {
                this.sendAsyncExecutor.m976a(new RestThread(this, "rest thread", str2 == null ? this.appKey : str2, this.context, str, j, str3, i, obj, obj2, obj3, map, Boolean.TRUE));
            }
        }
    }

    @Deprecated
    public String sendRequestByUrl(String str, long j, String str2, int i, Object obj, Object obj2, Object obj3, Map<String, String> map) {
        if (canSend().booleanValue()) {
            return RestReqSend.m991a(this, str, this.appKey, this.context, j, str2, i, obj, obj2, obj3, map);
        }
        return null;
    }

    public void updateAppVersion(String str) {
        if (str != null) {
            this.appVersion = str;
        }
    }

    public void updateChannel(String str) {
        if (str != null) {
            this.channel = str;
        }
    }

    public void updateUserNick(String str) {
        if (str != null) {
            this.userNick = str;
        }
    }

    public static class RestThread implements Runnable {
        public Object aArg1;
        public Object aArg2;
        public Object aArg3;
        public int aEventId;
        public Map<String, String> aExtData;
        public String aPage;
        public long aTimestamp;
        public String adashxServerHost;
        public String appKey;
        public Context context;
        public Boolean isUrl;
        public SendService mSendService;

        public RestThread() {
            this.isUrl = Boolean.FALSE;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.isUrl.booleanValue()) {
                    RestReqSend.m993b(this.mSendService, this.appKey, this.context, this.adashxServerHost, this.aTimestamp, this.aPage, this.aEventId, this.aArg1, this.aArg2, this.aArg3, this.aExtData);
                } else {
                    RestReqSend.m992a(this.mSendService, this.appKey, this.context, this.adashxServerHost, this.aTimestamp, this.aPage, this.aEventId, this.aArg1, this.aArg2, this.aArg3, this.aExtData);
                }
            } catch (Exception e) {
                LogUtil.m998e("send log asyn error ", e);
            }
        }

        public RestThread(SendService sendService, String str, String str2, Context context, String str3, long j, String str4, int i, Object obj, Object obj2, Object obj3, Map<String, String> map, Boolean bool) {
            this.isUrl = Boolean.FALSE;
            this.context = context;
            this.adashxServerHost = str3;
            this.aTimestamp = j;
            this.aPage = str4;
            this.aEventId = i;
            this.aArg1 = obj;
            this.aArg2 = obj2;
            this.aArg3 = obj3;
            this.aExtData = map;
            this.appKey = str2;
            this.isUrl = bool;
            this.mSendService = sendService;
        }
    }
}
