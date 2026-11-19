package com.huawei.hem;

import com.android.launcher3.model.UpdatedUserInfo;
import com.android.launcher3.network.response.LTKResponseListener;
import com.android.launcher3.network.response.Response;
import com.huawei.hem.C1424y5;

/* compiled from: NetworkChangeReceiver.java */
/* renamed from: com.huawei.hem.g5 */
/* loaded from: classes.dex */
public class C0973g5 extends LTKResponseListener<UpdatedUserInfo> {

    /* renamed from: a */
    public final /* synthetic */ C0998h5 f2745a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0973g5(C0998h5 c0998h5, Class cls) {
        super(cls);
        this.f2745a = c0998h5;
    }

    @Override // com.android.launcher3.network.response.LTKResponseListener
    public void handleResult(UpdatedUserInfo updatedUserInfo) {
        UpdatedUserInfo updatedUserInfo2 = updatedUserInfo;
        if (this.f2745a == null) {
            throw null;
        }
        C0850bc.m1403m("NetworkChangeReceiver ---update user info success----");
        String name = updatedUserInfo2.getName();
        String school_name = updatedUserInfo2.getSchool_name();
        String class_name = updatedUserInfo2.getClass_name();
        StringBuilder sbM1770o = C0948f6.m1770o("NetworkChangeReceiver ---,name==", name, ",school_name==", school_name, ",class_name==");
        sbM1770o.append(class_name);
        C0850bc.m1403m(sbM1770o.toString());
        C1424y5 c1424y5 = C1424y5.b.f4202a;
        c1424y5.m3051j0(name);
        c1424y5.m3061o0(school_name);
        c1424y5.m3069s0(class_name);
    }

    @Override // com.android.launcher3.network.response.BaseResponse
    public void onFailed(Response response) {
        C0850bc.m1403m("NetworkChangeReceiver ---request url white failed---");
    }

    @Override // com.android.launcher3.network.response.BaseResponse
    public void onFailureByNet(Object obj) {
        C0850bc.m1403m("NetworkChangeReceiver ---request url update user info  failed by network");
    }
}
