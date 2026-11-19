package com.huawei.hem;

import android.util.Log;
import com.huawei.hem.C0988gk;
import java.util.ArrayList;

/* compiled from: PostBuilder.java */
/* renamed from: com.huawei.hem.vb */
/* loaded from: classes.dex */
public class C1355vb extends AbstractC1330ub<C1355vb> {

    /* renamed from: e */
    public String f3947e;

    public C1355vb(C1255rb c1255rb) {
        super(c1255rb);
        this.f3947e = "";
    }

    /* renamed from: b */
    public void m2869b(InterfaceC1430yb interfaceC1430yb) {
        C0910dk c0910dk;
        try {
            if (this.f3777a == null || this.f3777a.length() == 0) {
                throw new IllegalArgumentException("url can not be null !");
            }
            C0988gk.a aVar = new C0988gk.a();
            aVar.m1881e(this.f3777a);
            m2729a(aVar, null);
            if (this.f3778b != null) {
                aVar.m1880d(this.f3778b);
            }
            if (this.f3947e.length() > 0) {
                aVar.m1879c("POST", AbstractC1063jk.m2134c(C0858bk.m1422b("application/json; charset=utf-8"), this.f3947e));
            } else {
                aVar.m1879c("POST", new C1388wj(new ArrayList(), new ArrayList()));
            }
            C0988gk c0988gkM1877a = aVar.m1877a();
            if (this.f3779c == null || (c0910dk = C1255rb.f3619b) == null) {
                throw null;
            }
            C0962fk c0962fk = new C0962fk(c0910dk, c0988gkM1877a, false);
            c0962fk.f2674b = new C1089kl(c0910dk, c0962fk);
            c0962fk.m1823a(new C1405xb(interfaceC1430yb, this.f3780d));
        } catch (Exception e) {
            StringBuilder sbM1765j = C0948f6.m1765j("Post enqueue error:");
            sbM1765j.append(e.getMessage());
            Log.e("LTKLog2", sbM1765j.toString());
            interfaceC1430yb.onFailure(new C1280sb(-300, ""));
        }
    }
}
