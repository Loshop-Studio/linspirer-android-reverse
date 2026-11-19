package com.huawei.hem;

import android.annotation.SuppressLint;
import android.content.Context;
import android.p000os.EduManager;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MdmPolicyManager.java */
/* renamed from: com.huawei.hem.ih */
/* loaded from: classes.dex */
public class PeishengPolicyManager {

    /* renamed from: a */
    public final EduManager f2923a;

    @SuppressLint({"WrongConstant"})
    public PeishengPolicyManager(Context context) {
        this.f2923a = (EduManager) context.getSystemService("edu");
    }

    /* renamed from: a */
    public List<String> m2113a() {
        EduManager eduManager = this.f2923a;
        return eduManager == null ? new ArrayList() : eduManager.AppFreezeListGet();
    }

    /* renamed from: b */
    public void m2114b(List<String> list) {
        EduManager eduManager = this.f2923a;
        if (eduManager == null) {
            return;
        }
        eduManager.AppFreezeListSet(list);
    }
}
