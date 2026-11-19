package com.huawei.hem;

import android.view.View;
import com.android.launcher3.fragment.home.MainFragment;
import com.android.launcher3.view.CommonDialog;

/* compiled from: MainFragment.java */
/* renamed from: com.huawei.hem.f4 */
/* loaded from: classes.dex */
public class MainFragmentDialogButtonListener implements CommonDialog.DialogButtonOnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MainFragment f2637a;

    public MainFragmentDialogButtonListener(MainFragment mainFragment) {
        this.f2637a = mainFragment;
    }

    @Override // com.android.launcher3.view.CommonDialog.DialogButtonOnClickListener
    public void clickCancelButton(View view) {
        MainFragment.m1257w(this.f2637a, 2);
    }

    @Override // com.android.launcher3.view.CommonDialog.DialogButtonOnClickListener
    public void clickConfirmButton(View view, String str) {
        MainFragment.m1257w(this.f2637a, 1);
    }
}
