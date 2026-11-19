package com.p061ta.p062a;

import android.content.Context;
import com.huawei.hem.C0948f6;

/* renamed from: com.ta.a.a */
/* loaded from: classes.dex */
public class C1866a {

    /* renamed from: a */
    public static final C1866a f5983a = new C1866a();
    public Context mContext = null;

    /* renamed from: a */
    public long f5984a = 0;

    /* renamed from: a */
    public static C1866a m5365a() {
        return f5983a;
    }

    public Context getContext() {
        return this.mContext;
    }

    /* renamed from: a */
    public synchronized void m5369a(Context context) {
        if (this.mContext == null) {
            if (context == null) {
                return;
            }
            if (context.getApplicationContext() != null) {
                this.mContext = context.getApplicationContext();
            } else {
                this.mContext = context;
            }
        }
    }

    /* renamed from: a */
    public void m5368a(long j) {
        this.f5984a = j - System.currentTimeMillis();
    }

    /* renamed from: a */
    public long m5366a() {
        return System.currentTimeMillis() + this.f5984a;
    }

    /* renamed from: a */
    public String m5367a() {
        StringBuilder sbM1765j = C0948f6.m1765j("");
        sbM1765j.append(m5366a());
        return sbM1765j.toString();
    }
}
