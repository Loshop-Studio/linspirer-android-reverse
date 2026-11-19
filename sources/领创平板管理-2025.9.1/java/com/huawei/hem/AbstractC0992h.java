package com.huawei.hem;

import android.support.annotation.NonNull;

/* compiled from: Lifecycle.java */
/* renamed from: com.huawei.hem.h */
/* loaded from: classes.dex */
public abstract class AbstractC0992h {

    /* compiled from: Lifecycle.java */
    /* renamed from: com.huawei.hem.h$a */
    public enum a {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY
    }

    /* compiled from: Lifecycle.java */
    /* renamed from: com.huawei.hem.h$b */
    public enum b {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public boolean isAtLeast(@NonNull b bVar) {
            return compareTo(bVar) >= 0;
        }
    }
}
