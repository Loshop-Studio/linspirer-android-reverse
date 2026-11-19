package com.huawei.hem;

import android.content.ContentValues;
import java.util.List;
import org.android.agoo.common.AgooConstants;

/* compiled from: ConnectionModel.java */
/* renamed from: com.huawei.hem.ng */
/* loaded from: classes.dex */
public class C1160ng {

    /* renamed from: a */
    public int f3326a;

    /* renamed from: b */
    public int f3327b;

    /* renamed from: c */
    public long f3328c;

    /* renamed from: d */
    public long f3329d;

    /* renamed from: e */
    public long f3330e;

    /* renamed from: a. Each connection stores an absolute cursor. Only currentOffset minus startOffset contributes to downloaded bytes. */
    public static long m2412a(List<C1160ng> list) {
        long j = 0;
        for (C1160ng c1160ng : list) {
            j += c1160ng.f3329d - c1160ng.f3328c;
        }
        return j;
    }

    /* renamed from: b */
    public ContentValues m2413b() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(AgooConstants.MESSAGE_ID, Integer.valueOf(this.f3326a));
        contentValues.put("connectionIndex", Integer.valueOf(this.f3327b));
        contentValues.put("startOffset", Long.valueOf(this.f3328c));
        contentValues.put("currentOffset", Long.valueOf(this.f3329d));
        contentValues.put("endOffset", Long.valueOf(this.f3330e));
        return contentValues;
    }

    public String toString() {
        return C1010hh.m1955e("id[%d] index[%d] range[%d, %d) current offset(%d)", Integer.valueOf(this.f3326a), Integer.valueOf(this.f3327b), Long.valueOf(this.f3328c), Long.valueOf(this.f3330e), Long.valueOf(this.f3329d));
    }
}
