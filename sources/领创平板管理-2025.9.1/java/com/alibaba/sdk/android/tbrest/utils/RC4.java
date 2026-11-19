package com.alibaba.sdk.android.tbrest.utils;

/* loaded from: classes.dex */
public class RC4 {
    public static final String RC4_PK = "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK";

    public static class RC4Key {
        public int[] state;

        /* renamed from: x */
        public int f1425x;

        /* renamed from: y */
        public int f1426y;

        public RC4Key() {
            this.state = new int[256];
        }
    }

    public static byte[] doRc4(byte[] bArr, RC4Key rC4Key) {
        if (bArr == null || rC4Key == null) {
            return null;
        }
        int i = rC4Key.f1425x;
        int i2 = rC4Key.f1426y;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) % 256;
            int[] iArr = rC4Key.state;
            i2 = (iArr[i] + i2) % 256;
            int i4 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i4;
            int i5 = (iArr[i] + iArr[i2]) % 256;
            bArr[i3] = (byte) (iArr[i5] ^ bArr[i3]);
        }
        rC4Key.f1425x = i;
        rC4Key.f1426y = i2;
        return bArr;
    }

    public static RC4Key prepareKey(String str) {
        if (str == null) {
            return null;
        }
        RC4Key rC4Key = new RC4Key();
        for (int i = 0; i < 256; i++) {
            rC4Key.state[i] = i;
        }
        rC4Key.f1425x = 0;
        rC4Key.f1426y = 0;
        int length = 0;
        int iCharAt = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            try {
                iCharAt = ((str.charAt(length) + rC4Key.state[i2]) + iCharAt) % 256;
                int i3 = rC4Key.state[i2];
                rC4Key.state[i2] = rC4Key.state[iCharAt];
                rC4Key.state[iCharAt] = i3;
                length = (length + 1) % str.length();
            } catch (Exception unused) {
                return null;
            }
        }
        return rC4Key;
    }

    public static byte[] rc4(byte[] bArr) {
        return rc4(bArr, RC4_PK);
    }

    public static byte[] rc4(byte[] bArr, String str) {
        RC4Key rC4KeyPrepareKey;
        if (bArr == null || str == null || (rC4KeyPrepareKey = prepareKey(str)) == null) {
            return null;
        }
        return doRc4(bArr, rC4KeyPrepareKey);
    }
}
