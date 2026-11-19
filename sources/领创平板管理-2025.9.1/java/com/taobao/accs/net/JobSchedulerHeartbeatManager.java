package com.taobao.accs.net;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import com.taobao.accs.internal.AccsJobService;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.t */
/* loaded from: classes.dex */
public class JobSchedulerHeartbeatManager extends AccsHeartbeatManagerBase {
    public static final int DEAMON_JOB_ID = 2051;
    public static final int HB_JOB_ID = 2050;

    public JobSchedulerHeartbeatManager(Context context) {
        super(context);
    }

    @Override // com.taobao.accs.net.AbstractC1944f
    /* renamed from: a */
    public void mo5623a(int i) {
        long j = i * 1000;
        ((JobScheduler) this.f6234a.getSystemService("jobscheduler")).schedule(new JobInfo.Builder(HB_JOB_ID, new ComponentName(this.f6234a.getPackageName(), AccsJobService.class.getName())).setMinimumLatency(j).setOverrideDeadline(j).setRequiredNetworkType(1).build());
    }
}
