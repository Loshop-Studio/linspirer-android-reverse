package com.huawei.hem;

import java.net.InetAddress;
import java.util.List;

/* compiled from: Dns.java */
/* renamed from: com.huawei.hem.uj */
/* loaded from: classes.dex */
public interface OkHttpDnsResolver {

    /* renamed from: a */
    public static final OkHttpDnsResolver f3874a = new OkHttpDnsResolver() { // from class: com.huawei.hem.dj
        @Override // com.huawei.hem.InterfaceC1338uj
        /* renamed from: a */
        public final List mo1611a(String str) {
            return OkHttpSystemDns.m2742a(str);
        }
    };

    /* renamed from: a */
    List<InetAddress> mo1611a(String str);
}
