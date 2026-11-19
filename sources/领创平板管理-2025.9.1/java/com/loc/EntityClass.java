package com.loc;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: EntityClass.java */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: com.loc.aa */
/* loaded from: classes.dex */
public @interface EntityClass {
    /* renamed from: a */
    String m3993a();

    /* renamed from: b */
    boolean m3994b() default false;
}
