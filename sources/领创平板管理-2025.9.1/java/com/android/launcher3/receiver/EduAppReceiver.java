package com.android.launcher3.receiver;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.android.launcher3.network.IllegalHelper;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.DeskSPF;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.AndroidImpl;
import com.huawei.hem.UserInfoUtil;
import com.taobao.accs.common.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class EduAppReceiver extends BroadcastReceiver {

    /* renamed from: b */
    public static Handler f2036b = new Handler();

    /* renamed from: a */
    public UserInfoUtil f2037a;

    /* renamed from: com.android.launcher3.receiver.EduAppReceiver$a */
    public class RunnableC0690a implements Runnable {
        public RunnableC0690a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EduAppReceiver.this.m1278f();
        }
    }

    /* renamed from: a */
    public final void m1273a(Context context, long j) {
        LTKDateUtil.m1403m("EduAppReceiver handle power off " + j);
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        Intent intent = new Intent(context, (Class<?>) PowerReceiver.class);
        intent.setAction("alarm_power_off");
        alarmManager.setAndAllowWhileIdle(0, j, PendingIntent.getBroadcast(context, 0, intent, 0));
        LTKDateUtil.m1403m("EduAppReceiver start power off alarm");
    }

    /* renamed from: b */
    public final void m1274b(Context context, int i) {
        LTKDateUtil.m1403m("EduAppReceiverhandleRotation setting rotation status " + i);
        DeskSPF c0824ac = UserInfoUtil.b.f4202a.f4130D;
        c0824ac.f2200b.putInt("rotating_status", i);
        c0824ac.f2200b.commit();
        if (i == 1) {
            ((AndroidImpl) LTKDateUtil.f2294f).m2127R0(context);
            return;
        }
        if (i == 2) {
            ((AndroidImpl) LTKDateUtil.f2294f).m2131b(context);
            ((AndroidImpl) LTKDateUtil.f2294f).m2130U0(context, 1);
        } else if (i == 3) {
            ((AndroidImpl) LTKDateUtil.f2294f).m2131b(context);
            ((AndroidImpl) LTKDateUtil.f2294f).m2130U0(context, 0);
        }
    }

    /* renamed from: c */
    public final void m1275c(String str) {
        IllegalHelper.getInstance().recordSpecialInterface(str);
    }

    /* renamed from: d */
    public final void m1276d(ArrayList<String> arrayList) {
        ArrayList<String> arrayListMo1347a0 = LTKDateUtil.f2294f.mo1347a0();
        if (!AbstractC1102l9.m2272M(arrayListMo1347a0)) {
            LTKDateUtil.f2294f.mo1349j0(arrayListMo1347a0);
        }
        if (AbstractC1102l9.m2272M(arrayList)) {
            return;
        }
        LTKDateUtil.f2294f.mo1354x(arrayList);
    }

    /* renamed from: e */
    public final void m1277e(Intent intent, UserInfoUtil c1424y5) {
        LTKDateUtil.m1403m("EduAppReceiver---showUnReadCount-----");
        Map<String, Integer> mapM3015J = c1424y5.m3015J();
        String stringExtra = intent.getStringExtra(Constants.KEY_PACKAGE_NAME);
        int intExtra = intent.getIntExtra("unread", 0);
        if (!TextUtils.isEmpty(stringExtra)) {
            HashMap map = (HashMap) mapM3015J;
            map.put(stringExtra, Integer.valueOf(intExtra));
            DeskSPF c0824ac = c1424y5.f4130D;
            if (c0824ac == null) {
                throw null;
            }
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : map.entrySet()) {
                try {
                    jSONObject.put((String) entry.getKey(), entry.getValue());
                } catch (Throwable th) {
                    CompilerOutline.m1745C(th, CompilerOutline.m1765j("putHashMapData spftool put hash error:"));
                }
            }
            jSONArray.put(jSONObject);
            c0824ac.f2200b.putString("unread_package_name", jSONArray.toString());
            c0824ac.f2200b.commit();
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (c1424y5.f4131E != jCurrentTimeMillis) {
            c1424y5.f4131E = jCurrentTimeMillis;
            DeskSPF c0824ac2 = c1424y5.f4130D;
            c0824ac2.f2200b.putLong("unread_count_time", jCurrentTimeMillis);
            c0824ac2.f2200b.commit();
        }
    }

    /* renamed from: f */
    public void m1278f() {
        LTKDateUtil.m1403m("EduAppReceiver====>unlockDevice()");
        LTKDateUtil.f2294f.enableNavigation();
        UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
        this.f2037a = c1424y5;
        if (c1424y5.m3078y() == 1) {
            LTKDateUtil.f2294f.enableSpeech();
        }
        this.f2037a.m3027V(0);
        this.f2037a.m3028W(0);
        this.f2037a.m3029X(0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:287:0x047c  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onReceive(android.content.Context r10, android.content.Intent r11) {
        /*
            Method dump skipped, instructions count: 3706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.receiver.EduAppReceiver.onReceive(android.content.Context, android.content.Intent):void"); // DEX body: android/领创平板管理-2025.9.1/smali/com/android/launcher3/receiver/EduAppReceiver.smali:496
    }
}
