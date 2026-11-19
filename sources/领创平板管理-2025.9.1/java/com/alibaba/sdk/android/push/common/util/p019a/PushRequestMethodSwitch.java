package com.alibaba.sdk.android.push.common.util.p019a;

import com.alibaba.sdk.android.error.ErrorCode;
import com.alibaba.sdk.android.push.common.p018a.PushErrorCatalog;

/* renamed from: com.alibaba.sdk.android.push.common.util.a.b */
/* loaded from: classes.dex */
public class PushRequestMethodSwitch {

    /* renamed from: a */
    public String f1154a;

    /* renamed from: b */
    public int f1155b;

    /* renamed from: c */
    public ErrorCode f1156c;

    /* renamed from: d */
    public VipRequestKind f1157d;

    public PushRequestMethodSwitch() {
        this.f1156c = PushErrorCatalog.f1126a;
        this.f1154a = "";
        this.f1155b = 0;
        this.f1157d = VipRequestKind.UNKNOWN_TYPE;
    }

    public PushRequestMethodSwitch(int i) {
        this.f1156c = PushErrorCatalog.f1126a;
        for (VipRequestKind enumC0566d : VipRequestKind.values()) {
            if (enumC0566d.m774a() == i) {
                this.f1157d = enumC0566d;
            }
        }
        this.f1154a = "";
        this.f1155b = 0;
    }
}
