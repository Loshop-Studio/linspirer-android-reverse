package com.huawei.hem;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;

/* compiled from: Dns.java */
/* renamed from: com.huawei.hem.tj */
/* loaded from: classes.dex */
public final /* synthetic */ class OkHttpSystemDns {
    /* renamed from: a */
    public static /* synthetic */ List m2742a(String str) throws UnknownHostException {
        if (str == null) {
            throw new UnknownHostException("hostname == null");
        }
        try {
            return Arrays.asList(InetAddress.getAllByName(str));
        } catch (NullPointerException e) {
            UnknownHostException unknownHostException = new UnknownHostException(CompilerOutline.m1760e("Broken system behaviour for dns lookup of ", str));
            unknownHostException.initCause(e);
            throw unknownHostException;
        }
    }
}
