package com.p061ta.utdid2.p066a.p067a;

import android.content.Context;
import android.text.TextUtils;
import java.util.Random;

/* renamed from: com.ta.utdid2.a.a.c */
/* loaded from: classes.dex */
public class UtDeviceIdentifiers {
    /* renamed from: b */
    public static String m5411b(Context context) {
        String strM5413i = UtStringUtilities.m5417b(null) ? m5413i() : null;
        return UtStringUtilities.m5417b(strM5413i) ? m5412h() : strM5413i;
    }

    /* renamed from: h */
    public static String m5412h() {
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        int iNanoTime = (int) System.nanoTime();
        int iNextInt = new Random().nextInt();
        int iNextInt2 = new Random().nextInt();
        byte[] bytes = UtdidIntegerBytes.getBytes(iCurrentTimeMillis);
        byte[] bytes2 = UtdidIntegerBytes.getBytes(iNanoTime);
        byte[] bytes3 = UtdidIntegerBytes.getBytes(iNextInt);
        byte[] bytes4 = UtdidIntegerBytes.getBytes(iNextInt2);
        byte[] bArr = new byte[16];
        System.arraycopy(bytes, 0, bArr, 0, 4);
        System.arraycopy(bytes2, 0, bArr, 4, 4);
        System.arraycopy(bytes3, 0, bArr, 8, 4);
        System.arraycopy(bytes4, 0, bArr, 12, 4);
        return UtBase64Encoder.encodeToString(bArr, 2);
    }

    /* renamed from: i */
    public static String m5413i() throws ClassNotFoundException {
        String str = UtSystemProperties.get("ro.aliyun.clouduuid", "");
        if (TextUtils.isEmpty(str)) {
            str = UtSystemProperties.get("ro.sys.aliyun.clouduuid", "");
        }
        return TextUtils.isEmpty(str) ? m5414j() : str;
    }

    /* renamed from: j */
    public static String m5414j() {
        try {
            return (String) Class.forName("com.yunos.baseservice.clouduuid.CloudUUID").getMethod("getCloudUUID", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return "";
        }
    }
}
