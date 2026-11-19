package com.huawei.hem;

import android.view.View;
import com.android.launcher3.R;
import com.android.launcher3.activity.gestrue.CheckPwdGestureActivity;

/* compiled from: CheckPwdGestureActivity.java */
/* renamed from: com.huawei.hem.s2 */
/* loaded from: classes.dex */
public class GestureLoginModeClickListener implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ CheckPwdGestureActivity f3655a;

    public GestureLoginModeClickListener(CheckPwdGestureActivity checkPwdGestureActivity) {
        this.f3655a = checkPwdGestureActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (ViewControlUtil.m1583a(view)) {
            return;
        }
        if (this.f3655a.f1826o.m3032a() == 2) {
            LTKDateUtil.m1415y(this.f3655a.f1814c, R.string.sn_login_no_function);
            return;
        }
        if (!this.f3655a.f1819h.getText().equals(this.f3655a.getString(R.string.text_gesture_password_login))) {
            if (this.f3655a.f1819h.getText().equals(this.f3655a.getString(R.string.text_gesture_itself_login))) {
                CheckPwdGestureActivity checkPwdGestureActivity = this.f3655a;
                checkPwdGestureActivity.f1827p = true;
                checkPwdGestureActivity.f1828q = false;
                checkPwdGestureActivity.f1819h.setText(checkPwdGestureActivity.getString(R.string.text_gesture_password_login));
                this.f3655a.f1823l.setVisibility(0);
                this.f3655a.f1819h.setVisibility(0);
                this.f3655a.f1818g.setVisibility(0);
                this.f3655a.f1820i.setVisibility(0);
                this.f3655a.f1822k.setVisibility(8);
                return;
            }
            return;
        }
        CheckPwdGestureActivity checkPwdGestureActivity2 = this.f3655a;
        checkPwdGestureActivity2.f1827p = false;
        checkPwdGestureActivity2.f1828q = false;
        checkPwdGestureActivity2.f1819h.setText(checkPwdGestureActivity2.getString(R.string.text_gesture_itself_login));
        this.f3655a.f1823l.setVisibility(0);
        this.f3655a.f1821j.setHint(R.string.please_enter_account_login_password);
        CheckPwdGestureActivity checkPwdGestureActivity3 = this.f3655a;
        checkPwdGestureActivity3.f1830s.setText(checkPwdGestureActivity3.getString(R.string.admin_login));
        this.f3655a.f1819h.setVisibility(0);
        this.f3655a.f1818g.setVisibility(8);
        this.f3655a.f1820i.setVisibility(8);
        this.f3655a.f1822k.setVisibility(0);
        this.f3655a.f1821j.setText("");
    }
}
