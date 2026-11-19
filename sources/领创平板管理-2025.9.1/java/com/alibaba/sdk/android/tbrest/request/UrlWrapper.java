package com.alibaba.sdk.android.tbrest.request;

import anetwork.channel.util.RequestConstant;
import com.alibaba.sdk.android.tbrest.SendService;
import com.huawei.hem.C0948f6;

/* loaded from: classes.dex */
public class UrlWrapper {
    public static final int MAX_CONNECTION_TIME_OUT = 10000;
    public static final int MAX_READ_CONNECTION_STREAM_TIME_OUT = 60000;
    public static int mErrorCode;
    public static C0599a mRestSslSocketFactory;

    static {
        System.setProperty("http.keepAlive", RequestConstant.TRUE);
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x0175  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.alibaba.sdk.android.tbrest.request.BizResponse sendRequest(com.alibaba.sdk.android.tbrest.SendService r7, java.lang.String r8, java.lang.String r9, byte[] r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.tbrest.request.UrlWrapper.sendRequest(com.alibaba.sdk.android.tbrest.SendService, java.lang.String, java.lang.String, byte[]):com.alibaba.sdk.android.tbrest.request.BizResponse");
    }

    public static BizResponse sendRequestByUrl(SendService sendService, String str, byte[] bArr) {
        return sendRequest(sendService, sendService.appKey, str, bArr);
    }

    public static BizResponse sendRequest(SendService sendService, String str, byte[] bArr) {
        String strM1761f;
        String str2 = sendService.appKey;
        if (sendService.openHttp.booleanValue()) {
            strM1761f = C0948f6.m1761f("http://", str, "/upload");
        } else {
            strM1761f = C0948f6.m1761f("https://", str, "/upload");
        }
        return sendRequest(sendService, str2, strM1761f, bArr);
    }
}
