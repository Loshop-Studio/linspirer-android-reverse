package com.huawei.hem;

import android.content.Context;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;

/* renamed from: com.huawei.hem.b7 */
/* loaded from: classes.dex */
public class AgConnectSecureResourceReader extends AgConnectResourceReader {

    /* renamed from: c */
    public final Map<String, String> f2279c;

    /* renamed from: d */
    public final Object f2280d;

    /* renamed from: e */
    public SecretKey f2281e;

    /* renamed from: f */
    public boolean f2282f;

    public AgConnectSecureResourceReader(Context context, String str) {
        super(context, str);
        this.f2279c = new HashMap();
        this.f2280d = new Object();
        this.f2282f = true;
        try {
            String strMo1299a = super.mo1299a("/AD91D45E3E72DB6989DDCB13287E75061FABCB933D886E6C6ABEF0939B577138", null);
            String strMo1299a2 = super.mo1299a("/B314B3BF013DF5AC4134E880AF3D2B7C9FFBE8F0305EAC1C898145E2BCF1F21C", null);
            String strMo1299a3 = super.mo1299a("/C767BD8FDF53E53D059BE95B09E2A71056F5F180AECC62836B287ACA5793421B", null);
            String strMo1299a4 = super.mo1299a("/DCB3E6D4C2CF80F30D89CDBC412C964DA8381BB84668769391FBCC3E329AD0FD", null);
            if (strMo1299a == null || strMo1299a2 == null || strMo1299a3 == null || strMo1299a4 == null) {
                this.f2282f = false;
            } else {
                this.f2281e = LauncherMenuHelper.m2984e(AgConnectHexCodec.m3081b(strMo1299a), AgConnectHexCodec.m3081b(strMo1299a2), AgConnectHexCodec.m3081b(strMo1299a3), AgConnectHexCodec.m3081b(strMo1299a4));
            }
        } catch (NoSuchAlgorithmException | InvalidKeySpecException unused) {
            Log.e("SecurityResourcesReader", "Exception when reading the 'K&I' for 'Config'.");
            this.f2281e = null;
        }
    }

    /* renamed from: b */
    public static byte[] m1387b(SecretKey secretKey, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (secretKey == null) {
            throw new NullPointerException("key or cipherText must not be null.");
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 1, 17);
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, secretKey, new IvParameterSpec(bArrCopyOfRange));
        return cipher.doFinal(bArr, bArrCopyOfRange.length + 1, (bArr.length - bArrCopyOfRange.length) - 1);
    }

    @Override // com.huawei.hem.C0819a7, com.huawei.hem.InterfaceC1400x6
    /* renamed from: a */
    public String mo1299a(String str, String str2) {
        if (!this.f2282f) {
            String strMo1299a = super.mo1299a(str, null);
            return strMo1299a != null ? strMo1299a : str2;
        }
        if (this.f2281e == null) {
            Log.e("SecurityResourcesReader", "KEY is null return def directly");
            return str2;
        }
        synchronized (this.f2280d) {
            String str3 = this.f2279c.get(str);
            if (str3 != null) {
                return str3;
            }
            String strMo1299a2 = super.mo1299a(str, null);
            if (strMo1299a2 == null) {
                return str2;
            }
            try {
                String str4 = new String(m1387b(this.f2281e, AgConnectHexCodec.m3081b(strMo1299a2)), "UTF-8");
                this.f2279c.put(str, str4);
                return str4;
            } catch (UnsupportedEncodingException | GeneralSecurityException unused) {
                Log.e("SecurityResourcesReader", "Exception when reading the 'V' for 'Config'.");
                return str2;
            }
        }
    }
}
