package com.taobao.accs.net;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.NotificationCompat;
import com.taobao.accs.common.Constants;
import com.taobao.accs.utl.ALog;
import java.util.Calendar;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.a */
/* loaded from: classes.dex */
public class AlarmHeartbeatManager extends AccsHeartbeatManagerBase {

    /* renamed from: c */
    public PendingIntent f6206c;

    /* renamed from: d */
    public AlarmManager f6207d;

    public AlarmHeartbeatManager(Context context) {
        super(context);
        try {
            this.f6207d = (AlarmManager) this.f6234a.getSystemService(NotificationCompat.CATEGORY_ALARM);
        } catch (Throwable th) {
            ALog.m5727e("AlarmHeartBeatMgr", "AlarmHeartBeatMgr", th, new Object[0]);
        }
    }

    @Override // com.taobao.accs.net.AbstractC1944f
    /* renamed from: a */
    public void mo5623a(int i) {
        if (this.f6207d == null) {
            this.f6207d = (AlarmManager) this.f6234a.getSystemService(NotificationCompat.CATEGORY_ALARM);
        }
        if (this.f6207d == null) {
            ALog.m5728e("AlarmHeartBeatMgr", "setInner null", new Object[0]);
            return;
        }
        if (this.f6206c == null) {
            Intent intent = new Intent();
            intent.setPackage(this.f6234a.getPackageName());
            intent.setAction(Constants.ACTION_COMMAND);
            intent.putExtra("command", 201);
            this.f6206c = PendingIntent.getBroadcast(this.f6234a, 0, intent, 67108864);
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        calendar.add(13, i);
        this.f6207d.set(0, calendar.getTimeInMillis(), this.f6206c);
    }
}
