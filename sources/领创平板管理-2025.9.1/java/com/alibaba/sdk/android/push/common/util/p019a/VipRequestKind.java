package com.alibaba.sdk.android.push.common.util.p019a;

import com.huawei.hms.framework.common.ExceptionCode;

/* renamed from: com.alibaba.sdk.android.push.common.util.a.d */
/* loaded from: classes.dex */
public enum VipRequestKind {
    UNKNOWN_TYPE(0, "unknown"),
    CONFIG(100, "config"),
    BIND_ACCOUNT(105, "Bind account"),
    UNBIND_ACCOUNT(106, "Unbind account"),
    BIND_TAG_TO_DEVICE(101, "Bind tag to device"),
    BIND_TAG_TO_ACCOUNT(102, "Bind tag to account"),
    BIND_TAG_TO_ALIAS(103, "Bind tag to alias"),
    BIND_ALIAS(104, "Add alias to device"),
    UNBIND_TAG_TO_DEVICE(1101, "Unbind tag from device"),
    UNBIND_TAG_TO_ACCOUNT(ExceptionCode.NETWORK_IO_EXCEPTION, "Unbind tag from account"),
    UNBIND_TAG_TO_ALIAS(ExceptionCode.CRASH_EXCEPTION, "Unbind tag from alias"),
    UNBIND_ALIAS(ExceptionCode.CANCEL, "Remove alias"),
    LIST_TAGS(1201, "List tags of device"),
    LIST_ALIASES(1202, "List aliases of device"),
    TURN_OFF_PUSH(1203, "Turn off push"),
    TURN_ON_PUSH(1204, "Turn on push"),
    CHECK_PUSH_STATUS(1205, "Check push status"),
    BIND_PHONE_NUMBER(1206, "bind phone number to devices"),
    UNBIND_PHONE_NUMBER(1207, "unbind phone number to devices"),
    ON_APP_START(1208, "on app start");


    /* renamed from: u */
    public static String f1183u = "VipRequestType";

    /* renamed from: v */
    public int f1185v;

    /* renamed from: w */
    public String f1186w;

    VipRequestKind(int i, String str) {
        this.f1185v = i;
        this.f1186w = str;
    }

    /* renamed from: b */
    public static int m773b() {
        return 100;
    }

    /* renamed from: a */
    public int m774a() {
        return this.f1185v;
    }
}
