package com.huawei.hem;

import android.support.annotation.NonNull;
import android.text.style.ClickableSpan;
import android.view.View;
import com.android.launcher3.activity.PrivacyAgreementActivity;
import com.android.launcher3.fragment.login.BaseLoginFragment;

/* compiled from: BaseLoginFragment.java */
/* renamed from: com.huawei.hem.i4 */
/* loaded from: classes.dex */
public class LoginFragmentLinkSpan extends ClickableSpan {

    /* renamed from: a */
    public final /* synthetic */ BaseLoginFragment f2891a;

    public LoginFragmentLinkSpan(BaseLoginFragment baseLoginFragment) {
        this.f2891a = baseLoginFragment;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@NonNull View view) {
        LauncherMenuHelper.m2974U(this.f2891a.f1800a, PrivacyAgreementActivity.class);
    }
}
