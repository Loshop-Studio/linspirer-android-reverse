package com.huawei.hem;

import com.huawei.hms.common.internal.TransactionIdCreater;
import javax.security.auth.x500.X500Principal;

/* renamed from: com.huawei.hem.kb */
/* loaded from: classes.dex */
public class CertificateSubjectNameParser {

    /* renamed from: a */
    public final String f3064a;

    /* renamed from: b */
    public final int f3065b;

    /* renamed from: c */
    public int f3066c;

    /* renamed from: d */
    public int f3067d;

    /* renamed from: e */
    public int f3068e;

    /* renamed from: f */
    public int f3069f;

    /* renamed from: g */
    public char[] f3070g;

    public CertificateSubjectNameParser(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f3064a = name;
        this.f3065b = name.length();
    }

    /* renamed from: a */
    public final int m2191a(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 >= this.f3065b) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("Malformed DN: ");
            sbM1765j.append(this.f3064a);
            throw new IllegalStateException(sbM1765j.toString());
        }
        char c = this.f3070g[i];
        if (c >= '0' && c <= '9') {
            i2 = c - TransactionIdCreater.FILL_BYTE;
        } else if (c >= 'a' && c <= 'f') {
            i2 = c - 'W';
        } else {
            if (c < 'A' || c > 'F') {
                StringBuilder sbM1765j2 = CompilerOutline.m1765j("Malformed DN: ");
                sbM1765j2.append(this.f3064a);
                throw new IllegalStateException(sbM1765j2.toString());
            }
            i2 = c - '7';
        }
        char c2 = this.f3070g[i4];
        if (c2 >= '0' && c2 <= '9') {
            i3 = c2 - TransactionIdCreater.FILL_BYTE;
        } else if (c2 >= 'a' && c2 <= 'f') {
            i3 = c2 - 'W';
        } else {
            if (c2 < 'A' || c2 > 'F') {
                StringBuilder sbM1765j3 = CompilerOutline.m1765j("Malformed DN: ");
                sbM1765j3.append(this.f3064a);
                throw new IllegalStateException(sbM1765j3.toString());
            }
            i3 = c2 - '7';
        }
        return (i2 << 4) + i3;
    }

    /* renamed from: b */
    public final char m2192b() {
        int i;
        int i2 = this.f3066c + 1;
        this.f3066c = i2;
        if (i2 == this.f3065b) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("Unexpected end of DN: ");
            sbM1765j.append(this.f3064a);
            throw new IllegalStateException(sbM1765j.toString());
        }
        char[] cArr = this.f3070g;
        char c = cArr[i2];
        if (c != ' ' && c != '%' && c != '\\' && c != '_' && c != '\"' && c != '#') {
            switch (c) {
                case '*':
                case '+':
                case ',':
                    break;
                default:
                    switch (c) {
                        case ';':
                        case '<':
                        case '=':
                        case '>':
                            break;
                        default:
                            int iM2191a = m2191a(i2);
                            this.f3066c++;
                            if (iM2191a >= 128) {
                                if (iM2191a < 192 || iM2191a > 247) {
                                    return '?';
                                }
                                if (iM2191a <= 223) {
                                    iM2191a &= 31;
                                    i = 1;
                                } else if (iM2191a <= 239) {
                                    i = 2;
                                    iM2191a &= 15;
                                } else {
                                    i = 3;
                                    iM2191a &= 7;
                                }
                                for (int i3 = 0; i3 < i; i3++) {
                                    int i4 = this.f3066c + 1;
                                    this.f3066c = i4;
                                    if (i4 == this.f3065b || this.f3070g[i4] != '\\') {
                                        return '?';
                                    }
                                    int i5 = i4 + 1;
                                    this.f3066c = i5;
                                    int iM2191a2 = m2191a(i5);
                                    this.f3066c++;
                                    if ((iM2191a2 & 192) != 128) {
                                        return '?';
                                    }
                                    iM2191a = (iM2191a << 6) + (iM2191a2 & 63);
                                }
                            }
                            return (char) iM2191a;
                    }
            }
        }
        return cArr[i2];
    }

    /* renamed from: c */
    public final String m2193c() {
        while (true) {
            int i = this.f3066c;
            if (i >= this.f3065b || this.f3070g[i] != ' ') {
                break;
            }
            this.f3066c = i + 1;
        }
        int i2 = this.f3066c;
        if (i2 == this.f3065b) {
            return null;
        }
        this.f3067d = i2;
        this.f3066c = i2 + 1;
        while (true) {
            int i3 = this.f3066c;
            if (i3 >= this.f3065b) {
                break;
            }
            char[] cArr = this.f3070g;
            if (cArr[i3] == '=' || cArr[i3] == ' ') {
                break;
            }
            this.f3066c = i3 + 1;
        }
        int i4 = this.f3066c;
        if (i4 >= this.f3065b) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("Unexpected end of DN: ");
            sbM1765j.append(this.f3064a);
            throw new IllegalStateException(sbM1765j.toString());
        }
        this.f3068e = i4;
        if (this.f3070g[i4] == ' ') {
            while (true) {
                int i5 = this.f3066c;
                if (i5 >= this.f3065b) {
                    break;
                }
                char[] cArr2 = this.f3070g;
                if (cArr2[i5] == '=' || cArr2[i5] != ' ') {
                    break;
                }
                this.f3066c = i5 + 1;
            }
            char[] cArr3 = this.f3070g;
            int i6 = this.f3066c;
            if (cArr3[i6] != '=' || i6 == this.f3065b) {
                StringBuilder sbM1765j2 = CompilerOutline.m1765j("Unexpected end of DN: ");
                sbM1765j2.append(this.f3064a);
                throw new IllegalStateException(sbM1765j2.toString());
            }
        }
        this.f3066c++;
        while (true) {
            int i7 = this.f3066c;
            if (i7 >= this.f3065b || this.f3070g[i7] != ' ') {
                break;
            }
            this.f3066c = i7 + 1;
        }
        int i8 = this.f3068e;
        int i9 = this.f3067d;
        if (i8 - i9 > 4) {
            char[] cArr4 = this.f3070g;
            if (cArr4[i9 + 3] == '.' && (cArr4[i9] == 'O' || cArr4[i9] == 'o')) {
                char[] cArr5 = this.f3070g;
                int i10 = this.f3067d + 1;
                if (cArr5[i10] == 'I' || cArr5[i10] == 'i') {
                    char[] cArr6 = this.f3070g;
                    int i11 = this.f3067d + 2;
                    if (cArr6[i11] == 'D' || cArr6[i11] == 'd') {
                        this.f3067d += 4;
                    }
                }
            }
        }
        char[] cArr7 = this.f3070g;
        int i12 = this.f3067d;
        return new String(cArr7, i12, this.f3068e - i12);
    }
}
