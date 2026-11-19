package com.alibaba.sdk.android.tbrest.rest;

import android.content.Context;
import com.alibaba.sdk.android.tbrest.SendService;
import com.alibaba.sdk.android.tbrest.request.BizRequest;
import com.alibaba.sdk.android.tbrest.request.UrlWrapper;
import com.alibaba.sdk.android.tbrest.utils.LogUtil;
import com.alibaba.sdk.android.tbrest.utils.StringUtils;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: RestReqSend.java */
/* renamed from: com.alibaba.sdk.android.tbrest.rest.f */
/* loaded from: classes.dex */
public class RestReqSend {
    /* renamed from: a */
    public static boolean m992a(SendService sendService, String str, Context context, String str2, long j, String str3, int i, Object obj, Object obj2, Object obj3, Map<String, String> map) {
        try {
            LogUtil.m999i("RestAPI start send log!");
            String strM988a = RestReqDataBuilder.m988a(sendService, str, j, str3, i, obj, obj2, obj3, map);
            if (!StringUtils.isNotBlank(strM988a)) {
                LogUtil.m999i("UTRestAPI build data failure!");
                return false;
            }
            LogUtil.m999i("RestAPI build data succ!");
            HashMap map2 = new HashMap(1);
            map2.put(String.valueOf(i), strM988a);
            byte[] packRequest = null;
            try {
                packRequest = BizRequest.getPackRequest(sendService, str, context, map2);
            } catch (Exception e) {
                LogUtil.m997e(e.toString());
            }
            if (packRequest == null) {
                return false;
            }
            LogUtil.m999i("packRequest success!");
            return UrlWrapper.sendRequest(sendService, str2, packRequest).isSuccess();
        } catch (Throwable th) {
            LogUtil.m998e("system error!", th);
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m993b(SendService sendService, String str, Context context, String str2, long j, String str3, int i, Object obj, Object obj2, Object obj3, Map<String, String> map) {
        try {
            LogUtil.m999i("RestAPI start send log by url!");
            String strM988a = RestReqDataBuilder.m988a(sendService, str, j, str3, i, obj, obj2, obj3, map);
            if (!StringUtils.isNotBlank(strM988a)) {
                LogUtil.m999i("UTRestAPI build data failure by url!");
                return false;
            }
            LogUtil.m999i("RestAPI build data succ by url!");
            HashMap map2 = new HashMap(1);
            map2.put(String.valueOf(i), strM988a);
            byte[] packRequest = null;
            try {
                packRequest = BizRequest.getPackRequest(sendService, str, context, map2);
            } catch (Exception e) {
                LogUtil.m997e(e.toString());
            }
            if (packRequest == null) {
                return false;
            }
            LogUtil.m999i("packRequest success by url!");
            return UrlWrapper.sendRequest(sendService, str, str2, packRequest).isSuccess();
        } catch (Throwable th) {
            LogUtil.m998e("system error by url!", th);
            return false;
        }
    }

    @Deprecated
    /* renamed from: a */
    public static String m991a(SendService sendService, String str, String str2, Context context, long j, String str3, int i, Object obj, Object obj2, Object obj3, Map<String, String> map) {
        try {
            LogUtil.m999i("sendLogByUrl RestAPI start send log!");
            RestReqDataBuildResult c0603dM987a = RestReqDataBuilder.m987a(sendService, str2, str, context, j, str3, i, obj, obj2, obj3, map);
            if (c0603dM987a != null) {
                LogUtil.m999i("sendLogByUrl RestAPI build data succ!");
                Map<String, Object> mapM984a = c0603dM987a.m984a();
                if (mapM984a == null) {
                    LogUtil.m999i("sendLogByUrl postReqData is null!");
                    return null;
                }
                String strM983a = c0603dM987a.m983a();
                if (StringUtils.isEmpty(strM983a)) {
                    LogUtil.m999i("sendLogByUrl reqUrl is null!");
                    return null;
                }
                byte[] bArrM980a = RestHttpUtils.m980a(2, strM983a, mapM984a, true);
                if (bArrM980a != null) {
                    try {
                        String str4 = new String(bArrM980a, "UTF-8");
                        if (!StringUtils.isEmpty(str4)) {
                            return str4;
                        }
                    } catch (UnsupportedEncodingException e) {
                        LogUtil.m998e("sendLogByUrl result encoding UTF-8 error!", e);
                    }
                }
            } else {
                LogUtil.m999i("sendLogByUrl UTRestAPI build data failure!");
            }
        } catch (Throwable th) {
            LogUtil.m998e("sendLogByUrl system error!", th);
        }
        return null;
    }
}
