package com.huawei.hem;

import com.huawei.hem.ArchitectureLifecycle;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: OnLifecycleEvent.java */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: com.huawei.hem.q */
/* loaded from: classes.dex */
public @interface OnLifecycleEvent {
    ArchitectureLifecycle.a value();
}
