package com.huawei.hem;

import android.support.annotation.Nullable;

/* compiled from: Observer.java */
/* renamed from: com.huawei.hem.p */
/* loaded from: classes.dex */
public interface Observer<T> {
    void onChanged(@Nullable T t);
}
