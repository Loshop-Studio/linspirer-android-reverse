package com.huawei.hms.device;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hem.C0948f6;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.support.log.common.Base64;
import com.huawei.hms.utils.IOUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;

/* compiled from: X509CertUtil.java */
/* renamed from: com.huawei.hms.device.a */
/* loaded from: classes.dex */
public class C1546a {
    /* renamed from: a */
    public static boolean m3414a(X509Certificate x509Certificate, List<X509Certificate> list) throws CertificateNotYetValidException, CertificateExpiredException {
        if (list == null || list.size() == 0) {
            return false;
        }
        if (x509Certificate == null) {
            HMSLog.m3461e("X509CertUtil", "rootCert is null,verify failed ");
            return false;
        }
        PublicKey publicKey = x509Certificate.getPublicKey();
        for (X509Certificate x509Certificate2 : list) {
            if (x509Certificate2 != null) {
                try {
                    x509Certificate2.checkValidity();
                    x509Certificate2.verify(publicKey);
                    publicKey = x509Certificate2.getPublicKey();
                } catch (InvalidKeyException | NoSuchAlgorithmException | NoSuchProviderException | SignatureException | CertificateException e) {
                    StringBuilder sbM1765j = C0948f6.m1765j("verify failed ");
                    sbM1765j.append(e.getMessage());
                    HMSLog.m3461e("X509CertUtil", sbM1765j.toString());
                }
            }
            return false;
        }
        return m3416a(list);
    }

    /* renamed from: b */
    public static List<X509Certificate> m3418b(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(m3409a(it.next()));
        }
        return arrayList;
    }

    /* renamed from: c */
    public static List<String> m3421c(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() <= 1) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList(jSONArray.length());
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(jSONArray.getString(i));
            }
            return arrayList;
        } catch (JSONException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("Failed to getCertChain: ");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("X509CertUtil", sbM1765j.toString());
            return Collections.emptyList();
        }
    }

    /* renamed from: b */
    public static List<X509Certificate> m3417b(String str) {
        return m3418b(m3421c(str));
    }

    /* renamed from: b */
    public static boolean m3420b(X509Certificate x509Certificate, String str, String str2) {
        if (x509Certificate == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        return str2.equals(m3406a(x509Certificate.getSubjectDN().getName(), str));
    }

    /* renamed from: b */
    public static boolean m3419b(X509Certificate x509Certificate, String str) {
        return m3420b(x509Certificate, "OU", str);
    }

    /* renamed from: a */
    public static X509Certificate m3409a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return m3410a(Base64.decode(str));
        } catch (IllegalArgumentException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("getCert failed : ");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("X509CertUtil", sbM1765j.toString());
            return null;
        }
    }

    /* renamed from: a */
    public static X509Certificate m3410a(byte[] bArr) {
        try {
            return (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr));
        } catch (CertificateException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("Failed to get cert: ");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("X509CertUtil", sbM1765j.toString());
            return null;
        }
    }

    /* renamed from: a */
    public static String m3406a(String str, String str2) {
        int iIndexOf = str.toUpperCase(Locale.getDefault()).indexOf(str2 + ContainerUtils.KEY_VALUE_DELIMITER);
        if (iIndexOf == -1) {
            return null;
        }
        int iIndexOf2 = str.indexOf(",", iIndexOf);
        if (iIndexOf2 != -1) {
            return str.substring(str2.length() + iIndexOf + 1, iIndexOf2);
        }
        return str.substring(str2.length() + iIndexOf + 1);
    }

    /* renamed from: a */
    public static boolean m3411a(X509Certificate x509Certificate) {
        if (x509Certificate == null || x509Certificate.getBasicConstraints() == -1) {
            return false;
        }
        boolean[] keyUsage = x509Certificate.getKeyUsage();
        if (5 < keyUsage.length) {
            return keyUsage[5];
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m3416a(List<X509Certificate> list) {
        for (int i = 0; i < list.size() - 1; i++) {
            if (!m3411a(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m3412a(X509Certificate x509Certificate, String str) {
        return m3420b(x509Certificate, "CN", str);
    }

    /* renamed from: a */
    public static boolean m3413a(X509Certificate x509Certificate, String str, String str2) {
        try {
            return m3415a(x509Certificate, str.getBytes("UTF-8"), Base64.decode(str2));
        } catch (UnsupportedEncodingException | IllegalArgumentException e) {
            StringBuilder sbM1765j = C0948f6.m1765j(" plainText exception: ");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("X509CertUtil", sbM1765j.toString());
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m3415a(X509Certificate x509Certificate, byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        try {
            Signature signature = Signature.getInstance(x509Certificate.getSigAlgName());
            signature.initVerify(x509Certificate.getPublicKey());
            signature.update(bArr);
            return signature.verify(bArr2);
        } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("failed checkSignature : ");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("X509CertUtil", sbM1765j.toString());
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.InputStream] */
    /* renamed from: a */
    public static X509Certificate m3408a(Context context, String str) throws Throwable {
        InputStream inputStreamOpen;
        KeyStore keyStore;
        ?? r1 = 0;
        if (context != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        keyStore = KeyStore.getInstance("bks");
                        inputStreamOpen = context.getAssets().open("hmsrootcas.bks");
                    } catch (IOException e) {
                        e = e;
                        inputStreamOpen = null;
                        HMSLog.m3461e("X509CertUtil", "exception:" + e.getMessage());
                        IOUtils.closeQuietly(inputStreamOpen);
                        return null;
                    } catch (KeyStoreException e2) {
                        e = e2;
                        inputStreamOpen = null;
                        HMSLog.m3461e("X509CertUtil", "exception:" + e.getMessage());
                        IOUtils.closeQuietly(inputStreamOpen);
                        return null;
                    } catch (NoSuchAlgorithmException e3) {
                        e = e3;
                        inputStreamOpen = null;
                        HMSLog.m3461e("X509CertUtil", "exception:" + e.getMessage());
                        IOUtils.closeQuietly(inputStreamOpen);
                        return null;
                    } catch (CertificateException e4) {
                        e = e4;
                        inputStreamOpen = null;
                        HMSLog.m3461e("X509CertUtil", "exception:" + e.getMessage());
                        IOUtils.closeQuietly(inputStreamOpen);
                        return null;
                    } catch (Throwable th) {
                        th = th;
                        IOUtils.closeQuietly((InputStream) r1);
                        throw th;
                    }
                    try {
                        keyStore.load(inputStreamOpen, "".toCharArray());
                    } catch (IOException e5) {
                        e = e5;
                        HMSLog.m3461e("X509CertUtil", "exception:" + e.getMessage());
                        IOUtils.closeQuietly(inputStreamOpen);
                        return null;
                    } catch (KeyStoreException e6) {
                        e = e6;
                        HMSLog.m3461e("X509CertUtil", "exception:" + e.getMessage());
                        IOUtils.closeQuietly(inputStreamOpen);
                        return null;
                    } catch (NoSuchAlgorithmException e7) {
                        e = e7;
                        HMSLog.m3461e("X509CertUtil", "exception:" + e.getMessage());
                        IOUtils.closeQuietly(inputStreamOpen);
                        return null;
                    } catch (CertificateException e8) {
                        e = e8;
                        HMSLog.m3461e("X509CertUtil", "exception:" + e.getMessage());
                        IOUtils.closeQuietly(inputStreamOpen);
                        return null;
                    }
                    if (!keyStore.containsAlias(str)) {
                        HMSLog.m3461e("X509CertUtil", "Not include alias " + str);
                        IOUtils.closeQuietly(inputStreamOpen);
                        return null;
                    }
                    Certificate certificate = keyStore.getCertificate(str);
                    if (!(certificate instanceof X509Certificate)) {
                        IOUtils.closeQuietly(inputStreamOpen);
                        return null;
                    }
                    X509Certificate x509Certificate = (X509Certificate) certificate;
                    x509Certificate.checkValidity();
                    IOUtils.closeQuietly(inputStreamOpen);
                    return x509Certificate;
                }
            } catch (Throwable th2) {
                th = th2;
                r1 = context;
            }
        }
        HMSLog.m3461e("X509CertUtil", "args are error");
        return null;
    }

    /* renamed from: a */
    public static X509Certificate m3407a(Context context) {
        return m3408a(context, "052root");
    }
}
