package com.alibaba.sdk.android.push.notification;

import android.R;
import android.app.Notification;
import android.content.Context;
import android.media.RingtoneManager;
import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.alibaba.sdk.android.ams.common.util.StringUtil;
import com.alibaba.sdk.android.push.common.p018a.C0558b;
import com.alibaba.sdk.android.push.common.util.JSONUtils;
import com.huawei.hem.C0948f6;
import com.huawei.hms.framework.network.grs.GrsManager;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.alibaba.sdk.android.push.notification.d */
/* loaded from: classes.dex */
public class C0589d {

    /* renamed from: a */
    public static AmsLogger f1338a = AmsLogger.getLogger("MPS:MessageNotification");

    /* renamed from: a */
    private Uri m946a(Context context, C0587b c0587b) {
        String string;
        Uri uri;
        Uri defaultUri = Uri.EMPTY;
        if (!TextUtils.isEmpty(c0587b.m884a())) {
            String strM884a = c0587b.m884a();
            if (strM884a.startsWith("android.resource://")) {
                uri = Uri.parse(strM884a);
            } else {
                if (strM884a.startsWith("/raw/")) {
                    StringBuilder sbM1765j = C0948f6.m1765j("android.resource://");
                    sbM1765j.append(context.getPackageName());
                    sbM1765j.append(strM884a);
                    string = sbM1765j.toString();
                } else {
                    StringBuilder sbM1765j2 = C0948f6.m1765j("android.resource://");
                    sbM1765j2.append(context.getPackageName());
                    sbM1765j2.append("/raw/");
                    sbM1765j2.append(strM884a);
                    string = sbM1765j2.toString();
                }
                uri = Uri.parse(string);
            }
            defaultUri = uri;
        } else if (C0558b.m752a() != null) {
            defaultUri = Uri.parse(C0558b.m752a());
        } else {
            int identifier = context.getResources().getIdentifier("alicloud_notification_sound", "raw", context.getPackageName());
            f1338a.m498d("sound resId:" + identifier);
            if (identifier != 0) {
                StringBuilder sbM1765j3 = C0948f6.m1765j("android.resource://");
                sbM1765j3.append(context.getPackageName());
                sbM1765j3.append(GrsManager.SEPARATOR);
                sbM1765j3.append(identifier);
                defaultUri = Uri.parse(sbM1765j3.toString());
                AmsLogger amsLogger = f1338a;
                StringBuilder sbM1766k = C0948f6.m1766k("sound resId:", identifier, "  ;uri:");
                sbM1766k.append(defaultUri.toString());
                amsLogger.m498d(sbM1766k.toString());
            }
        }
        if (defaultUri == Uri.EMPTY) {
            defaultUri = RingtoneManager.getDefaultUri(2);
        }
        AmsLogger amsLogger2 = f1338a;
        StringBuilder sbM1765j4 = C0948f6.m1765j("soundUri:");
        sbM1765j4.append(defaultUri.toString());
        amsLogger2.m498d(sbM1765j4.toString());
        return defaultUri;
    }

    /* renamed from: a */
    private void m947a(Context context, C0587b c0587b, Notification notification) {
        String string;
        String string2;
        Uri uri;
        long[] jArr = {100, 250, 100, 250, 100, 250};
        int iM895d = c0587b.m895d();
        if (iM895d == 1) {
            notification.vibrate = jArr;
            return;
        }
        if (iM895d != 2) {
            if (iM895d != 3) {
                return;
            } else {
                notification.vibrate = jArr;
            }
        }
        Uri defaultUri = Uri.EMPTY;
        if (TextUtils.isEmpty(c0587b.m884a())) {
            if (C0558b.m752a() != null) {
                string = C0558b.m752a();
            } else {
                int identifier = context.getResources().getIdentifier("alicloud_notification_sound", "raw", context.getPackageName());
                if (identifier != 0) {
                    StringBuilder sbM1765j = C0948f6.m1765j("android.resource://");
                    sbM1765j.append(context.getPackageName());
                    sbM1765j.append(GrsManager.SEPARATOR);
                    sbM1765j.append(identifier);
                    string = sbM1765j.toString();
                }
            }
            defaultUri = Uri.parse(string);
        } else {
            String strM884a = c0587b.m884a();
            if (strM884a.startsWith("android.resource://")) {
                uri = Uri.parse(strM884a);
            } else {
                if (strM884a.startsWith("/raw/")) {
                    StringBuilder sbM1765j2 = C0948f6.m1765j("android.resource://");
                    sbM1765j2.append(context.getPackageName());
                    sbM1765j2.append(strM884a);
                    string2 = sbM1765j2.toString();
                } else {
                    StringBuilder sbM1765j3 = C0948f6.m1765j("android.resource://");
                    sbM1765j3.append(context.getPackageName());
                    sbM1765j3.append("/raw/");
                    sbM1765j3.append(strM884a);
                    string2 = sbM1765j3.toString();
                }
                uri = Uri.parse(string2);
            }
            defaultUri = uri;
        }
        if (defaultUri == Uri.EMPTY) {
            defaultUri = RingtoneManager.getDefaultUri(2);
        }
        notification.sound = defaultUri;
    }

    /* renamed from: a */
    public static boolean m948a(Map<String, String> map) {
        int i;
        BasicCustomPushNotification basicCustomPushNotificationM881a;
        if (!map.containsKey(PushData.KEY_CUSTOM_NOTIFICAITON_ID) || (i = Integer.parseInt(map.get(PushData.KEY_CUSTOM_NOTIFICAITON_ID))) == 0 || (basicCustomPushNotificationM881a = CustomNotificationBuilder.getInstance().m881a(i)) == null) {
            return true;
        }
        return basicCustomPushNotificationM881a.isBuildWhenAppInForeground();
    }

    /* renamed from: b */
    private void m949b(Context context, C0587b c0587b, Notification notification) {
        f1338a.m498d("custom notification feedback");
        long[] jArr = {100, 250, 100, 250, 100, 250};
        if (c0587b.m910i() == 0) {
            return;
        }
        if (2 == c0587b.m910i()) {
            notification.sound = m946a(context, c0587b);
            return;
        }
        if (1 != c0587b.m910i()) {
            if (3 != c0587b.m910i()) {
                notification.defaults = -1;
                return;
            }
            notification.sound = m946a(context, c0587b);
        }
        notification.vibrate = jArr;
    }

    /* renamed from: a */
    public Notification m950a(Context context, C0587b c0587b, PushData pushData, NotificationConfigure notificationConfigure) {
        Notification notificationMo883a;
        try {
            C0586a c0586a = new C0586a();
            c0586a.m933a(c0587b.m889b());
            c0586a.m936b(c0587b.m892c());
            c0586a.m932a(c0587b.m923p());
            c0586a.m938c(c0587b.m924q());
            c0586a.m940d(c0587b.m925r());
            c0586a.m935b(c0587b.m926s());
            c0586a.m941e(c0587b.m927t());
            c0586a.m942f(c0587b.m928u());
            c0586a.m943g(c0587b.m929v());
            c0586a.m944h(c0587b.m930w());
            c0586a.m945i(c0587b.m884a());
            if (1 != c0587b.m904g()) {
                f1338a.m498d("building customNotification");
                notificationMo883a = CustomNotificationBuilder.getInstance().m880a(context, c0587b, pushData, notificationConfigure);
                if (notificationMo883a == null) {
                    f1338a.m501e("build custom notification failed, build default notification");
                    notificationMo883a = c0586a.mo883a(context, pushData, notificationConfigure);
                }
            } else {
                notificationMo883a = c0586a.mo883a(context, pushData, notificationConfigure);
            }
            if (notificationMo883a == null) {
                notificationMo883a = new Notification(R.drawable.stat_notify_chat, "", System.currentTimeMillis());
            }
            if (1 == c0587b.m904g() || c0587b.m922o()) {
                m947a(context, c0587b, notificationMo883a);
                if (c0587b.m900e()) {
                    notificationMo883a.flags |= 32;
                } else {
                    notificationMo883a.flags |= 16;
                }
            } else {
                f1338a.m498d("custom notification option first");
                m949b(context, c0587b, notificationMo883a);
                notificationMo883a.flags = c0587b.m907h();
            }
            if (notificationConfigure != null) {
                notificationConfigure.configNotification(notificationMo883a, pushData);
            }
            return notificationMo883a;
        } catch (Throwable th) {
            f1338a.m502e("onNotification", th);
            return null;
        }
    }

    /* renamed from: a */
    public C0587b m951a(Context context, Map<String, String> map) throws NumberFormatException {
        String str = map.get("title");
        String str2 = map.get("content");
        if (StringUtil.isEmpty(str) || StringUtil.isEmpty(str2)) {
            f1338a.m501e("title or content of notify is empty: " + map);
            return null;
        }
        C0587b c0587b = new C0587b();
        String strValueOf = map.get("remind");
        if (StringUtil.isEmpty(strValueOf)) {
            strValueOf = String.valueOf(3);
        }
        String str3 = map.get("music");
        String str4 = map.get("ext");
        String str5 = map.get("notification_channel");
        String str6 = map.get("style");
        String str7 = map.get("title");
        String str8 = map.get("big_body");
        String str9 = map.get("big_picture");
        String str10 = map.get("inbox_content");
        c0587b.m891b(str);
        c0587b.m897d(str2);
        c0587b.m894c(str2);
        c0587b.m885a(Integer.parseInt(strValueOf));
        c0587b.m903f(str5);
        c0587b.m906g(map.get("image"));
        if (!TextUtils.isEmpty(str6)) {
            try {
                c0587b.m917k(Integer.parseInt(str6));
            } catch (Throwable unused) {
            }
        }
        c0587b.m909h(str7);
        c0587b.m912i(str8);
        c0587b.m915j(str9);
        c0587b.m918k(str10);
        c0587b.m886a(StringUtil.isEmpty(str3) ? null : str3);
        if (!StringUtil.isEmpty(str4)) {
            try {
                Map<String, String> map2 = JSONUtils.toMap(new JSONObject(str4));
                c0587b.m899e(map2.containsKey("_ALIYUN_NOTIFICATION_PRIORITY_") ? map2.get("_ALIYUN_NOTIFICATION_PRIORITY_") : String.valueOf(0));
                c0587b.m887a(map2);
            } catch (JSONException e) {
                f1338a.m502e("Parse inner json(ext) error:", e);
            }
        }
        if (map.containsKey(PushData.KEY_CUSTOM_NOTIFICAITON_ID)) {
            int i = Integer.parseInt(map.get(PushData.KEY_CUSTOM_NOTIFICAITON_ID));
            if (i != 0) {
                BasicCustomPushNotification basicCustomPushNotificationM881a = CustomNotificationBuilder.getInstance().m881a(i);
                if (basicCustomPushNotificationM881a == null) {
                    f1338a.m507w("custom notification is null");
                } else {
                    c0587b.m893c(basicCustomPushNotificationM881a.getNotificationType());
                    c0587b.m890b(basicCustomPushNotificationM881a.getStatusBarDrawable());
                    c0587b.m898e(basicCustomPushNotificationM881a.getRemindType());
                    c0587b.m896d(basicCustomPushNotificationM881a.getNotificationFlags());
                    c0587b.m888a(basicCustomPushNotificationM881a.isServerOptionFirst());
                    if (3 == basicCustomPushNotificationM881a.getNotificationType()) {
                        AdvancedCustomPushNotification advancedCustomPushNotification = (AdvancedCustomPushNotification) basicCustomPushNotificationM881a;
                        c0587b.m911i(advancedCustomPushNotification.getContentView());
                        c0587b.m902f(advancedCustomPushNotification.getNotificationView());
                        c0587b.m908h(advancedCustomPushNotification.getTitleView());
                        c0587b.m905g(advancedCustomPushNotification.getIconView());
                        c0587b.m914j(advancedCustomPushNotification.getIcon());
                    }
                }
            } else {
                f1338a.m498d("default notification");
            }
        }
        return c0587b;
    }
}
