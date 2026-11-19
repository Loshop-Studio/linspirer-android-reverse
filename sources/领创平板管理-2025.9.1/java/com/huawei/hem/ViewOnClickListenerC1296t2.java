package com.huawei.hem;

import android.view.View;
import com.android.launcher3.R;
import com.android.launcher3.activity.gestrue.CheckPwdGestureActivity;

/* compiled from: CheckPwdGestureActivity.java */
/* renamed from: com.huawei.hem.t2 */
/* loaded from: classes.dex */
public class ViewOnClickListenerC1296t2 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ CheckPwdGestureActivity f3747a;

    public ViewOnClickListenerC1296t2(CheckPwdGestureActivity checkPwdGestureActivity) {
        this.f3747a = checkPwdGestureActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (C0902dc.m1583a(view)) {
            return;
        }
        this.f3747a.f1819h.setVisibility(8);
        this.f3747a.f1825n.setVisibility(8);
        if (this.f3747a.f1830s.getText().equals(this.f3747a.getString(R.string.admin_login))) {
            CheckPwdGestureActivity checkPwdGestureActivity = this.f3747a;
            checkPwdGestureActivity.f1828q = true;
            checkPwdGestureActivity.f1827p = false;
            checkPwdGestureActivity.f1830s.setText(checkPwdGestureActivity.getString(R.string.text_gesture_itself_login));
            this.f3747a.f1821j.setHint(R.string.please_enter_dynamic_password);
            this.f3747a.f1822k.setVisibility(0);
            this.f3747a.f1820i.setVisibility(8);
            this.f3747a.f1818g.setVisibility(8);
            CheckPwdGestureActivity checkPwdGestureActivity2 = this.f3747a;
            checkPwdGestureActivity2.f1819h.setText(checkPwdGestureActivity2.getString(R.string.text_gesture_password_login));
            return;
        }
        CheckPwdGestureActivity checkPwdGestureActivity3 = this.f3747a;
        checkPwdGestureActivity3.f1819h.setText(checkPwdGestureActivity3.getString(R.string.text_gesture_password_login));
        CheckPwdGestureActivity checkPwdGestureActivity4 = this.f3747a;
        checkPwdGestureActivity4.f1830s.setText(checkPwdGestureActivity4.getString(R.string.admin_login));
        CheckPwdGestureActivity checkPwdGestureActivity5 = this.f3747a;
        checkPwdGestureActivity5.f1828q = false;
        checkPwdGestureActivity5.f1827p = true;
        checkPwdGestureActivity5.f1822k.setVisibility(8);
        this.f3747a.f1818g.setVisibility(0);
        this.f3747a.f1820i.setVisibility(0);
    }
}
