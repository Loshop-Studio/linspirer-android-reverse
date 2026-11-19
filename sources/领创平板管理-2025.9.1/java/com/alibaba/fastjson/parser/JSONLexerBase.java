package com.alibaba.fastjson.parser;

import anetwork.channel.util.RequestConstant;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.IOUtils;
import com.alibaba.fastjson.util.TypeUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.common.internal.TransactionIdCreater;
import java.io.Closeable;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;

/* loaded from: classes.dex */
public abstract class JSONLexerBase implements JSONLexer, Closeable {
    public static final int INT_MULTMIN_RADIX_TEN = -214748364;
    public static final long MULTMIN_RADIX_TEN = -922337203685477580L;
    public static final ThreadLocal<char[]> SBUF_LOCAL = new ThreadLocal<>();
    public static final int[] digits;
    public static final char[] typeFieldName;

    /* renamed from: bp */
    public int f831bp;

    /* renamed from: ch */
    public char f832ch;
    public int eofPos;
    public int features;
    public boolean hasSpecial;

    /* renamed from: np */
    public int f833np;
    public int pos;
    public char[] sbuf;

    /* renamed from: sp */
    public int f834sp;
    public String stringDefaultValue;
    public int token;
    public Calendar calendar = null;
    public TimeZone timeZone = JSON.defaultTimeZone;
    public Locale locale = JSON.defaultLocale;
    public int matchStat = 0;
    public int nanos = 0;

    static {
        StringBuilder sbM1765j = CompilerOutline.m1765j("\"");
        sbM1765j.append(JSON.DEFAULT_TYPE_KEY);
        sbM1765j.append("\":\"");
        typeFieldName = sbM1765j.toString().toCharArray();
        digits = new int[103];
        for (int i = 48; i <= 57; i++) {
            digits[i] = i - 48;
        }
        for (int i2 = 97; i2 <= 102; i2++) {
            digits[i2] = (i2 - 97) + 10;
        }
        for (int i3 = 65; i3 <= 70; i3++) {
            digits[i3] = (i3 - 65) + 10;
        }
    }

    public JSONLexerBase(int i) {
        this.stringDefaultValue = null;
        this.features = i;
        if ((i & Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.stringDefaultValue = "";
        }
        char[] cArr = SBUF_LOCAL.get();
        this.sbuf = cArr;
        if (cArr == null) {
            this.sbuf = new char[512];
        }
    }

    public static boolean isWhitespace(char c) {
        return c <= ' ' && (c == ' ' || c == '\n' || c == '\r' || c == '\t' || c == '\f' || c == '\b');
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String readString(char[] r12, int r13) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.readString(char[], int):java.lang.String");
    }

    private void scanStringSingleQuote() {
        char next;
        char next2;
        this.f833np = this.f831bp;
        this.hasSpecial = false;
        while (true) {
            char next3 = next();
            if (next3 == '\'') {
                this.token = 4;
                next();
                return;
            }
            if (next3 != 26) {
                boolean z = true;
                if (next3 == '\\') {
                    if (!this.hasSpecial) {
                        this.hasSpecial = true;
                        int i = this.f834sp;
                        char[] cArr = this.sbuf;
                        if (i > cArr.length) {
                            char[] cArr2 = new char[i * 2];
                            System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                            this.sbuf = cArr2;
                        }
                        copyTo(this.f833np + 1, this.f834sp, this.sbuf);
                    }
                    char next4 = next();
                    if (next4 == '\"') {
                        putChar('\"');
                    } else if (next4 != '\'') {
                        if (next4 != 'F') {
                            if (next4 == '\\') {
                                putChar('\\');
                            } else if (next4 == 'b') {
                                putChar('\b');
                            } else if (next4 != 'f') {
                                if (next4 == 'n') {
                                    putChar('\n');
                                } else if (next4 == 'r') {
                                    putChar('\r');
                                } else if (next4 != 'x') {
                                    switch (next4) {
                                        case '/':
                                            putChar('/');
                                            break;
                                        case '0':
                                            putChar((char) 0);
                                            break;
                                        case '1':
                                            putChar((char) 1);
                                            break;
                                        case '2':
                                            putChar((char) 2);
                                            break;
                                        case '3':
                                            putChar((char) 3);
                                            break;
                                        case '4':
                                            putChar((char) 4);
                                            break;
                                        case '5':
                                            putChar((char) 5);
                                            break;
                                        case '6':
                                            putChar((char) 6);
                                            break;
                                        case '7':
                                            putChar((char) 7);
                                            break;
                                        default:
                                            switch (next4) {
                                                case 't':
                                                    putChar('\t');
                                                    break;
                                                case 'u':
                                                    putChar((char) Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16));
                                                    break;
                                                case 'v':
                                                    putChar((char) 11);
                                                    break;
                                                default:
                                                    this.f832ch = next4;
                                                    throw new JSONException("unclosed single-quote string");
                                            }
                                    }
                                } else {
                                    next = next();
                                    next2 = next();
                                    boolean z2 = (next >= '0' && next <= '9') || (next >= 'a' && next <= 'f') || (next >= 'A' && next <= 'F');
                                    if ((next2 < '0' || next2 > '9') && ((next2 < 'a' || next2 > 'f') && (next2 < 'A' || next2 > 'F'))) {
                                        z = false;
                                    }
                                    if (z2 && z) {
                                        int[] iArr = digits;
                                        putChar((char) ((iArr[next] * 16) + iArr[next2]));
                                    }
                                }
                            }
                        }
                        putChar('\f');
                    } else {
                        putChar('\'');
                    }
                } else if (this.hasSpecial) {
                    int i2 = this.f834sp;
                    char[] cArr3 = this.sbuf;
                    if (i2 == cArr3.length) {
                        putChar(next3);
                    } else {
                        this.f834sp = i2 + 1;
                        cArr3[i2] = next3;
                    }
                } else {
                    this.f834sp++;
                }
            } else {
                if (isEOF()) {
                    throw new JSONException("unclosed single-quote string");
                }
                putChar(JSONLexer.EOI);
            }
        }
        throw new JSONException("invalid escape character \\x" + next + next2);
    }

    public abstract String addSymbol(int i, int i2, int i3, SymbolTable symbolTable);

    public abstract void arrayCopy(int i, char[] cArr, int i2, int i3);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract byte[] bytesValue();

    public abstract boolean charArrayCompare(char[] cArr);

    public abstract char charAt(int i);

    @Override // com.alibaba.fastjson.parser.JSONLexer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        char[] cArr = this.sbuf;
        if (cArr.length <= 8192) {
            SBUF_LOCAL.set(cArr);
        }
        this.sbuf = null;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void config(Feature feature, boolean z) {
        int iConfig = Feature.config(this.features, feature, z);
        this.features = iConfig;
        if ((iConfig & Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.stringDefaultValue = "";
        }
    }

    public abstract void copyTo(int i, int i2, char[] cArr);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final Number decimalValue(boolean z) {
        char cCharAt = charAt((this.f833np + this.f834sp) - 1);
        try {
            return cCharAt == 'F' ? Float.valueOf(Float.parseFloat(numberString())) : cCharAt == 'D' ? Double.valueOf(Double.parseDouble(numberString())) : z ? decimalValue() : Double.valueOf(doubleValue());
        } catch (NumberFormatException e) {
            throw new JSONException(e.getMessage() + ", " + info());
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract BigDecimal decimalValue();

    public double doubleValue() {
        return Double.parseDouble(numberString());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public float floatValue() throws NumberFormatException {
        char cCharAt;
        String strNumberString = numberString();
        float f = Float.parseFloat(strNumberString);
        if ((f == 0.0f || f == Float.POSITIVE_INFINITY) && (cCharAt = strNumberString.charAt(0)) > '0' && cCharAt <= '9') {
            throw new JSONException(CompilerOutline.m1760e("float overflow : ", strNumberString));
        }
        return f;
    }

    public Calendar getCalendar() {
        return this.calendar;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final char getCurrent() {
        return this.f832ch;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public int getFeatures() {
        return this.features;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public Locale getLocale() {
        return this.locale;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public TimeZone getTimeZone() {
        return this.timeZone;
    }

    public abstract int indexOf(char c, int i);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String info() {
        return "";
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int intValue() {
        int i;
        boolean z;
        int i2 = 0;
        if (this.f833np == -1) {
            this.f833np = 0;
        }
        int i3 = this.f833np;
        int i4 = this.f834sp + i3;
        if (charAt(i3) == '-') {
            i = Integer.MIN_VALUE;
            i3++;
            z = true;
        } else {
            i = -2147483647;
            z = false;
        }
        if (i3 < i4) {
            i2 = -(charAt(i3) - '0');
            i3++;
        }
        while (i3 < i4) {
            int i5 = i3 + 1;
            char cCharAt = charAt(i3);
            if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B') {
                i3 = i5;
                break;
            }
            int i6 = cCharAt - '0';
            if (i2 < -214748364) {
                throw new NumberFormatException(numberString());
            }
            int i7 = i2 * 10;
            if (i7 < i + i6) {
                throw new NumberFormatException(numberString());
            }
            i2 = i7 - i6;
            i3 = i5;
        }
        if (!z) {
            return -i2;
        }
        if (i3 > this.f833np + 1) {
            return i2;
        }
        throw new NumberFormatException(numberString());
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0088 -> B:20:0x0056). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Number integerValue() {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.integerValue():java.lang.Number");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public boolean isBlankInput() {
        int i = 0;
        while (true) {
            char cCharAt = charAt(i);
            if (cCharAt == 26) {
                this.token = 20;
                return true;
            }
            if (!isWhitespace(cCharAt)) {
                return false;
            }
            i++;
        }
    }

    public abstract boolean isEOF();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isEnabled(Feature feature) {
        return isEnabled(feature.mask);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isRef() {
        return this.f834sp == 4 && charAt(this.f833np + 1) == '$' && charAt(this.f833np + 2) == 'r' && charAt(this.f833np + 3) == 'e' && charAt(this.f833np + 4) == 'f';
    }

    public void lexError(String str, Object... objArr) {
        this.token = 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0084  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x005b -> B:12:0x0032). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long longValue() {
        /*
            r15 = this;
            int r0 = r15.f833np
            r1 = 0
            r2 = -1
            if (r0 != r2) goto L8
            r15.f833np = r1
        L8:
            int r0 = r15.f833np
            int r2 = r15.f834sp
            int r2 = r2 + r0
            char r3 = r15.charAt(r0)
            r4 = 45
            r5 = 1
            if (r3 != r4) goto L1c
            r3 = -9223372036854775808
            int r0 = r0 + 1
            r1 = r5
            goto L21
        L1c:
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L21:
            r6 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            if (r0 >= r2) goto L34
            int r8 = r0 + 1
            char r0 = r15.charAt(r0)
            int r0 = r0 + (-48)
            int r0 = -r0
            long r9 = (long) r0
        L32:
            r0 = r8
            goto L36
        L34:
            r9 = 0
        L36:
            if (r0 >= r2) goto L72
            int r8 = r0 + 1
            char r0 = r15.charAt(r0)
            r11 = 76
            if (r0 == r11) goto L71
            r11 = 83
            if (r0 == r11) goto L71
            r11 = 66
            if (r0 != r11) goto L4b
            goto L71
        L4b:
            int r0 = r0 + (-48)
            int r11 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r11 < 0) goto L67
            r11 = 10
            long r9 = r9 * r11
            long r11 = (long) r0
            long r13 = r3 + r11
            int r0 = (r9 > r13 ? 1 : (r9 == r13 ? 0 : -1))
            if (r0 < 0) goto L5d
            long r9 = r9 - r11
            goto L32
        L5d:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = r15.numberString()
            r0.<init>(r1)
            throw r0
        L67:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = r15.numberString()
            r0.<init>(r1)
            throw r0
        L71:
            r0 = r8
        L72:
            if (r1 == 0) goto L84
            int r1 = r15.f833np
            int r1 = r1 + r5
            if (r0 <= r1) goto L7a
            return r9
        L7a:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = r15.numberString()
            r0.<init>(r1)
            throw r0
        L84:
            long r0 = -r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.longValue():long");
    }

    public final boolean matchField(char[] cArr) {
        while (!charArrayCompare(cArr)) {
            if (!isWhitespace(this.f832ch)) {
                return false;
            }
            next();
        }
        int length = this.f831bp + cArr.length;
        this.f831bp = length;
        char cCharAt = charAt(length);
        this.f832ch = cCharAt;
        if (cCharAt == '{') {
            next();
            this.token = 12;
        } else if (cCharAt == '[') {
            next();
            this.token = 14;
        } else if (cCharAt == 'S' && charAt(this.f831bp + 1) == 'e' && charAt(this.f831bp + 2) == 't' && charAt(this.f831bp + 3) == '[') {
            int i = this.f831bp + 3;
            this.f831bp = i;
            this.f832ch = charAt(i);
            this.token = 21;
        } else {
            nextToken();
        }
        return true;
    }

    public boolean matchField2(char[] cArr) {
        throw new UnsupportedOperationException();
    }

    public final int matchStat() {
        return this.matchStat;
    }

    public Collection<String> newCollectionByType(Class<?> cls) {
        if (cls.isAssignableFrom(HashSet.class)) {
            return new HashSet();
        }
        if (cls.isAssignableFrom(ArrayList.class)) {
            return new ArrayList();
        }
        if (cls.isAssignableFrom(LinkedList.class)) {
            return new LinkedList();
        }
        try {
            return (Collection) cls.newInstance();
        } catch (Exception e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract char next();

    public final void nextIdent() {
        while (isWhitespace(this.f832ch)) {
            next();
        }
        char c = this.f832ch;
        if (c == '_' || c == '$' || Character.isLetter(c)) {
            scanIdent();
        } else {
            nextToken();
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextToken() {
        this.f834sp = 0;
        while (true) {
            this.pos = this.f831bp;
            char c = this.f832ch;
            if (c == '/') {
                skipComment();
            } else {
                if (c == '\"') {
                    scanString();
                    return;
                }
                if (c == ',') {
                    next();
                    this.token = 16;
                    return;
                }
                if (c >= '0' && c <= '9') {
                    scanNumber();
                    return;
                }
                char c2 = this.f832ch;
                if (c2 != '-') {
                    switch (c2) {
                        case '\b':
                        case '\t':
                        case '\n':
                        case '\f':
                        case '\r':
                        case ' ':
                            next();
                            break;
                        case '\'':
                            if (!isEnabled(Feature.AllowSingleQuotes)) {
                                throw new JSONException("Feature.AllowSingleQuotes is false");
                            }
                            scanStringSingleQuote();
                            return;
                        case '(':
                            next();
                            this.token = 10;
                            return;
                        case ')':
                            next();
                            this.token = 11;
                            return;
                        case '+':
                            next();
                            scanNumber();
                            return;
                        case '.':
                            next();
                            this.token = 25;
                            return;
                        case ':':
                            next();
                            this.token = 17;
                            return;
                        case ';':
                            next();
                            this.token = 24;
                            return;
                        case 'N':
                        case 'S':
                        case 'T':
                        case 'u':
                            scanIdent();
                            return;
                        case '[':
                            next();
                            this.token = 14;
                            return;
                        case ']':
                            next();
                            this.token = 15;
                            return;
                        case 'f':
                            scanFalse();
                            return;
                        case 'n':
                            scanNullOrNew();
                            return;
                        case 't':
                            scanTrue();
                            return;
                        case 'x':
                            scanHex();
                            return;
                        case '{':
                            next();
                            this.token = 12;
                            return;
                        case '}':
                            next();
                            this.token = 13;
                            return;
                        default:
                            if (isEOF()) {
                                if (this.token == 20) {
                                    throw new JSONException("EOF error");
                                }
                                this.token = 20;
                                int i = this.f831bp;
                                this.pos = i;
                                this.eofPos = i;
                                return;
                            }
                            char c3 = this.f832ch;
                            if (c3 > 31 && c3 != 127) {
                                lexError("illegal.char", String.valueOf((int) c3));
                                next();
                                return;
                            } else {
                                next();
                                break;
                            }
                            break;
                    }
                } else {
                    scanNumber();
                    return;
                }
            }
        }
    }

    public final void nextTokenWithChar(char c) {
        this.f834sp = 0;
        while (true) {
            char c2 = this.f832ch;
            if (c2 == c) {
                next();
                nextToken();
                return;
            }
            if (c2 != ' ' && c2 != '\n' && c2 != '\r' && c2 != '\t' && c2 != '\f' && c2 != '\b') {
                throw new JSONException("not match " + c + " - " + this.f832ch + ", info : " + info());
            }
            next();
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextTokenWithColon() {
        nextTokenWithChar(':');
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract String numberString();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int pos() {
        return this.pos;
    }

    public final void putChar(char c) {
        int i = this.f834sp;
        char[] cArr = this.sbuf;
        if (i >= cArr.length) {
            int length = cArr.length * 2;
            if (length < i) {
                length = i + 1;
            }
            char[] cArr2 = new char[length];
            char[] cArr3 = this.sbuf;
            System.arraycopy(cArr3, 0, cArr2, 0, cArr3.length);
            this.sbuf = cArr2;
        }
        char[] cArr4 = this.sbuf;
        int i2 = this.f834sp;
        this.f834sp = i2 + 1;
        cArr4[i2] = c;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void resetStringPosition() {
        this.f834sp = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00a7  */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanBoolean(char r10) {
        /*
            r9 = this;
            r0 = 0
            r9.matchStat = r0
            int r1 = r9.f831bp
            int r1 = r1 + r0
            char r1 = r9.charAt(r1)
            r2 = 3
            r3 = 5
            r4 = 101(0x65, float:1.42E-43)
            r5 = -1
            r6 = 2
            r7 = 1
            r8 = 116(0x74, float:1.63E-43)
            if (r1 != r8) goto L3f
            int r1 = r9.f831bp
            int r1 = r1 + r7
            char r1 = r9.charAt(r1)
            r8 = 114(0x72, float:1.6E-43)
            if (r1 != r8) goto L3c
            int r1 = r9.f831bp
            char r1 = com.huawei.hem.C0948f6.m1756a(r1, r7, r7, r9)
            r8 = 117(0x75, float:1.64E-43)
            if (r1 != r8) goto L3c
            int r1 = r9.f831bp
            char r1 = com.huawei.hem.C0948f6.m1756a(r1, r7, r6, r9)
            if (r1 != r4) goto L3c
            int r0 = r9.f831bp
            int r0 = r0 + 4
            char r0 = r9.charAt(r0)
            r1 = r0
            goto L85
        L3c:
            r9.matchStat = r5
            return r0
        L3f:
            r8 = 102(0x66, float:1.43E-43)
            if (r1 != r8) goto L78
            int r1 = r9.f831bp
            int r1 = r1 + r7
            char r1 = r9.charAt(r1)
            r8 = 97
            if (r1 != r8) goto L75
            int r1 = r9.f831bp
            char r1 = com.huawei.hem.C0948f6.m1756a(r1, r7, r7, r9)
            r8 = 108(0x6c, float:1.51E-43)
            if (r1 != r8) goto L75
            int r1 = r9.f831bp
            char r1 = com.huawei.hem.C0948f6.m1756a(r1, r7, r6, r9)
            r6 = 115(0x73, float:1.61E-43)
            if (r1 != r6) goto L75
            int r1 = r9.f831bp
            char r1 = com.huawei.hem.C0948f6.m1756a(r1, r7, r2, r9)
            if (r1 != r4) goto L75
            int r1 = r9.f831bp
            r4 = 6
            int r1 = r1 + r3
            char r1 = r9.charAt(r1)
            r3 = r9
        L73:
            r6 = r4
            goto L97
        L75:
            r9.matchStat = r5
            return r0
        L78:
            r3 = 49
            if (r1 != r3) goto L88
            int r0 = r9.f831bp
            int r0 = r0 + r7
            char r0 = r9.charAt(r0)
            r1 = r0
            r3 = r6
        L85:
            r6 = r3
            r0 = r7
            goto L93
        L88:
            r3 = 48
            if (r1 != r3) goto L95
            int r1 = r9.f831bp
            int r1 = r1 + r7
            char r1 = r9.charAt(r1)
        L93:
            r3 = r9
            goto L97
        L95:
            r3 = r9
            r6 = r7
        L97:
            if (r1 != r10) goto La7
            int r10 = r3.f831bp
            int r10 = r10 + r6
            r3.f831bp = r10
            char r10 = r3.charAt(r10)
            r3.f832ch = r10
            r3.matchStat = r2
            return r0
        La7:
            boolean r1 = isWhitespace(r1)
            if (r1 == 0) goto Lb7
            int r1 = r3.f831bp
            int r4 = r6 + 1
            int r1 = r1 + r6
            char r1 = r3.charAt(r1)
            goto L73
        Lb7:
            r3.matchStat = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanBoolean(char):boolean");
    }

    public Date scanDate(char c) {
        long j;
        Date date;
        int i;
        boolean z = false;
        this.matchStat = 0;
        char cCharAt = charAt(this.f831bp + 0);
        int i2 = 5;
        if (cCharAt == '\"') {
            int iIndexOf = indexOf('\"', this.f831bp + 1);
            if (iIndexOf == -1) {
                throw new JSONException("unclosed str");
            }
            int i3 = this.f831bp + 1;
            String strSubString = subString(i3, iIndexOf - i3);
            if (strSubString.indexOf(92) != -1) {
                while (true) {
                    int i4 = 0;
                    for (int i5 = iIndexOf - 1; i5 >= 0 && charAt(i5) == '\\'; i5--) {
                        i4++;
                    }
                    if (i4 % 2 == 0) {
                        break;
                    }
                    iIndexOf = indexOf('\"', iIndexOf + 1);
                }
                int i6 = this.f831bp;
                int i7 = iIndexOf - (i6 + 1);
                strSubString = readString(sub_chars(i6 + 1, i7), i7);
            }
            int i8 = this.f831bp;
            int i9 = (iIndexOf - (i8 + 1)) + 1 + 1;
            int i10 = i9 + 1;
            cCharAt = charAt(i8 + i9);
            JSONScanner jSONScanner = new JSONScanner(strSubString);
            try {
                if (!jSONScanner.scanISO8601DateIfMatch(false)) {
                    this.matchStat = -1;
                    return null;
                }
                date = jSONScanner.getCalendar().getTime();
                jSONScanner.close();
                i2 = i10;
            } finally {
                jSONScanner.close();
            }
        } else {
            char c2 = '9';
            int i11 = 2;
            if (cCharAt == '-' || (cCharAt >= '0' && cCharAt <= '9')) {
                if (cCharAt == '-') {
                    cCharAt = charAt(this.f831bp + 1);
                    z = true;
                } else {
                    i11 = 1;
                }
                if (cCharAt < '0' || cCharAt > '9') {
                    j = 0;
                } else {
                    j = cCharAt - '0';
                    while (true) {
                        i = i11 + 1;
                        cCharAt = charAt(this.f831bp + i11);
                        if (cCharAt < '0' || cCharAt > c2) {
                            break;
                        }
                        j = (j * 10) + (cCharAt - '0');
                        c2 = '9';
                        i11 = i;
                    }
                    i11 = i;
                }
                if (j < 0) {
                    this.matchStat = -1;
                    return null;
                }
                if (z) {
                    j = -j;
                }
                date = new Date(j);
                i2 = i11;
            } else {
                if (cCharAt != 'n' || charAt(this.f831bp + 1) != 'u' || CompilerOutline.m1756a(this.f831bp, 1, 1, this) != 'l' || CompilerOutline.m1756a(this.f831bp, 1, 2, this) != 'l') {
                    this.matchStat = -1;
                    return null;
                }
                this.matchStat = 5;
                cCharAt = charAt(this.f831bp + 4);
                date = null;
            }
        }
        if (cCharAt == ',') {
            int i12 = this.f831bp + i2;
            this.f831bp = i12;
            this.f832ch = charAt(i12);
            this.matchStat = 3;
            this.token = 16;
            return date;
        }
        if (cCharAt != ']') {
            this.matchStat = -1;
            return null;
        }
        int i13 = i2 + 1;
        char cCharAt2 = charAt(this.f831bp + i2);
        if (cCharAt2 == ',') {
            this.token = 16;
            int i14 = this.f831bp + i13;
            this.f831bp = i14;
            this.f832ch = charAt(i14);
        } else if (cCharAt2 == ']') {
            this.token = 15;
            int i15 = this.f831bp + i13;
            this.f831bp = i15;
            this.f832ch = charAt(i15);
        } else if (cCharAt2 == '}') {
            this.token = 13;
            int i16 = this.f831bp + i13;
            this.f831bp = i16;
            this.f832ch = charAt(i16);
        } else {
            if (cCharAt2 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
            this.f831bp = (i13 - 1) + this.f831bp;
            this.f832ch = JSONLexer.EOI;
        }
        this.matchStat = 4;
        return date;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public BigDecimal scanDecimal(char c) {
        int i;
        int i2;
        char cCharAt;
        JSONLexerBase jSONLexerBase;
        int i3;
        int i4;
        int i5;
        this.matchStat = 0;
        char cCharAt2 = charAt(this.f831bp + 0);
        boolean z = cCharAt2 == '\"';
        if (z) {
            cCharAt2 = charAt(this.f831bp + 1);
            i = 2;
        } else {
            i = 1;
        }
        if (cCharAt2 == '-') {
            cCharAt2 = charAt(this.f831bp + i);
            i++;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            if (cCharAt2 != 'n' || charAt(this.f831bp + i) != 'u' || CompilerOutline.m1756a(this.f831bp, i, 1, this) != 'l' || CompilerOutline.m1756a(this.f831bp, i, 2, this) != 'l') {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 5;
            int i6 = i + 3;
            int i7 = i6 + 1;
            char cCharAt3 = charAt(this.f831bp + i6);
            if (z && cCharAt3 == '\"') {
                int i8 = i7 + 1;
                cCharAt3 = charAt(this.f831bp + i7);
                i7 = i8;
            }
            while (cCharAt3 != ',') {
                if (cCharAt3 == '}') {
                    int i9 = this.f831bp + i7;
                    this.f831bp = i9;
                    this.f832ch = charAt(i9);
                    this.matchStat = 5;
                    this.token = 13;
                    return null;
                }
                if (!isWhitespace(cCharAt3)) {
                    this.matchStat = -1;
                    return null;
                }
                int i10 = i7 + 1;
                cCharAt3 = charAt(this.f831bp + i7);
                i7 = i10;
            }
            int i11 = this.f831bp + i7;
            this.f831bp = i11;
            this.f832ch = charAt(i11);
            this.matchStat = 5;
            this.token = 16;
            return null;
        }
        while (true) {
            i2 = i + 1;
            cCharAt = charAt(this.f831bp + i);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            i = i2;
        }
        if (cCharAt == '.') {
            int i12 = i2 + 1;
            char cCharAt4 = charAt(this.f831bp + i2);
            if (cCharAt4 < '0' || cCharAt4 > '9') {
                this.matchStat = -1;
                return null;
            }
            while (true) {
                i2 = i12 + 1;
                cCharAt = charAt(this.f831bp + i12);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                i12 = i2;
            }
        }
        if (cCharAt == 'e' || cCharAt == 'E') {
            int i13 = i2 + 1;
            cCharAt = charAt(this.f831bp + i2);
            if (cCharAt == '+' || cCharAt == '-') {
                int i14 = i13 + 1;
                char cCharAt5 = charAt(this.f831bp + i13);
                jSONLexerBase = this;
                i2 = i14;
                cCharAt = cCharAt5;
                i3 = 0;
            } else {
                i2 = i13;
                i3 = 0;
                jSONLexerBase = this;
            }
            while (cCharAt >= '0' && cCharAt <= '9') {
                cCharAt = jSONLexerBase.charAt(jSONLexerBase.f831bp + i2);
                i2++;
            }
        } else {
            jSONLexerBase = this;
            i3 = 0;
        }
        if (!z) {
            i4 = jSONLexerBase.f831bp;
            i5 = ((i4 + i2) - i4) - 1;
        } else {
            if (cCharAt != '\"') {
                jSONLexerBase.matchStat = -1;
                return null;
            }
            int i15 = i2 + 1;
            cCharAt = jSONLexerBase.charAt(jSONLexerBase.f831bp + i2);
            int i16 = jSONLexerBase.f831bp;
            i4 = i16 + 1;
            i5 = ((i16 + i15) - i4) - 2;
            i2 = i15;
        }
        if (i5 > 65535) {
            throw new JSONException("decimal overflow");
        }
        char[] cArrSub_chars = jSONLexerBase.sub_chars(i4, i5);
        BigDecimal bigDecimal = new BigDecimal(cArrSub_chars, i3, cArrSub_chars.length, MathContext.UNLIMITED);
        if (cCharAt == ',') {
            int i17 = jSONLexerBase.f831bp + i2;
            jSONLexerBase.f831bp = i17;
            jSONLexerBase.f832ch = jSONLexerBase.charAt(i17);
            jSONLexerBase.matchStat = 3;
            jSONLexerBase.token = 16;
            return bigDecimal;
        }
        if (cCharAt != ']') {
            jSONLexerBase.matchStat = -1;
            return null;
        }
        int i18 = i2 + 1;
        char cCharAt6 = jSONLexerBase.charAt(jSONLexerBase.f831bp + i2);
        if (cCharAt6 == ',') {
            jSONLexerBase.token = 16;
            int i19 = jSONLexerBase.f831bp + i18;
            jSONLexerBase.f831bp = i19;
            jSONLexerBase.f832ch = jSONLexerBase.charAt(i19);
        } else if (cCharAt6 == ']') {
            jSONLexerBase.token = 15;
            int i20 = jSONLexerBase.f831bp + i18;
            jSONLexerBase.f831bp = i20;
            jSONLexerBase.f832ch = jSONLexerBase.charAt(i20);
        } else if (cCharAt6 == '}') {
            jSONLexerBase.token = 13;
            int i21 = jSONLexerBase.f831bp + i18;
            jSONLexerBase.f831bp = i21;
            jSONLexerBase.f832ch = jSONLexerBase.charAt(i21);
        } else {
            if (cCharAt6 != 26) {
                jSONLexerBase.matchStat = -1;
                return null;
            }
            jSONLexerBase.token = 20;
            jSONLexerBase.f831bp = (i18 - 1) + jSONLexerBase.f831bp;
            jSONLexerBase.f832ch = JSONLexer.EOI;
        }
        jSONLexerBase.matchStat = 4;
        return bigDecimal;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public double scanDouble(char c) throws NumberFormatException {
        int i;
        int i2;
        char cCharAt;
        long j;
        JSONLexerBase jSONLexerBase;
        long j2;
        double d;
        boolean z;
        boolean z2;
        char cCharAt2;
        boolean z3;
        char c2;
        int i3;
        int i4;
        double d2;
        this.matchStat = 0;
        char cCharAt3 = charAt(this.f831bp + 0);
        boolean z4 = cCharAt3 == '\"';
        if (z4) {
            cCharAt3 = charAt(this.f831bp + 1);
            i = 2;
        } else {
            i = 1;
        }
        boolean z5 = cCharAt3 == '-';
        if (z5) {
            cCharAt3 = charAt(this.f831bp + i);
            i++;
        }
        if (cCharAt3 < '0' || cCharAt3 > '9') {
            if (cCharAt3 != 'n' || charAt(this.f831bp + i) != 'u' || CompilerOutline.m1756a(this.f831bp, i, 1, this) != 'l' || CompilerOutline.m1756a(this.f831bp, i, 2, this) != 'l') {
                this.matchStat = -1;
                return 0.0d;
            }
            this.matchStat = 5;
            int i5 = i + 3;
            int i6 = i5 + 1;
            char cCharAt4 = charAt(this.f831bp + i5);
            if (z4 && cCharAt4 == '\"') {
                int i7 = i6 + 1;
                cCharAt4 = charAt(this.f831bp + i6);
                i6 = i7;
            }
            while (cCharAt4 != ',') {
                if (cCharAt4 == ']') {
                    int i8 = this.f831bp + i6;
                    this.f831bp = i8;
                    this.f832ch = charAt(i8);
                    this.matchStat = 5;
                    this.token = 15;
                    return 0.0d;
                }
                if (!isWhitespace(cCharAt4)) {
                    this.matchStat = -1;
                    return 0.0d;
                }
                int i9 = i6 + 1;
                cCharAt4 = charAt(this.f831bp + i6);
                i6 = i9;
            }
            int i10 = this.f831bp + i6;
            this.f831bp = i10;
            this.f832ch = charAt(i10);
            this.matchStat = 5;
            this.token = 16;
            return 0.0d;
        }
        long j3 = cCharAt3 - TransactionIdCreater.FILL_BYTE;
        while (true) {
            i2 = i + 1;
            cCharAt = charAt(this.f831bp + i);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            j3 = (j3 * 10) + (cCharAt - '0');
            i = i2;
        }
        if (cCharAt == '.') {
            int i11 = i2 + 1;
            char cCharAt5 = charAt(this.f831bp + i2);
            if (cCharAt5 < '0' || cCharAt5 > '9') {
                this.matchStat = -1;
                return 0.0d;
            }
            j3 = (j3 * 10) + (cCharAt5 - TransactionIdCreater.FILL_BYTE);
            j = 10;
            while (true) {
                i2 = i11 + 1;
                cCharAt = charAt(this.f831bp + i11);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                j3 = (j3 * 10) + (cCharAt - '0');
                j *= 10;
                i11 = i2;
            }
        } else {
            j = 1;
        }
        boolean z6 = cCharAt == 'e' || cCharAt == 'E';
        if (z6) {
            int i12 = i2 + 1;
            char cCharAt6 = charAt(this.f831bp + i2);
            if (cCharAt6 == '+' || cCharAt6 == '-') {
                cCharAt6 = charAt(this.f831bp + i12);
                j2 = j;
                i2 = i12 + 1;
                d = 0.0d;
                jSONLexerBase = this;
            } else {
                jSONLexerBase = this;
                i2 = i12;
                d = 0.0d;
                j2 = j;
            }
            z = z6;
            z2 = z4;
            cCharAt2 = cCharAt6;
            z3 = z5;
            c2 = c;
            while (cCharAt2 >= '0' && cCharAt2 <= '9') {
                cCharAt2 = jSONLexerBase.charAt(jSONLexerBase.f831bp + i2);
                i2++;
            }
        } else {
            jSONLexerBase = this;
            j2 = j;
            d = 0.0d;
            z = z6;
            z2 = z4;
            cCharAt2 = cCharAt;
            z3 = z5;
            c2 = c;
        }
        if (!z2) {
            i3 = jSONLexerBase.f831bp;
            i4 = ((i3 + i2) - i3) - 1;
        } else {
            if (cCharAt2 != '\"') {
                jSONLexerBase.matchStat = -1;
                return d;
            }
            int i13 = i2 + 1;
            cCharAt2 = jSONLexerBase.charAt(jSONLexerBase.f831bp + i2);
            int i14 = jSONLexerBase.f831bp;
            i3 = i14 + 1;
            i4 = ((i14 + i13) - i3) - 2;
            i2 = i13;
        }
        if (z || i4 >= 17) {
            d2 = Double.parseDouble(jSONLexerBase.subString(i3, i4));
        } else {
            d2 = j3 / j2;
            if (z3) {
                d2 = -d2;
            }
        }
        if (cCharAt2 != c2) {
            jSONLexerBase.matchStat = -1;
            return d2;
        }
        int i15 = jSONLexerBase.f831bp + i2;
        jSONLexerBase.f831bp = i15;
        jSONLexerBase.f832ch = jSONLexerBase.charAt(i15);
        jSONLexerBase.matchStat = 3;
        jSONLexerBase.token = 16;
        return d2;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public Enum<?> scanEnum(Class<?> cls, SymbolTable symbolTable, char c) {
        String strScanSymbolWithSeperator = scanSymbolWithSeperator(symbolTable, c);
        if (strScanSymbolWithSeperator == null) {
            return null;
        }
        return Enum.valueOf(cls, strScanSymbolWithSeperator);
    }

    public long scanEnumSymbol(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int i = length + 1;
        if (charAt(this.f831bp + length) != '\"') {
            this.matchStat = -1;
            return 0L;
        }
        long j = TypeUtils.fnv1a_64_magic_hashcode;
        while (true) {
            int i2 = i + 1;
            char cCharAt = charAt(this.f831bp + i);
            if (cCharAt == '\"') {
                int i3 = i2 + 1;
                char cCharAt2 = charAt(this.f831bp + i2);
                if (cCharAt2 == ',') {
                    int i4 = this.f831bp + i3;
                    this.f831bp = i4;
                    this.f832ch = charAt(i4);
                    this.matchStat = 3;
                    return j;
                }
                if (cCharAt2 != '}') {
                    this.matchStat = -1;
                    return 0L;
                }
                int i5 = i3 + 1;
                char cCharAt3 = charAt(this.f831bp + i3);
                if (cCharAt3 == ',') {
                    this.token = 16;
                    int i6 = this.f831bp + i5;
                    this.f831bp = i6;
                    this.f832ch = charAt(i6);
                } else if (cCharAt3 == ']') {
                    this.token = 15;
                    int i7 = this.f831bp + i5;
                    this.f831bp = i7;
                    this.f832ch = charAt(i7);
                } else if (cCharAt3 == '}') {
                    this.token = 13;
                    int i8 = this.f831bp + i5;
                    this.f831bp = i8;
                    this.f832ch = charAt(i8);
                } else {
                    if (cCharAt3 != 26) {
                        this.matchStat = -1;
                        return 0L;
                    }
                    this.token = 20;
                    this.f831bp = (i5 - 1) + this.f831bp;
                    this.f832ch = JSONLexer.EOI;
                }
                this.matchStat = 4;
                return j;
            }
            j = (j ^ ((cCharAt < 'A' || cCharAt > 'Z') ? cCharAt : cCharAt + ' ')) * TypeUtils.fnv1a_64_magic_prime;
            if (cCharAt == '\\') {
                this.matchStat = -1;
                return 0L;
            }
            i = i2;
        }
    }

    public final void scanFalse() {
        if (this.f832ch != 'f') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f832ch != 'a') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f832ch != 'l') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f832ch != 's') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f832ch != 'e') {
            throw new JSONException("error parse false");
        }
        next();
        char c = this.f832ch;
        if (c != ' ' && c != ',' && c != '}' && c != ']' && c != '\n' && c != '\r' && c != '\t' && c != 26 && c != '\f' && c != '\b' && c != ':' && c != '/') {
            throw new JSONException("scan false error");
        }
        this.token = 7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0070, code lost:
    
        r6 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.math.BigInteger scanFieldBigInteger(char[] r19) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldBigInteger(char[]):java.math.BigInteger");
    }

    public boolean scanFieldBoolean(char[] cArr) {
        boolean z;
        int i;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return false;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char cCharAt = charAt(this.f831bp + length);
        if (cCharAt == 't') {
            int i3 = i2 + 1;
            if (charAt(this.f831bp + i2) != 'r') {
                this.matchStat = -1;
                return false;
            }
            int i4 = i3 + 1;
            if (charAt(this.f831bp + i3) != 'u') {
                this.matchStat = -1;
                return false;
            }
            i = i4 + 1;
            if (charAt(this.f831bp + i4) != 'e') {
                this.matchStat = -1;
                return false;
            }
            z = true;
        } else {
            if (cCharAt != 'f') {
                this.matchStat = -1;
                return false;
            }
            int i5 = i2 + 1;
            if (charAt(this.f831bp + i2) != 'a') {
                this.matchStat = -1;
                return false;
            }
            int i6 = i5 + 1;
            if (charAt(this.f831bp + i5) != 'l') {
                this.matchStat = -1;
                return false;
            }
            int i7 = i6 + 1;
            if (charAt(this.f831bp + i6) != 's') {
                this.matchStat = -1;
                return false;
            }
            int i8 = i7 + 1;
            if (charAt(this.f831bp + i7) != 'e') {
                this.matchStat = -1;
                return false;
            }
            z = false;
            i = i8;
        }
        int i9 = i + 1;
        char cCharAt2 = charAt(this.f831bp + i);
        if (cCharAt2 == ',') {
            int i10 = this.f831bp + i9;
            this.f831bp = i10;
            this.f832ch = charAt(i10);
            this.matchStat = 3;
            this.token = 16;
            return z;
        }
        if (cCharAt2 != '}') {
            this.matchStat = -1;
            return false;
        }
        int i11 = i9 + 1;
        char cCharAt3 = charAt(this.f831bp + i9);
        if (cCharAt3 == ',') {
            this.token = 16;
            int i12 = this.f831bp + i11;
            this.f831bp = i12;
            this.f832ch = charAt(i12);
        } else if (cCharAt3 == ']') {
            this.token = 15;
            int i13 = this.f831bp + i11;
            this.f831bp = i13;
            this.f832ch = charAt(i13);
        } else if (cCharAt3 == '}') {
            this.token = 13;
            int i14 = this.f831bp + i11;
            this.f831bp = i14;
            this.f832ch = charAt(i14);
        } else {
            if (cCharAt3 != 26) {
                this.matchStat = -1;
                return false;
            }
            this.token = 20;
            this.f831bp = (i11 - 1) + this.f831bp;
            this.f832ch = JSONLexer.EOI;
        }
        this.matchStat = 4;
        return z;
    }

    public Date scanFieldDate(char[] cArr) {
        int i;
        long j;
        Date date;
        int i2;
        char cCharAt;
        boolean z = false;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i3 = length + 1;
        char cCharAt2 = charAt(this.f831bp + length);
        if (cCharAt2 == '\"') {
            int iIndexOf = indexOf('\"', this.f831bp + cArr.length + 1);
            if (iIndexOf == -1) {
                throw new JSONException("unclosed str");
            }
            int length2 = this.f831bp + cArr.length + 1;
            String strSubString = subString(length2, iIndexOf - length2);
            if (strSubString.indexOf(92) != -1) {
                while (true) {
                    int i4 = 0;
                    for (int i5 = iIndexOf - 1; i5 >= 0 && charAt(i5) == '\\'; i5--) {
                        i4++;
                    }
                    if (i4 % 2 == 0) {
                        break;
                    }
                    iIndexOf = indexOf('\"', iIndexOf + 1);
                }
                int i6 = this.f831bp;
                int length3 = iIndexOf - ((cArr.length + i6) + 1);
                strSubString = readString(sub_chars(i6 + cArr.length + 1, length3), length3);
            }
            int i7 = this.f831bp;
            int length4 = (iIndexOf - ((cArr.length + i7) + 1)) + 1 + i3;
            i = length4 + 1;
            cCharAt2 = charAt(i7 + length4);
            JSONScanner jSONScanner = new JSONScanner(strSubString);
            try {
                if (!jSONScanner.scanISO8601DateIfMatch(false)) {
                    this.matchStat = -1;
                    return null;
                }
                date = jSONScanner.getCalendar().getTime();
            } finally {
                jSONScanner.close();
            }
        } else {
            if (cCharAt2 != '-' && (cCharAt2 < '0' || cCharAt2 > '9')) {
                this.matchStat = -1;
                return null;
            }
            if (cCharAt2 == '-') {
                cCharAt2 = charAt(this.f831bp + i3);
                i3++;
                z = true;
            }
            if (cCharAt2 < '0' || cCharAt2 > '9') {
                i = i3;
                j = 0;
            } else {
                j = cCharAt2 - '0';
                while (true) {
                    i2 = i3 + 1;
                    cCharAt = charAt(this.f831bp + i3);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    j = (j * 10) + (cCharAt - '0');
                    i3 = i2;
                }
                cCharAt2 = cCharAt;
                i = i2;
            }
            if (j < 0) {
                this.matchStat = -1;
                return null;
            }
            if (z) {
                j = -j;
            }
            date = new Date(j);
        }
        if (cCharAt2 == ',') {
            int i8 = this.f831bp + i;
            this.f831bp = i8;
            this.f832ch = charAt(i8);
            this.matchStat = 3;
            return date;
        }
        if (cCharAt2 != '}') {
            this.matchStat = -1;
            return null;
        }
        int i9 = i + 1;
        char cCharAt3 = charAt(this.f831bp + i);
        if (cCharAt3 == ',') {
            this.token = 16;
            int i10 = this.f831bp + i9;
            this.f831bp = i10;
            this.f832ch = charAt(i10);
        } else if (cCharAt3 == ']') {
            this.token = 15;
            int i11 = this.f831bp + i9;
            this.f831bp = i11;
            this.f832ch = charAt(i11);
        } else if (cCharAt3 == '}') {
            this.token = 13;
            int i12 = this.f831bp + i9;
            this.f831bp = i12;
            this.f832ch = charAt(i12);
        } else {
            if (cCharAt3 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
            this.f831bp = (i9 - 1) + this.f831bp;
            this.f832ch = JSONLexer.EOI;
        }
        this.matchStat = 4;
        return date;
    }

    public BigDecimal scanFieldDecimal(char[] cArr) {
        int i;
        char cCharAt;
        JSONLexerBase jSONLexerBase;
        int length;
        int i2;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length2 = cArr.length;
        int i3 = length2 + 1;
        char cCharAt2 = charAt(this.f831bp + length2);
        boolean z = cCharAt2 == '\"';
        if (z) {
            cCharAt2 = charAt(this.f831bp + i3);
            i3++;
        }
        if (cCharAt2 == '-') {
            cCharAt2 = charAt(this.f831bp + i3);
            i3++;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            if (cCharAt2 != 'n' || charAt(this.f831bp + i3) != 'u' || CompilerOutline.m1756a(this.f831bp, i3, 1, this) != 'l' || CompilerOutline.m1756a(this.f831bp, i3, 2, this) != 'l') {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 5;
            int i4 = i3 + 3;
            int i5 = i4 + 1;
            char cCharAt3 = charAt(this.f831bp + i4);
            if (z && cCharAt3 == '\"') {
                int i6 = i5 + 1;
                cCharAt3 = charAt(this.f831bp + i5);
                i5 = i6;
            }
            while (cCharAt3 != ',') {
                if (cCharAt3 == '}') {
                    int i7 = this.f831bp + i5;
                    this.f831bp = i7;
                    this.f832ch = charAt(i7);
                    this.matchStat = 5;
                    this.token = 13;
                    return null;
                }
                if (!isWhitespace(cCharAt3)) {
                    this.matchStat = -1;
                    return null;
                }
                int i8 = i5 + 1;
                cCharAt3 = charAt(this.f831bp + i5);
                i5 = i8;
            }
            int i9 = this.f831bp + i5;
            this.f831bp = i9;
            this.f832ch = charAt(i9);
            this.matchStat = 5;
            this.token = 16;
            return null;
        }
        while (true) {
            i = i3 + 1;
            cCharAt = charAt(this.f831bp + i3);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            i3 = i;
        }
        if (cCharAt == '.') {
            int i10 = i + 1;
            char cCharAt4 = charAt(this.f831bp + i);
            if (cCharAt4 < '0' || cCharAt4 > '9') {
                this.matchStat = -1;
                return null;
            }
            while (true) {
                i = i10 + 1;
                cCharAt = charAt(this.f831bp + i10);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                i10 = i;
            }
        }
        if (cCharAt == 'e' || cCharAt == 'E') {
            int i11 = i + 1;
            cCharAt = charAt(this.f831bp + i);
            if (cCharAt == '+' || cCharAt == '-') {
                int i12 = i11 + 1;
                cCharAt = charAt(this.f831bp + i11);
                jSONLexerBase = this;
                i = i12;
            } else {
                i = i11;
                jSONLexerBase = this;
            }
            while (cCharAt >= '0' && cCharAt <= '9') {
                int i13 = i + 1;
                cCharAt = jSONLexerBase.charAt(jSONLexerBase.f831bp + i);
                i = i13;
            }
        } else {
            jSONLexerBase = this;
        }
        if (!z) {
            int i14 = jSONLexerBase.f831bp;
            length = cArr.length + i14;
            i2 = ((i14 + i) - length) - 1;
        } else {
            if (cCharAt != '\"') {
                jSONLexerBase.matchStat = -1;
                return null;
            }
            int i15 = i + 1;
            cCharAt = jSONLexerBase.charAt(jSONLexerBase.f831bp + i);
            int i16 = jSONLexerBase.f831bp;
            length = cArr.length + i16 + 1;
            i2 = ((i16 + i15) - length) - 2;
            i = i15;
        }
        if (i2 > 65535) {
            throw new JSONException("scan decimal overflow");
        }
        char[] cArrSub_chars = jSONLexerBase.sub_chars(length, i2);
        BigDecimal bigDecimal = new BigDecimal(cArrSub_chars, 0, cArrSub_chars.length, MathContext.UNLIMITED);
        if (cCharAt == ',') {
            int i17 = jSONLexerBase.f831bp + i;
            jSONLexerBase.f831bp = i17;
            jSONLexerBase.f832ch = jSONLexerBase.charAt(i17);
            jSONLexerBase.matchStat = 3;
            jSONLexerBase.token = 16;
            return bigDecimal;
        }
        if (cCharAt != '}') {
            jSONLexerBase.matchStat = -1;
            return null;
        }
        int i18 = i + 1;
        char cCharAt5 = jSONLexerBase.charAt(jSONLexerBase.f831bp + i);
        if (cCharAt5 == ',') {
            jSONLexerBase.token = 16;
            int i19 = jSONLexerBase.f831bp + i18;
            jSONLexerBase.f831bp = i19;
            jSONLexerBase.f832ch = jSONLexerBase.charAt(i19);
        } else if (cCharAt5 == ']') {
            jSONLexerBase.token = 15;
            int i20 = jSONLexerBase.f831bp + i18;
            jSONLexerBase.f831bp = i20;
            jSONLexerBase.f832ch = jSONLexerBase.charAt(i20);
        } else if (cCharAt5 == '}') {
            jSONLexerBase.token = 13;
            int i21 = jSONLexerBase.f831bp + i18;
            jSONLexerBase.f831bp = i21;
            jSONLexerBase.f832ch = jSONLexerBase.charAt(i21);
        } else {
            if (cCharAt5 != 26) {
                jSONLexerBase.matchStat = -1;
                return null;
            }
            jSONLexerBase.token = 20;
            jSONLexerBase.f831bp = (i18 - 1) + jSONLexerBase.f831bp;
            jSONLexerBase.f832ch = JSONLexer.EOI;
        }
        jSONLexerBase.matchStat = 4;
        return bigDecimal;
    }

    public final double scanFieldDouble(char[] cArr) throws NumberFormatException {
        int i;
        char cCharAt;
        JSONLexerBase jSONLexerBase;
        boolean z;
        boolean z2;
        int i2;
        char cCharAt2;
        long j;
        double d;
        int length;
        int i3;
        double d2;
        int i4;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0.0d;
        }
        int length2 = cArr.length;
        int i5 = length2 + 1;
        char cCharAt3 = charAt(this.f831bp + length2);
        boolean z3 = cCharAt3 == '\"';
        if (z3) {
            cCharAt3 = charAt(this.f831bp + i5);
            i5++;
        }
        boolean z4 = cCharAt3 == '-';
        if (z4) {
            cCharAt3 = charAt(this.f831bp + i5);
            i5++;
        }
        if (cCharAt3 < '0' || cCharAt3 > '9') {
            if (cCharAt3 != 'n' || charAt(this.f831bp + i5) != 'u' || CompilerOutline.m1756a(this.f831bp, i5, 1, this) != 'l' || CompilerOutline.m1756a(this.f831bp, i5, 2, this) != 'l') {
                this.matchStat = -1;
                return 0.0d;
            }
            this.matchStat = 5;
            int i6 = i5 + 3;
            int i7 = i6 + 1;
            char cCharAt4 = charAt(this.f831bp + i6);
            if (z3 && cCharAt4 == '\"') {
                cCharAt4 = charAt(this.f831bp + i7);
                i7++;
            }
            while (cCharAt4 != ',') {
                if (cCharAt4 == '}') {
                    int i8 = this.f831bp + i7;
                    this.f831bp = i8;
                    this.f832ch = charAt(i8);
                    this.matchStat = 5;
                    this.token = 13;
                    return 0.0d;
                }
                if (!isWhitespace(cCharAt4)) {
                    this.matchStat = -1;
                    return 0.0d;
                }
                cCharAt4 = charAt(this.f831bp + i7);
                i7++;
            }
            int i9 = this.f831bp + i7;
            this.f831bp = i9;
            this.f832ch = charAt(i9);
            this.matchStat = 5;
            this.token = 16;
            return 0.0d;
        }
        long j2 = cCharAt3 - TransactionIdCreater.FILL_BYTE;
        while (true) {
            i = i5 + 1;
            cCharAt = charAt(this.f831bp + i5);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            j2 = (j2 * 10) + (cCharAt - '0');
            i5 = i;
        }
        long j3 = 1;
        if (cCharAt == '.') {
            int i10 = i + 1;
            char cCharAt5 = charAt(this.f831bp + i);
            if (cCharAt5 < '0' || cCharAt5 > '9') {
                this.matchStat = -1;
                return 0.0d;
            }
            j2 = (j2 * 10) + (cCharAt5 - TransactionIdCreater.FILL_BYTE);
            int i11 = i10;
            j3 = 10;
            while (true) {
                i = i11 + 1;
                cCharAt = charAt(this.f831bp + i11);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                j2 = (j2 * 10) + (cCharAt - '0');
                j3 *= 10;
                i11 = i;
            }
        }
        boolean z5 = cCharAt == 'e' || cCharAt == 'E';
        if (z5) {
            int i12 = i + 1;
            char cCharAt6 = charAt(this.f831bp + i);
            if (cCharAt6 == '+' || cCharAt6 == '-') {
                int i13 = i12 + 1;
                char cCharAt7 = charAt(this.f831bp + i12);
                jSONLexerBase = this;
                z = z3;
                i = i13;
                i4 = -1;
                z2 = z5;
                cCharAt2 = cCharAt7;
            } else {
                jSONLexerBase = this;
                z2 = z5;
                i = i12;
                i4 = -1;
                cCharAt2 = cCharAt6;
                z = z3;
            }
            j = j3;
            d = 0.0d;
            while (cCharAt2 >= '0' && cCharAt2 <= '9') {
                cCharAt2 = jSONLexerBase.charAt(jSONLexerBase.f831bp + i);
                i++;
            }
            i2 = i4;
        } else {
            jSONLexerBase = this;
            z = z3;
            z2 = z5;
            i2 = -1;
            cCharAt2 = cCharAt;
            j = j3;
            d = 0.0d;
        }
        if (!z) {
            int i14 = jSONLexerBase.f831bp;
            length = cArr.length + i14;
            i3 = ((i14 + i) - length) - 1;
        } else {
            if (cCharAt2 != '\"') {
                jSONLexerBase.matchStat = i2;
                return d;
            }
            int i15 = i + 1;
            cCharAt2 = jSONLexerBase.charAt(jSONLexerBase.f831bp + i);
            int i16 = jSONLexerBase.f831bp;
            length = cArr.length + i16 + 1;
            i3 = ((i16 + i15) - length) - 2;
            i = i15;
        }
        if (z2 || i3 >= 17) {
            d2 = Double.parseDouble(jSONLexerBase.subString(length, i3));
        } else {
            d2 = j2 / j;
            if (z4) {
                d2 = -d2;
            }
        }
        if (cCharAt2 == ',') {
            int i17 = jSONLexerBase.f831bp + i;
            jSONLexerBase.f831bp = i17;
            jSONLexerBase.f832ch = jSONLexerBase.charAt(i17);
            jSONLexerBase.matchStat = 3;
            jSONLexerBase.token = 16;
            return d2;
        }
        if (cCharAt2 != '}') {
            jSONLexerBase.matchStat = i2;
            return d;
        }
        int i18 = i + 1;
        char cCharAt8 = jSONLexerBase.charAt(jSONLexerBase.f831bp + i);
        if (cCharAt8 == ',') {
            jSONLexerBase.token = 16;
            int i19 = jSONLexerBase.f831bp + i18;
            jSONLexerBase.f831bp = i19;
            jSONLexerBase.f832ch = jSONLexerBase.charAt(i19);
        } else if (cCharAt8 == ']') {
            jSONLexerBase.token = 15;
            int i20 = jSONLexerBase.f831bp + i18;
            jSONLexerBase.f831bp = i20;
            jSONLexerBase.f832ch = jSONLexerBase.charAt(i20);
        } else if (cCharAt8 == '}') {
            jSONLexerBase.token = 13;
            int i21 = jSONLexerBase.f831bp + i18;
            jSONLexerBase.f831bp = i21;
            jSONLexerBase.f832ch = jSONLexerBase.charAt(i21);
        } else {
            if (cCharAt8 != 26) {
                jSONLexerBase.matchStat = i2;
                return d;
            }
            jSONLexerBase.token = 20;
            jSONLexerBase.f831bp = (i18 - 1) + jSONLexerBase.f831bp;
            jSONLexerBase.f832ch = JSONLexer.EOI;
        }
        jSONLexerBase.matchStat = 4;
        return d2;
    }

    public final float scanFieldFloat(char[] cArr) throws NumberFormatException {
        int i;
        char cCharAt;
        char cCharAt2;
        long j;
        boolean z;
        int i2;
        JSONLexerBase jSONLexerBase;
        long j2;
        float f;
        int length;
        int i3;
        int i4;
        float f2;
        boolean z2;
        int i5;
        int i6;
        char c;
        int i7;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0.0f;
        }
        int length2 = cArr.length;
        int i8 = length2 + 1;
        char cCharAt3 = charAt(this.f831bp + length2);
        boolean z3 = cCharAt3 == '\"';
        if (z3) {
            cCharAt3 = charAt(this.f831bp + i8);
            i8++;
        }
        boolean z4 = cCharAt3 == '-';
        if (z4) {
            cCharAt3 = charAt(this.f831bp + i8);
            i8++;
        }
        int i9 = -1;
        char c2 = TransactionIdCreater.FILL_BYTE;
        if (cCharAt3 >= '0') {
            char c3 = '9';
            if (cCharAt3 <= '9') {
                long j3 = cCharAt3 - TransactionIdCreater.FILL_BYTE;
                while (true) {
                    i = i8 + 1;
                    cCharAt = charAt(this.f831bp + i8);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    j3 = (j3 * 10) + (cCharAt - '0');
                    i8 = i;
                }
                if (cCharAt == '.') {
                    int i10 = i + 1;
                    char cCharAt4 = charAt(this.f831bp + i);
                    if (cCharAt4 < '0' || cCharAt4 > '9') {
                        this.matchStat = -1;
                        return 0.0f;
                    }
                    j3 = (j3 * 10) + (cCharAt4 - TransactionIdCreater.FILL_BYTE);
                    j = 10;
                    while (true) {
                        i7 = i10 + 1;
                        cCharAt2 = charAt(this.f831bp + i10);
                        if (cCharAt2 < c2 || cCharAt2 > c3) {
                            break;
                        }
                        j3 = (j3 * 10) + (cCharAt2 - '0');
                        j *= 10;
                        c3 = '9';
                        i10 = i7;
                        c2 = TransactionIdCreater.FILL_BYTE;
                    }
                    i = i7;
                } else {
                    cCharAt2 = cCharAt;
                    j = 1;
                }
                boolean z5 = cCharAt2 == 'e' || cCharAt2 == 'E';
                if (z5) {
                    int i11 = i + 1;
                    cCharAt2 = charAt(this.f831bp + i);
                    if (cCharAt2 == '+' || cCharAt2 == '-') {
                        int i12 = i11 + 1;
                        char cCharAt5 = charAt(this.f831bp + i11);
                        jSONLexerBase = this;
                        z2 = z5;
                        i5 = -1;
                        i6 = i12;
                        j2 = j;
                        f = 0.0f;
                        c = '0';
                        z = z3;
                        cCharAt2 = cCharAt5;
                    } else {
                        jSONLexerBase = this;
                        z = z3;
                        c = TransactionIdCreater.FILL_BYTE;
                        j2 = j;
                        f = 0.0f;
                        boolean z6 = z5;
                        i5 = -1;
                        i6 = i11;
                        z2 = z6;
                    }
                    while (cCharAt2 >= c && cCharAt2 <= '9') {
                        char cCharAt6 = jSONLexerBase.charAt(jSONLexerBase.f831bp + i6);
                        i6++;
                        c = c;
                        z = z;
                        cCharAt2 = cCharAt6;
                    }
                    boolean z7 = z2;
                    i2 = i6;
                    i9 = i5;
                    z5 = z7;
                } else {
                    z = z3;
                    i2 = i;
                    jSONLexerBase = this;
                    j2 = j;
                    f = 0.0f;
                }
                if (!z) {
                    int i13 = jSONLexerBase.f831bp;
                    length = cArr.length + i13;
                    int i14 = i2;
                    i3 = ((i13 + i2) - length) - 1;
                    i4 = i14;
                } else {
                    if (cCharAt2 != '\"') {
                        jSONLexerBase.matchStat = i9;
                        return f;
                    }
                    i4 = i2 + 1;
                    cCharAt2 = jSONLexerBase.charAt(jSONLexerBase.f831bp + i2);
                    int i15 = jSONLexerBase.f831bp;
                    length = cArr.length + i15 + 1;
                    i3 = ((i15 + i4) - length) - 2;
                }
                if (z5 || i3 >= 17) {
                    f2 = Float.parseFloat(jSONLexerBase.subString(length, i3));
                } else {
                    f2 = (float) (j3 / j2);
                    if (z4) {
                        f2 = -f2;
                    }
                }
                if (cCharAt2 == ',') {
                    int i16 = jSONLexerBase.f831bp + i4;
                    jSONLexerBase.f831bp = i16;
                    jSONLexerBase.f832ch = jSONLexerBase.charAt(i16);
                    jSONLexerBase.matchStat = 3;
                    jSONLexerBase.token = 16;
                    return f2;
                }
                if (cCharAt2 != '}') {
                    jSONLexerBase.matchStat = i9;
                    return f;
                }
                int i17 = i4 + 1;
                char cCharAt7 = jSONLexerBase.charAt(jSONLexerBase.f831bp + i4);
                if (cCharAt7 == ',') {
                    jSONLexerBase.token = 16;
                    int i18 = jSONLexerBase.f831bp + i17;
                    jSONLexerBase.f831bp = i18;
                    jSONLexerBase.f832ch = jSONLexerBase.charAt(i18);
                } else if (cCharAt7 == ']') {
                    jSONLexerBase.token = 15;
                    int i19 = jSONLexerBase.f831bp + i17;
                    jSONLexerBase.f831bp = i19;
                    jSONLexerBase.f832ch = jSONLexerBase.charAt(i19);
                } else if (cCharAt7 == '}') {
                    jSONLexerBase.token = 13;
                    int i20 = jSONLexerBase.f831bp + i17;
                    jSONLexerBase.f831bp = i20;
                    jSONLexerBase.f832ch = jSONLexerBase.charAt(i20);
                } else {
                    if (cCharAt7 != 26) {
                        jSONLexerBase.matchStat = i9;
                        return f;
                    }
                    jSONLexerBase.f831bp = (i17 - 1) + jSONLexerBase.f831bp;
                    jSONLexerBase.token = 20;
                    jSONLexerBase.f832ch = JSONLexer.EOI;
                }
                jSONLexerBase.matchStat = 4;
                return f2;
            }
        }
        if (cCharAt3 != 'n' || charAt(this.f831bp + i8) != 'u' || CompilerOutline.m1756a(this.f831bp, i8, 1, this) != 'l' || CompilerOutline.m1756a(this.f831bp, i8, 2, this) != 'l') {
            this.matchStat = -1;
            return 0.0f;
        }
        this.matchStat = 5;
        int i21 = i8 + 3;
        int i22 = i21 + 1;
        char cCharAt8 = charAt(this.f831bp + i21);
        if (z3 && cCharAt8 == '\"') {
            cCharAt8 = charAt(this.f831bp + i22);
            i22++;
        }
        while (cCharAt8 != ',') {
            if (cCharAt8 == '}') {
                int i23 = this.f831bp + i22;
                this.f831bp = i23;
                this.f832ch = charAt(i23);
                this.matchStat = 5;
                this.token = 13;
                return 0.0f;
            }
            if (!isWhitespace(cCharAt8)) {
                this.matchStat = -1;
                return 0.0f;
            }
            cCharAt8 = charAt(this.f831bp + i22);
            i22++;
        }
        int i24 = this.f831bp + i22;
        this.f831bp = i24;
        this.f832ch = charAt(i24);
        this.matchStat = 5;
        this.token = 16;
        return 0.0f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x01c5, code lost:
    
        r20.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01c7, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a3, code lost:
    
        r20.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a5, code lost:
    
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[] scanFieldFloatArray(char[] r21) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldFloatArray(char[]):float[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ba, code lost:
    
        r19.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00bc, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0159, code lost:
    
        r2 = r17 + 1;
        r0 = charAt(r19.f831bp + r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0164, code lost:
    
        if (r1 == r5.length) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0166, code lost:
    
        r4 = new float[r1];
        r6 = 0;
        java.lang.System.arraycopy(r5, 0, r4, 0, r1);
        r5 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x016e, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0170, code lost:
    
        if (r3 < r8.length) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0172, code lost:
    
        r4 = new float[(r8.length * 3) / 2][];
        java.lang.System.arraycopy(r5, r6, r4, r6, r1);
        r8 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x017d, code lost:
    
        r1 = r3 + 1;
        r8[r3] = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0183, code lost:
    
        if (r0 != ',') goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0185, code lost:
    
        r4 = r2 + 1;
        r3 = charAt(r19.f831bp + r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0193, code lost:
    
        if (r0 != ']') goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0195, code lost:
    
        r4 = r2 + 1;
        r3 = charAt(r19.f831bp + r2);
        r2 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01a0, code lost:
    
        r3 = r0;
        r4 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01b9, code lost:
    
        r19.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01bc, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[][] scanFieldFloatArray2(char[] r20) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 569
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldFloatArray2(char[]):float[][]");
    }

    public int scanFieldInt(char[] cArr) {
        int i;
        char cCharAt;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char cCharAt2 = charAt(this.f831bp + length);
        boolean z = cCharAt2 == '-';
        if (z) {
            cCharAt2 = charAt(this.f831bp + i2);
            i2++;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            this.matchStat = -1;
            return 0;
        }
        int i3 = cCharAt2 - TransactionIdCreater.FILL_BYTE;
        while (true) {
            i = i2 + 1;
            cCharAt = charAt(this.f831bp + i2);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            i3 = (i3 * 10) + (cCharAt - '0');
            i2 = i;
        }
        if (cCharAt == '.') {
            this.matchStat = -1;
            return 0;
        }
        if ((i3 < 0 || i > cArr.length + 14) && !(i3 == Integer.MIN_VALUE && i == 17 && z)) {
            this.matchStat = -1;
            return 0;
        }
        if (cCharAt == ',') {
            int i4 = this.f831bp + i;
            this.f831bp = i4;
            this.f832ch = charAt(i4);
            this.matchStat = 3;
            this.token = 16;
            return z ? -i3 : i3;
        }
        if (cCharAt != '}') {
            this.matchStat = -1;
            return 0;
        }
        int i5 = i + 1;
        char cCharAt3 = charAt(this.f831bp + i);
        if (cCharAt3 == ',') {
            this.token = 16;
            int i6 = this.f831bp + i5;
            this.f831bp = i6;
            this.f832ch = charAt(i6);
        } else if (cCharAt3 == ']') {
            this.token = 15;
            int i7 = this.f831bp + i5;
            this.f831bp = i7;
            this.f832ch = charAt(i7);
        } else if (cCharAt3 == '}') {
            this.token = 13;
            int i8 = this.f831bp + i5;
            this.f831bp = i8;
            this.f832ch = charAt(i8);
        } else {
            if (cCharAt3 != 26) {
                this.matchStat = -1;
                return 0;
            }
            this.token = 20;
            this.f831bp = (i5 - 1) + this.f831bp;
            this.f832ch = JSONLexer.EOI;
        }
        this.matchStat = 4;
        return z ? -i3 : i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x011f, code lost:
    
        r2 = r4;
        r17.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0122, code lost:
    
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int[] scanFieldIntArray(char[] r18) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldIntArray(char[]):int[]");
    }

    public long scanFieldLong(char[] cArr) {
        boolean z;
        int i;
        char cCharAt;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char cCharAt2 = charAt(this.f831bp + length);
        if (cCharAt2 == '-') {
            cCharAt2 = charAt(this.f831bp + i2);
            i2++;
            z = true;
        } else {
            z = false;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            this.matchStat = -1;
            return 0L;
        }
        long j = cCharAt2 - TransactionIdCreater.FILL_BYTE;
        while (true) {
            i = i2 + 1;
            cCharAt = charAt(this.f831bp + i2);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            j = (j * 10) + (cCharAt - '0');
            i2 = i;
        }
        if (cCharAt == '.') {
            this.matchStat = -1;
            return 0L;
        }
        if (!(i - cArr.length < 21 && (j >= 0 || (j == Long.MIN_VALUE && z)))) {
            this.matchStat = -1;
            return 0L;
        }
        if (cCharAt == ',') {
            int i3 = this.f831bp + i;
            this.f831bp = i3;
            this.f832ch = charAt(i3);
            this.matchStat = 3;
            this.token = 16;
            return z ? -j : j;
        }
        if (cCharAt != '}') {
            this.matchStat = -1;
            return 0L;
        }
        int i4 = i + 1;
        char cCharAt3 = charAt(this.f831bp + i);
        if (cCharAt3 == ',') {
            this.token = 16;
            int i5 = this.f831bp + i4;
            this.f831bp = i5;
            this.f832ch = charAt(i5);
        } else if (cCharAt3 == ']') {
            this.token = 15;
            int i6 = this.f831bp + i4;
            this.f831bp = i6;
            this.f832ch = charAt(i6);
        } else if (cCharAt3 == '}') {
            this.token = 13;
            int i7 = this.f831bp + i4;
            this.f831bp = i7;
            this.f832ch = charAt(i7);
        } else {
            if (cCharAt3 != 26) {
                this.matchStat = -1;
                return 0L;
            }
            this.token = 20;
            this.f831bp = (i4 - 1) + this.f831bp;
            this.f832ch = JSONLexer.EOI;
        }
        this.matchStat = 4;
        return z ? -j : j;
    }

    public String scanFieldString(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return stringDefaultValue();
        }
        int length = cArr.length;
        int i = length + 1;
        if (charAt(this.f831bp + length) != '\"') {
            this.matchStat = -1;
            return stringDefaultValue();
        }
        int iIndexOf = indexOf('\"', this.f831bp + cArr.length + 1);
        if (iIndexOf == -1) {
            throw new JSONException("unclosed str");
        }
        int length2 = this.f831bp + cArr.length + 1;
        String strSubString = subString(length2, iIndexOf - length2);
        if (strSubString.indexOf(92) != -1) {
            while (true) {
                int i2 = 0;
                for (int i3 = iIndexOf - 1; i3 >= 0 && charAt(i3) == '\\'; i3--) {
                    i2++;
                }
                if (i2 % 2 == 0) {
                    break;
                }
                iIndexOf = indexOf('\"', iIndexOf + 1);
            }
            int i4 = this.f831bp;
            int length3 = iIndexOf - ((cArr.length + i4) + 1);
            strSubString = readString(sub_chars(i4 + cArr.length + 1, length3), length3);
        }
        int i5 = this.f831bp;
        int length4 = (iIndexOf - ((cArr.length + i5) + 1)) + 1 + i;
        int i6 = length4 + 1;
        char cCharAt = charAt(i5 + length4);
        if (cCharAt == ',') {
            int i7 = this.f831bp + i6;
            this.f831bp = i7;
            this.f832ch = charAt(i7);
            this.matchStat = 3;
            return strSubString;
        }
        if (cCharAt != '}') {
            this.matchStat = -1;
            return stringDefaultValue();
        }
        int i8 = i6 + 1;
        char cCharAt2 = charAt(this.f831bp + i6);
        if (cCharAt2 == ',') {
            this.token = 16;
            int i9 = this.f831bp + i8;
            this.f831bp = i9;
            this.f832ch = charAt(i9);
        } else if (cCharAt2 == ']') {
            this.token = 15;
            int i10 = this.f831bp + i8;
            this.f831bp = i10;
            this.f832ch = charAt(i10);
        } else if (cCharAt2 == '}') {
            this.token = 13;
            int i11 = this.f831bp + i8;
            this.f831bp = i11;
            this.f832ch = charAt(i11);
        } else {
            if (cCharAt2 != 26) {
                this.matchStat = -1;
                return stringDefaultValue();
            }
            this.token = 20;
            this.f831bp = (i8 - 1) + this.f831bp;
            this.f832ch = JSONLexer.EOI;
        }
        this.matchStat = 4;
        return strSubString;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e4, code lost:
    
        if (r12 != ']') goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ea, code lost:
    
        if (r13.size() != 0) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ec, code lost:
    
        r0 = r1 + 1;
        r12 = charAt(r11.f831bp + r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x016b, code lost:
    
        throw new com.alibaba.fastjson.JSONException("illega str");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Collection<java.lang.String> scanFieldStringArray(char[] r12, java.lang.Class<?> r13) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldStringArray(char[], java.lang.Class):java.util.Collection");
    }

    public long scanFieldSymbol(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int i = length + 1;
        if (charAt(this.f831bp + length) != '\"') {
            this.matchStat = -1;
            return 0L;
        }
        long j = TypeUtils.fnv1a_64_magic_hashcode;
        while (true) {
            int i2 = i + 1;
            char cCharAt = charAt(this.f831bp + i);
            if (cCharAt == '\"') {
                int i3 = i2 + 1;
                char cCharAt2 = charAt(this.f831bp + i2);
                if (cCharAt2 == ',') {
                    int i4 = this.f831bp + i3;
                    this.f831bp = i4;
                    this.f832ch = charAt(i4);
                    this.matchStat = 3;
                    return j;
                }
                if (cCharAt2 != '}') {
                    this.matchStat = -1;
                    return 0L;
                }
                int i5 = i3 + 1;
                char cCharAt3 = charAt(this.f831bp + i3);
                if (cCharAt3 == ',') {
                    this.token = 16;
                    int i6 = this.f831bp + i5;
                    this.f831bp = i6;
                    this.f832ch = charAt(i6);
                } else if (cCharAt3 == ']') {
                    this.token = 15;
                    int i7 = this.f831bp + i5;
                    this.f831bp = i7;
                    this.f832ch = charAt(i7);
                } else if (cCharAt3 == '}') {
                    this.token = 13;
                    int i8 = this.f831bp + i5;
                    this.f831bp = i8;
                    this.f832ch = charAt(i8);
                } else {
                    if (cCharAt3 != 26) {
                        this.matchStat = -1;
                        return 0L;
                    }
                    this.token = 20;
                    this.f831bp = (i5 - 1) + this.f831bp;
                    this.f832ch = JSONLexer.EOI;
                }
                this.matchStat = 4;
                return j;
            }
            j = (j ^ cCharAt) * TypeUtils.fnv1a_64_magic_prime;
            if (cCharAt == '\\') {
                this.matchStat = -1;
                return 0L;
            }
            i = i2;
        }
    }

    public UUID scanFieldUUID(char[] cArr) {
        char cCharAt;
        int i;
        UUID uuid;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i15 = length + 1;
        char cCharAt2 = charAt(this.f831bp + length);
        char c = 4;
        if (cCharAt2 != '\"') {
            if (cCharAt2 == 'n') {
                int i16 = i15 + 1;
                if (charAt(this.f831bp + i15) == 'u') {
                    int i17 = i16 + 1;
                    if (charAt(this.f831bp + i16) == 'l') {
                        int i18 = i17 + 1;
                        if (charAt(this.f831bp + i17) == 'l') {
                            cCharAt = charAt(this.f831bp + i18);
                            i = i18 + 1;
                            uuid = null;
                        }
                    }
                }
            }
            this.matchStat = -1;
            return null;
        }
        int iIndexOf = indexOf('\"', this.f831bp + cArr.length + 1);
        if (iIndexOf == -1) {
            throw new JSONException("unclosed str");
        }
        int length2 = this.f831bp + cArr.length + 1;
        int i19 = iIndexOf - length2;
        char c2 = 'F';
        char c3 = 'f';
        char c4 = 'A';
        char c5 = TransactionIdCreater.FILL_BYTE;
        if (i19 == 36) {
            int i20 = 0;
            long j = 0;
            while (i20 < 8) {
                char cCharAt3 = charAt(length2 + i20);
                if (cCharAt3 < '0' || cCharAt3 > '9') {
                    if (cCharAt3 >= 'a' && cCharAt3 <= 'f') {
                        i13 = cCharAt3 - 'a';
                    } else {
                        if (cCharAt3 < 'A' || cCharAt3 > c2) {
                            this.matchStat = -2;
                            return null;
                        }
                        i13 = cCharAt3 - 'A';
                    }
                    i14 = i13 + 10;
                } else {
                    i14 = cCharAt3 - '0';
                }
                j = (j << 4) | i14;
                i20++;
                iIndexOf = iIndexOf;
                c2 = 'F';
            }
            int i21 = iIndexOf;
            int i22 = 9;
            int i23 = 13;
            while (i22 < i23) {
                char cCharAt4 = charAt(length2 + i22);
                if (cCharAt4 < '0' || cCharAt4 > '9') {
                    if (cCharAt4 >= 'a' && cCharAt4 <= 'f') {
                        i11 = cCharAt4 - 'a';
                    } else {
                        if (cCharAt4 < c4 || cCharAt4 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i11 = cCharAt4 - 'A';
                    }
                    i12 = i11 + 10;
                } else {
                    i12 = cCharAt4 - '0';
                }
                j = (j << c) | i12;
                i22++;
                i23 = 13;
                c4 = 'A';
                c = 4;
            }
            long j2 = j;
            for (int i24 = 14; i24 < 18; i24++) {
                char cCharAt5 = charAt(length2 + i24);
                if (cCharAt5 < '0' || cCharAt5 > '9') {
                    if (cCharAt5 >= 'a' && cCharAt5 <= 'f') {
                        i9 = cCharAt5 - 'a';
                    } else {
                        if (cCharAt5 < 'A' || cCharAt5 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i9 = cCharAt5 - 'A';
                    }
                    i10 = i9 + 10;
                } else {
                    i10 = cCharAt5 - '0';
                }
                j2 = (j2 << 4) | i10;
            }
            long j3 = 0;
            for (int i25 = 19; i25 < 23; i25++) {
                char cCharAt6 = charAt(length2 + i25);
                if (cCharAt6 < '0' || cCharAt6 > '9') {
                    if (cCharAt6 >= 'a' && cCharAt6 <= 'f') {
                        i7 = cCharAt6 - 'a';
                    } else {
                        if (cCharAt6 < 'A' || cCharAt6 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i7 = cCharAt6 - 'A';
                    }
                    i8 = i7 + 10;
                } else {
                    i8 = cCharAt6 - '0';
                }
                j3 = (j3 << 4) | i8;
            }
            int i26 = 24;
            long j4 = j3;
            int i27 = 36;
            while (i26 < i27) {
                char cCharAt7 = charAt(length2 + i26);
                if (cCharAt7 < c5 || cCharAt7 > '9') {
                    if (cCharAt7 >= 'a' && cCharAt7 <= c3) {
                        i5 = cCharAt7 - 'a';
                    } else {
                        if (cCharAt7 < 'A' || cCharAt7 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i5 = cCharAt7 - 'A';
                    }
                    i6 = i5 + 10;
                } else {
                    i6 = cCharAt7 - '0';
                }
                j4 = (j4 << 4) | i6;
                i26++;
                i15 = i15;
                i27 = 36;
                c5 = TransactionIdCreater.FILL_BYTE;
                c3 = 'f';
            }
            uuid = new UUID(j2, j4);
            int i28 = this.f831bp;
            int length3 = (i21 - ((cArr.length + i28) + 1)) + 1 + i15;
            i = length3 + 1;
            cCharAt = charAt(i28 + length3);
        } else {
            if (i19 != 32) {
                this.matchStat = -1;
                return null;
            }
            long j5 = 0;
            for (int i29 = 0; i29 < 16; i29++) {
                char cCharAt8 = charAt(length2 + i29);
                if (cCharAt8 < '0' || cCharAt8 > '9') {
                    if (cCharAt8 >= 'a' && cCharAt8 <= 'f') {
                        i3 = cCharAt8 - 'a';
                    } else {
                        if (cCharAt8 < 'A' || cCharAt8 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i3 = cCharAt8 - 'A';
                    }
                    i4 = i3 + 10;
                } else {
                    i4 = cCharAt8 - '0';
                }
                j5 = (j5 << 4) | i4;
            }
            int i30 = 16;
            long j6 = 0;
            for (int i31 = 32; i30 < i31; i31 = 32) {
                char cCharAt9 = charAt(length2 + i30);
                if (cCharAt9 >= '0' && cCharAt9 <= '9') {
                    i2 = cCharAt9 - '0';
                } else if (cCharAt9 >= 'a' && cCharAt9 <= 'f') {
                    i2 = (cCharAt9 - 'a') + 10;
                } else {
                    if (cCharAt9 < 'A' || cCharAt9 > 'F') {
                        this.matchStat = -2;
                        return null;
                    }
                    i2 = (cCharAt9 - 'A') + 10;
                    j6 = (j6 << 4) | i2;
                    i30++;
                }
                j6 = (j6 << 4) | i2;
                i30++;
            }
            uuid = new UUID(j5, j6);
            int i32 = this.f831bp;
            int length4 = (iIndexOf - ((cArr.length + i32) + 1)) + 1 + i15;
            i = length4 + 1;
            cCharAt = charAt(i32 + length4);
        }
        if (cCharAt == ',') {
            int i33 = this.f831bp + i;
            this.f831bp = i33;
            this.f832ch = charAt(i33);
            this.matchStat = 3;
            return uuid;
        }
        if (cCharAt != '}') {
            this.matchStat = -1;
            return null;
        }
        int i34 = i + 1;
        char cCharAt10 = charAt(this.f831bp + i);
        if (cCharAt10 == ',') {
            this.token = 16;
            int i35 = this.f831bp + i34;
            this.f831bp = i35;
            this.f832ch = charAt(i35);
        } else if (cCharAt10 == ']') {
            this.token = 15;
            int i36 = this.f831bp + i34;
            this.f831bp = i36;
            this.f832ch = charAt(i36);
        } else if (cCharAt10 == '}') {
            this.token = 13;
            int i37 = this.f831bp + i34;
            this.f831bp = i37;
            this.f832ch = charAt(i37);
        } else {
            if (cCharAt10 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
            this.f831bp = (i34 - 1) + this.f831bp;
            this.f832ch = JSONLexer.EOI;
        }
        this.matchStat = 4;
        return uuid;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final float scanFloat(char c) throws NumberFormatException {
        int i;
        int i2;
        char cCharAt;
        boolean z;
        int i3;
        float f;
        JSONLexerBase jSONLexerBase;
        long j;
        char c2;
        boolean z2;
        char c3;
        int i4;
        int i5;
        float f2;
        int i6;
        boolean z3;
        char c4;
        long j2;
        this.matchStat = 0;
        char cCharAt2 = charAt(this.f831bp + 0);
        boolean z4 = cCharAt2 == '\"';
        if (z4) {
            cCharAt2 = charAt(this.f831bp + 1);
            i = 2;
        } else {
            i = 1;
        }
        boolean z5 = cCharAt2 == '-';
        if (z5) {
            cCharAt2 = charAt(this.f831bp + i);
            i++;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            if (cCharAt2 != 'n' || charAt(this.f831bp + i) != 'u' || CompilerOutline.m1756a(this.f831bp, i, 1, this) != 'l' || CompilerOutline.m1756a(this.f831bp, i, 2, this) != 'l') {
                this.matchStat = -1;
                return 0.0f;
            }
            this.matchStat = 5;
            int i7 = i + 3;
            int i8 = i7 + 1;
            char cCharAt3 = charAt(this.f831bp + i7);
            if (z4 && cCharAt3 == '\"') {
                cCharAt3 = charAt(this.f831bp + i8);
                i8++;
            }
            while (cCharAt3 != ',') {
                if (cCharAt3 == ']') {
                    int i9 = this.f831bp + i8;
                    this.f831bp = i9;
                    this.f832ch = charAt(i9);
                    this.matchStat = 5;
                    this.token = 15;
                    return 0.0f;
                }
                if (!isWhitespace(cCharAt3)) {
                    this.matchStat = -1;
                    return 0.0f;
                }
                cCharAt3 = charAt(this.f831bp + i8);
                i8++;
            }
            int i10 = this.f831bp + i8;
            this.f831bp = i10;
            this.f832ch = charAt(i10);
            this.matchStat = 5;
            this.token = 16;
            return 0.0f;
        }
        long j3 = cCharAt2 - TransactionIdCreater.FILL_BYTE;
        while (true) {
            i2 = i + 1;
            cCharAt = charAt(this.f831bp + i);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            j3 = (j3 * 10) + (cCharAt - '0');
            i = i2;
        }
        long j4 = 1;
        if (cCharAt == '.') {
            int i11 = i2 + 1;
            char cCharAt4 = charAt(this.f831bp + i2);
            if (cCharAt4 < '0' || cCharAt4 > '9') {
                this.matchStat = -1;
                return 0.0f;
            }
            j3 = (j3 * 10) + (cCharAt4 - TransactionIdCreater.FILL_BYTE);
            long j5 = 10;
            while (true) {
                i2 = i11 + 1;
                cCharAt = charAt(this.f831bp + i11);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                j3 = (j3 * 10) + (cCharAt - '0');
                j5 *= 10;
                i11 = i2;
            }
            j4 = j5;
        }
        boolean z6 = cCharAt == 'e' || cCharAt == 'E';
        if (z6) {
            int i12 = i2 + 1;
            cCharAt = charAt(this.f831bp + i2);
            if (cCharAt == '+' || cCharAt == '-') {
                i6 = i12 + 1;
                char cCharAt5 = charAt(this.f831bp + i12);
                jSONLexerBase = this;
                z3 = z4;
                f = 0.0f;
                c4 = '\"';
                j2 = j4;
                boolean z7 = z5;
                c3 = c;
                z2 = z7;
                cCharAt = cCharAt5;
            } else {
                jSONLexerBase = this;
                i6 = i12;
                f = 0.0f;
                c4 = '\"';
                z3 = z4;
                j2 = j4;
                z2 = z5;
                c3 = c;
            }
            while (cCharAt >= '0' && cCharAt <= '9') {
                char cCharAt6 = jSONLexerBase.charAt(jSONLexerBase.f831bp + i6);
                i6++;
                z2 = z2;
                cCharAt = cCharAt6;
            }
            i3 = i6;
            z = z3;
            j = j2;
            c2 = c4;
        } else {
            z = z4;
            i3 = i2;
            f = 0.0f;
            jSONLexerBase = this;
            j = j4;
            c2 = '\"';
            z2 = z5;
            c3 = c;
        }
        if (!z) {
            i4 = jSONLexerBase.f831bp;
            i5 = ((i4 + i3) - i4) - 1;
        } else {
            if (cCharAt != c2) {
                jSONLexerBase.matchStat = -1;
                return f;
            }
            int i13 = i3 + 1;
            cCharAt = jSONLexerBase.charAt(jSONLexerBase.f831bp + i3);
            int i14 = jSONLexerBase.f831bp;
            i4 = i14 + 1;
            i5 = ((i14 + i13) - i4) - 2;
            i3 = i13;
        }
        if (z6 || i5 >= 17) {
            f2 = Float.parseFloat(jSONLexerBase.subString(i4, i5));
        } else {
            f2 = (float) (j3 / j);
            if (z2) {
                f2 = -f2;
            }
        }
        if (cCharAt != c3) {
            jSONLexerBase.matchStat = -1;
            return f2;
        }
        int i15 = jSONLexerBase.f831bp + i3;
        jSONLexerBase.f831bp = i15;
        jSONLexerBase.f832ch = jSONLexerBase.charAt(i15);
        jSONLexerBase.matchStat = 3;
        jSONLexerBase.token = 16;
        return f2;
    }

    public final void scanHex() {
        char next;
        if (this.f832ch != 'x') {
            StringBuilder sbM1765j = CompilerOutline.m1765j("illegal state. ");
            sbM1765j.append(this.f832ch);
            throw new JSONException(sbM1765j.toString());
        }
        next();
        if (this.f832ch != '\'') {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("illegal state. ");
            sbM1765j2.append(this.f832ch);
            throw new JSONException(sbM1765j2.toString());
        }
        this.f833np = this.f831bp;
        next();
        if (this.f832ch == '\'') {
            next();
            this.token = 26;
            return;
        }
        while (true) {
            next = next();
            if ((next < '0' || next > '9') && (next < 'A' || next > 'F')) {
                break;
            } else {
                this.f834sp++;
            }
        }
        if (next == '\'') {
            this.f834sp++;
            next();
            this.token = 26;
        } else {
            throw new JSONException("illegal state. " + next);
        }
    }

    public final void scanIdent() {
        this.f833np = this.f831bp - 1;
        this.hasSpecial = false;
        do {
            this.f834sp++;
            next();
        } while (Character.isLetterOrDigit(this.f832ch));
        String strStringVal = stringVal();
        if ("null".equalsIgnoreCase(strStringVal)) {
            this.token = 8;
            return;
        }
        if ("new".equals(strStringVal)) {
            this.token = 9;
            return;
        }
        if (RequestConstant.TRUE.equals(strStringVal)) {
            this.token = 6;
            return;
        }
        if (RequestConstant.FALSE.equals(strStringVal)) {
            this.token = 7;
            return;
        }
        if ("undefined".equals(strStringVal)) {
            this.token = 23;
            return;
        }
        if ("Set".equals(strStringVal)) {
            this.token = 21;
        } else if ("TreeSet".equals(strStringVal)) {
            this.token = 22;
        } else {
            this.token = 18;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public int scanInt(char c) {
        int i;
        int i2;
        char cCharAt;
        this.matchStat = 0;
        char cCharAt2 = charAt(this.f831bp + 0);
        boolean z = cCharAt2 == '\"';
        if (z) {
            cCharAt2 = charAt(this.f831bp + 1);
            i = 2;
        } else {
            i = 1;
        }
        boolean z2 = cCharAt2 == '-';
        if (z2) {
            cCharAt2 = charAt(this.f831bp + i);
            i++;
        }
        if (cCharAt2 >= '0' && cCharAt2 <= '9') {
            int i3 = cCharAt2 - TransactionIdCreater.FILL_BYTE;
            while (true) {
                i2 = i + 1;
                cCharAt = charAt(this.f831bp + i);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                i3 = (i3 * 10) + (cCharAt - '0');
                i = i2;
            }
            if (cCharAt == '.') {
                this.matchStat = -1;
                return 0;
            }
            if (i3 < 0) {
                this.matchStat = -1;
                return 0;
            }
            while (cCharAt != c) {
                if (!isWhitespace(cCharAt)) {
                    this.matchStat = -1;
                    return z2 ? -i3 : i3;
                }
                char cCharAt3 = charAt(this.f831bp + i2);
                i2++;
                cCharAt = cCharAt3;
            }
            int i4 = this.f831bp + i2;
            this.f831bp = i4;
            this.f832ch = charAt(i4);
            this.matchStat = 3;
            this.token = 16;
            return z2 ? -i3 : i3;
        }
        if (cCharAt2 != 'n' || charAt(this.f831bp + i) != 'u' || CompilerOutline.m1756a(this.f831bp, i, 1, this) != 'l' || CompilerOutline.m1756a(this.f831bp, i, 2, this) != 'l') {
            this.matchStat = -1;
            return 0;
        }
        this.matchStat = 5;
        int i5 = i + 3;
        int i6 = i5 + 1;
        char cCharAt4 = charAt(this.f831bp + i5);
        if (z && cCharAt4 == '\"') {
            cCharAt4 = charAt(this.f831bp + i6);
            i6++;
        }
        while (cCharAt4 != ',') {
            if (cCharAt4 == ']') {
                int i7 = this.f831bp + i6;
                this.f831bp = i7;
                this.f832ch = charAt(i7);
                this.matchStat = 5;
                this.token = 15;
                return 0;
            }
            if (!isWhitespace(cCharAt4)) {
                this.matchStat = -1;
                return 0;
            }
            cCharAt4 = charAt(this.f831bp + i6);
            i6++;
        }
        int i8 = this.f831bp + i6;
        this.f831bp = i8;
        this.f832ch = charAt(i8);
        this.matchStat = 5;
        this.token = 16;
        return 0;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public long scanLong(char c) {
        int i;
        JSONLexerBase jSONLexerBase;
        int i2;
        int i3;
        char cCharAt;
        this.matchStat = 0;
        char cCharAt2 = charAt(this.f831bp + 0);
        boolean z = true;
        boolean z2 = cCharAt2 == '\"';
        if (z2) {
            cCharAt2 = charAt(this.f831bp + 1);
            i = 2;
        } else {
            i = 1;
        }
        boolean z3 = cCharAt2 == '-';
        if (z3) {
            cCharAt2 = charAt(this.f831bp + i);
            i++;
        }
        if (cCharAt2 >= '0') {
            char c2 = '9';
            if (cCharAt2 <= '9') {
                long j = cCharAt2 - TransactionIdCreater.FILL_BYTE;
                while (true) {
                    i3 = i + 1;
                    cCharAt = charAt(this.f831bp + i);
                    if (cCharAt < '0' || cCharAt > c2) {
                        break;
                    }
                    j = (j * 10) + (cCharAt - '0');
                    i = i3;
                    c2 = '9';
                }
                if (cCharAt == '.') {
                    this.matchStat = -1;
                    return 0L;
                }
                if (j < 0 && (j != Long.MIN_VALUE || !z3)) {
                    z = false;
                }
                if (!z) {
                    throw new NumberFormatException(subString(this.f831bp, i3 - 1));
                }
                if (z2) {
                    if (cCharAt != '\"') {
                        this.matchStat = -1;
                        return 0L;
                    }
                    cCharAt = charAt(this.f831bp + i3);
                    i3++;
                }
                while (cCharAt != c) {
                    if (!isWhitespace(cCharAt)) {
                        this.matchStat = -1;
                        return j;
                    }
                    cCharAt = charAt(this.f831bp + i3);
                    i3++;
                }
                int i4 = this.f831bp + i3;
                this.f831bp = i4;
                this.f832ch = charAt(i4);
                this.matchStat = 3;
                this.token = 16;
                return z3 ? -j : j;
            }
        }
        if (cCharAt2 != 'n' || charAt(this.f831bp + i) != 'u' || CompilerOutline.m1756a(this.f831bp, i, 1, this) != 'l' || CompilerOutline.m1756a(this.f831bp, i, 2, this) != 'l') {
            this.matchStat = -1;
            return 0L;
        }
        this.matchStat = 5;
        int i5 = i + 3;
        int i6 = i5 + 1;
        char cCharAt3 = charAt(this.f831bp + i5);
        if (z2 && cCharAt3 == '\"') {
            cCharAt3 = charAt(this.f831bp + i6);
            i6++;
            i2 = 16;
            jSONLexerBase = this;
        } else {
            jSONLexerBase = this;
            i2 = 16;
        }
        while (cCharAt3 != ',') {
            if (cCharAt3 == ']') {
                int i7 = jSONLexerBase.f831bp + i6;
                jSONLexerBase.f831bp = i7;
                jSONLexerBase.f832ch = jSONLexerBase.charAt(i7);
                jSONLexerBase.matchStat = 5;
                jSONLexerBase.token = 15;
                return 0L;
            }
            if (!isWhitespace(cCharAt3)) {
                jSONLexerBase.matchStat = -1;
                return 0L;
            }
            cCharAt3 = jSONLexerBase.charAt(jSONLexerBase.f831bp + i6);
            i6++;
        }
        int i8 = jSONLexerBase.f831bp + i6;
        jSONLexerBase.f831bp = i8;
        jSONLexerBase.f832ch = jSONLexerBase.charAt(i8);
        jSONLexerBase.matchStat = 5;
        jSONLexerBase.token = i2;
        return 0L;
    }

    public final void scanNullOrNew() {
        scanNullOrNew(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cb  */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void scanNumber() {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanNumber():void");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void scanString() {
        char next;
        char next2;
        this.f833np = this.f831bp;
        this.hasSpecial = false;
        while (true) {
            char next3 = next();
            if (next3 == '\"') {
                this.token = 4;
                this.f832ch = next();
                return;
            }
            if (next3 != 26) {
                boolean z = true;
                if (next3 == '\\') {
                    if (!this.hasSpecial) {
                        this.hasSpecial = true;
                        int i = this.f834sp;
                        char[] cArr = this.sbuf;
                        if (i >= cArr.length) {
                            int length = cArr.length * 2;
                            if (i <= length) {
                                i = length;
                            }
                            char[] cArr2 = new char[i];
                            char[] cArr3 = this.sbuf;
                            System.arraycopy(cArr3, 0, cArr2, 0, cArr3.length);
                            this.sbuf = cArr2;
                        }
                        copyTo(this.f833np + 1, this.f834sp, this.sbuf);
                    }
                    char next4 = next();
                    if (next4 == '\"') {
                        putChar('\"');
                    } else if (next4 != '\'') {
                        if (next4 != 'F') {
                            if (next4 == '\\') {
                                putChar('\\');
                            } else if (next4 == 'b') {
                                putChar('\b');
                            } else if (next4 != 'f') {
                                if (next4 == 'n') {
                                    putChar('\n');
                                } else if (next4 == 'r') {
                                    putChar('\r');
                                } else if (next4 != 'x') {
                                    switch (next4) {
                                        case '/':
                                            putChar('/');
                                            break;
                                        case '0':
                                            putChar((char) 0);
                                            break;
                                        case '1':
                                            putChar((char) 1);
                                            break;
                                        case '2':
                                            putChar((char) 2);
                                            break;
                                        case '3':
                                            putChar((char) 3);
                                            break;
                                        case '4':
                                            putChar((char) 4);
                                            break;
                                        case '5':
                                            putChar((char) 5);
                                            break;
                                        case '6':
                                            putChar((char) 6);
                                            break;
                                        case '7':
                                            putChar((char) 7);
                                            break;
                                        default:
                                            switch (next4) {
                                                case 't':
                                                    putChar('\t');
                                                    break;
                                                case 'u':
                                                    putChar((char) Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16));
                                                    break;
                                                case 'v':
                                                    putChar((char) 11);
                                                    break;
                                                default:
                                                    this.f832ch = next4;
                                                    throw new JSONException("unclosed string : " + next4);
                                            }
                                    }
                                } else {
                                    next = next();
                                    next2 = next();
                                    boolean z2 = (next >= '0' && next <= '9') || (next >= 'a' && next <= 'f') || (next >= 'A' && next <= 'F');
                                    if ((next2 < '0' || next2 > '9') && ((next2 < 'a' || next2 > 'f') && (next2 < 'A' || next2 > 'F'))) {
                                        z = false;
                                    }
                                    if (z2 && z) {
                                        int[] iArr = digits;
                                        putChar((char) ((iArr[next] * 16) + iArr[next2]));
                                    }
                                }
                            }
                        }
                        putChar('\f');
                    } else {
                        putChar('\'');
                    }
                } else if (this.hasSpecial) {
                    int i2 = this.f834sp;
                    char[] cArr4 = this.sbuf;
                    if (i2 == cArr4.length) {
                        putChar(next3);
                    } else {
                        this.f834sp = i2 + 1;
                        cArr4[i2] = next3;
                    }
                } else {
                    this.f834sp++;
                }
            } else {
                if (isEOF()) {
                    throw new JSONException("unclosed string : " + next3);
                }
                putChar(JSONLexer.EOI);
            }
        }
        throw new JSONException("invalid escape character \\x" + next + next2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void scanStringArray(Collection<String> collection, char c) {
        int i;
        char cCharAt;
        int i2;
        char cCharAt2;
        this.matchStat = 0;
        char cCharAt3 = charAt(this.f831bp + 0);
        char c2 = 'u';
        char c3 = 'n';
        if (cCharAt3 == 'n' && charAt(this.f831bp + 1) == 'u' && CompilerOutline.m1756a(this.f831bp, 1, 1, this) == 'l' && CompilerOutline.m1756a(this.f831bp, 1, 2, this) == 'l' && CompilerOutline.m1756a(this.f831bp, 1, 3, this) == c) {
            int i3 = this.f831bp + 5;
            this.f831bp = i3;
            this.f832ch = charAt(i3);
            this.matchStat = 5;
            return;
        }
        if (cCharAt3 != '[') {
            this.matchStat = -1;
            return;
        }
        char cCharAt4 = charAt(this.f831bp + 1);
        int i4 = 2;
        while (true) {
            if (cCharAt4 == c3 && charAt(this.f831bp + i4) == c2 && CompilerOutline.m1756a(this.f831bp, i4, 1, this) == 'l' && CompilerOutline.m1756a(this.f831bp, i4, 2, this) == 'l') {
                int i5 = i4 + 3;
                i = i5 + 1;
                cCharAt = charAt(this.f831bp + i5);
                collection.add(null);
            } else {
                if (cCharAt4 == ']' && collection.size() == 0) {
                    i2 = i4 + 1;
                    cCharAt2 = charAt(this.f831bp + i4);
                    break;
                }
                if (cCharAt4 != '\"') {
                    this.matchStat = -1;
                    return;
                }
                int i6 = this.f831bp + i4;
                int iIndexOf = indexOf('\"', i6);
                if (iIndexOf == -1) {
                    throw new JSONException("unclosed str");
                }
                String strSubString = subString(this.f831bp + i4, iIndexOf - i6);
                if (strSubString.indexOf(92) != -1) {
                    while (true) {
                        int i7 = 0;
                        for (int i8 = iIndexOf - 1; i8 >= 0 && charAt(i8) == '\\'; i8--) {
                            i7++;
                        }
                        if (i7 % 2 == 0) {
                            break;
                        } else {
                            iIndexOf = indexOf('\"', iIndexOf + 1);
                        }
                    }
                    int i9 = iIndexOf - i6;
                    strSubString = readString(sub_chars(this.f831bp + i4, i9), i9);
                }
                int i10 = this.f831bp;
                int i11 = (iIndexOf - (i10 + i4)) + 1 + i4;
                i = i11 + 1;
                cCharAt = charAt(i10 + i11);
                collection.add(strSubString);
            }
            if (cCharAt == ',') {
                i4 = i + 1;
                cCharAt4 = charAt(this.f831bp + i);
                c2 = 'u';
                c3 = 'n';
            } else if (cCharAt != ']') {
                this.matchStat = -1;
                return;
            } else {
                i2 = i + 1;
                cCharAt2 = charAt(this.f831bp + i);
            }
        }
        if (cCharAt2 != c) {
            this.matchStat = -1;
            return;
        }
        int i12 = this.f831bp + i2;
        this.f831bp = i12;
        this.f832ch = charAt(i12);
        this.matchStat = 3;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String scanSymbol(SymbolTable symbolTable) {
        skipWhitespace();
        char c = this.f832ch;
        if (c == '\"') {
            return scanSymbol(symbolTable, '\"');
        }
        if (c == '\'') {
            if (isEnabled(Feature.AllowSingleQuotes)) {
                return scanSymbol(symbolTable, '\'');
            }
            throw new JSONException("syntax error");
        }
        if (c == '}') {
            next();
            this.token = 13;
            return null;
        }
        if (c == ',') {
            next();
            this.token = 16;
            return null;
        }
        if (c == 26) {
            this.token = 20;
            return null;
        }
        if (isEnabled(Feature.AllowUnQuotedFieldNames)) {
            return scanSymbolUnQuoted(symbolTable);
        }
        throw new JSONException("syntax error");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String scanSymbolUnQuoted(SymbolTable symbolTable) {
        if (this.token == 1 && this.pos == 0 && this.f831bp == 1) {
            this.f831bp = 0;
        }
        boolean[] zArr = IOUtils.firstIdentifierFlags;
        int i = this.f832ch;
        if (!(i >= zArr.length || zArr[i])) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("illegal identifier : ");
            sbM1765j.append(this.f832ch);
            sbM1765j.append(info());
            throw new JSONException(sbM1765j.toString());
        }
        boolean[] zArr2 = IOUtils.identifierFlags;
        this.f833np = this.f831bp;
        this.f834sp = 1;
        while (true) {
            char next = next();
            if (next < zArr2.length && !zArr2[next]) {
                break;
            }
            i = (i * 31) + next;
            this.f834sp++;
        }
        this.f832ch = charAt(this.f831bp);
        this.token = 18;
        if (this.f834sp == 4 && i == 3392903 && charAt(this.f833np) == 'n' && charAt(this.f833np + 1) == 'u' && charAt(this.f833np + 2) == 'l' && charAt(this.f833np + 3) == 'l') {
            return null;
        }
        return symbolTable == null ? subString(this.f833np, this.f834sp) : addSymbol(this.f833np, this.f834sp, i, symbolTable);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String scanSymbolWithSeperator(SymbolTable symbolTable, char c) {
        int i = 0;
        this.matchStat = 0;
        char cCharAt = charAt(this.f831bp + 0);
        if (cCharAt == 'n') {
            if (charAt(this.f831bp + 1) != 'u' || CompilerOutline.m1756a(this.f831bp, 1, 1, this) != 'l' || CompilerOutline.m1756a(this.f831bp, 1, 2, this) != 'l') {
                this.matchStat = -1;
                return null;
            }
            if (charAt(this.f831bp + 4) != c) {
                this.matchStat = -1;
                return null;
            }
            int i2 = this.f831bp + 5;
            this.f831bp = i2;
            this.f832ch = charAt(i2);
            this.matchStat = 3;
            return null;
        }
        if (cCharAt != '\"') {
            this.matchStat = -1;
            return null;
        }
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char cCharAt2 = charAt(this.f831bp + i3);
            if (cCharAt2 == '\"') {
                int i5 = this.f831bp;
                int i6 = i5 + 0 + 1;
                String strAddSymbol = addSymbol(i6, ((i5 + i4) - i6) - 1, i, symbolTable);
                int i7 = i4 + 1;
                char cCharAt3 = charAt(this.f831bp + i4);
                while (cCharAt3 != c) {
                    if (!isWhitespace(cCharAt3)) {
                        this.matchStat = -1;
                        return strAddSymbol;
                    }
                    cCharAt3 = charAt(this.f831bp + i7);
                    i7++;
                }
                int i8 = this.f831bp + i7;
                this.f831bp = i8;
                this.f832ch = charAt(i8);
                this.matchStat = 3;
                return strAddSymbol;
            }
            i = (i * 31) + cCharAt2;
            if (cCharAt2 == '\\') {
                this.matchStat = -1;
                return null;
            }
            i3 = i4;
        }
    }

    public final void scanTrue() {
        if (this.f832ch != 't') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f832ch != 'r') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f832ch != 'u') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f832ch != 'e') {
            throw new JSONException("error parse true");
        }
        next();
        char c = this.f832ch;
        if (c != ' ' && c != ',' && c != '}' && c != ']' && c != '\n' && c != '\r' && c != '\t' && c != 26 && c != '\f' && c != '\b' && c != ':' && c != '/') {
            throw new JSONException("scan true error");
        }
        this.token = 6;
    }

    public final int scanType(String str) {
        this.matchStat = 0;
        if (!charArrayCompare(typeFieldName)) {
            return -2;
        }
        int length = this.f831bp + typeFieldName.length;
        int length2 = str.length();
        for (int i = 0; i < length2; i++) {
            if (str.charAt(i) != charAt(length + i)) {
                return -1;
            }
        }
        int i2 = length + length2;
        if (charAt(i2) != '\"') {
            return -1;
        }
        int i3 = i2 + 1;
        char cCharAt = charAt(i3);
        this.f832ch = cCharAt;
        if (cCharAt == ',') {
            int i4 = i3 + 1;
            this.f832ch = charAt(i4);
            this.f831bp = i4;
            this.token = 16;
            return 3;
        }
        if (cCharAt == '}') {
            i3++;
            char cCharAt2 = charAt(i3);
            this.f832ch = cCharAt2;
            if (cCharAt2 == ',') {
                this.token = 16;
                i3++;
                this.f832ch = charAt(i3);
            } else if (cCharAt2 == ']') {
                this.token = 15;
                i3++;
                this.f832ch = charAt(i3);
            } else if (cCharAt2 == '}') {
                this.token = 13;
                i3++;
                this.f832ch = charAt(i3);
            } else {
                if (cCharAt2 != 26) {
                    return -1;
                }
                this.token = 20;
            }
            this.matchStat = 4;
        }
        this.f831bp = i3;
        return this.matchStat;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String scanTypeName(SymbolTable symbolTable) {
        return null;
    }

    public UUID scanUUID(char c) {
        int i;
        char cCharAt;
        UUID uuid;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        this.matchStat = 0;
        char cCharAt2 = charAt(this.f831bp + 0);
        if (cCharAt2 == '\"') {
            int iIndexOf = indexOf('\"', this.f831bp + 1);
            if (iIndexOf == -1) {
                throw new JSONException("unclosed str");
            }
            int i15 = this.f831bp + 1;
            int i16 = iIndexOf - i15;
            char c2 = 'F';
            char c3 = 'f';
            char c4 = '9';
            char c5 = 'A';
            char c6 = 'a';
            if (i16 == 36) {
                int i17 = 0;
                long j = 0;
                while (i17 < 8) {
                    char cCharAt3 = charAt(i15 + i17);
                    if (cCharAt3 < '0' || cCharAt3 > '9') {
                        if (cCharAt3 >= 'a' && cCharAt3 <= 'f') {
                            i13 = cCharAt3 - 'a';
                        } else {
                            if (cCharAt3 < c5 || cCharAt3 > c2) {
                                this.matchStat = -2;
                                return null;
                            }
                            i13 = cCharAt3 - 'A';
                        }
                        i14 = i13 + 10;
                    } else {
                        i14 = cCharAt3 - '0';
                    }
                    j = (j << 4) | i14;
                    i17++;
                    c5 = 'A';
                    c2 = 'F';
                }
                int i18 = 9;
                while (i18 < 13) {
                    char cCharAt4 = charAt(i15 + i18);
                    if (cCharAt4 < '0' || cCharAt4 > '9') {
                        if (cCharAt4 >= 'a' && cCharAt4 <= c3) {
                            i11 = cCharAt4 - 'a';
                        } else {
                            if (cCharAt4 < 'A' || cCharAt4 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i11 = cCharAt4 - 'A';
                        }
                        i12 = i11 + 10;
                    } else {
                        i12 = cCharAt4 - '0';
                    }
                    j = (j << 4) | i12;
                    i18++;
                    iIndexOf = iIndexOf;
                    c3 = 'f';
                }
                int i19 = iIndexOf;
                int i20 = 14;
                long j2 = j;
                while (i20 < 18) {
                    char cCharAt5 = charAt(i15 + i20);
                    if (cCharAt5 < '0' || cCharAt5 > '9') {
                        if (cCharAt5 >= c6 && cCharAt5 <= 'f') {
                            i9 = cCharAt5 - 'a';
                        } else {
                            if (cCharAt5 < 'A' || cCharAt5 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i9 = cCharAt5 - 'A';
                        }
                        i10 = i9 + 10;
                    } else {
                        i10 = cCharAt5 - '0';
                    }
                    j2 = (j2 << 4) | i10;
                    i20++;
                    c6 = 'a';
                }
                int i21 = 19;
                long j3 = 0;
                while (i21 < 23) {
                    char cCharAt6 = charAt(i15 + i21);
                    if (cCharAt6 < '0' || cCharAt6 > c4) {
                        if (cCharAt6 >= 'a' && cCharAt6 <= 'f') {
                            i7 = cCharAt6 - 'a';
                        } else {
                            if (cCharAt6 < 'A' || cCharAt6 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i7 = cCharAt6 - 'A';
                        }
                        i8 = i7 + 10;
                    } else {
                        i8 = cCharAt6 - '0';
                    }
                    j3 = (j3 << 4) | i8;
                    i21++;
                    j2 = j2;
                    c4 = '9';
                }
                long j4 = j2;
                long j5 = j3;
                for (int i22 = 24; i22 < 36; i22++) {
                    char cCharAt7 = charAt(i15 + i22);
                    if (cCharAt7 < '0' || cCharAt7 > '9') {
                        if (cCharAt7 >= 'a' && cCharAt7 <= 'f') {
                            i5 = cCharAt7 - 'a';
                        } else {
                            if (cCharAt7 < 'A' || cCharAt7 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i5 = cCharAt7 - 'A';
                        }
                        i6 = i5 + 10;
                    } else {
                        i6 = cCharAt7 - '0';
                    }
                    j5 = (j5 << 4) | i6;
                }
                uuid = new UUID(j4, j5);
                int i23 = this.f831bp;
                int i24 = (i19 - (i23 + 1)) + 1 + 1;
                i = i24 + 1;
                cCharAt = charAt(i23 + i24);
            } else {
                if (i16 != 32) {
                    this.matchStat = -1;
                    return null;
                }
                long j6 = 0;
                for (int i25 = 0; i25 < 16; i25++) {
                    char cCharAt8 = charAt(i15 + i25);
                    if (cCharAt8 < '0' || cCharAt8 > '9') {
                        if (cCharAt8 >= 'a' && cCharAt8 <= 'f') {
                            i3 = cCharAt8 - 'a';
                        } else {
                            if (cCharAt8 < 'A' || cCharAt8 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i3 = cCharAt8 - 'A';
                        }
                        i4 = i3 + 10;
                    } else {
                        i4 = cCharAt8 - '0';
                    }
                    j6 = (j6 << 4) | i4;
                }
                int i26 = 16;
                long j7 = 0;
                for (int i27 = 32; i26 < i27; i27 = 32) {
                    char cCharAt9 = charAt(i15 + i26);
                    if (cCharAt9 >= '0' && cCharAt9 <= '9') {
                        i2 = cCharAt9 - '0';
                    } else if (cCharAt9 >= 'a' && cCharAt9 <= 'f') {
                        i2 = (cCharAt9 - 'a') + 10;
                    } else {
                        if (cCharAt9 < 'A' || cCharAt9 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i2 = (cCharAt9 - 'A') + 10;
                    }
                    j7 = (j7 << 4) | i2;
                    i26++;
                }
                uuid = new UUID(j6, j7);
                int i28 = this.f831bp;
                int i29 = (iIndexOf - (i28 + 1)) + 1 + 1;
                i = i29 + 1;
                cCharAt = charAt(i28 + i29);
            }
        } else {
            if (cCharAt2 != 'n' || charAt(this.f831bp + 1) != 'u' || charAt(this.f831bp + 2) != 'l' || charAt(this.f831bp + 3) != 'l') {
                this.matchStat = -1;
                return null;
            }
            i = 5;
            cCharAt = charAt(this.f831bp + 4);
            uuid = null;
        }
        if (cCharAt == ',') {
            int i30 = this.f831bp + i;
            this.f831bp = i30;
            this.f832ch = charAt(i30);
            this.matchStat = 3;
            return uuid;
        }
        if (cCharAt != ']') {
            this.matchStat = -1;
            return null;
        }
        int i31 = i + 1;
        char cCharAt10 = charAt(this.f831bp + i);
        if (cCharAt10 == ',') {
            this.token = 16;
            int i32 = this.f831bp + i31;
            this.f831bp = i32;
            this.f832ch = charAt(i32);
        } else if (cCharAt10 == ']') {
            this.token = 15;
            int i33 = this.f831bp + i31;
            this.f831bp = i33;
            this.f832ch = charAt(i33);
        } else if (cCharAt10 == '}') {
            this.token = 13;
            int i34 = this.f831bp + i31;
            this.f831bp = i34;
            this.f832ch = charAt(i34);
        } else {
            if (cCharAt10 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
            this.f831bp = (i31 - 1) + this.f831bp;
            this.f832ch = JSONLexer.EOI;
        }
        this.matchStat = 4;
        return uuid;
    }

    public boolean seekArrayToItem(int i) {
        throw new UnsupportedOperationException();
    }

    public int seekObjectToField(long j, boolean z) {
        throw new UnsupportedOperationException();
    }

    public int seekObjectToFieldDeepScan(long j) {
        throw new UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setFeatures(int i) {
        this.features = i;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setLocale(Locale locale) {
        this.locale = locale;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setTimeZone(TimeZone timeZone) {
        this.timeZone = timeZone;
    }

    public void setToken(int i) {
        this.token = i;
    }

    public void skipArray() {
        throw new UnsupportedOperationException();
    }

    public void skipComment() {
        char c;
        next();
        char c2 = this.f832ch;
        if (c2 == '/') {
            do {
                next();
                c = this.f832ch;
                if (c == '\n') {
                    next();
                    return;
                }
            } while (c != 26);
            return;
        }
        if (c2 != '*') {
            throw new JSONException("invalid comment");
        }
        next();
        while (true) {
            char c3 = this.f832ch;
            if (c3 == 26) {
                return;
            }
            if (c3 == '*') {
                next();
                if (this.f832ch == '/') {
                    next();
                    return;
                }
            } else {
                next();
            }
        }
    }

    public void skipObject() {
        throw new UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void skipWhitespace() {
        while (true) {
            char c = this.f832ch;
            if (c > '/') {
                return;
            }
            if (c == ' ' || c == '\r' || c == '\n' || c == '\t' || c == '\f' || c == '\b') {
                next();
            } else if (c != '/') {
                return;
            } else {
                skipComment();
            }
        }
    }

    public final String stringDefaultValue() {
        return this.stringDefaultValue;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract String stringVal();

    public abstract String subString(int i, int i2);

    public abstract char[] sub_chars(int i, int i2);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int token() {
        return this.token;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String tokenName() {
        return JSONToken.name(this.token);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isEnabled(int i) {
        return (i & this.features) != 0;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextTokenWithColon(int i) {
        nextTokenWithChar(':');
    }

    public final void scanNullOrNew(boolean z) {
        char c;
        if (this.f832ch != 'n') {
            throw new JSONException("error parse null or new");
        }
        next();
        char c2 = this.f832ch;
        if (c2 != 'u') {
            if (c2 != 'e') {
                throw new JSONException("error parse new");
            }
            next();
            if (this.f832ch != 'w') {
                throw new JSONException("error parse new");
            }
            next();
            char c3 = this.f832ch;
            if (c3 != ' ' && c3 != ',' && c3 != '}' && c3 != ']' && c3 != '\n' && c3 != '\r' && c3 != '\t' && c3 != 26 && c3 != '\f' && c3 != '\b') {
                throw new JSONException("scan new error");
            }
            this.token = 9;
            return;
        }
        next();
        if (this.f832ch != 'l') {
            throw new JSONException("error parse null");
        }
        next();
        if (this.f832ch != 'l') {
            throw new JSONException("error parse null");
        }
        next();
        char c4 = this.f832ch;
        if (c4 != ' ' && c4 != ',' && c4 != '}' && c4 != ']' && c4 != '\n' && c4 != '\r' && c4 != '\t' && c4 != 26 && ((c4 != ':' || !z) && (c = this.f832ch) != '\f' && c != '\b')) {
            throw new JSONException("scan null error");
        }
        this.token = 8;
    }

    public int seekObjectToField(long[] jArr) {
        throw new UnsupportedOperationException();
    }

    public void skipObject(boolean z) {
        throw new UnsupportedOperationException();
    }

    public final boolean isEnabled(int i, int i2) {
        return ((this.features & i2) == 0 && (i & i2) == 0) ? false : true;
    }

    public int matchField(long j) {
        throw new UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String scanSymbol(SymbolTable symbolTable, char c) throws NumberFormatException {
        String strAddSymbol;
        this.f833np = this.f831bp;
        this.f834sp = 0;
        boolean z = false;
        int i = 0;
        while (true) {
            char next = next();
            if (next == c) {
                this.token = 4;
                if (!z) {
                    int i2 = this.f833np;
                    strAddSymbol = addSymbol(i2 == -1 ? 0 : i2 + 1, this.f834sp, i, symbolTable);
                } else {
                    strAddSymbol = symbolTable.addSymbol(this.sbuf, 0, this.f834sp, i);
                }
                this.f834sp = 0;
                next();
                return strAddSymbol;
            }
            if (next == 26) {
                throw new JSONException("unclosed.str");
            }
            if (next == '\\') {
                if (!z) {
                    int i3 = this.f834sp;
                    char[] cArr = this.sbuf;
                    if (i3 >= cArr.length) {
                        int length = cArr.length * 2;
                        if (i3 <= length) {
                            i3 = length;
                        }
                        char[] cArr2 = new char[i3];
                        char[] cArr3 = this.sbuf;
                        System.arraycopy(cArr3, 0, cArr2, 0, cArr3.length);
                        this.sbuf = cArr2;
                    }
                    arrayCopy(this.f833np + 1, this.sbuf, 0, this.f834sp);
                    z = true;
                }
                char next2 = next();
                if (next2 == '\"') {
                    i = (i * 31) + 34;
                    putChar('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            i = (i * 31) + 92;
                            putChar('\\');
                        } else if (next2 == 'b') {
                            i = (i * 31) + 8;
                            putChar('\b');
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                i = (i * 31) + 10;
                                putChar('\n');
                            } else if (next2 == 'r') {
                                i = (i * 31) + 13;
                                putChar('\r');
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        i = (i * 31) + 47;
                                        putChar('/');
                                        break;
                                    case '0':
                                        i = (i * 31) + next2;
                                        putChar((char) 0);
                                        break;
                                    case '1':
                                        i = (i * 31) + next2;
                                        putChar((char) 1);
                                        break;
                                    case '2':
                                        i = (i * 31) + next2;
                                        putChar((char) 2);
                                        break;
                                    case '3':
                                        i = (i * 31) + next2;
                                        putChar((char) 3);
                                        break;
                                    case '4':
                                        i = (i * 31) + next2;
                                        putChar((char) 4);
                                        break;
                                    case '5':
                                        i = (i * 31) + next2;
                                        putChar((char) 5);
                                        break;
                                    case '6':
                                        i = (i * 31) + next2;
                                        putChar((char) 6);
                                        break;
                                    case '7':
                                        i = (i * 31) + next2;
                                        putChar((char) 7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case 't':
                                                i = (i * 31) + 9;
                                                putChar('\t');
                                                break;
                                            case 'u':
                                                int i4 = Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16);
                                                i = (i * 31) + i4;
                                                putChar((char) i4);
                                                break;
                                            case 'v':
                                                i = (i * 31) + 11;
                                                putChar((char) 11);
                                                break;
                                            default:
                                                this.f832ch = next2;
                                                throw new JSONException("unclosed.str.lit");
                                        }
                                }
                            } else {
                                char next3 = next();
                                this.f832ch = next3;
                                char next4 = next();
                                this.f832ch = next4;
                                int[] iArr = digits;
                                char c2 = (char) ((iArr[next3] * 16) + iArr[next4]);
                                i = (i * 31) + c2;
                                putChar(c2);
                            }
                        }
                    }
                    i = (i * 31) + 12;
                    putChar('\f');
                } else {
                    i = (i * 31) + 39;
                    putChar('\'');
                }
            } else {
                i = (i * 31) + next;
                if (!z) {
                    this.f834sp++;
                } else {
                    int i5 = this.f834sp;
                    char[] cArr4 = this.sbuf;
                    if (i5 == cArr4.length) {
                        putChar(next);
                    } else {
                        this.f834sp = i5 + 1;
                        cArr4[i5] = next;
                    }
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:110:0x007b A[SYNTHETIC] */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void nextToken(int r11) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.nextToken(int):void");
    }

    public String[] scanFieldStringArray(char[] cArr, int i, SymbolTable symbolTable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String scanString(char c) {
        this.matchStat = 0;
        char cCharAt = charAt(this.f831bp + 0);
        if (cCharAt == 'n') {
            if (charAt(this.f831bp + 1) == 'u' && CompilerOutline.m1756a(this.f831bp, 1, 1, this) == 'l' && CompilerOutline.m1756a(this.f831bp, 1, 2, this) == 'l') {
                if (charAt(this.f831bp + 4) == c) {
                    int i = this.f831bp + 5;
                    this.f831bp = i;
                    this.f832ch = charAt(i);
                    this.matchStat = 3;
                    return null;
                }
                this.matchStat = -1;
                return null;
            }
            this.matchStat = -1;
            return null;
        }
        int i2 = 1;
        while (cCharAt != '\"') {
            if (isWhitespace(cCharAt)) {
                cCharAt = charAt(this.f831bp + i2);
                i2++;
            } else {
                this.matchStat = -1;
                return stringDefaultValue();
            }
        }
        int i3 = this.f831bp + i2;
        int iIndexOf = indexOf('\"', i3);
        if (iIndexOf != -1) {
            String strSubString = subString(this.f831bp + i2, iIndexOf - i3);
            if (strSubString.indexOf(92) != -1) {
                while (true) {
                    int i4 = 0;
                    for (int i5 = iIndexOf - 1; i5 >= 0 && charAt(i5) == '\\'; i5--) {
                        i4++;
                    }
                    if (i4 % 2 == 0) {
                        break;
                    }
                    iIndexOf = indexOf('\"', iIndexOf + 1);
                }
                int i6 = iIndexOf - i3;
                strSubString = readString(sub_chars(this.f831bp + 1, i6), i6);
            }
            int i7 = (iIndexOf - i3) + 1 + i2;
            int i8 = i7 + 1;
            char cCharAt2 = charAt(this.f831bp + i7);
            while (cCharAt2 != c) {
                if (!isWhitespace(cCharAt2)) {
                    if (cCharAt2 == ']') {
                        int i9 = this.f831bp + i8;
                        this.f831bp = i9;
                        this.f832ch = charAt(i9);
                        this.matchStat = -1;
                    }
                    return strSubString;
                }
                cCharAt2 = charAt(this.f831bp + i8);
                i8++;
            }
            int i10 = this.f831bp + i8;
            this.f831bp = i10;
            this.f832ch = charAt(i10);
            this.matchStat = 3;
            this.token = 16;
            return strSubString;
        }
        throw new JSONException("unclosed str");
    }
}
