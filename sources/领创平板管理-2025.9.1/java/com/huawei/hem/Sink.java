package com.huawei.hem;

import java.io.Closeable;
import java.io.Flushable;

/* compiled from: Sink.java */
/* renamed from: com.huawei.hem.zn */
/* loaded from: classes.dex */
public interface Sink extends Closeable, Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void flush();

    /* renamed from: n */
    Timeout mo1621n();

    /* renamed from: p */
    void mo1619p(OkioBuffer c1016hn, long j);
}
