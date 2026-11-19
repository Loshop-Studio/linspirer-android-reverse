package com.alibaba.sdk.android.emas;

import android.text.TextUtils;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hms.common.internal.TransactionIdCreater;

/* compiled from: EncrytUtils.java */
/* renamed from: com.alibaba.sdk.android.emas.h */
/* loaded from: classes.dex */
public final class C0529h {

    /* renamed from: a */
    public static final char[] f946a = {TransactionIdCreater.FILL_BYTE, '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a */
    public static byte[] m640a(String str, String str2) {
        try {
            byte[] bArrM619a = C0523b.m615a().m619a(str2.getBytes());
            if (bArrM619a != null) {
                return bArrM619a;
            }
        } catch (Exception unused) {
        }
        return C0522a.m610a(str, str2).getBytes();
    }

    public static String aesDecrypt(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                return m639a(Base64.decode(str2), str);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String aesEncrypt(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                return Base64.encodeBase64String(m640a(str, str2));
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* renamed from: a */
    public static String m639a(byte[] bArr, String str) {
        try {
            byte[] bArrM620b = C0523b.m615a().m620b(bArr);
            if (bArrM620b != null) {
                return new String(bArrM620b);
            }
        } catch (Exception unused) {
        }
        return C0522a.m613b(str, new String(bArr));
    }
}
