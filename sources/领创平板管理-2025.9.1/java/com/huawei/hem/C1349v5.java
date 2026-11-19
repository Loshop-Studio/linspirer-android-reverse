package com.huawei.hem;

import com.android.launcher3.activity.RemoveControlDialogActivity;
import java.util.TimerTask;

/* compiled from: DownLoadUtil.java */
/* renamed from: com.huawei.hem.v5 */
/* loaded from: classes.dex */
public final class C1349v5 extends TimerTask {

    /* renamed from: a */
    public final /* synthetic */ DownLoadBrowserListener f3926a;

    public C1349v5(DownLoadBrowserListener interfaceC0971g3) {
        this.f3926a = interfaceC0971g3;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        DownLoadBrowserListener interfaceC0971g3 = this.f3926a;
        if (interfaceC0971g3 != null) {
            final RemoveControlDialogActivity.C0641a c0641a = (RemoveControlDialogActivity.C0641a) interfaceC0971g3;
            if (c0641a == null) {
                throw null;
            }
            LTKDateUtil.m1403m("RemoveControlDialogActivity  installFail");
            RemoveControlDialogActivity.this.runOnUiThread(new Runnable() { // from class: com.huawei.hem.f2
                @Override // java.lang.Runnable
                public final void run() {
                    c0641a.m1212b();
                }
            });
        }
    }
}
