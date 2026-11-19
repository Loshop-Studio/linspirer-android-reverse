package com.alibaba.sdk.android.ams.common.p009c;

import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.alibaba.sdk.android.push.p022e.p023a.C0573c;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.alibaba.sdk.android.ams.common.c.d */
/* loaded from: classes.dex */
public class C0502d {

    /* renamed from: a */
    public static final AmsLogger f844a = AmsLogger.getLogger("ServiceLoader");

    /* renamed from: b */
    public static final String f845b = C0573c.class.getName();

    /* renamed from: a */
    public static <T> List<T> m497a(Class<T> cls, ClassLoader classLoader) {
        String name = cls.getName();
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(cls.cast(classLoader.loadClass(f845b).newInstance()));
            return arrayList;
        } catch (Exception e) {
            throw new IllegalStateException("Fail to load ams-spi-services for " + name, e);
        }
    }
}
