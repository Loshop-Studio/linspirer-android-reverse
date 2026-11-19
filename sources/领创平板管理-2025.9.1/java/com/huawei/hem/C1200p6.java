package com.huawei.hem;

import android.annotation.SuppressLint;
import android.content.Context;
import android.p000os.ApiManager;
import com.incar.mdm.MdmPolicyManager;

/* compiled from: MdmPolicyManager.java */
/* renamed from: com.huawei.hem.p6 */
/* loaded from: classes.dex */
public class C1200p6 {

    /* renamed from: a */
    public final ApiManager f3438a;

    @SuppressLint({"WrongConstant"})
    public C1200p6(Context context) {
        this.f3438a = (ApiManager) context.getSystemService(MdmPolicyManager.API);
    }
}
