package com.huawei.hem;

import android.text.TextUtils;
import com.android.launcher3.R;
import com.android.launcher3.activity.gestrue.SettingPwdGestureActivity;
import com.android.launcher3.p027db.model.GesturePassword;
import com.android.launcher3.p027db.model.GesturePasswordDao;
import com.android.launcher3.view.GestureLockLayout;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;

/* compiled from: SettingPwdGestureActivity.java */
/* renamed from: com.huawei.hem.v2 */
/* loaded from: classes.dex */
public class SettingPwdGestureActivityGestureCallback extends GestureLockLayout.GestureEventCallbackAdapter {

    /* renamed from: a */
    public final /* synthetic */ SettingPwdGestureActivity f3919a;

    public SettingPwdGestureActivityGestureCallback(SettingPwdGestureActivity settingPwdGestureActivity) {
        this.f3919a = settingPwdGestureActivity;
    }

    @Override // com.android.launcher3.view.GestureLockLayout.GestureEventCallbackAdapter, com.android.launcher3.view.GestureLockLayout.GestureEventCallback
    public void onCheckFinish(boolean z, int i) {
        LTKDateUtil.m1413w(this.f3919a, this.f3919a.getString(z ? R.string.text_gesture_cancel_itself_success : R.string.text_gesture_confirm_itself_fail), 0);
        if (!z) {
            this.f3919a.f1836i.setVisibility(4);
            return;
        }
        SettingPwdGestureActivity settingPwdGestureActivity = this.f3919a;
        GesturePassword gesturePasswordUnique = settingPwdGestureActivity.f1816e.queryBuilder().where(GesturePasswordDao.Properties.User_name.m5870eq(settingPwdGestureActivity.f1817f), new WhereCondition[0]).unique();
        if (gesturePasswordUnique != null) {
            settingPwdGestureActivity.f1816e.deleteByKey(gesturePasswordUnique.getId());
        } else {
            LTKDateUtil.m1403m("BaseGestureActivity -- clear gesture password is failed,due to not query password . ");
        }
        this.f3919a.finish();
    }

    @Override // com.android.launcher3.view.GestureLockLayout.GestureEventCallbackAdapter, com.android.launcher3.view.GestureLockLayout.GestureEventCallback
    public void onGetTempPassword(List<Integer> list) {
        String strM1224g = this.f3919a.m1224g();
        if (!TextUtils.isEmpty(strM1224g) && strM1224g.equals(this.f3919a.m1226i(list))) {
            LTKDateUtil.m1415y(this.f3919a, R.string.text_gesture_for_security_need_new_gesture);
            this.f3919a.f1837j.initCurrentTimes();
            this.f3919a.f1834g.refreshPwdKeyboard(null);
            SettingPwdGestureActivity settingPwdGestureActivity = this.f3919a;
            settingPwdGestureActivity.f1835h.setText(settingPwdGestureActivity.getString(R.string.text_gesture_draw_password));
        }
    }

    @Override // com.android.launcher3.view.GestureLockLayout.GestureEventCallbackAdapter, com.android.launcher3.view.GestureLockLayout.GestureEventCallback
    public void onResetFinish(List<Integer> list) {
        SettingPwdGestureActivity settingPwdGestureActivity = this.f3919a;
        String strM1226i = settingPwdGestureActivity.m1226i(list);
        GesturePassword gesturePasswordUnique = settingPwdGestureActivity.f1816e.queryBuilder().where(GesturePasswordDao.Properties.User_name.m5870eq(settingPwdGestureActivity.f1817f), new WhereCondition[0]).unique();
        if (gesturePasswordUnique != null) {
            settingPwdGestureActivity.f1816e.deleteByKey(gesturePasswordUnique.getId());
        }
        GesturePassword gesturePassword = new GesturePassword();
        gesturePassword.setGesture_password(strM1226i);
        gesturePassword.setUser_name(settingPwdGestureActivity.f1817f);
        settingPwdGestureActivity.f1816e.insert(gesturePassword);
        LTKDateUtil.m1415y(this.f3919a, R.string.text_gesture_setting_password_success);
        this.f3919a.finish();
    }

    @Override // com.android.launcher3.view.GestureLockLayout.GestureEventCallbackAdapter, com.android.launcher3.view.GestureLockLayout.GestureEventCallback
    public void onSwipeFinish(List<Integer> list) {
        this.f3919a.f1834g.refreshPwdKeyboard(list);
        this.f3919a.f1836i.setVisibility(0);
    }

    @Override // com.android.launcher3.view.GestureLockLayout.GestureEventCallbackAdapter, com.android.launcher3.view.GestureLockLayout.GestureEventCallback
    public void onSwipeMore() {
        SettingPwdGestureActivity settingPwdGestureActivity = this.f3919a;
        settingPwdGestureActivity.m1223f(settingPwdGestureActivity.f1835h);
    }

    @Override // com.android.launcher3.view.GestureLockLayout.GestureEventCallbackAdapter, com.android.launcher3.view.GestureLockLayout.GestureEventCallback
    public void onToast(String str, int i) {
        this.f3919a.f1835h.setText(str);
        if (i != 0) {
            this.f3919a.f1835h.setTextColor(i);
        }
        if (i == -52686) {
            SettingPwdGestureActivity settingPwdGestureActivity = this.f3919a;
            settingPwdGestureActivity.m1223f(settingPwdGestureActivity.f1835h);
        }
    }
}
