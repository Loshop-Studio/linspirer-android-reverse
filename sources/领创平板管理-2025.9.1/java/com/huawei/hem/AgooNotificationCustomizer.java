package com.huawei.hem;

import android.app.Notification;
import android.content.Context;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: com.huawei.hem.m0 */
/* loaded from: classes.dex */
public interface AgooNotificationCustomizer {
    Notification customNotificationUI(Context context, Map<String, String> map);

    boolean showNotificationNow(Context context, Map<String, String> map);
}
