package com.huawei.hem;

import anet.channel.util.HttpConstant;
import com.bumptech.glide.load.model.LazyHeaders;
import com.huawei.hem.OkHttpRequest;
import com.huawei.hem.OkHttpResponse;
import com.huawei.hem.OkHttpHeaderList;
import com.huawei.hem.OkHttpInterceptor;
import com.huawei.hem.CookieJar;
import java.util.Collections;
import java.util.List;

/* compiled from: BridgeInterceptor.java */
/* renamed from: com.huawei.hem.ll */
/* loaded from: classes.dex */
public final class BridgeInterceptor implements OkHttpInterceptor {

    /* renamed from: a */
    public final CookieJar f3200a;

    public BridgeInterceptor(CookieJar interfaceC1263rj) {
        this.f3200a = interfaceC1263rj;
    }

    @Override // com.huawei.hem.InterfaceC0832ak
    /* renamed from: a */
    public OkHttpResponse mo1363a(OkHttpInterceptor.a aVar) {
        boolean z;
        RealInterceptorChain c1240ql = (RealInterceptorChain) aVar;
        OkHttpRequest c0988gk = c1240ql.f3581e;
        if (c0988gk == null) {
            throw null;
        }
        OkHttpRequest.a aVar2 = new OkHttpRequest.a(c0988gk);
        OkHttpRequestBody abstractC1063jk = c0988gk.f2788d;
        if (abstractC1063jk != null) {
            OkHttpMediaType c0858bkMo1535b = abstractC1063jk.mo1535b();
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
            aVar2.m1878b(HttpConstant.HOST, OkHttpCommonUtilities.m2758m(c0988gk.f2785a, false));
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
        if (((CookieJar.a) this.f3200a) == null) {
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
                Cookie c1238qj = (Cookie) listEmptyList.get(i);
                sb.append(c1238qj.f3566a);
                sb.append('=');
                sb.append(c1238qj.f3567b);
            }
            aVar2.m1878b(HttpConstant.COOKIE, sb.toString());
        }
        if (c0988gk.f2787c.m3110c(LazyHeaders.Builder.USER_AGENT_HEADER) == null) {
            aVar2.m1878b(LazyHeaders.Builder.USER_AGENT_HEADER, "okhttp/3.14.9");
        }
        OkHttpResponse c1088kkM2646b = c1240ql.m2646b(aVar2.m1877a(), c1240ql.f3578b, c1240ql.f3579c);
        OkHttpHeaders.m2494d(this.f3200a, c0988gk.f2785a, c1088kkM2646b.f3096f);
        OkHttpResponse.a aVar3 = new OkHttpResponse.a(c1088kkM2646b);
        aVar3.f3105a = c0988gk;
        if (z) {
            String strM3110c = c1088kkM2646b.f3096f.m3110c(HttpConstant.CONTENT_ENCODING);
            if (strM3110c == null) {
                strM3110c = null;
            }
            if (HttpConstant.GZIP.equalsIgnoreCase(strM3110c) && OkHttpHeaders.m2492b(c1088kkM2646b)) {
                GzipSource c1192on = new GzipSource(c1088kkM2646b.f3097g.mo2326g());
                OkHttpHeaderList.a aVarM3112e = c1088kkM2646b.f3096f.m3112e();
                aVarM3112e.m3116b(HttpConstant.CONTENT_ENCODING);
                aVarM3112e.m3116b(HttpConstant.CONTENT_LENGTH);
                List<String> list = aVarM3112e.f4230a;
                String[] strArr = (String[]) list.toArray(new String[list.size()]);
                OkHttpHeaderList.a aVar4 = new OkHttpHeaderList.a();
                Collections.addAll(aVar4.f4230a, strArr);
                aVar3.f3110f = aVar4;
                String strM3110c2 = c1088kkM2646b.f3096f.m3110c(HttpConstant.CONTENT_TYPE);
                if (strM3110c2 == null) {
                    strM3110c2 = null;
                }
                aVar3.f3111g = new RealResponseBody(strM3110c2, -1L, new RealBufferedSource(c1192on));
            }
        }
        return aVar3.m2200b();
    }
}
