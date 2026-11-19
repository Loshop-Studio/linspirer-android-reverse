package com.huawei.hem;

import android.content.Context;
import com.android.launcher3.R;
import com.android.launcher3.activity.RemoveControlDialogActivity;
import java.io.File;

/* compiled from: DownLoadUtil.java */
/* renamed from: com.huawei.hem.u5 */
/* loaded from: classes.dex */
public final class C1324u5 extends AbstractC1158ne {

    /* renamed from: a */
    public final /* synthetic */ Context f3843a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC0971g3 f3844b;

    /* renamed from: c */
    public final /* synthetic */ String f3845c;

    /* renamed from: d */
    public final /* synthetic */ File f3846d;

    public C1324u5(Context context, InterfaceC0971g3 interfaceC0971g3, String str, File file) {
        this.f3843a = context;
        this.f3844b = interfaceC0971g3;
        this.f3845c = str;
        this.f3846d = file;
    }

    @Override // com.huawei.hem.AbstractC1158ne
    public void completed(InterfaceC0956fe interfaceC0956fe) {
        C1423y4.m3002w(this.f3845c, this.f3843a, this.f3844b);
    }

    @Override // com.huawei.hem.AbstractC1158ne
    public void error(InterfaceC0956fe interfaceC0956fe, Throwable th) {
        th.printStackTrace();
        C0850bc.m1415y(this.f3843a, R.string.text_downloading_fail);
        final RemoveControlDialogActivity.C0641a c0641a = (RemoveControlDialogActivity.C0641a) this.f3844b;
        RemoveControlDialogActivity.this.runOnUiThread(new Runnable() { // from class: com.huawei.hem.g2
            @Override // java.lang.Runnable
            public final void run() {
                c0641a.m1211a();
            }
        });
    }

    @Override // com.huawei.hem.AbstractC1158ne
    public void paused(InterfaceC0956fe interfaceC0956fe, int i, int i2) {
    }

    @Override // com.huawei.hem.AbstractC1158ne
    public void pending(InterfaceC0956fe interfaceC0956fe, int i, int i2) {
    }

    @Override // com.huawei.hem.AbstractC1158ne
    public void progress(InterfaceC0956fe interfaceC0956fe, int i, int i2) {
    }

    @Override // com.huawei.hem.AbstractC1158ne
    public void warn(InterfaceC0956fe interfaceC0956fe) {
    }
}
