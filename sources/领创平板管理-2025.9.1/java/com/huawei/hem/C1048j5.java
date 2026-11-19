package com.huawei.hem;

import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import java.util.List;

/* compiled from: AppUsageHelper.java */
/* renamed from: com.huawei.hem.j5 */
/* loaded from: classes.dex */
public class C1048j5 extends LTKResponseListener<Boolean> {

    /* renamed from: a */
    public final /* synthetic */ List f2934a;

    /* renamed from: b */
    public final /* synthetic */ int f2935b;

    /* renamed from: c */
    public final /* synthetic */ C1073k5 f2936c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1048j5(C1073k5 c1073k5, Class cls, List list, int i) {
        super(cls);
        this.f2936c = c1073k5;
        this.f2934a = list;
        this.f2935b = i;
    }

    @Override // com.android.launcher3.network.response.BaseResponse
    public void onFailed(Response response) {
        C0850bc.m1393c("AppUsageHelper -- usage app data is failed .");
    }

    @Override // com.android.launcher3.network.response.BaseResponse
    public void onFailureByNet(Object obj) {
        C0850bc.m1393c("AppUsageHelper -- usage app data is onFailureByNet .");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.android.launcher3.network.response.LTKResponseListener
    public void handleResult(Boolean bool) {
        if (bool.booleanValue()) {
            C0850bc.m1403m("AppUsageHelper -- usage app data is uploaded successfully ");
            C1098l5 c1098l5 = (C1098l5) this.f2934a.get(this.f2934a.size() - 1);
            long j = c1098l5.getmEndTimeStamp();
            if (j > 0) {
                this.f2936c.f3026c.m3049i0(j);
            } else {
                this.f2936c.f3026c.m3049i0(c1098l5.getmBeginTimeStamp());
            }
            if (AbstractC1102l9.m2273N(this.f2936c.f3032i)) {
                return;
            }
            int size = this.f2936c.f3032i.size();
            int i = this.f2935b + 1;
            if (i < size) {
                C1073k5 c1073k5 = this.f2936c;
                C1073k5.m2162a(c1073k5, c1073k5.f3032i.get(i), i);
            }
        }
    }
}
