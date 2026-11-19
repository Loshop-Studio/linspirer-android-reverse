package com.huawei.hem;

import android.util.Log;
import com.huawei.hem.OkHttpRequest;
import java.util.ArrayList;

/* compiled from: PostBuilder.java */
/* renamed from: com.huawei.hem.vb */
/* loaded from: classes.dex */
public class PostBuilder extends OkHttpRequestBuilderHasParam<PostBuilder> {

    /* renamed from: e */
    public String f3947e;

    public PostBuilder(HttpCore c1255rb) {
        super(c1255rb);
        this.f3947e = "";
    }

    /* renamed from: b */
    public void m2869b(IResponseHandler interfaceC1430yb) {
        OkHttpClient c0910dk;
        try {
            if (this.f3777a == null || this.f3777a.length() == 0) {
                throw new IllegalArgumentException("url can not be null !");
            }
            OkHttpRequest.a aVar = new OkHttpRequest.a();
            aVar.m1881e(this.f3777a);
            m2729a(aVar, null);
            if (this.f3778b != null) {
                aVar.m1880d(this.f3778b);
            }
            if (this.f3947e.length() > 0) {
                aVar.m1879c("POST", OkHttpRequestBody.m2134c(OkHttpMediaType.m1422b("application/json; charset=utf-8"), this.f3947e));
            } else {
                aVar.m1879c("POST", new FormBody(new ArrayList(), new ArrayList()));
            }
            OkHttpRequest c0988gkM1877a = aVar.m1877a();
            if (this.f3779c == null || (c0910dk = HttpCore.f3619b) == null) {
                throw null;
            }
            RealCall c0962fk = new RealCall(c0910dk, c0988gkM1877a, false);
            c0962fk.f2674b = new Transmitter(c0910dk, c0962fk);
            c0962fk.m1823a(new CommonCallBack(interfaceC1430yb, this.f3780d));
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("Post enqueue error:");
            sbM1765j.append(e.getMessage());
            Log.e("LTKLog2", sbM1765j.toString());
            interfaceC1430yb.onFailure(new OkHttpException(-300, ""));
        }
    }
}
