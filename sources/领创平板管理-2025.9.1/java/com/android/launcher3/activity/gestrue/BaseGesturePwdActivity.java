package com.android.launcher3.activity.gestrue;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.android.launcher3.activity.base.BaseActivity;
import com.android.launcher3.p027db.model.GesturePassword;
import com.android.launcher3.p027db.model.GesturePasswordDao;
import com.huawei.hem.DBController;
import com.huawei.hem.UserInfoUtil;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;

/* loaded from: classes.dex */
public abstract class BaseGesturePwdActivity extends BaseActivity {

    /* renamed from: c */
    public Context f1814c;

    /* renamed from: d */
    public UserInfoUtil f1815d;

    /* renamed from: e */
    public GesturePasswordDao f1816e;

    /* renamed from: b */
    public String f1813b = "-";

    /* renamed from: f */
    public String f1817f = "";

    /* renamed from: com.android.launcher3.activity.gestrue.BaseGesturePwdActivity$a */
    public class GestureAnimationEndListener extends AnimatorListenerAdapter {
        public GestureAnimationEndListener(BaseGesturePwdActivity baseGesturePwdActivity) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        this.f1814c = this;
        UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
        this.f1815d = c1424y5;
        this.f1817f = c1424y5.m3052k();
        this.f1816e = DBController.m2715a().m2719e();
    }

    /* renamed from: f */
    public void m1223f(View view) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", -20.0f, 20.0f, -20.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(300L);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.addListener(new GestureAnimationEndListener(this));
        objectAnimatorOfFloat.start();
    }

    /* renamed from: g */
    public String m1224g() {
        GesturePassword gesturePasswordUnique = this.f1816e.queryBuilder().where(GesturePasswordDao.Properties.User_name.m5870eq(this.f1817f), new WhereCondition[0]).unique();
        return gesturePasswordUnique == null ? "" : gesturePasswordUnique.getGesture_password();
    }

    /* renamed from: h */
    public List<Integer> m1225h(String str) {
        ArrayList arrayList = new ArrayList();
        String[] strArrSplit = str.trim().split(this.f1813b);
        for (int i = 0; i < strArrSplit.length && !TextUtils.isEmpty(strArrSplit[i]); i++) {
            arrayList.add(Integer.valueOf(Integer.parseInt(strArrSplit[i].trim())));
        }
        return arrayList;
    }

    /* renamed from: i */
    public String m1226i(List<Integer> list) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i) + this.f1813b);
        }
        return sb.toString();
    }
}
