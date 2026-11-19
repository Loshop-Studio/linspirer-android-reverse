package com.taobao.accs.utl;

import java.security.MessageDigest;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.utl.d */
/* loaded from: classes.dex */
public final class AccsMessageDigest {

    /* renamed from: a */
    public static byte[] f6391a = {82, 22, 50, 44, -16, 124, -40, -114, -87, -40, 37, 23, -56, 23, -33, 75};

    /* renamed from: b */
    public static ThreadLocal<Cipher> f6392b = new ThreadLocal<>();

    /* renamed from: c */
    public static final AlgorithmParameterSpec f6393c = new IvParameterSpec(f6391a);

    /* renamed from: a */
    public static final byte[] m5779a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Throwable th) {
            throw new RuntimeException("md5 value Throwable", th);
        }
    }
}
