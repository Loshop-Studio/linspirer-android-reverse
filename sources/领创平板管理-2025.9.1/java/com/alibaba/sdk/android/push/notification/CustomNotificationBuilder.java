package com.alibaba.sdk.android.push.notification;

import android.R;
import android.app.Notification;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.alibaba.sdk.android.ams.common.p007a.C0494a;
import com.alibaba.sdk.android.push.common.p018a.C0558b;
import com.alibaba.sdk.android.push.p024f.C0574a;
import com.google.zxing.qrcode.encoder.Encoder;
import com.huawei.hem.CompilerOutline;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OptionalDataException;
import java.io.StreamCorruptedException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class CustomNotificationBuilder {
    public static final String NOTIFICATION_ICON_RES_TYPE = "drawable";
    public static final String NOTIFICATION_LARGE_ICON_FILE = "alicloud_notification_largeicon";
    public static final String NOTIFICATION_SMALL_ICON_FILE = "alicloud_notification_smallicon";

    /* renamed from: a */
    public static AmsLogger f1296a = AmsLogger.getLogger("MPS:CustomNotificationBuilder");

    /* renamed from: c */
    public static CustomNotificationBuilder f1297c = null;

    /* renamed from: b */
    public Map<String, Object> f1298b;

    public CustomNotificationBuilder() {
        this.f1298b = null;
        if (0 == 0) {
            this.f1298b = new HashMap();
        }
    }

    /* renamed from: a */
    private int m875a(Context context, C0587b c0587b) {
        int iM901f = c0587b.m901f();
        if (iM901f != 0) {
            return iM901f;
        }
        int iM754c = C0558b.m754c() != 0 ? C0558b.m754c() : context.getResources().getIdentifier(NOTIFICATION_SMALL_ICON_FILE, NOTIFICATION_ICON_RES_TYPE, context.getPackageName());
        int i = R.drawable.stat_notify_chat;
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.icon;
        } catch (PackageManager.NameNotFoundException e) {
            f1296a.m502e("Get system icon error, package name not found, ", e);
        }
        return iM754c == 0 ? i : iM754c;
    }

    /* renamed from: a */
    private Bitmap m876a(Drawable drawable) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0145  */
    /* JADX WARN: Type inference failed for: r0v12, types: [android.app.Notification$Style] */
    /* JADX WARN: Type inference failed for: r0v14, types: [android.app.Notification$BigTextStyle] */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.app.Notification$InboxStyle] */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.app.Notification$BigPictureStyle] */
    /* JADX WARN: Type inference failed for: r15v0, types: [com.alibaba.sdk.android.push.notification.NotificationConfigure] */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.app.Notification$Builder] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.app.Notification m877b(android.content.Context r12, com.alibaba.sdk.android.push.notification.C0587b r13, com.alibaba.sdk.android.push.notification.PushData r14, com.alibaba.sdk.android.push.notification.NotificationConfigure r15) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.push.notification.CustomNotificationBuilder.m877b(android.content.Context, com.alibaba.sdk.android.push.notification.b, com.alibaba.sdk.android.push.notification.PushData, com.alibaba.sdk.android.push.notification.NotificationConfigure):android.app.Notification");
    }

    /* renamed from: b */
    private Bitmap m878b(Context context, C0587b c0587b) {
        Bitmap bitmapM790a = !TextUtils.isEmpty(c0587b.m925r()) ? C0574a.m790a(context, c0587b.m925r()) : null;
        if (bitmapM790a == null) {
            if (C0558b.m753b() != null) {
                bitmapM790a = C0558b.m753b();
            } else {
                int identifier = context.getResources().getIdentifier(NOTIFICATION_LARGE_ICON_FILE, NOTIFICATION_ICON_RES_TYPE, context.getPackageName());
                if (identifier != 0) {
                    bitmapM790a = m876a(context.getResources().getDrawable(identifier));
                }
            }
        }
        if (bitmapM790a != null) {
            return bitmapM790a;
        }
        int i = R.drawable.stat_notify_chat;
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.icon;
        } catch (PackageManager.NameNotFoundException e) {
            f1296a.m502e("Get system icon error, package name not found, ", e);
        }
        return m876a(context.getResources().getDrawable(i));
    }

    /* renamed from: c */
    private Notification m879c(Context context, C0587b c0587b, PushData pushData, NotificationConfigure notificationConfigure) {
        int iM916k;
        int iM921n;
        Uri uri;
        String strM884a = c0587b.m884a();
        f1296a.m498d("building advanced custom notification");
        if (c0587b.m913j() == 0) {
            return null;
        }
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), c0587b.m913j());
        remoteViews.setTextViewText(c0587b.m919l(), c0587b.m889b());
        remoteViews.setTextViewText(c0587b.m920m(), c0587b.m892c());
        if (c0587b.m921n() != 0) {
            iM916k = c0587b.m916k();
            iM921n = c0587b.m921n();
        } else {
            iM916k = c0587b.m916k();
            iM921n = R.drawable.stat_notify_chat;
        }
        remoteViews.setImageViewResource(iM916k, iM921n);
        Notification.Builder builder = new Notification.Builder(context);
        builder.setContent(remoteViews).setPriority(c0587b.m923p()).setSmallIcon(m875a(context, c0587b)).setTicker("").setWhen(System.currentTimeMillis());
        builder.setShowWhen(true);
        if (Build.VERSION.SDK_INT >= 26 && !TextUtils.isEmpty(c0587b.m924q())) {
            builder.setChannelId(c0587b.m924q());
        }
        if (C0590e.m955b()) {
            builder.setGroupSummary(true);
            builder.setGroup("group" + C0590e.m952a());
        } else {
            builder.setGroupSummary(false);
            builder.setGroup("group");
        }
        if (!TextUtils.isEmpty(strM884a)) {
            if (strM884a.startsWith("android.resource://")) {
                uri = Uri.parse(strM884a);
            } else {
                boolean zStartsWith = strM884a.startsWith("/raw/");
                StringBuilder sbM1765j = CompilerOutline.m1765j("android.resource://");
                sbM1765j.append(context.getPackageName());
                if (!zStartsWith) {
                    sbM1765j.append("/raw/");
                }
                sbM1765j.append(strM884a);
                uri = Uri.parse(sbM1765j.toString());
            }
            builder.setSound(uri);
        }
        if (notificationConfigure != null) {
            notificationConfigure.configBuilder(builder, pushData);
        }
        return builder.build();
    }

    public static CustomNotificationBuilder getInstance() {
        if (f1297c == null) {
            f1297c = new CustomNotificationBuilder();
        }
        return f1297c;
    }

    /* renamed from: a */
    public Notification m880a(Context context, C0587b c0587b, PushData pushData, NotificationConfigure notificationConfigure) {
        if (2 == c0587b.m904g()) {
            return m877b(context, c0587b, pushData, notificationConfigure);
        }
        if (3 == c0587b.m904g()) {
            return m879c(context, c0587b, pushData, notificationConfigure);
        }
        return null;
    }

    /* renamed from: a */
    public BasicCustomPushNotification m881a(int i) {
        if (this.f1298b.containsKey(BasicCustomPushNotification.CUSTOM_NOTIFICATION_TAG + i)) {
            f1296a.m498d("find custom notification from cache");
            return (BasicCustomPushNotification) this.f1298b.get(BasicCustomPushNotification.CUSTOM_NOTIFICATION_TAG + i);
        }
        f1296a.m498d("do not find custom notification from cache, find it from SharedPreferences");
        BasicCustomPushNotification basicCustomPushNotification = null;
        String string = C0494a.m474f().getString(BasicCustomPushNotification.CUSTOM_NOTIFICATION_TAG + i, null);
        try {
            if (string == null) {
                f1296a.m501e("no corresponding custom notificaiton");
                return null;
            }
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(URLDecoder.decode(string, "UTF-8").getBytes(Encoder.DEFAULT_BYTE_MODE_ENCODING));
                ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                BasicCustomPushNotification basicCustomPushNotification2 = (BasicCustomPushNotification) objectInputStream.readObject();
                try {
                    objectInputStream.close();
                    byteArrayInputStream.close();
                    f1296a.m498d(basicCustomPushNotification2.toString());
                    this.f1298b.put(BasicCustomPushNotification.CUSTOM_NOTIFICATION_TAG + i, basicCustomPushNotification2);
                    return basicCustomPushNotification2;
                } catch (OptionalDataException e) {
                    e = e;
                    basicCustomPushNotification = basicCustomPushNotification2;
                    f1296a.m502e("get custom notification failed", e);
                    f1296a.m498d(basicCustomPushNotification.toString());
                    this.f1298b.put(BasicCustomPushNotification.CUSTOM_NOTIFICATION_TAG + i, basicCustomPushNotification);
                    return basicCustomPushNotification;
                } catch (StreamCorruptedException e2) {
                    e = e2;
                    basicCustomPushNotification = basicCustomPushNotification2;
                    f1296a.m502e("get custom notification failed", e);
                    f1296a.m498d(basicCustomPushNotification.toString());
                    this.f1298b.put(BasicCustomPushNotification.CUSTOM_NOTIFICATION_TAG + i, basicCustomPushNotification);
                    return basicCustomPushNotification;
                } catch (UnsupportedEncodingException e3) {
                    e = e3;
                    basicCustomPushNotification = basicCustomPushNotification2;
                    f1296a.m502e("get custom notification failed", e);
                    f1296a.m498d(basicCustomPushNotification.toString());
                    this.f1298b.put(BasicCustomPushNotification.CUSTOM_NOTIFICATION_TAG + i, basicCustomPushNotification);
                    return basicCustomPushNotification;
                } catch (IOException e4) {
                    e = e4;
                    basicCustomPushNotification = basicCustomPushNotification2;
                    f1296a.m502e("get custom notification failed", e);
                    f1296a.m498d(basicCustomPushNotification.toString());
                    this.f1298b.put(BasicCustomPushNotification.CUSTOM_NOTIFICATION_TAG + i, basicCustomPushNotification);
                    return basicCustomPushNotification;
                } catch (ClassNotFoundException e5) {
                    e = e5;
                    basicCustomPushNotification = basicCustomPushNotification2;
                    f1296a.m502e("get custom notification failed", e);
                    f1296a.m498d(basicCustomPushNotification.toString());
                    this.f1298b.put(BasicCustomPushNotification.CUSTOM_NOTIFICATION_TAG + i, basicCustomPushNotification);
                    return basicCustomPushNotification;
                } catch (Throwable unused) {
                    basicCustomPushNotification = basicCustomPushNotification2;
                    f1296a.m498d(basicCustomPushNotification.toString());
                    this.f1298b.put(BasicCustomPushNotification.CUSTOM_NOTIFICATION_TAG + i, basicCustomPushNotification);
                    return basicCustomPushNotification;
                }
            } catch (OptionalDataException e6) {
                e = e6;
            } catch (StreamCorruptedException e7) {
                e = e7;
            } catch (UnsupportedEncodingException e8) {
                e = e8;
            } catch (IOException e9) {
                e = e9;
            } catch (ClassNotFoundException e10) {
                e = e10;
            }
        } catch (Throwable unused2) {
        }
    }

    public boolean setCustomNotification(int i, BasicCustomPushNotification basicCustomPushNotification) throws IOException {
        AmsLogger amsLogger;
        String str;
        boolean z = false;
        if (i <= 0) {
            amsLogger = f1296a;
            str = "custom notification id must be an integer greater than 0";
        } else {
            if (basicCustomPushNotification != null) {
                SharedPreferences sharedPreferencesM474f = C0494a.m474f();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                    objectOutputStream.writeObject(basicCustomPushNotification);
                    String strEncode = URLEncoder.encode(byteArrayOutputStream.toString(Encoder.DEFAULT_BYTE_MODE_ENCODING), "UTF-8");
                    objectOutputStream.close();
                    byteArrayOutputStream.close();
                    SharedPreferences.Editor editorEdit = sharedPreferencesM474f.edit();
                    editorEdit.putString(BasicCustomPushNotification.CUSTOM_NOTIFICATION_TAG + i, strEncode);
                    editorEdit.commit();
                    z = true;
                } catch (IOException e) {
                    f1296a.m502e("get custom notification failed", e);
                }
                if (z) {
                    if (this.f1298b.containsKey(BasicCustomPushNotification.CUSTOM_NOTIFICATION_TAG + i)) {
                        this.f1298b.remove(BasicCustomPushNotification.CUSTOM_NOTIFICATION_TAG + i);
                    }
                    f1296a.m498d("save the notification to cache");
                    this.f1298b.put(BasicCustomPushNotification.CUSTOM_NOTIFICATION_TAG + i, basicCustomPushNotification);
                }
                return z;
            }
            amsLogger = f1296a;
            str = "notification cannot be null";
        }
        amsLogger.m501e(str);
        return false;
    }
}
