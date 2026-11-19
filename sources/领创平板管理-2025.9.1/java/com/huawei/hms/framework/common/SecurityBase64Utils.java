package com.huawei.hms.framework.common;

import android.util.Base64;
import com.huawei.secure.android.common.util.SafeBase64;

/* loaded from: classes.dex */
public class SecurityBase64Utils {
    public static boolean IS_AEGIS_BASE64_LIBRARY_LOADED = false;
    public static final String SAFE_BASE64_PATH = "com.huawei.secure.android.common.util.SafeBase64";

    public static boolean checkCompatible(String str) throws ClassNotFoundException {
        ClassLoader classLoader = SecurityBase64Utils.class.getClassLoader();
        if (classLoader == null) {
            return false;
        }
        try {
            classLoader.loadClass(str);
            synchronized (StringUtils.class) {
                IS_AEGIS_BASE64_LIBRARY_LOADED = true;
            }
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static byte[] decode(String str, int i) {
        if (IS_AEGIS_BASE64_LIBRARY_LOADED || checkCompatible(SAFE_BASE64_PATH)) {
            return SafeBase64.decode(str, i);
        }
        try {
            return Base64.decode(str, i);
        } catch (Exception unused) {
            return new byte[0];
        }
    }

    public static String encodeToString(byte[] bArr, int i) {
        if (IS_AEGIS_BASE64_LIBRARY_LOADED || checkCompatible(SAFE_BASE64_PATH)) {
            return SafeBase64.encodeToString(bArr, i);
        }
        try {
            return Base64.encodeToString(bArr, i);
        } catch (Exception unused) {
            return null;
        }
    }
}
