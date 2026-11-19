package com.huawei.hem;

import com.alibaba.sdk.android.tbrest.request.BizRequest;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hms.common.internal.TransactionIdCreater;
import com.taobao.accs.common.Constants;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: ByteString.java */
/* renamed from: com.huawei.hem.kn */
/* loaded from: classes.dex */
public class ByteString implements Serializable, Comparable<ByteString> {
    public static final long serialVersionUID = 1;
    public final byte[] data;
    public transient int hashCode;
    public transient String utf8;
    public static final char[] HEX_DIGITS = {TransactionIdCreater.FILL_BYTE, '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final ByteString EMPTY = m2224of(new byte[0]);

    public ByteString(byte[] bArr) {
        this.data = bArr;
    }

    /* renamed from: a */
    public static int m2222a(char c) {
        if (c >= '0' && c <= '9') {
            return c - TransactionIdCreater.FILL_BYTE;
        }
        char c2 = 'a';
        if (c < 'a' || c > 'f') {
            c2 = 'A';
            if (c < 'A' || c > 'F') {
                throw new IllegalArgumentException("Unexpected hex digit: " + c);
            }
        }
        return (c - c2) + 10;
    }

    public static int codePointIndexToCharIndex(String str, int i) {
        int length = str.length();
        int iCharCount = 0;
        int i2 = 0;
        while (iCharCount < length) {
            if (i2 == i) {
                return iCharCount;
            }
            int iCodePointAt = str.codePointAt(iCharCount);
            if ((Character.isISOControl(iCodePointAt) && iCodePointAt != 10 && iCodePointAt != 13) || iCodePointAt == 65533) {
                return -1;
            }
            i2++;
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.length();
    }

    @Nullable
    public static ByteString decodeBase64(String str) {
        int i;
        int i2;
        char cCharAt;
        if (str == null) {
            throw new IllegalArgumentException("base64 == null");
        }
        int length = str.length();
        while (length > 0 && ((cCharAt = str.charAt(length - 1)) == '=' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ' || cCharAt == '\t')) {
            length = i2;
        }
        int i3 = (int) ((length * 6) / 8);
        byte[] bArr = new byte[i3];
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            if (i4 < length) {
                char cCharAt2 = str.charAt(i4);
                if (cCharAt2 >= 'A' && cCharAt2 <= 'Z') {
                    i = cCharAt2 - 'A';
                } else if (cCharAt2 >= 'a' && cCharAt2 <= 'z') {
                    i = cCharAt2 - 'G';
                } else if (cCharAt2 >= '0' && cCharAt2 <= '9') {
                    i = cCharAt2 + 4;
                } else if (cCharAt2 != '+' && cCharAt2 != '-') {
                    if (cCharAt2 != '/' && cCharAt2 != '_') {
                        if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != ' ' && cCharAt2 != '\t') {
                            break;
                        }
                        i4++;
                    } else {
                        i = 63;
                    }
                } else {
                    i = 62;
                }
                i6 = (i6 << 6) | ((byte) i);
                i5++;
                if (i5 % 4 == 0) {
                    int i8 = i7 + 1;
                    bArr[i7] = (byte) (i6 >> 16);
                    int i9 = i8 + 1;
                    bArr[i8] = (byte) (i6 >> 8);
                    bArr[i9] = (byte) i6;
                    i7 = i9 + 1;
                }
                i4++;
            } else {
                int i10 = i5 % 4;
                if (i10 == 1) {
                    break;
                }
                if (i10 == 2) {
                    bArr[i7] = (byte) ((i6 << 12) >> 16);
                    i7++;
                } else if (i10 == 3) {
                    int i11 = i6 << 6;
                    int i12 = i7 + 1;
                    bArr[i7] = (byte) (i11 >> 16);
                    i7 = i12 + 1;
                    bArr[i12] = (byte) (i11 >> 8);
                }
                if (i7 != i3) {
                    byte[] bArr2 = new byte[i7];
                    System.arraycopy(bArr, 0, bArr2, 0, i7);
                    bArr = bArr2;
                }
            }
        }
        bArr = null;
        if (bArr != null) {
            return new ByteString(bArr);
        }
        return null;
    }

    public static ByteString decodeHex(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException(CompilerOutline.m1760e("Unexpected hex string: ", str));
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (m2222a(str.charAt(i2 + 1)) + (m2222a(str.charAt(i2)) << 4));
        }
        return m2224of(bArr);
    }

    public static ByteString encodeString(String str, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        if (charset != null) {
            return new ByteString(str.getBytes(charset));
        }
        throw new IllegalArgumentException("charset == null");
    }

    public static ByteString encodeUtf8(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        ByteString c1091kn = new ByteString(str.getBytes(OkioByteUtilities.f2363a));
        c1091kn.utf8 = str;
        return c1091kn;
    }

    /* renamed from: of */
    public static ByteString m2224of(byte... bArr) {
        if (bArr != null) {
            return new ByteString((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public static ByteString read(InputStream inputStream, int i) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException(CompilerOutline.m1754L("byteCount < 0: ", i));
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = inputStream.read(bArr, i2, i - i2);
            if (i3 == -1) {
                throw new EOFException();
            }
            i2 += i3;
        }
        return new ByteString(bArr);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IllegalAccessException, NoSuchFieldException, IOException, IllegalArgumentException {
        ByteString c1091kn = read(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = ByteString.class.getDeclaredField(Constants.KEY_DATA);
            declaredField.setAccessible(true);
            declaredField.set(this, c1091kn.data);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (NoSuchFieldException unused2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(this.data).asReadOnlyBuffer();
    }

    /* renamed from: b */
    public final ByteString m2226b(String str) {
        try {
            return m2224of(MessageDigest.getInstance(str).digest(this.data));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public String base64() {
        return OkioBase64Codec.m1888a(this.data, OkioBase64Codec.f2805a);
    }

    public String base64Url() {
        return OkioBase64Codec.m1888a(this.data, OkioBase64Codec.f2806b);
    }

    /* renamed from: c */
    public final ByteString m2227c(String str, ByteString c1091kn) throws NoSuchAlgorithmException, InvalidKeyException {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(c1091kn.toByteArray(), str));
            return m2224of(mac.doFinal(this.data));
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    public final boolean endsWith(ByteString c1091kn) {
        return rangeEquals(size() - c1091kn.size(), c1091kn, 0, c1091kn.size());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString c1091kn = (ByteString) obj;
            int size = c1091kn.size();
            byte[] bArr = this.data;
            if (size == bArr.length && c1091kn.rangeEquals(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public byte getByte(int i) {
        return this.data[i];
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = Arrays.hashCode(this.data);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    public String hex() {
        byte[] bArr = this.data;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = HEX_DIGITS;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public ByteString hmacSha1(ByteString c1091kn) {
        return m2227c("HmacSHA1", c1091kn);
    }

    public ByteString hmacSha256(ByteString c1091kn) {
        return m2227c("HmacSHA256", c1091kn);
    }

    public ByteString hmacSha512(ByteString c1091kn) {
        return m2227c("HmacSHA512", c1091kn);
    }

    public final int indexOf(ByteString c1091kn) {
        return indexOf(c1091kn.internalArray(), 0);
    }

    public byte[] internalArray() {
        return this.data;
    }

    public final int lastIndexOf(ByteString c1091kn) {
        return lastIndexOf(c1091kn.internalArray(), size());
    }

    public ByteString md5() {
        return m2226b("MD5");
    }

    public boolean rangeEquals(int i, ByteString c1091kn, int i2, int i3) {
        return c1091kn.rangeEquals(i2, this.data, i, i3);
    }

    public ByteString sha1() {
        return m2226b("SHA-1");
    }

    public ByteString sha256() {
        return m2226b("SHA-256");
    }

    public ByteString sha512() {
        return m2226b("SHA-512");
    }

    public int size() {
        return this.data.length;
    }

    public final boolean startsWith(ByteString c1091kn) {
        return rangeEquals(0, c1091kn, 0, c1091kn.size());
    }

    public String string(Charset charset) {
        if (charset != null) {
            return new String(this.data, charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    public ByteString substring(int i) {
        return substring(i, this.data.length);
    }

    public ByteString toAsciiLowercase() {
        int i = 0;
        while (true) {
            byte[] bArr = this.data;
            if (i >= bArr.length) {
                return this;
            }
            byte b = bArr[i];
            if (b >= 65 && b <= 90) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i] = (byte) (b + BizRequest.FLAGS_GET_CONFIG);
                for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                    byte b2 = bArr2[i2];
                    if (b2 >= 65 && b2 <= 90) {
                        bArr2[i2] = (byte) (b2 + BizRequest.FLAGS_GET_CONFIG);
                    }
                }
                return new ByteString(bArr2);
            }
            i++;
        }
    }

    public ByteString toAsciiUppercase() {
        int i = 0;
        while (true) {
            byte[] bArr = this.data;
            if (i >= bArr.length) {
                return this;
            }
            byte b = bArr[i];
            if (b >= 97 && b <= 122) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i] = (byte) (b - 32);
                for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                    byte b2 = bArr2[i2];
                    if (b2 >= 97 && b2 <= 122) {
                        bArr2[i2] = (byte) (b2 - 32);
                    }
                }
                return new ByteString(bArr2);
            }
            i++;
        }
    }

    public byte[] toByteArray() {
        return (byte[]) this.data.clone();
    }

    public String toString() {
        if (this.data.length == 0) {
            return "[size=0]";
        }
        String strUtf8 = utf8();
        int iCodePointIndexToCharIndex = codePointIndexToCharIndex(strUtf8, 64);
        if (iCodePointIndexToCharIndex != -1) {
            String strReplace = strUtf8.substring(0, iCodePointIndexToCharIndex).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
            if (iCodePointIndexToCharIndex >= strUtf8.length()) {
                return CompilerOutline.m1761f("[text=", strReplace, "]");
            }
            StringBuilder sbM1765j = CompilerOutline.m1765j("[size=");
            sbM1765j.append(this.data.length);
            sbM1765j.append(" text=");
            sbM1765j.append(strReplace);
            sbM1765j.append("…]");
            return sbM1765j.toString();
        }
        if (this.data.length <= 64) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("[hex=");
            sbM1765j2.append(hex());
            sbM1765j2.append("]");
            return sbM1765j2.toString();
        }
        StringBuilder sbM1765j3 = CompilerOutline.m1765j("[size=");
        sbM1765j3.append(this.data.length);
        sbM1765j3.append(" hex=");
        sbM1765j3.append(substring(0, 64).hex());
        sbM1765j3.append("…]");
        return sbM1765j3.toString();
    }

    public String utf8() {
        String str = this.utf8;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.data, OkioByteUtilities.f2363a);
        this.utf8 = str2;
        return str2;
    }

    public void write(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        outputStream.write(this.data);
    }

    @Override // java.lang.Comparable
    public int compareTo(ByteString c1091kn) {
        int size = size();
        int size2 = c1091kn.size();
        int iMin = Math.min(size, size2);
        for (int i = 0; i < iMin; i++) {
            int i2 = getByte(i) & Base64.EQUALS_SIGN_ENC;
            int i3 = c1091kn.getByte(i) & Base64.EQUALS_SIGN_ENC;
            if (i2 != i3) {
                return i2 < i3 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public final boolean endsWith(byte[] bArr) {
        return rangeEquals(size() - bArr.length, bArr, 0, bArr.length);
    }

    public final int indexOf(ByteString c1091kn, int i) {
        return indexOf(c1091kn.internalArray(), i);
    }

    public final int lastIndexOf(ByteString c1091kn, int i) {
        return lastIndexOf(c1091kn.internalArray(), i);
    }

    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        if (i >= 0) {
            byte[] bArr2 = this.data;
            if (i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && OkioByteUtilities.m1542a(bArr2, i, bArr, i2, i3)) {
                return true;
            }
        }
        return false;
    }

    public final boolean startsWith(byte[] bArr) {
        return rangeEquals(0, bArr, 0, bArr.length);
    }

    public ByteString substring(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        byte[] bArr = this.data;
        if (i2 > bArr.length) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("endIndex > length(");
            sbM1765j.append(this.data.length);
            sbM1765j.append(")");
            throw new IllegalArgumentException(sbM1765j.toString());
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i == 0 && i2 == bArr.length) {
            return this;
        }
        byte[] bArr2 = new byte[i3];
        System.arraycopy(this.data, i, bArr2, 0, i3);
        return new ByteString(bArr2);
    }

    /* renamed from: of */
    public static ByteString m2225of(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            OkioByteUtilities.m1543b(bArr.length, i, i2);
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return new ByteString(bArr2);
        }
        throw new IllegalArgumentException("data == null");
    }

    public final int indexOf(byte[] bArr) {
        return indexOf(bArr, 0);
    }

    public final int lastIndexOf(byte[] bArr) {
        return lastIndexOf(bArr, size());
    }

    public void write(OkioBuffer c1016hn) {
        byte[] bArr = this.data;
        c1016hn.m1987Q(bArr, 0, bArr.length);
    }

    public int indexOf(byte[] bArr, int i) {
        int length = this.data.length - bArr.length;
        for (int iMax = Math.max(i, 0); iMax <= length; iMax++) {
            if (OkioByteUtilities.m1542a(this.data, iMax, bArr, 0, bArr.length)) {
                return iMax;
            }
        }
        return -1;
    }

    public int lastIndexOf(byte[] bArr, int i) {
        for (int iMin = Math.min(i, this.data.length - bArr.length); iMin >= 0; iMin--) {
            if (OkioByteUtilities.m1542a(this.data, iMin, bArr, 0, bArr.length)) {
                return iMin;
            }
        }
        return -1;
    }

    /* renamed from: of */
    public static ByteString m2223of(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return new ByteString(bArr);
        }
        throw new IllegalArgumentException("data == null");
    }
}
