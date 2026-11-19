package com.alibaba.sdk.android.push.channel;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;

@TargetApi(21)
/* loaded from: classes.dex */
public class KeepChannelService extends JobService {

    /* renamed from: a */
    public static AmsLogger f1102a = AmsLogger.getLogger("MPS:KeepChannelService");

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        f1102a.m498d("keepScheduleService start");
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        f1102a.m498d("keepScheduleService stoped");
        return false;
    }
}
