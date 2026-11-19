package com.alibaba.sdk.android.emas;

import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import android.util.Log;
import com.alibaba.sdk.android.tbrest.utils.LogUtil;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.GCMParameterSpec;

/* compiled from: AesGcmCipher.java */
/* renamed from: com.alibaba.sdk.android.emas.b */
/* loaded from: classes.dex */
public class AesGcmCipher {

    /* renamed from: a */
    public static final AesGcmCipher f925a = new AesGcmCipher();

    /* renamed from: a */
    public KeyStore f926a;

    /* renamed from: b */
    public boolean f927b;

    public AesGcmCipher() {
        this.f927b = true;
        try {
            m617a();
            m618a(m616a());
        } catch (Throwable unused) {
            this.f927b = false;
        }
    }

    /* renamed from: a */
    public static AesGcmCipher m615a() {
        return f925a;
    }

    /* renamed from: b */
    public byte[] m620b(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException, ShortBufferException {
        if (!this.f927b) {
            return null;
        }
        try {
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(2, this.f926a.getKey("emas_rest_key", null), new GCMParameterSpec(128, bArr, 0, 12));
            byte[] bArr2 = new byte[cipher.getOutputSize(bArr.length - 12)];
            cipher.doFinal(bArr, 12, bArr.length - 12, bArr2, 0);
            return bArr2;
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException | ShortBufferException e) {
            LogUtil.m997e(Log.getStackTraceString(e));
            return null;
        }
    }

    /* renamed from: a */
    private void m617a() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            this.f926a = keyStore;
            keyStore.load(null);
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            LogUtil.m997e(Log.getStackTraceString(e));
            this.f927b = false;
        }
    }

    /* renamed from: a */
    private void m618a(Key key) throws KeyStoreException {
        try {
            if (this.f926a.containsAlias("emas_rest_key")) {
                return;
            }
            this.f926a.setKeyEntry("emas_rest_key", key, null, null);
        } catch (KeyStoreException e) {
            LogUtil.m997e(Log.getStackTraceString(e));
            this.f927b = false;
        }
    }

    /* renamed from: a */
    private Key m616a() throws NoSuchAlgorithmException, InvalidAlgorithmParameterException {
        try {
            KeyGenParameterSpec.Builder builder = new KeyGenParameterSpec.Builder("emas_rest_key", 3);
            builder.setKeySize(256);
            builder.setBlockModes("GCM");
            builder.setEncryptionPaddings("NoPadding");
            if (Build.VERSION.SDK_INT >= 28) {
                builder.setUnlockedDeviceRequired(true);
            }
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            keyGenerator.init(builder.build());
            return keyGenerator.generateKey();
        } catch (InvalidAlgorithmParameterException | NoSuchAlgorithmException e) {
            LogUtil.m997e(Log.getStackTraceString(e));
            this.f927b = false;
            return null;
        }
    }

    /* renamed from: a */
    public byte[] m619a(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, ShortBufferException {
        if (!this.f927b) {
            return null;
        }
        try {
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(1, this.f926a.getKey("emas_rest_key", null));
            byte[] iv = cipher.getIV();
            byte[] bArr2 = new byte[cipher.getOutputSize(bArr.length) + 12];
            System.arraycopy(iv, 0, bArr2, 0, 12);
            cipher.doFinal(bArr, 0, bArr.length, bArr2, 12);
            return bArr2;
        } catch (InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException | ShortBufferException e) {
            LogUtil.m997e(Log.getStackTraceString(e));
            return null;
        }
    }
}
