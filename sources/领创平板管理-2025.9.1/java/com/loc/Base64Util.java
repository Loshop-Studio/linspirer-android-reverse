package com.loc;

import com.alibaba.sdk.android.tbrest.request.BizRequest;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.bumptech.glide.disklrucache.StrictLineReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.zip.GZIPInputStream;

/* compiled from: Base64Util.java */
/* renamed from: com.loc.l */
/* loaded from: classes.dex */
public class Base64Util {

    /* renamed from: a */
    public static final /* synthetic */ boolean f5894a = !Base64Util.class.desiredAssertionStatus();

    /* renamed from: b */
    public static final byte[] f5895b = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: c */
    public static final byte[] f5896c = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, Base64.EQUALS_SIGN, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, StrictLineReader.f2110CR, 14, 15, BizRequest.FLAGS_REAL_TIME_DEBUG, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, BizRequest.FLAGS_GET_CONFIG, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};

    /* renamed from: d */
    public static final byte[] f5897d = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    /* renamed from: e */
    public static final byte[] f5898e = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, Base64.EQUALS_SIGN, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, StrictLineReader.f2110CR, 14, 15, BizRequest.FLAGS_REAL_TIME_DEBUG, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, BizRequest.FLAGS_GET_CONFIG, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};

    /* renamed from: f */
    public static final byte[] f5899f = {45, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 95, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};

    /* renamed from: g */
    public static final byte[] f5900g = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 0, -9, -9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -9, -9, -1, -9, -9, -9, 11, 12, StrictLineReader.f2110CR, 14, 15, BizRequest.FLAGS_REAL_TIME_DEBUG, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, BizRequest.FLAGS_GET_CONFIG, 33, 34, 35, 36, -9, -9, -9, -9, 37, -9, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, Base64.EQUALS_SIGN, 62, 63, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};

    /* renamed from: a */
    public static String m5262a(byte[] bArr) {
        String strM5263a;
        try {
            strM5263a = m5263a(bArr, bArr.length);
        } catch (IOException e) {
            if (!f5894a) {
                throw new AssertionError(e.getMessage());
            }
            strM5263a = null;
        }
        if (f5894a || strM5263a != null) {
            return strM5263a;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public static String m5263a(byte[] bArr, int i) {
        if (bArr == null) {
            throw new NullPointerException("Cannot serialize a null array.");
        }
        if (i < 0) {
            throw new IllegalArgumentException("Cannot have length offset: ".concat(String.valueOf(i)));
        }
        if (i + 0 > bArr.length) {
            throw new IllegalArgumentException(String.format("Cannot have offset of %d and length of %d with array of length %d", 0, Integer.valueOf(i), Integer.valueOf(bArr.length)));
        }
        int i2 = ((i / 3) * 4) + (i % 3 <= 0 ? 0 : 4);
        byte[] bArr2 = new byte[i2];
        int i3 = i - 2;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i3) {
            m5265a(bArr, i4 + 0, 3, bArr2, i5);
            i4 += 3;
            i5 += 4;
        }
        if (i4 < i) {
            m5265a(bArr, i4 + 0, i - i4, bArr2, i5);
            i5 += 4;
        }
        if (i5 <= i2 - 1) {
            byte[] bArr3 = new byte[i5];
            System.arraycopy(bArr2, 0, bArr3, 0, i5);
            bArr2 = bArr3;
        }
        try {
            return new String(bArr2, Base64.PREFERRED_ENCODING);
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr2);
        }
    }

    /* renamed from: a */
    public static byte[] m5264a(String str) {
        return m5266b(str);
    }

    /* renamed from: a */
    public static byte[] m5265a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        byte[] bArr3 = f5895b;
        int i4 = (i2 > 0 ? (bArr[i] << 24) >>> 8 : 0) | (i2 > 1 ? (bArr[i + 1] << 24) >>> 16 : 0) | (i2 > 2 ? (bArr[i + 2] << 24) >>> 24 : 0);
        if (i2 == 1) {
            bArr2[i3] = bArr3[i4 >>> 18];
            bArr2[i3 + 1] = bArr3[(i4 >>> 12) & 63];
            bArr2[i3 + 2] = Base64.EQUALS_SIGN;
            bArr2[i3 + 3] = Base64.EQUALS_SIGN;
            return bArr2;
        }
        if (i2 == 2) {
            bArr2[i3] = bArr3[i4 >>> 18];
            bArr2[i3 + 1] = bArr3[(i4 >>> 12) & 63];
            bArr2[i3 + 2] = bArr3[(i4 >>> 6) & 63];
            bArr2[i3 + 3] = Base64.EQUALS_SIGN;
            return bArr2;
        }
        if (i2 != 3) {
            return bArr2;
        }
        bArr2[i3] = bArr3[i4 >>> 18];
        bArr2[i3 + 1] = bArr3[(i4 >>> 12) & 63];
        bArr2[i3 + 2] = bArr3[(i4 >>> 6) & 63];
        bArr2[i3 + 3] = bArr3[i4 & 63];
        return bArr2;
    }

    /* renamed from: b */
    public static byte[] m5266b(String str) throws Throwable {
        byte[] bytes;
        ByteArrayInputStream byteArrayInputStream;
        GZIPInputStream gZIPInputStream;
        if (str == null) {
            throw new NullPointerException("Input string was null.");
        }
        try {
            bytes = str.getBytes(Base64.PREFERRED_ENCODING);
        } catch (UnsupportedEncodingException unused) {
            bytes = str.getBytes();
        }
        byte[] bArrM5267b = m5267b(bytes, bytes.length);
        if (bArrM5267b.length >= 4 && 35615 == ((bArrM5267b[0] & Base64.EQUALS_SIGN_ENC) | ((bArrM5267b[1] << 8) & 65280))) {
            byte[] bArr = new byte[2048];
            ByteArrayOutputStream byteArrayOutputStream = null;
            try {
                try {
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    try {
                        byteArrayInputStream = new ByteArrayInputStream(bArrM5267b);
                        try {
                            gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                            while (true) {
                                try {
                                    int i = gZIPInputStream.read(bArr);
                                    if (i < 0) {
                                        break;
                                    }
                                    byteArrayOutputStream2.write(bArr, 0, i);
                                } catch (IOException e) {
                                    e = e;
                                    byteArrayOutputStream = byteArrayOutputStream2;
                                    try {
                                        e.printStackTrace();
                                        byteArrayOutputStream.close();
                                        gZIPInputStream.close();
                                        byteArrayInputStream.close();
                                        return bArrM5267b;
                                    } catch (Throwable th) {
                                        th = th;
                                        try {
                                            byteArrayOutputStream.close();
                                        } catch (Exception unused2) {
                                        }
                                        try {
                                            gZIPInputStream.close();
                                        } catch (Exception unused3) {
                                        }
                                        try {
                                            byteArrayInputStream.close();
                                            throw th;
                                        } catch (Exception unused4) {
                                            throw th;
                                        }
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    byteArrayOutputStream = byteArrayOutputStream2;
                                    byteArrayOutputStream.close();
                                    gZIPInputStream.close();
                                    byteArrayInputStream.close();
                                    throw th;
                                }
                            }
                            bArrM5267b = byteArrayOutputStream2.toByteArray();
                            byteArrayOutputStream2.close();
                        } catch (IOException e2) {
                            e = e2;
                            gZIPInputStream = null;
                        } catch (Throwable th3) {
                            th = th3;
                            gZIPInputStream = null;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        byteArrayInputStream = null;
                        gZIPInputStream = null;
                    } catch (Throwable th4) {
                        th = th4;
                        byteArrayInputStream = null;
                        gZIPInputStream = null;
                    }
                } catch (Exception unused5) {
                }
            } catch (IOException e4) {
                e = e4;
                byteArrayInputStream = null;
                gZIPInputStream = null;
            } catch (Throwable th5) {
                th = th5;
                byteArrayInputStream = null;
                gZIPInputStream = null;
            }
            try {
                gZIPInputStream.close();
            } catch (Exception unused6) {
            }
            try {
                byteArrayInputStream.close();
            } catch (Exception unused7) {
            }
        }
        return bArrM5267b;
    }

    /* renamed from: b */
    public static byte[] m5267b(byte[] bArr, int i) throws IOException {
        int i2;
        if (bArr == null) {
            throw new NullPointerException("Cannot decode null source array.");
        }
        int i3 = i + 0;
        int i4 = 1;
        if (i3 > bArr.length) {
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and process %d bytes.", Integer.valueOf(bArr.length), 0, Integer.valueOf(i)));
        }
        if (i == 0) {
            return new byte[0];
        }
        if (i < 4) {
            throw new IllegalArgumentException("Base64Util-encoded string must have at least four characters, but length specified was ".concat(String.valueOf(i)));
        }
        byte[] bArr2 = f5896c;
        int i5 = (i * 3) / 4;
        byte[] bArr3 = new byte[i5];
        byte[] bArr4 = new byte[4];
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i6 < i3) {
            byte b = bArr2[bArr[i6] & Base64.EQUALS_SIGN_ENC];
            if (b < -5) {
                throw new IOException(String.format("Bad Base64Util input character decimal %d in array position %d", Integer.valueOf(bArr[i6] & Base64.EQUALS_SIGN_ENC), Integer.valueOf(i6)));
            }
            if (b >= -1) {
                int i9 = i7 + 1;
                bArr4[i7] = bArr[i6];
                if (i9 <= 3) {
                    i7 = i9;
                } else {
                    if (i8 < 0 || (i2 = i8 + 2) >= i5) {
                        throw new IllegalArgumentException(String.format("Destination array with length %d cannot have offset of %d and still store three bytes.", Integer.valueOf(i5), Integer.valueOf(i8)));
                    }
                    byte[] bArr5 = f5896c;
                    if (bArr4[2] == 61) {
                        bArr3[i8] = (byte) ((((bArr5[bArr4[0]] & Base64.EQUALS_SIGN_ENC) << 18) | ((bArr5[bArr4[i4]] & Base64.EQUALS_SIGN_ENC) << 12)) >>> 16);
                    } else if (bArr4[3] == 61) {
                        int i10 = ((bArr5[bArr4[0]] & Base64.EQUALS_SIGN_ENC) << 18) | ((bArr5[bArr4[i4]] & Base64.EQUALS_SIGN_ENC) << 12) | ((bArr5[bArr4[2]] & Base64.EQUALS_SIGN_ENC) << 6);
                        bArr3[i8] = (byte) (i10 >>> 16);
                        bArr3[i8 + 1] = (byte) (i10 >>> 8);
                        i4 = 2;
                    } else {
                        int i11 = ((bArr5[bArr4[i4]] & Base64.EQUALS_SIGN_ENC) << 12) | ((bArr5[bArr4[0]] & Base64.EQUALS_SIGN_ENC) << 18) | ((bArr5[bArr4[2]] & Base64.EQUALS_SIGN_ENC) << 6) | (bArr5[bArr4[3]] & Base64.EQUALS_SIGN_ENC);
                        bArr3[i8] = (byte) (i11 >> 16);
                        bArr3[i8 + 1] = (byte) (i11 >> 8);
                        bArr3[i2] = (byte) i11;
                        i4 = 3;
                    }
                    i8 += i4;
                    if (bArr[i6] == 61) {
                        break;
                    }
                    i7 = 0;
                }
            }
            i6++;
            i4 = 1;
        }
        byte[] bArr6 = new byte[i8];
        System.arraycopy(bArr3, 0, bArr6, 0, i8);
        return bArr6;
    }
}
