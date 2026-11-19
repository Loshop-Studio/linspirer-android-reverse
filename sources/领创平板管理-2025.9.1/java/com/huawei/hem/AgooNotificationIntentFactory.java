package com.huawei.hem;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.v4.app.FrameMetricsAggregator;
import android.text.TextUtils;
import com.aliyun.ams.emas.push.AgooMessageReceiver;
import com.aliyun.ams.emas.push.MsgService;
import com.aliyun.ams.emas.push.NotificationActivity;
import com.aliyun.ams.emas.push.notification.CPushMessage;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.JsonUtility;
import java.util.Map;
import java.util.Random;
import org.android.agoo.common.AgooConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Taobao */
/* renamed from: com.huawei.hem.b1 */
/* loaded from: classes.dex */
public class AgooNotificationIntentFactory {

    /* renamed from: a */
    public NotificationManager f2267a;

    /* renamed from: a */
    public final PendingIntent m1383a(Context context, AgooNotificationData c1419y0, int i) {
        Intent intent = new Intent();
        intent.setClassName(context.getPackageName(), MsgService.class.getName());
        intent.setAction(AgooRegistrationPreferences.f3911b);
        intent.putExtra(AgooConstants.ACTION_TYPE, AgooConstants.NOTIFICATION_TYPE_DELETE);
        intent.putExtra(AgooConstants.MESSAGE_TASK_ID, c1419y0.f4115l);
        intent.putExtra(AgooConstants.MESSAGE_EXT, c1419y0.f4116m);
        intent.putExtra("msgId", c1419y0.f4105b);
        intent.putExtra("title", c1419y0.f4107d);
        intent.putExtra(AgooMessageReceiver.SUMMARY, c1419y0.f4108e);
        intent.putExtra(AgooMessageReceiver.NOTIFICATION_OPEN_TYPE, c1419y0.f4112i);
        intent.putExtra(AgooMessageReceiver.NOTIFICATION_ID, c1419y0.f4113j);
        if (c1419y0.f4104a != null) {
            intent.putExtra(AgooMessageReceiver.EXTRA_MAP, new JSONObject(c1419y0.f4104a).toString());
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("delete content messageId:");
        sbM1765j.append(c1419y0.f4105b);
        ALog.m5726d("MPS:MessageNotification", sbM1765j.toString(), new Object[0]);
        intent.putExtra("appId", c1419y0.f4106c);
        return PendingIntent.getService(context, i, intent, 201326592);
    }

    /* renamed from: b */
    public final PendingIntent m1384b(Context context, AgooNotificationData c1419y0, Intent intent, int i) {
        Intent intent2 = new Intent();
        if (Build.VERSION.SDK_INT > 30 || context.getApplicationInfo().targetSdkVersion > 30) {
            intent2.setClassName(context.getPackageName(), NotificationActivity.class.getName());
        } else {
            intent2.setClassName(context.getPackageName(), MsgService.class.getName());
        }
        intent2.setAction(AgooRegistrationPreferences.f3911b);
        intent2.putExtra(AgooConstants.ACTION_TYPE, AgooConstants.NOTIFICATION_TYPE_OPEN);
        intent2.putExtra(AgooConstants.MESSAGE_TASK_ID, c1419y0.f4115l);
        intent2.putExtra(AgooConstants.MESSAGE_EXT, c1419y0.f4116m);
        intent.putExtra("title", c1419y0.f4107d);
        intent.putExtra(AgooMessageReceiver.SUMMARY, c1419y0.f4108e);
        intent.putExtra("msgId", c1419y0.f4105b);
        intent.putExtra("appId", c1419y0.f4106c);
        intent.putExtra(AgooMessageReceiver.NOTIFICATION_OPEN_TYPE, c1419y0.f4112i);
        intent.putExtra(AgooMessageReceiver.NOTIFICATION_ID, c1419y0.f4113j);
        intent2.putExtra("msgId", c1419y0.f4105b);
        if (c1419y0.f4104a != null) {
            intent.putExtra(AgooMessageReceiver.EXTRA_MAP, new JSONObject(c1419y0.f4104a).toString());
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("build content messageId:");
        sbM1765j.append(c1419y0.f4105b);
        ALog.m5726d("MPS:MessageNotification", sbM1765j.toString(), new Object[0]);
        intent2.putExtra(AgooConstants.KEY_REAL_INTENT, intent);
        return (Build.VERSION.SDK_INT > 30 || context.getApplicationInfo().targetSdkVersion > 30) ? PendingIntent.getActivity(context, i, intent2, 201326592) : PendingIntent.getService(context, i, intent2, 201326592);
    }

    /* renamed from: c */
    public CPushMessage m1385c(Map<String, String> map, String str, String str2) {
        String str3 = map.get("title");
        String str4 = map.get("content");
        String str5 = map.get(AgooConstants.MESSAGE_EXT);
        if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("Message title or content is empty:");
            sbM1765j.append(map.toString());
            ALog.m5728e("MPS:MessageNotification", sbM1765j.toString(), new Object[0]);
            return null;
        }
        CPushMessage cPushMessage = new CPushMessage();
        cPushMessage.f1447a = str2;
        cPushMessage.f1448b = str;
        cPushMessage.f1449c = str3;
        cPushMessage.f1450d = str4;
        cPushMessage.f1451e = str5;
        return cPushMessage;
    }

    /* renamed from: d */
    public AgooNotificationData m1386d(Map<String, String> map, String str, String str2) throws NumberFormatException {
        String str3;
        int i;
        int i2;
        String str4 = map.get("title");
        String str5 = map.get("content");
        if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str5)) {
            ALog.m5728e("MPS:MessageNotification", "title or content of notify is empty: " + map, new Object[0]);
            return null;
        }
        AgooNotificationData c1419y0 = new AgooNotificationData();
        String strValueOf = map.get("open");
        if (TextUtils.isEmpty(strValueOf)) {
            strValueOf = String.valueOf(1);
        }
        String str6 = map.get(AgooConstants.OPEN_URL);
        String str7 = map.get("activity");
        String str8 = map.get("ext");
        String str9 = map.get(AgooConstants.MESSAGE_TASK_ID);
        String str10 = map.get(AgooConstants.MESSAGE_EXT);
        String str11 = map.get("notification_channel");
        String str12 = map.get("notify_id");
        if (TextUtils.isEmpty(str12)) {
            if (AgooRegistrationPreferences.f3916g == 0) {
                if (AgooRegistrationPreferences.f3917h == null) {
                    str3 = strValueOf;
                    AgooRegistrationPreferences.f3917h = new Random(System.currentTimeMillis());
                } else {
                    str3 = strValueOf;
                }
                int iNextInt = AgooRegistrationPreferences.f3917h.nextInt(FrameMetricsAggregator.FrameMetricsApi24Impl.NANOS_PER_MS);
                AgooRegistrationPreferences.f3916g = iNextInt;
                if (iNextInt < 0) {
                    AgooRegistrationPreferences.f3916g = iNextInt * (-1);
                }
            } else {
                str3 = strValueOf;
            }
            i = AgooRegistrationPreferences.f3916g;
            AgooRegistrationPreferences.f3916g = i + 1;
        } else {
            i = Integer.parseInt(str12);
            str3 = strValueOf;
        }
        c1419y0.f4106c = str;
        c1419y0.f4105b = str2;
        c1419y0.f4115l = str9;
        c1419y0.f4116m = str10;
        c1419y0.f4117n = map.get(AgooConstants.MESSAGE_SOURCE);
        c1419y0.f4107d = str4;
        c1419y0.f4108e = str5;
        c1419y0.f4112i = Integer.parseInt(str3);
        if (TextUtils.isEmpty(str6)) {
            str6 = null;
        }
        c1419y0.f4109f = str6;
        if (TextUtils.isEmpty(str7)) {
            str7 = null;
        }
        c1419y0.f4110g = str7;
        if (i < 0) {
            c1419y0.f4113j = i * (-1);
        } else {
            c1419y0.f4113j = i;
        }
        c1419y0.f4111h = str11;
        if (!TextUtils.isEmpty(str8)) {
            try {
                Map<String, String> map2 = JsonUtility.toMap(new JSONObject(str8));
                map2.put("_ALIYUN_NOTIFICATION_ID_", String.valueOf(c1419y0.f4113j));
                if (map2.containsKey("_ALIYUN_NOTIFICATION_PRIORITY_")) {
                    c1419y0.m2953a(map2.get("_ALIYUN_NOTIFICATION_PRIORITY_"));
                } else {
                    try {
                        c1419y0.m2953a(String.valueOf(0));
                    } catch (JSONException e) {
                        e = e;
                        i2 = 0;
                        ALog.m5727e("MPS:MessageNotification", "Parse inner json(ext) error:", e, new Object[i2]);
                        return c1419y0;
                    }
                }
                map2.put(AgooConstants.MESSAGE_BODY_MSG_ID_ALIYUN_FLAG, map.get(AgooConstants.MESSAGE_BODY_MSG_ID_ALIYUN_FLAG));
                c1419y0.f4104a = map2;
            } catch (JSONException e2) {
                e = e2;
                i2 = 0;
            }
        }
        return c1419y0;
    }
}
