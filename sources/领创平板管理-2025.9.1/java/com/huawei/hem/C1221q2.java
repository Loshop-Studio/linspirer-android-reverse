package com.huawei.hem;

import com.android.launcher3.R;
import com.android.launcher3.activity.gestrue.CheckPwdGestureActivity;
import com.android.launcher3.view.GestureLockLayout;

/* compiled from: CheckPwdGestureActivity.java */
/* renamed from: com.huawei.hem.q2 */
/* loaded from: classes.dex */
public class C1221q2 extends GestureLockLayout.GestureEventCallbackAdapter {

    /* renamed from: a */
    public final /* synthetic */ CheckPwdGestureActivity f3486a;

    public C1221q2(CheckPwdGestureActivity checkPwdGestureActivity) {
        this.f3486a = checkPwdGestureActivity;
    }

    @Override // com.android.launcher3.view.GestureLockLayout.GestureEventCallbackAdapter, com.android.launcher3.view.GestureLockLayout.GestureEventCallback
    public void onCheckFinish(boolean z, int i) {
        C0850bc.m1413w(this.f3486a, this.f3486a.getString(z ? R.string.text_gesture_unlock_success : R.string.text_gesture_unlock_fail), 0);
        if (z) {
            this.f3486a.f1826o.m3026U(false);
            C0850bc.f2294f.enableRecent();
            C0850bc.f2294f.enableHome();
            this.f3486a.finish();
        }
    }

    @Override // com.android.launcher3.view.GestureLockLayout.GestureEventCallbackAdapter, com.android.launcher3.view.GestureLockLayout.GestureEventCallback
    public void onSwipeMore() {
        CheckPwdGestureActivity checkPwdGestureActivity = this.f3486a;
        checkPwdGestureActivity.m1223f(checkPwdGestureActivity.f1818g);
    }

    @Override // com.android.launcher3.view.GestureLockLayout.GestureEventCallbackAdapter, com.android.launcher3.view.GestureLockLayout.GestureEventCallback
    public void onToast(String str, int i) {
        this.f3486a.f1818g.setText(str);
        if (i != 0) {
            this.f3486a.f1818g.setTextColor(i);
        }
        if (i == -52686) {
            CheckPwdGestureActivity checkPwdGestureActivity = this.f3486a;
            checkPwdGestureActivity.m1223f(checkPwdGestureActivity.f1818g);
        }
    }
}
