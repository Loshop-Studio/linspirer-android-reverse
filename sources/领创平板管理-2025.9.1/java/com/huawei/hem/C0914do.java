package com.huawei.hem;

import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.google.zxing.qrcode.encoder.Encoder;
import java.nio.charset.Charset;

/* compiled from: Charsets.java */
/* renamed from: com.huawei.hem.do */
/* loaded from: classes.dex */
public class C0914do {

    /* renamed from: a */
    public static final Charset f2488a;

    static {
        Charset.forName(Encoder.DEFAULT_BYTE_MODE_ENCODING);
        Charset.forName(Base64.PREFERRED_ENCODING);
        Charset.forName("UTF-16");
        Charset.forName("UTF-16BE");
        Charset.forName("UTF-16LE");
        f2488a = Charset.forName("UTF-8");
    }
}
