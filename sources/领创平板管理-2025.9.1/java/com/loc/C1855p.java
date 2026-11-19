package com.loc;

import com.huawei.hem.C1094l1;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* compiled from: RSAUtil.java */
/* renamed from: com.loc.p */
/* loaded from: classes.dex */
public final class C1855p {
    /* renamed from: a */
    public static PublicKey m5278a(String str) throws Exception {
        try {
            return KeyFactory.getInstance(C1094l1.m2251t("EUlNB")).generatePublic(new X509EncodedKeySpec(C1851l.m5264a(str)));
        } catch (NullPointerException unused) {
            throw new Exception("公钥数据为空");
        } catch (NoSuchAlgorithmException unused2) {
            throw new Exception("无此算法");
        } catch (InvalidKeySpecException unused3) {
            throw new Exception("公钥非法");
        }
    }

    /* renamed from: a */
    public static byte[] m5279a(byte[] bArr, PublicKey publicKey) {
        try {
            Cipher cipher = Cipher.getInstance(C1094l1.m2251t("CUlNBL0VDQi9QS0NTMVBhZGRpbmc"));
            cipher.init(1, publicKey);
            return cipher.doFinal(bArr);
        } catch (Throwable unused) {
            return null;
        }
    }
}
