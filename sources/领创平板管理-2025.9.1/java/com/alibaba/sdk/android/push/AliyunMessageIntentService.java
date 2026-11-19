package com.alibaba.sdk.android.push;

import android.app.Notification;
import android.content.Context;
import com.alibaba.sdk.android.push.notification.AliyunNotificationPresenter;
import com.alibaba.sdk.android.push.notification.PushNotificationPlatform;
import com.alibaba.sdk.android.push.notification.CPushMessage;
import com.alibaba.sdk.android.push.notification.NotificationConfigure;
import com.alibaba.sdk.android.push.notification.PushData;
import com.aliyun.ams.emas.push.AgooMessageIntentService;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class AliyunMessageIntentService extends AgooMessageIntentService {
    public AliyunNotificationPresenter mMessageNotification = new AliyunNotificationPresenter();

    public Notification customNotificationUI(Context context, PushData pushData) {
        return null;
    }

    @Override // com.huawei.hem.InterfaceC1119m0
    public Notification customNotificationUI(Context context, Map<String, String> map) throws NumberFormatException {
        PushData pushData = PushData.parse(context, map);
        NotificationConfigure notificationConfigureHookNotificationBuild = hookNotificationBuild();
        Notification notificationCustomNotificationUI = customNotificationUI(context, pushData);
        if (notificationCustomNotificationUI != null) {
            return notificationCustomNotificationUI;
        }
        return this.mMessageNotification.m950a(getApplicationContext(), this.mMessageNotification.m951a(getApplicationContext(), map), pushData, notificationConfigureHookNotificationBuild);
    }

    public NotificationConfigure hookNotificationBuild() {
        return null;
    }

    public abstract void onMessage(Context context, CPushMessage cPushMessage);

    @Override // com.huawei.hem.InterfaceC1093l0
    public void onMessageArrived(Context context, com.aliyun.ams.emas.push.notification.CPushMessage cPushMessage) {
        onMessage(context, CPushMessage.from(cPushMessage));
    }

    public abstract void onNotification(Context context, String str, String str2, Map<String, String> map);

    public abstract void onNotificationClickedWithNoAction(Context context, String str, String str2, String str3);

    public abstract void onNotificationOpened(Context context, String str, String str2, String str3);

    @Override // com.huawei.hem.InterfaceC1093l0
    public void onNotificationOpened(Context context, String str, String str2, String str3, int i) {
        if (i == 4) {
            onNotificationClickedWithNoAction(context, str, str2, str3);
        } else {
            onNotificationOpened(context, str, str2, str3);
        }
    }

    public abstract void onNotificationReceivedInApp(Context context, String str, String str2, Map<String, String> map, int i, String str3, String str4);

    @Override // com.huawei.hem.InterfaceC1093l0
    public void onNotificationReceivedWithoutShow(Context context, String str, String str2, Map<String, String> map, int i, String str3, String str4) {
        onNotificationReceivedInApp(context, str, str2, map, i, str3, str4);
    }

    public abstract void onNotificationRemoved(Context context, String str);

    @Override // com.huawei.hem.InterfaceC1093l0
    public void onNotificationRemoved(Context context, String str, String str2, String str3, int i, String str4) {
        onNotificationRemoved(context, str4);
    }

    @Override // com.huawei.hem.InterfaceC1093l0
    public void onNotificationShow(Context context, String str, String str2, Map<String, String> map) {
        onNotification(context, str, str2, map);
    }

    @Override // com.huawei.hem.InterfaceC1119m0
    public boolean showNotificationNow(Context context, Map<String, String> map) {
        return AliyunNotificationPresenter.m948a(map) || !PushNotificationPlatform.m954a(context);
    }
}
