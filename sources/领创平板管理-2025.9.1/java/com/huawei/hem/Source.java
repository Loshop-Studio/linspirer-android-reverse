package com.huawei.hem;

import java.io.Closeable;

/* compiled from: Source.java */
/* renamed from: com.huawei.hem.ao */
/* loaded from: classes.dex */
public interface Source extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    /* renamed from: e */
    long mo1380e(OkioBuffer c1016hn, long j);

    /* renamed from: n */
    Timeout mo1381n();
}
