package com.huawei.hem;

import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.alibaba.sdk.android.logger.ILog;
import com.taobao.accs.utl.ALog;
import org.android.agoo.common.AgooConstants;

/* compiled from: Taobao */
/* renamed from: com.huawei.hem.t0 */
/* loaded from: classes.dex */
public final class AgooNotificationLauncher {

    /* renamed from: a */
    public final /* synthetic */ AgooNotificationData f3738a;

    /* renamed from: b */
    public final /* synthetic */ AgooNotificationIntentFactory f3739b;

    /* renamed from: c */
    public final /* synthetic */ Context f3740c;

    /* renamed from: d */
    public final /* synthetic */ AgooMessageCallbacks f3741d;

    public AgooNotificationLauncher(AgooNotificationData c1419y0, AgooNotificationIntentFactory c0839b1, Context context, AgooMessageCallbacks interfaceC1093l0) {
        this.f3738a = c1419y0;
        this.f3739b = c0839b1;
        this.f3740c = context;
        this.f3741d = interfaceC1093l0;
    }

    /* renamed from: a */
    public void m2711a(Notification notification) {
        AgooRegistrationListeners c1169o0;
        int i;
        ILog iLog = AgooRegistrationPreferences.f3910a;
        StringBuilder sbM1765j = CompilerOutline.m1765j("push created notification");
        sbM1765j.append(this.f3738a.f4107d);
        iLog.mo664d(sbM1765j.toString());
        AgooNotificationIntentFactory c0839b1 = this.f3739b;
        Context context = this.f3740c;
        AgooNotificationData c1419y0 = this.f3738a;
        if (c0839b1 == null) {
            throw null;
        }
        try {
            c0839b1.f2267a = (NotificationManager) context.getSystemService("notification");
            String str = "";
            if (notification == null) {
                AgooNotificationBuilder c1369w0 = new AgooNotificationBuilder();
                c1369w0.f4253a = c1419y0.f4107d;
                c1369w0.f4254b = c1419y0.f4108e;
                c1369w0.f4255c = c1419y0.f4114k;
                c1369w0.f4256d = c1419y0.f4111h;
                notification = c1369w0.m2897a(context);
                if (notification == null) {
                    notification = new Notification(R.drawable.stat_notify_chat, "", System.currentTimeMillis());
                }
            }
            Intent intent = new Intent();
            intent.putExtra("appId", c1419y0.f4106c);
            intent.putExtra("msgId", c1419y0.f4105b);
            intent.putExtra(AgooConstants.MESSAGE_TASK_ID, c1419y0.f4115l);
            intent.putExtra(AgooConstants.MESSAGE_EXT, c1419y0.f4116m);
            intent.putExtra(AgooConstants.MESSAGE_SOURCE, c1419y0.f4117n);
            intent.setFlags(270532608);
            try {
                int i2 = c1419y0.f4112i;
                if (i2 == 1) {
                    str = "app";
                    intent = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
                } else if (i2 == 2) {
                    str = "activity";
                    try {
                        intent.setClass(context, Class.forName(c1419y0.f4110g));
                    } catch (Throwable th) {
                        ALog.m5727e("MPS:MessageNotification", "can't find certain activity class: ", th, new Object[0]);
                    }
                } else if (i2 == 3) {
                    str = AgooConstants.OPEN_URL;
                    intent.setAction("android.intent.action.VIEW");
                    intent.setData(Uri.parse(c1419y0.f4109f));
                } else if (i2 == 4) {
                    str = "no action";
                }
                ALog.m5729i("MPS:MessageNotification", "open type:" + str, new Object[0]);
            } catch (Throwable th2) {
                ALog.m5727e("MPS:MessageNotification", "openType excption", th2, new Object[0]);
            }
            notification.contentIntent = c0839b1.m1384b(context, c1419y0, intent, AgooRegistrationPreferences.m2853b());
            notification.deleteIntent = c0839b1.m1383a(context, c1419y0, AgooRegistrationPreferences.m2853b());
            try {
                ALog.m5729i("MPS:MessageNotification", "messageId=" + c1419y0.f4105b + ";appId=" + c1419y0.f4106c + ";messageType=notify", null, 1);
            } catch (Throwable th3) {
                ALog.m5727e("MPS:MessageNotification", "ut log error", th3, new Object[0]);
            }
            if (AgooRegistrationListeners.f3364a == null) {
                AgooRegistrationListeners.f3364a = new AgooRegistrationListeners();
            }
            c1169o0 = AgooRegistrationListeners.f3364a;
            i = c1419y0.f4113j;
        } catch (Throwable th4) {
            AgooRegistrationPreferences.f3910a.mo667e("onNotification", th4);
        }
        if (c1169o0 == null) {
            throw null;
        }
        AgooRegistrationListeners.f3365b.add(Integer.valueOf(i));
        c0839b1.f2267a.notify(c1419y0.f4113j, notification);
        AgooRegistrationPreferences.f3910a.mo664d("push notify notification");
        ILog iLog2 = AgooRegistrationPreferences.f3910a;
        StringBuilder sbM1765j2 = CompilerOutline.m1765j("push onNotificationShow ");
        sbM1765j2.append(this.f3738a.f4107d);
        iLog2.mo664d(sbM1765j2.toString());
        AgooMessageCallbacks interfaceC1093l0 = this.f3741d;
        Context context2 = this.f3740c;
        AgooNotificationData c1419y02 = this.f3738a;
        interfaceC1093l0.onNotificationShow(context2, c1419y02.f4107d, c1419y02.f4108e, c1419y02.f4104a);
    }
}
