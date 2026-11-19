package com.loc;

import com.alibaba.sdk.android.tbrest.utils.Base64;
import java.text.SimpleDateFormat;
import org.android.agoo.message.MessageService;

/* compiled from: DataTypeUtil.java */
/* renamed from: com.loc.dm */
/* loaded from: classes.dex */
public final class DataTypeUtil {

    /* renamed from: a */
    public static SimpleDateFormat f5340a;

    /* renamed from: b */
    public static String f5341b;

    /* renamed from: a */
    public static String m4575a(byte[] bArr, String str) {
        StringBuilder sb = new StringBuilder();
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (int i = 0; i < bArr.length; i++) {
            String hexString = Integer.toHexString(bArr[i] & Base64.EQUALS_SIGN_ENC);
            if (hexString.length() < 2) {
                sb.append(MessageService.MSG_DB_READY_REPORT);
            }
            sb.append(hexString);
            if (str.length() > 0 && i < bArr.length - 1) {
                sb.append(str);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static byte[] m4576a(long j) {
        byte[] bArr = new byte[6];
        for (int i = 0; i < 6; i++) {
            bArr[i] = (byte) ((j >> (((6 - i) - 1) * 8)) & 255);
        }
        return bArr;
    }
}
