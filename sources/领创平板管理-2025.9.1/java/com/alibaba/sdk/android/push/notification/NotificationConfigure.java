package com.alibaba.sdk.android.push.notification;

import android.app.Notification;
import android.support.v4.app.NotificationCompat;

/* loaded from: classes.dex */
public interface NotificationConfigure {
    void configBuilder(Notification.Builder builder, PushData pushData);

    void configBuilder(NotificationCompat.Builder builder, PushData pushData);

    void configNotification(Notification notification, PushData pushData);
}
