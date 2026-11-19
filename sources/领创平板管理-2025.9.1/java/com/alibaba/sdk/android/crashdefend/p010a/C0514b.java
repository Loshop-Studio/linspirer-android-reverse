package com.alibaba.sdk.android.crashdefend.p010a;

import com.alibaba.sdk.android.crashdefend.CrashDefendCallback;
import com.alibaba.sdk.android.crashdefend.p012c.C0517b;

/* renamed from: com.alibaba.sdk.android.crashdefend.a.b */
/* loaded from: classes.dex */
public class C0514b implements Cloneable {

    /* renamed from: a */
    public String f898a;

    /* renamed from: b */
    public String f899b;

    /* renamed from: c */
    public int f900c;

    /* renamed from: d */
    public int f901d;

    /* renamed from: e */
    public int f902e;

    /* renamed from: f */
    public long f903f;

    /* renamed from: g */
    public long f904g;

    /* renamed from: h */
    public int f905h = 0;

    /* renamed from: i */
    public long f906i = 0;

    /* renamed from: j */
    public volatile boolean f907j = false;

    /* renamed from: k */
    public CrashDefendCallback f908k = null;

    public Object clone() {
        try {
            return (C0514b) super.clone();
        } catch (CloneNotSupportedException e) {
            C0517b.m606a("CrashSDK", "clone fail: ", e);
            return null;
        }
    }
}
