package com.huawei.hem;

import android.support.annotation.NonNull;

/* compiled from: ViewModelProvider.java */
/* renamed from: com.huawei.hem.s */
/* loaded from: classes.dex */
public interface ViewModelProviderFactory {
    @NonNull
    <T extends ViewModel> T create(@NonNull Class<T> cls);
}
