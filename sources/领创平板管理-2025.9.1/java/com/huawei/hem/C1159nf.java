package com.huawei.hem;

import android.text.TextUtils;
import anet.channel.request.Request;
import anet.channel.util.HttpConstant;
import com.bumptech.glide.load.model.LazyHeaders;
import com.huawei.hem.C0985gh;
import com.huawei.hem.C1209pf;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: ConnectTask.java */
/* renamed from: com.huawei.hem.nf */
/* loaded from: classes.dex */
public class C1159nf {

    /* renamed from: a */
    public final int f3319a;

    /* renamed from: b */
    public final String f3320b;

    /* renamed from: c */
    public final FileDownloadHeader f3321c;

    /* renamed from: d */
    public C1184of f3322d;

    /* renamed from: e */
    public String f3323e;

    /* renamed from: f */
    public Map<String, List<String>> f3324f;

    /* renamed from: g */
    public List<String> f3325g;

    public C1159nf(C1184of c1184of, int i, String str, String str2, FileDownloadHeader fileDownloadHeader, a aVar) {
        this.f3319a = i;
        this.f3320b = str;
        this.f3323e = str2;
        this.f3321c = fileDownloadHeader;
        this.f3322d = c1184of;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [com.huawei.hem.gf] */
    /* renamed from: a */
    public InterfaceC0983gf m2411a() throws IllegalAccessException, IOException {
        HashMap<String, List<String>> map;
        InterfaceC0983gf interfaceC0983gfM2479a = C1209pf.a.f3463a.m2479a(this.f3320b);
        FileDownloadHeader fileDownloadHeader = this.f3321c;
        if (fileDownloadHeader != null && (map = fileDownloadHeader.f4833a) != null) {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                String key = entry.getKey();
                List<String> value = entry.getValue();
                if (value != null) {
                    Iterator<String> it = value.iterator();
                    while (it.hasNext()) {
                        ((C1008hf) interfaceC0983gfM2479a).f2865a.addRequestProperty(key, it.next());
                    }
                }
            }
        }
        String str = this.f3323e;
        long j = this.f3322d.f3394a;
        C1008hf c1008hf = (C1008hf) interfaceC0983gfM2479a;
        if (!TextUtils.isEmpty(str)) {
            c1008hf.f2865a.addRequestProperty("If-Match", this.f3323e);
        }
        C1184of c1184of = this.f3322d;
        if (!c1184of.f3398e) {
            if (c1184of.f3399f && C0985gh.b.f2783a.f2782h) {
                URLConnection uRLConnection = c1008hf.f2865a;
                if (uRLConnection instanceof HttpURLConnection) {
                    ((HttpURLConnection) uRLConnection).setRequestMethod(Request.Method.HEAD);
                }
            }
            c1008hf.f2865a.addRequestProperty("Range", c1184of.f3396c == -1 ? C1010hh.m1955e("bytes=%d-", Long.valueOf(c1184of.f3395b)) : C1010hh.m1955e("bytes=%d-%d", Long.valueOf(c1184of.f3395b), Long.valueOf(c1184of.f3396c)));
        }
        FileDownloadHeader fileDownloadHeader2 = this.f3321c;
        if (fileDownloadHeader2 == null || fileDownloadHeader2.f4833a.get(LazyHeaders.Builder.USER_AGENT_HEADER) == null) {
            c1008hf.f2865a.addRequestProperty(LazyHeaders.Builder.USER_AGENT_HEADER, C1010hh.m1952b());
        }
        this.f3324f = c1008hf.f2865a.getRequestProperties();
        c1008hf.f2865a.connect();
        ArrayList arrayList = new ArrayList();
        this.f3325g = arrayList;
        Map<String, List<String>> map2 = this.f3324f;
        int iM1949b = c1008hf.m1949b();
        String headerField = c1008hf.f2865a.getHeaderField(HttpConstant.LOCATION);
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        C1008hf c1008hf2 = c1008hf;
        while (true) {
            if (!(iM1949b == 301 || iM1949b == 302 || iM1949b == 303 || iM1949b == 300 || iM1949b == 307 || iM1949b == 308)) {
                arrayList.addAll(arrayList2);
                return c1008hf2;
            }
            if (headerField == null) {
                throw new IllegalAccessException(C1010hh.m1955e("receive %d (redirect) but the location is null with response [%s]", Integer.valueOf(iM1949b), c1008hf2.m1950c()));
            }
            c1008hf2.m1948a();
            ?? M2479a = C1209pf.a.f3463a.m2479a(headerField);
            for (Map.Entry<String, List<String>> entry2 : map2.entrySet()) {
                String key2 = entry2.getKey();
                List<String> value2 = entry2.getValue();
                if (value2 != null) {
                    Iterator<String> it2 = value2.iterator();
                    while (it2.hasNext()) {
                        ((C1008hf) M2479a).f2865a.addRequestProperty(key2, it2.next());
                    }
                }
            }
            arrayList2.add(headerField);
            C1008hf c1008hf3 = (C1008hf) M2479a;
            c1008hf3.f2865a.connect();
            int iM1949b2 = c1008hf3.m1949b();
            String headerField2 = c1008hf3.f2865a.getHeaderField(HttpConstant.LOCATION);
            i++;
            if (i >= 10) {
                throw new IllegalAccessException(C1010hh.m1955e("redirect too many times! %s", arrayList2));
            }
            headerField = headerField2;
            iM1949b = iM1949b2;
            c1008hf2 = M2479a;
        }
    }
}
