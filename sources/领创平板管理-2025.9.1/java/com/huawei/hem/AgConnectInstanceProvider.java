package com.huawei.hem;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.huawei.hem.u6 */
/* loaded from: classes.dex */
public class AgConnectInstanceProvider extends AppGalleryConfigProviderBase {

    /* renamed from: a */
    public static final Map<String, AppGalleryConfigProviderBase> f3847a = new HashMap();

    /* renamed from: b */
    public static final Object f3848b = new Object();

    /* renamed from: c */
    public static String f3849c;

    public AgConnectInstanceProvider(Context context, String str) {
        AppGalleryConfigReader.m2680b(context, str);
    }

    /* renamed from: a */
    public static AppGalleryConfigProviderBase m2786a(Context context) {
        AppGalleryConfigProviderBase abstractC1250r6;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        String packageName = context.getPackageName();
        f3849c = packageName;
        if (TextUtils.isEmpty(packageName)) {
            throw new IllegalArgumentException("packageName can not be empty");
        }
        synchronized (f3848b) {
            abstractC1250r6 = f3847a.get(packageName);
            if (abstractC1250r6 == null) {
                f3847a.put(packageName, new AgConnectInstanceProvider(context, packageName));
            }
        }
        return abstractC1250r6;
    }
}
