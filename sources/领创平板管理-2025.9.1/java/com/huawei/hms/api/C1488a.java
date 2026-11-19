package com.huawei.hms.api;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BindingFailedResolveMgr.java */
/* renamed from: com.huawei.hms.api.a */
/* loaded from: classes.dex */
public class C1488a {

    /* renamed from: b */
    public static final C1488a f4430b = new C1488a();

    /* renamed from: a */
    public List<Activity> f4431a = new ArrayList(1);

    /* renamed from: a */
    public void m3250a(Activity activity) {
        for (Activity activity2 : this.f4431a) {
            if (activity2 != null && activity2 != activity && !activity2.isFinishing()) {
                activity2.finish();
            }
        }
        this.f4431a.add(activity);
    }

    /* renamed from: b */
    public void m3251b(Activity activity) {
        this.f4431a.remove(activity);
    }
}
