package com.huawei.hem;

import android.util.Log;
import com.huawei.hem.C0884ck;
import com.huawei.hem.C0988gk;
import java.io.File;
import java.net.URLConnection;
import java.util.Map;

/* compiled from: UploadBuilder.java */
/* renamed from: com.huawei.hem.wb */
/* loaded from: classes.dex */
public class C1380wb extends AbstractC1330ub<C1380wb> {

    /* renamed from: e */
    public Map<String, File> f4014e;

    public C1380wb(C1255rb c1255rb) {
        super(c1255rb);
    }

    /* renamed from: b */
    public final void m2906b(C0884ck.a aVar, Map<String, File> map) {
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
            aVar.m1538a(C1438yj.m3109f("Content-Disposition", "form-data; name=\"" + str + "\"; filename=\"" + name + "\""), new C1038ik(C0858bk.m1422b(contentTypeFor), file));
        }
    }

    /* renamed from: c */
    public void m2907c(InterfaceC1430yb interfaceC1430yb) {
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
            C0884ck.a aVar2 = new C0884ck.a();
            aVar2.m1539b(C0884ck.f2343f);
            m2906b(aVar2, this.f4014e);
            if (aVar2.f2353c.isEmpty()) {
                throw new IllegalStateException("Multipart body must have at least one part.");
            }
            aVar.m1879c("POST", new C1455zb(new C0884ck(aVar2.f2351a, aVar2.f2352b, aVar2.f2353c), interfaceC1430yb));
            C0988gk c0988gkM1877a = aVar.m1877a();
            if (this.f3779c == null || (c0910dk = C1255rb.f3619b) == null) {
                throw null;
            }
            C0962fk c0962fk = new C0962fk(c0910dk, c0988gkM1877a, false);
            c0962fk.f2674b = new C1089kl(c0910dk, c0962fk);
            c0962fk.m1823a(new C1405xb(interfaceC1430yb, false));
        } catch (Exception e) {
            StringBuilder sbM1765j = C0948f6.m1765j("Upload enqueue error:");
            sbM1765j.append(e.getMessage());
            Log.e("LTKLog2", sbM1765j.toString());
            interfaceC1430yb.onFailure(new C1280sb(-300, ""));
        }
    }
}
