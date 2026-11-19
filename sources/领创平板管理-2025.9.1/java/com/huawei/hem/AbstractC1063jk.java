package com.huawei.hem;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import javax.annotation.Nullable;

/* compiled from: RequestBody.java */
/* renamed from: com.huawei.hem.jk */
/* loaded from: classes.dex */
public abstract class AbstractC1063jk {
    /* renamed from: c */
    public static AbstractC1063jk m2134c(@Nullable OkHttpMediaType c0858bk, String str) {
        Charset charsetForName = StandardCharsets.UTF_8;
        if (c0858bk != null) {
            charsetForName = c0858bk.f2309c != null ? Charset.forName(c0858bk.f2309c) : null;
            if (charsetForName == null) {
                charsetForName = StandardCharsets.UTF_8;
                c0858bk = OkHttpMediaType.m1422b(c0858bk + "; charset=utf-8");
            }
        }
        return m2135d(c0858bk, str.getBytes(charsetForName));
    }

    /* renamed from: d */
    public static AbstractC1063jk m2135d(@Nullable OkHttpMediaType c0858bk, byte[] bArr) {
        int length = bArr.length;
        C1314tk.m2748c(bArr.length, 0, length);
        return new C1013hk(c0858bk, length, bArr, 0);
    }

    /* renamed from: a */
    public abstract long mo1534a();

    @Nullable
    /* renamed from: b */
    public abstract OkHttpMediaType mo1535b();

    /* renamed from: e */
    public abstract void mo1536e(BufferedSink interfaceC1041in);
}
