package com.huawei.hem;

import android.os.CountDownTimer;
import com.android.launcher3.activity.LicenseActivity;

/* compiled from: LicenseActivity.java */
/* renamed from: com.huawei.hem.m2 */
/* loaded from: classes.dex */
public class CountDownTimerC1121m2 extends CountDownTimer {

    /* renamed from: a */
    public final /* synthetic */ LicenseActivity f3239a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CountDownTimerC1121m2(LicenseActivity licenseActivity, long j, long j2) {
        super(j, j2);
        this.f3239a = licenseActivity;
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        this.f3239a.m1199h();
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j) {
        this.f3239a.f1744f.setText((j / 1000) + " 秒");
    }
}
