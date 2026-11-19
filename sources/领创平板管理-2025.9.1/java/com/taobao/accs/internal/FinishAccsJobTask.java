package com.taobao.accs.internal;

import android.app.job.JobParameters;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.internal.c */
/* loaded from: classes.dex */
public class FinishAccsJobTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ JobParameters f6181a;

    /* renamed from: b */
    public final /* synthetic */ AccsJobService f6182b;

    public FinishAccsJobTask(AccsJobService accsJobService, JobParameters jobParameters) {
        this.f6182b = accsJobService;
        this.f6181a = jobParameters;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6182b.jobFinished(this.f6181a, false);
    }
}
