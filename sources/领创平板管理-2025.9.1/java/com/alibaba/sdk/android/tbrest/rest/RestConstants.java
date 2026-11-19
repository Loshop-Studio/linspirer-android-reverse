package com.alibaba.sdk.android.tbrest.rest;

import com.alibaba.sdk.android.tbrest.utils.RC4;

/* loaded from: classes.dex */
public class RestConstants {
    public static final String G_ABTEST_URL = "http://adash.m.taobao.com/rest/abtest";
    public static final String G_CONF_URL = "http://c-adash.m.taobao.com/rest/gc";
    public static final String G_DEFAULT_ADASHX_HOST = "h-adashx.ut.taobao.com";
    public static String G_FIXED_TRANSFER_URL = "http://adash.m.taobao.com/rest/sur";
    public static final int G_LOG_CACHE_CAPACITY = 1000;
    public static final int G_MAX_CONNECTION_TIME_OUT = 10000;
    public static final int G_MAX_PER_LOG_SIZE = 102400;
    public static final int G_MAX_PER_TRANSFER_COUNT = 100;
    public static final int G_MAX_PER_UPLOAD_PACKAGE_SIZE = 102400;
    public static final int G_MAX_READ_CONNECTION_STREAM_TIME_OUT = 30000;
    public static final String G_SDK_VERSION = "4.1.0";
    public static String G_TRANSFER_URL = "http://adash.m.taobao.com/rest/sur";
    public static final int G_UPLOAD_INTERVAL = 30;
    public static final String UT_SDK_VRESION = "6.5.1.3";

    public static String getRC4PrivateKey() {
        return RC4.RC4_PK;
    }

    public static synchronized String getTransferUrl() {
        return G_TRANSFER_URL;
    }

    public static synchronized void setTransferUrl(String str) {
        G_TRANSFER_URL = str;
    }
}
