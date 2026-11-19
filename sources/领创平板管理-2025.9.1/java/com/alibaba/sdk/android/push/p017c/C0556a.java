package com.alibaba.sdk.android.push.p017c;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.alibaba.sdk.android.push.channel.KeepChannelService;

/* renamed from: com.alibaba.sdk.android.push.c.a */
/* loaded from: classes.dex */
public class C0556a {

    /* renamed from: a */
    public static AmsLogger f1099a = AmsLogger.getLogger("MPS:KeepLiveManager");

    /* renamed from: b */
    public static Context f1100b = null;

    /* renamed from: c */
    public static C0556a f1101c = null;

    /* renamed from: a */
    public static C0556a m746a() {
        if (f1101c == null) {
            f1101c = new C0556a();
        }
        return f1101c;
    }

    /* renamed from: a */
    public static void m747a(Context context) {
        f1100b = context;
        if (f1101c == null) {
            f1101c = m746a();
        }
    }

    /* renamed from: b */
    public void m748b() {
        if (f1100b != null) {
            f1099a.m498d("Check KeepChannelService");
            try {
                JobScheduler jobScheduler = (JobScheduler) f1100b.getSystemService("jobscheduler");
                for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
                    if (jobInfo.getId() == 900715 && jobInfo.getService().equals(new ComponentName(f1100b.getPackageName(), KeepChannelService.class.getName()))) {
                        f1099a.m498d("cancel Keep Channel Service");
                        jobScheduler.cancel(jobInfo.getId());
                        return;
                    }
                }
            } catch (Throwable th) {
                f1099a.m502e("start KeepChannelService failed.", th);
            }
        }
    }
}
