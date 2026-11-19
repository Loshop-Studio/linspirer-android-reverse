package com.alibaba.sdk.android.tbrest.p026a;

import com.alibaba.sdk.android.tbrest.utils.LogUtil;
import com.alibaba.sdk.android.tbrest.utils.MD5Utils;
import com.alibaba.sdk.android.tbrest.utils.RC4;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: RestBaseRequestAuthentication.java */
/* renamed from: com.alibaba.sdk.android.tbrest.a.a */
/* loaded from: classes.dex */
public class RestBaseRequestAuthentication {

    /* renamed from: b */
    public String f1366b;

    /* renamed from: b */
    public byte[] f1367b = null;

    /* renamed from: f */
    public boolean f1368f;

    /* renamed from: l */
    public String f1369l;

    public RestBaseRequestAuthentication(String str, String str2, boolean z) {
        this.f1368f = false;
        this.f1366b = null;
        this.f1369l = null;
        this.f1366b = str;
        this.f1369l = str2;
        this.f1368f = z;
    }

    /* renamed from: a */
    public static String m977a(byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac mac = Mac.getInstance("HmacSHA1");
        mac.init(new SecretKeySpec(bArr, mac.getAlgorithm()));
        return MD5Utils.toHexString(mac.doFinal(bArr2));
    }

    /* renamed from: b */
    public String m979b(String str) {
        String str2;
        if (this.f1366b == null || (str2 = this.f1369l) == null) {
            LogUtil.m997e("There is no appkey,please check it!");
            return null;
        }
        if (str == null) {
            return null;
        }
        try {
            return this.f1368f ? m977a(str2.getBytes(), str.getBytes()) : m977a(m978a(), str.getBytes());
        } catch (Exception unused) {
            return "";
        }
    }

    /* renamed from: a */
    private byte[] m978a() {
        if (this.f1367b == null) {
            this.f1367b = RC4.rc4(new byte[]{66, 37, 42, -119, 118, -104, -30, 4, -95, 15, -26, -12, -75, -102, 71, 23, -3, -120, -1, -57, 42, 99, -16, -101, 103, -74, 93, -114, 112, -26, -24, -24});
        }
        return this.f1367b;
    }
}
