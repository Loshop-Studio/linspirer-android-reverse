package com.huawei.hem;

import android.content.Context;
import com.aliyun.ams.emas.push.notification.CPushMessage;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: com.huawei.hem.l0 */
/* loaded from: classes.dex */
public interface InterfaceC1093l0 {
    void onMessageArrived(Context context, CPushMessage cPushMessage);

    void onNotificationOpened(Context context, String str, String str2, String str3, int i);

    void onNotificationReceivedWithoutShow(Context context, String str, String str2, Map<String, String> map, int i, String str3, String str4);

    void onNotificationRemoved(Context context, String str, String str2, String str3, int i, String str4);

    void onNotificationShow(Context context, String str, String str2, Map<String, String> map);
}
