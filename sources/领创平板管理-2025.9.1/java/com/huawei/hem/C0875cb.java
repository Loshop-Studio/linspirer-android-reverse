package com.huawei.hem;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: com.huawei.hem.cb */
/* loaded from: classes.dex */
public final class C0875cb {

    /* renamed from: a */
    public static final String[] f2336a = {"SHA-256", "SHA-384", "SHA-512"};

    /* renamed from: a */
    public static String m1504a(String str) throws NoSuchAlgorithmException {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty("SHA-256")) {
            AbstractC1102l9.m2269J("cb", "content or algorithm is null.");
            return "";
        }
        String[] strArr = f2336a;
        int length = strArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if (strArr[i].equals("SHA-256")) {
                z = true;
                break;
            }
            i++;
        }
        if (!z) {
            AbstractC1102l9.m2269J("cb", "algorithm is not safe or legal");
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes("UTF-8"));
            return AbstractC1102l9.m2265F(messageDigest.digest());
        } catch (UnsupportedEncodingException unused) {
            AbstractC1102l9.m2269J("cb", "Error in generate SHA UnsupportedEncodingException");
            return "";
        } catch (NoSuchAlgorithmException unused2) {
            AbstractC1102l9.m2269J("cb", "Error in generate SHA NoSuchAlgorithmException");
            return "";
        }
    }
}
