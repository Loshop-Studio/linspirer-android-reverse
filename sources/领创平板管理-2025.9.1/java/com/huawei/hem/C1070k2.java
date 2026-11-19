package com.huawei.hem;

import android.widget.RadioGroup;
import com.android.launcher3.R;
import com.android.launcher3.activity.CheckNetWorkActivity;

/* compiled from: CheckNetWorkActivity.java */
/* renamed from: com.huawei.hem.k2 */
/* loaded from: classes.dex */
public class C1070k2 implements RadioGroup.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ CheckNetWorkActivity f3020a;

    public C1070k2(CheckNetWorkActivity checkNetWorkActivity) {
        this.f3020a = checkNetWorkActivity;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        if (i == R.id.key_info) {
            CheckNetWorkActivity.m1179e(this.f3020a, 0);
        } else {
            if (i != R.id.network_test) {
                return;
            }
            CheckNetWorkActivity.m1179e(this.f3020a, 1);
        }
    }
}
