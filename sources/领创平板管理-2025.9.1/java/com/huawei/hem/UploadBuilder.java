package com.huawei.hem;

import android.util.Log;
import com.huawei.hem.MultipartBody;
import com.huawei.hem.OkHttpRequest;
import java.io.File;
import java.net.URLConnection;
import java.util.Map;

/* compiled from: UploadBuilder.java */
/* renamed from: com.huawei.hem.wb */
/* loaded from: classes.dex */
public class UploadBuilder extends OkHttpRequestBuilderHasParam<UploadBuilder> {

    /* renamed from: e */
    public Map<String, File> f4014e;

    public UploadBuilder(HttpCore c1255rb) {
        super(c1255rb);
    }

    /* renamed from: b */
    public final void m2906b(MultipartBody.a aVar, Map<String, File> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        for (String str : map.keySet()) {
            File file = map.get(str);
            String name = file.getName();
            String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(name);
            if (contentTypeFor == null) {
                contentTypeFor = "application/octet-stream";
            }
            aVar.m1538a(C1438yj.m3109f("Content-Disposition", "form-data; name=\"" + str + "\"; filename=\"" + name + "\""), new C1038ik(OkHttpMediaType.m1422b(contentTypeFor), file));
        }
    }

    /* renamed from: c */
    public void m2907c(IResponseHandler interfaceC1430yb) {
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
            MultipartBody.a aVar2 = new MultipartBody.a();
            aVar2.m1539b(MultipartBody.f2343f);
            m2906b(aVar2, this.f4014e);
            if (aVar2.f2353c.isEmpty()) {
                throw new IllegalStateException("Multipart body must have at least one part.");
            }
            aVar.m1879c("POST", new ProgressRequestBody(new MultipartBody(aVar2.f2351a, aVar2.f2352b, aVar2.f2353c), interfaceC1430yb));
            OkHttpRequest c0988gkM1877a = aVar.m1877a();
            if (this.f3779c == null || (c0910dk = HttpCore.f3619b) == null) {
                throw null;
            }
            RealCall c0962fk = new RealCall(c0910dk, c0988gkM1877a, false);
            c0962fk.f2674b = new Transmitter(c0910dk, c0962fk);
            c0962fk.m1823a(new CommonCallBack(interfaceC1430yb, false));
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("Upload enqueue error:");
            sbM1765j.append(e.getMessage());
            Log.e("LTKLog2", sbM1765j.toString());
            interfaceC1430yb.onFailure(new OkHttpException(-300, ""));
        }
    }
}
