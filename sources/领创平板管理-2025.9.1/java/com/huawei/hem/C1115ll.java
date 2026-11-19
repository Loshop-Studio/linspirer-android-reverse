package com.huawei.hem;

import anet.channel.util.HttpConstant;
import com.bumptech.glide.load.model.LazyHeaders;
import com.huawei.hem.C0988gk;
import com.huawei.hem.C1088kk;
import com.huawei.hem.C1438yj;
import com.huawei.hem.InterfaceC0832ak;
import com.huawei.hem.InterfaceC1263rj;
import java.util.Collections;
import java.util.List;

/* compiled from: BridgeInterceptor.java */
/* renamed from: com.huawei.hem.ll */
/* loaded from: classes.dex */
public final class C1115ll implements InterfaceC0832ak {

    /* renamed from: a */
    public final InterfaceC1263rj f3200a;

    public C1115ll(InterfaceC1263rj interfaceC1263rj) {
        this.f3200a = interfaceC1263rj;
    }

    @Override // com.huawei.hem.InterfaceC0832ak
    /* renamed from: a */
    public C1088kk mo1363a(InterfaceC0832ak.a aVar) {
        boolean z;
        C1240ql c1240ql = (C1240ql) aVar;
        C0988gk c0988gk = c1240ql.f3581e;
        if (c0988gk == null) {
            throw null;
        }
        C0988gk.a aVar2 = new C0988gk.a(c0988gk);
        AbstractC1063jk abstractC1063jk = c0988gk.f2788d;
        if (abstractC1063jk != null) {
            C0858bk c0858bkMo1535b = abstractC1063jk.mo1535b();
            if (c0858bkMo1535b != null) {
                aVar2.m1878b(HttpConstant.CONTENT_TYPE, c0858bkMo1535b.f2307a);
            }
            long jMo1534a = abstractC1063jk.mo1534a();
            if (jMo1534a != -1) {
                aVar2.m1878b(HttpConstant.CONTENT_LENGTH, Long.toString(jMo1534a));
                aVar2.f2793c.m3116b("Transfer-Encoding");
            } else {
                aVar2.m1878b("Transfer-Encoding", "chunked");
                aVar2.f2793c.m3116b(HttpConstant.CONTENT_LENGTH);
            }
        }
        if (c0988gk.f2787c.m3110c(HttpConstant.HOST) == null) {
            aVar2.m1878b(HttpConstant.HOST, C1314tk.m2758m(c0988gk.f2785a, false));
        }
        if (c0988gk.f2787c.m3110c("Connection") == null) {
            aVar2.m1878b("Connection", "Keep-Alive");
        }
        if (c0988gk.f2787c.m3110c("Accept-Encoding") == null && c0988gk.f2787c.m3110c("Range") == null) {
            aVar2.m1878b("Accept-Encoding", HttpConstant.GZIP);
            z = true;
        } else {
            z = false;
        }
        if (((InterfaceC1263rj.a) this.f3200a) == null) {
            throw null;
        }
        List listEmptyList = Collections.emptyList();
        if (!listEmptyList.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            int size = listEmptyList.size();
            for (int i = 0; i < size; i++) {
                if (i > 0) {
                    sb.append("; ");
                }
                C1238qj c1238qj = (C1238qj) listEmptyList.get(i);
                sb.append(c1238qj.f3566a);
                sb.append('=');
                sb.append(c1238qj.f3567b);
            }
            aVar2.m1878b(HttpConstant.COOKIE, sb.toString());
        }
        if (c0988gk.f2787c.m3110c(LazyHeaders.Builder.USER_AGENT_HEADER) == null) {
            aVar2.m1878b(LazyHeaders.Builder.USER_AGENT_HEADER, "okhttp/3.14.9");
        }
        C1088kk c1088kkM2646b = c1240ql.m2646b(aVar2.m1877a(), c1240ql.f3578b, c1240ql.f3579c);
        C1215pl.m2494d(this.f3200a, c0988gk.f2785a, c1088kkM2646b.f3096f);
        C1088kk.a aVar3 = new C1088kk.a(c1088kkM2646b);
        aVar3.f3105a = c0988gk;
        if (z) {
            String strM3110c = c1088kkM2646b.f3096f.m3110c(HttpConstant.CONTENT_ENCODING);
            if (strM3110c == null) {
                strM3110c = null;
            }
            if (HttpConstant.GZIP.equalsIgnoreCase(strM3110c) && C1215pl.m2492b(c1088kkM2646b)) {
                C1192on c1192on = new C1192on(c1088kkM2646b.f3097g.mo2326g());
                C1438yj.a aVarM3112e = c1088kkM2646b.f3096f.m3112e();
                aVarM3112e.m3116b(HttpConstant.CONTENT_ENCODING);
                aVarM3112e.m3116b(HttpConstant.CONTENT_LENGTH);
                List<String> list = aVarM3112e.f4230a;
                String[] strArr = (String[]) list.toArray(new String[list.size()]);
                C1438yj.a aVar4 = new C1438yj.a();
                Collections.addAll(aVar4.f4230a, strArr);
                aVar3.f3110f = aVar4;
                String strM3110c2 = c1088kkM2646b.f3096f.m3110c(HttpConstant.CONTENT_TYPE);
                if (strM3110c2 == null) {
                    strM3110c2 = null;
                }
                aVar3.f3111g = new C1265rl(strM3110c2, -1L, new C1367vn(c1192on));
            }
        }
        return aVar3.m2200b();
    }
}
