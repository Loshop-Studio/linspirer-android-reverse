package com.alibaba.sdk.android.push.common.util.p019a;

import com.alibaba.sdk.android.error.ErrorCode;
import com.alibaba.sdk.android.push.common.p018a.C0560d;

/* renamed from: com.alibaba.sdk.android.push.common.util.a.b */
/* loaded from: classes.dex */
public class C0564b {

    /* renamed from: a */
    public String f1154a;

    /* renamed from: b */
    public int f1155b;

    /* renamed from: c */
    public ErrorCode f1156c;

    /* renamed from: d */
    public EnumC0566d f1157d;

    public C0564b() {
        this.f1156c = C0560d.f1126a;
        this.f1154a = "";
        this.f1155b = 0;
        this.f1157d = EnumC0566d.UNKNOWN_TYPE;
    }

    public C0564b(int i) {
        this.f1156c = C0560d.f1126a;
        for (EnumC0566d enumC0566d : EnumC0566d.values()) {
            if (enumC0566d.m774a() == i) {
                this.f1157d = enumC0566d;
            }
        }
        this.f1154a = "";
        this.f1155b = 0;
    }
}
