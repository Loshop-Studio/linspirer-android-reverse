package com.alibaba.fastjson.parser;

import android.support.v4.util.TimeUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.IOUtils;
import com.alibaba.fastjson.util.TypeUtils;
import com.huawei.hem.C0948f6;
import com.huawei.hms.common.internal.TransactionIdCreater;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.Calendar;
import java.util.Date;
import java.util.SimpleTimeZone;

/* loaded from: classes.dex */
public final class JSONScanner extends JSONLexerBase {
    public final int len;
    public final String text;

    public JSONScanner(String str) {
        this(str, JSON.DEFAULT_PARSER_FEATURE);
    }

    public static boolean charArrayCompare(String str, int i, char[] cArr) {
        int length = cArr.length;
        if (length + i > str.length()) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (cArr[i2] != str.charAt(i + i2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean checkDate(char c, char c2, char c3, char c4, char c5, char c6, int i, int i2) {
        if (c >= '0' && c <= '9' && c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9') {
            if (c5 == '0') {
                if (c6 < '1' || c6 > '9') {
                    return false;
                }
            } else if (c5 != '1' || (c6 != '0' && c6 != '1' && c6 != '2')) {
                return false;
            }
            if (i == 48) {
                return i2 >= 49 && i2 <= 57;
            }
            if (i != 49 && i != 50) {
                return i == 51 && (i2 == 48 || i2 == 49);
            }
            if (i2 >= 48 && i2 <= 57) {
                return true;
            }
        }
        return false;
    }

    private boolean checkTime(char c, char c2, char c3, char c4, char c5, char c6) {
        if (c == '0') {
            if (c2 < '0' || c2 > '9') {
                return false;
            }
        } else {
            if (c != '1') {
                if (c == '2' && c2 >= '0' && c2 <= '4') {
                }
                return false;
            }
            if (c2 < '0' || c2 > '9') {
                return false;
            }
        }
        if (c3 < '0' || c3 > '5') {
            if (c3 != '6' || c4 != '0') {
                return false;
            }
        } else if (c4 < '0' || c4 > '9') {
            return false;
        }
        return (c5 < '0' || c5 > '5') ? c5 == '6' && c6 == '0' : c6 >= '0' && c6 <= '9';
    }

    private void setCalendar(char c, char c2, char c3, char c4, char c5, char c6, char c7, char c8) {
        Calendar calendar = Calendar.getInstance(this.timeZone, this.locale);
        this.calendar = calendar;
        int i = c4 - '0';
        calendar.set(1, i + ((c3 - '0') * 10) + ((c2 - '0') * 100) + ((c - '0') * 1000));
        this.calendar.set(2, ((c6 - '0') + ((c5 - '0') * 10)) - 1);
        this.calendar.set(5, (c8 - '0') + ((c7 - '0') * 10));
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String addSymbol(int i, int i2, int i3, SymbolTable symbolTable) {
        return symbolTable.addSymbol(this.text, i, i2, i3);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void arrayCopy(int i, char[] cArr, int i2, int i3) {
        this.text.getChars(i, i3 + i, cArr, i2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public byte[] bytesValue() {
        if (this.token != 26) {
            return !this.hasSpecial ? IOUtils.decodeBase64(this.text, this.f833np + 1, this.f834sp) : IOUtils.decodeBase64(new String(this.sbuf, 0, this.f834sp));
        }
        int i = this.f833np + 1;
        int i2 = this.f834sp;
        if (i2 % 2 != 0) {
            throw new JSONException(C0948f6.m1754L("illegal state. ", i2));
        }
        int i3 = i2 / 2;
        byte[] bArr = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 2) + i;
            char cCharAt = this.text.charAt(i5);
            char cCharAt2 = this.text.charAt(i5 + 1);
            char c = TransactionIdCreater.FILL_BYTE;
            int i6 = cCharAt - (cCharAt <= '9' ? '0' : '7');
            if (cCharAt2 > '9') {
                c = '7';
            }
            bArr[i4] = (byte) ((i6 << 4) | (cCharAt2 - c));
        }
        return bArr;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char charAt(int i) {
        return i >= this.len ? JSONLexer.EOI : this.text.charAt(i);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void copyTo(int i, int i2, char[] cArr) {
        this.text.getChars(i, i2 + i, cArr, 0);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final BigDecimal decimalValue() {
        char cCharAt = charAt((this.f833np + this.f834sp) - 1);
        int i = this.f834sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i--;
        }
        if (i > 65535) {
            throw new JSONException("decimal overflow");
        }
        int i2 = this.f833np;
        char[] cArr = this.sbuf;
        if (i < cArr.length) {
            this.text.getChars(i2, i2 + i, cArr, 0);
            return new BigDecimal(this.sbuf, 0, i, MathContext.UNLIMITED);
        }
        char[] cArr2 = new char[i];
        this.text.getChars(i2, i2 + i, cArr2, 0);
        return new BigDecimal(cArr2, 0, i, MathContext.UNLIMITED);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final int indexOf(char c, int i) {
        return this.text.indexOf(c, i);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public String info() {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        int i2 = 1;
        int i3 = 1;
        while (i < this.f831bp) {
            if (this.text.charAt(i) == '\n') {
                i2++;
                i3 = 1;
            }
            i++;
            i3++;
        }
        sb.append("pos ");
        sb.append(this.f831bp);
        sb.append(", line ");
        sb.append(i2);
        sb.append(", column ");
        sb.append(i3);
        if (this.text.length() < 65535) {
            sb.append(this.text);
        } else {
            sb.append(this.text.substring(0, 65535));
        }
        return sb.toString();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean isEOF() {
        int i = this.f831bp;
        int i2 = this.len;
        if (i != i2) {
            return this.f832ch == 26 && i + 1 >= i2;
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean matchField2(char[] cArr) {
        while (JSONLexerBase.isWhitespace(this.f832ch)) {
            next();
        }
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return false;
        }
        int length = this.f831bp + cArr.length;
        int i = length + 1;
        char cCharAt = this.text.charAt(length);
        while (JSONLexerBase.isWhitespace(cCharAt)) {
            cCharAt = this.text.charAt(i);
            i++;
        }
        if (cCharAt != ':') {
            this.matchStat = -2;
            return false;
        }
        this.f831bp = i;
        this.f832ch = charAt(i);
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final char next() {
        int i = this.f831bp + 1;
        this.f831bp = i;
        char cCharAt = i >= this.len ? JSONLexer.EOI : this.text.charAt(i);
        this.f832ch = cCharAt;
        return cCharAt;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String numberString() {
        char cCharAt = charAt((this.f833np + this.f834sp) - 1);
        int i = this.f834sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i--;
        }
        return subString(this.f833np, i);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public Date scanDate(char c) {
        char cCharAt;
        long j;
        Date date;
        int i;
        boolean z = false;
        this.matchStat = 0;
        int i2 = this.f831bp;
        char c2 = this.f832ch;
        int i3 = i2 + 1;
        char cCharAt2 = charAt(i2);
        if (cCharAt2 == '\"') {
            int iIndexOf = indexOf('\"', i3);
            if (iIndexOf == -1) {
                throw new JSONException("unclosed str");
            }
            this.f831bp = i3;
            if (!scanISO8601DateIfMatch(false, iIndexOf - i3)) {
                this.f831bp = i2;
                this.f832ch = c2;
                this.matchStat = -1;
                return null;
            }
            date = this.calendar.getTime();
            cCharAt = charAt(iIndexOf + 1);
            this.f831bp = i2;
            while (cCharAt != ',' && cCharAt != ']') {
                if (!JSONLexerBase.isWhitespace(cCharAt)) {
                    this.f831bp = i2;
                    this.f832ch = c2;
                    this.matchStat = -1;
                    return null;
                }
                iIndexOf++;
                cCharAt = charAt(iIndexOf + 1);
            }
            this.f831bp = iIndexOf + 1;
            this.f832ch = cCharAt;
        } else {
            char c3 = '9';
            char c4 = TransactionIdCreater.FILL_BYTE;
            if (cCharAt2 != '-' && (cCharAt2 < '0' || cCharAt2 > '9')) {
                if (cCharAt2 == 'n') {
                    int i4 = i3 + 1;
                    if (charAt(i3) == 'u') {
                        int i5 = i4 + 1;
                        if (charAt(i4) == 'l') {
                            int i6 = i5 + 1;
                            if (charAt(i5) == 'l') {
                                cCharAt = charAt(i6);
                                this.f831bp = i6;
                                date = null;
                            }
                        }
                    }
                }
                this.f831bp = i2;
                this.f832ch = c2;
                this.matchStat = -1;
                return null;
            }
            if (cCharAt2 == '-') {
                cCharAt2 = charAt(i3);
                i3++;
                z = true;
            }
            if (cCharAt2 < '0' || cCharAt2 > '9') {
                cCharAt = cCharAt2;
                j = 0;
            } else {
                j = cCharAt2 - '0';
                while (true) {
                    i = i3 + 1;
                    cCharAt = charAt(i3);
                    if (cCharAt < c4 || cCharAt > c3) {
                        break;
                    }
                    j = (j * 10) + (cCharAt - '0');
                    i3 = i;
                    c3 = '9';
                    c4 = TransactionIdCreater.FILL_BYTE;
                }
                if (cCharAt == ',' || cCharAt == ']') {
                    this.f831bp = i - 1;
                }
            }
            if (j < 0) {
                this.f831bp = i2;
                this.f832ch = c2;
                this.matchStat = -1;
                return null;
            }
            if (z) {
                j = -j;
            }
            date = new Date(j);
        }
        if (cCharAt == ',') {
            int i7 = this.f831bp + 1;
            this.f831bp = i7;
            this.f832ch = charAt(i7);
            this.matchStat = 3;
            return date;
        }
        int i8 = this.f831bp + 1;
        this.f831bp = i8;
        char cCharAt3 = charAt(i8);
        if (cCharAt3 == ',') {
            this.token = 16;
            int i9 = this.f831bp + 1;
            this.f831bp = i9;
            this.f832ch = charAt(i9);
        } else if (cCharAt3 == ']') {
            this.token = 15;
            int i10 = this.f831bp + 1;
            this.f831bp = i10;
            this.f832ch = charAt(i10);
        } else if (cCharAt3 == '}') {
            this.token = 13;
            int i11 = this.f831bp + 1;
            this.f831bp = i11;
            this.f832ch = charAt(i11);
        } else {
            if (cCharAt3 != 26) {
                this.f831bp = i2;
                this.f832ch = c2;
                this.matchStat = -1;
                return null;
            }
            this.f832ch = JSONLexer.EOI;
            this.token = 20;
        }
        this.matchStat = 4;
        return date;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00c0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x00c4 -> B:52:0x00b4). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double scanDouble(char r22) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanDouble(char):double");
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x00f3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0104  */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanFieldBoolean(char[] r11) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldBoolean(char[]):boolean");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public Date scanFieldDate(char[] cArr) {
        char cCharAt;
        long j;
        char cCharAt2;
        Date date;
        int i;
        boolean z = false;
        this.matchStat = 0;
        int i2 = this.f831bp;
        char c = this.f832ch;
        if (!charArrayCompare(this.text, i2, cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = this.f831bp + cArr.length;
        int i3 = length + 1;
        char cCharAt3 = charAt(length);
        if (cCharAt3 == '\"') {
            int iIndexOf = indexOf('\"', i3);
            if (iIndexOf == -1) {
                throw new JSONException("unclosed str");
            }
            this.f831bp = i3;
            if (!scanISO8601DateIfMatch(false, iIndexOf - i3)) {
                this.f831bp = i2;
                this.matchStat = -1;
                return null;
            }
            date = this.calendar.getTime();
            cCharAt2 = charAt(iIndexOf + 1);
            this.f831bp = i2;
            while (cCharAt2 != ',' && cCharAt2 != '}') {
                if (!JSONLexerBase.isWhitespace(cCharAt2)) {
                    this.matchStat = -1;
                    return null;
                }
                iIndexOf++;
                cCharAt2 = charAt(iIndexOf + 1);
            }
            this.f831bp = iIndexOf + 1;
            this.f832ch = cCharAt2;
        } else {
            char c2 = '9';
            char c3 = TransactionIdCreater.FILL_BYTE;
            if (cCharAt3 != '-' && (cCharAt3 < '0' || cCharAt3 > '9')) {
                this.matchStat = -1;
                return null;
            }
            if (cCharAt3 == '-') {
                cCharAt3 = charAt(i3);
                i3++;
                z = true;
            }
            if (cCharAt3 < '0' || cCharAt3 > '9') {
                cCharAt = cCharAt3;
                j = 0;
            } else {
                j = cCharAt3 - '0';
                while (true) {
                    i = i3 + 1;
                    cCharAt = charAt(i3);
                    if (cCharAt < c3 || cCharAt > c2) {
                        break;
                    }
                    j = (j * 10) + (cCharAt - '0');
                    i3 = i;
                    c2 = '9';
                    c3 = TransactionIdCreater.FILL_BYTE;
                }
                if (cCharAt == ',' || cCharAt == '}') {
                    this.f831bp = i - 1;
                }
            }
            if (j < 0) {
                this.matchStat = -1;
                return null;
            }
            if (z) {
                j = -j;
            }
            cCharAt2 = cCharAt;
            date = new Date(j);
        }
        if (cCharAt2 == ',') {
            int i4 = this.f831bp + 1;
            this.f831bp = i4;
            this.f832ch = charAt(i4);
            this.matchStat = 3;
            this.token = 16;
            return date;
        }
        int i5 = this.f831bp + 1;
        this.f831bp = i5;
        char cCharAt4 = charAt(i5);
        if (cCharAt4 == ',') {
            this.token = 16;
            int i6 = this.f831bp + 1;
            this.f831bp = i6;
            this.f832ch = charAt(i6);
        } else if (cCharAt4 == ']') {
            this.token = 15;
            int i7 = this.f831bp + 1;
            this.f831bp = i7;
            this.f832ch = charAt(i7);
        } else if (cCharAt4 == '}') {
            this.token = 13;
            int i8 = this.f831bp + 1;
            this.f831bp = i8;
            this.f832ch = charAt(i8);
        } else {
            if (cCharAt4 != 26) {
                this.f831bp = i2;
                this.f832ch = c;
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
        }
        this.matchStat = 4;
        return date;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0065, code lost:
    
        if (r15 != '.') goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0067, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0069, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006a, code lost:
    
        if (r3 >= 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006c, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006e, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006f, code lost:
    
        if (r6 == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0071, code lost:
    
        if (r15 == '\"') goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0073, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0075, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0076, code lost:
    
        r15 = r11 + 1;
        r4 = charAt(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007c, code lost:
    
        r11 = r15;
        r15 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0082, code lost:
    
        if (r15 == ',') goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0084, code lost:
    
        if (r15 != '}') goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008b, code lost:
    
        if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(r15) == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x008d, code lost:
    
        r15 = r11 + 1;
        r4 = charAt(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0094, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0096, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0097, code lost:
    
        r11 = r11 - 1;
        r14.f831bp = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x009c, code lost:
    
        if (r15 != ',') goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x009e, code lost:
    
        r11 = r11 + 1;
        r14.f831bp = r11;
        r14.f832ch = charAt(r11);
        r14.matchStat = 3;
        r14.token = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ac, code lost:
    
        if (r7 == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00af, code lost:
    
        return -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00b0, code lost:
    
        if (r15 != '}') goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b2, code lost:
    
        r14.f831bp = r11;
        r11 = r11 + 1;
        r14.f831bp = r11;
        r15 = charAt(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00bb, code lost:
    
        if (r15 != ',') goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00bd, code lost:
    
        r14.token = 16;
        r15 = r14.f831bp + 1;
        r14.f831bp = r15;
        r14.f832ch = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00cd, code lost:
    
        if (r15 != ']') goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00cf, code lost:
    
        r14.token = 15;
        r15 = r14.f831bp + 1;
        r14.f831bp = r15;
        r14.f832ch = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00df, code lost:
    
        if (r15 != '}') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00e1, code lost:
    
        r14.token = 13;
        r15 = r14.f831bp + 1;
        r14.f831bp = r15;
        r14.f832ch = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00f3, code lost:
    
        if (r15 != 26) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00f5, code lost:
    
        r14.token = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00f9, code lost:
    
        r14.matchStat = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0101, code lost:
    
        if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(r15) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0103, code lost:
    
        r15 = r14.f831bp + 1;
        r14.f831bp = r15;
        r15 = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x010d, code lost:
    
        r14.f831bp = r1;
        r14.f832ch = r2;
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0113, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0114, code lost:
    
        if (r7 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0117, code lost:
    
        return -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x007c, code lost:
    
        r11 = r15;
        r15 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:?, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:?, code lost:
    
        return r3;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanFieldInt(char[] r15) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldInt(char[]):int");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public long scanFieldLong(char[] cArr) {
        boolean z;
        int i;
        char cCharAt;
        this.matchStat = 0;
        int i2 = this.f831bp;
        char c = this.f832ch;
        if (!charArrayCompare(this.text, i2, cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = this.f831bp + cArr.length;
        int i3 = length + 1;
        char cCharAt2 = charAt(length);
        boolean z2 = cCharAt2 == '\"';
        if (z2) {
            cCharAt2 = charAt(i3);
            i3++;
        }
        if (cCharAt2 == '-') {
            z = true;
            cCharAt2 = charAt(i3);
            i3++;
        } else {
            z = false;
        }
        if (cCharAt2 >= '0') {
            char c2 = '9';
            if (cCharAt2 <= '9') {
                long j = cCharAt2 - TransactionIdCreater.FILL_BYTE;
                while (true) {
                    i = i3 + 1;
                    cCharAt = charAt(i3);
                    if (cCharAt < '0' || cCharAt > c2) {
                        break;
                    }
                    j = (j * 10) + (cCharAt - '0');
                    i3 = i;
                    c2 = '9';
                }
                if (cCharAt == '.') {
                    this.matchStat = -1;
                    return 0L;
                }
                if (z2) {
                    if (cCharAt != '\"') {
                        this.matchStat = -1;
                        return 0L;
                    }
                    int i4 = i + 1;
                    char cCharAt3 = charAt(i);
                    i = i4;
                    cCharAt = cCharAt3;
                }
                if (cCharAt == ',' || cCharAt == '}') {
                    this.f831bp = i - 1;
                }
                if (!(j >= 0 || (j == Long.MIN_VALUE && z))) {
                    this.f831bp = i2;
                    this.f832ch = c;
                    this.matchStat = -1;
                    return 0L;
                }
                while (cCharAt != ',') {
                    if (cCharAt == '}') {
                        int i5 = this.f831bp + 1;
                        this.f831bp = i5;
                        char cCharAt4 = charAt(i5);
                        while (true) {
                            if (cCharAt4 == ',') {
                                this.token = 16;
                                int i6 = this.f831bp + 1;
                                this.f831bp = i6;
                                this.f832ch = charAt(i6);
                                break;
                            }
                            if (cCharAt4 == ']') {
                                this.token = 15;
                                int i7 = this.f831bp + 1;
                                this.f831bp = i7;
                                this.f832ch = charAt(i7);
                                break;
                            }
                            if (cCharAt4 == '}') {
                                this.token = 13;
                                int i8 = this.f831bp + 1;
                                this.f831bp = i8;
                                this.f832ch = charAt(i8);
                                break;
                            }
                            if (cCharAt4 == 26) {
                                this.token = 20;
                                break;
                            }
                            if (!JSONLexerBase.isWhitespace(cCharAt4)) {
                                this.f831bp = i2;
                                this.f832ch = c;
                                this.matchStat = -1;
                                return 0L;
                            }
                            int i9 = this.f831bp + 1;
                            this.f831bp = i9;
                            cCharAt4 = charAt(i9);
                        }
                        this.matchStat = 4;
                        return z ? -j : j;
                    }
                    if (!JSONLexerBase.isWhitespace(cCharAt)) {
                        this.matchStat = -1;
                        return 0L;
                    }
                    this.f831bp = i;
                    int i10 = i + 1;
                    char cCharAt5 = charAt(i);
                    i = i10;
                    cCharAt = cCharAt5;
                }
                int i11 = this.f831bp + 1;
                this.f831bp = i11;
                this.f832ch = charAt(i11);
                this.matchStat = 3;
                this.token = 16;
                return z ? -j : j;
            }
        }
        this.f831bp = i2;
        this.f832ch = c;
        this.matchStat = -1;
        return 0L;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public String scanFieldString(char[] cArr) {
        this.matchStat = 0;
        int i = this.f831bp;
        char c = this.f832ch;
        while (!charArrayCompare(this.text, this.f831bp, cArr)) {
            if (!JSONLexerBase.isWhitespace(this.f832ch)) {
                this.matchStat = -2;
                return stringDefaultValue();
            }
            next();
            while (JSONLexerBase.isWhitespace(this.f832ch)) {
                next();
            }
        }
        int length = this.f831bp + cArr.length;
        int i2 = length + 1;
        char cCharAt = charAt(length);
        int i3 = 0;
        if (cCharAt != '\"') {
            while (JSONLexerBase.isWhitespace(cCharAt)) {
                i3++;
                int i4 = i2 + 1;
                char cCharAt2 = charAt(i2);
                i2 = i4;
                cCharAt = cCharAt2;
            }
            if (cCharAt != '\"') {
                this.matchStat = -1;
                return stringDefaultValue();
            }
        }
        int iIndexOf = indexOf('\"', i2);
        if (iIndexOf == -1) {
            throw new JSONException("unclosed str");
        }
        String strSubString = subString(i2, iIndexOf - i2);
        if (strSubString.indexOf(92) != -1) {
            while (true) {
                int i5 = 0;
                for (int i6 = iIndexOf - 1; i6 >= 0 && charAt(i6) == '\\'; i6--) {
                    i5++;
                }
                if (i5 % 2 == 0) {
                    break;
                }
                iIndexOf = indexOf('\"', iIndexOf + 1);
            }
            int i7 = this.f831bp;
            int length2 = iIndexOf - (((cArr.length + i7) + 1) + i3);
            strSubString = JSONLexerBase.readString(sub_chars(i7 + cArr.length + 1 + i3, length2), length2);
        }
        if ((this.features & Feature.TrimStringFieldValue.mask) != 0) {
            strSubString = strSubString.trim();
        }
        char cCharAt3 = charAt(iIndexOf + 1);
        while (cCharAt3 != ',' && cCharAt3 != '}') {
            if (!JSONLexerBase.isWhitespace(cCharAt3)) {
                this.matchStat = -1;
                return stringDefaultValue();
            }
            iIndexOf++;
            cCharAt3 = charAt(iIndexOf + 1);
        }
        int i8 = iIndexOf + 1;
        this.f831bp = i8;
        this.f832ch = cCharAt3;
        if (cCharAt3 == ',') {
            int i9 = i8 + 1;
            this.f831bp = i9;
            this.f832ch = charAt(i9);
            this.matchStat = 3;
            return strSubString;
        }
        int i10 = i8 + 1;
        this.f831bp = i10;
        char cCharAt4 = charAt(i10);
        if (cCharAt4 == ',') {
            this.token = 16;
            int i11 = this.f831bp + 1;
            this.f831bp = i11;
            this.f832ch = charAt(i11);
        } else if (cCharAt4 == ']') {
            this.token = 15;
            int i12 = this.f831bp + 1;
            this.f831bp = i12;
            this.f832ch = charAt(i12);
        } else if (cCharAt4 == '}') {
            this.token = 13;
            int i13 = this.f831bp + 1;
            this.f831bp = i13;
            this.f832ch = charAt(i13);
        } else {
            if (cCharAt4 != 26) {
                this.f831bp = i;
                this.f832ch = c;
                this.matchStat = -1;
                return stringDefaultValue();
            }
            this.token = 20;
        }
        this.matchStat = 4;
        return strSubString;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00db, code lost:
    
        if (r9 != ']') goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e1, code lost:
    
        if (r3.size() != 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e3, code lost:
    
        r2 = r1 + 1;
        r1 = charAt(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ed, code lost:
    
        r17.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f0, code lost:
    
        return null;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Collection<java.lang.String> scanFieldStringArray(char[] r18, java.lang.Class<?> r19) {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldStringArray(char[], java.lang.Class):java.util.Collection");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public long scanFieldSymbol(char[] cArr) {
        this.matchStat = 0;
        while (!charArrayCompare(this.text, this.f831bp, cArr)) {
            if (!JSONLexerBase.isWhitespace(this.f832ch)) {
                this.matchStat = -2;
                return 0L;
            }
            next();
            while (JSONLexerBase.isWhitespace(this.f832ch)) {
                next();
            }
        }
        int length = this.f831bp + cArr.length;
        int i = length + 1;
        char cCharAt = charAt(length);
        if (cCharAt != '\"') {
            while (JSONLexerBase.isWhitespace(cCharAt)) {
                cCharAt = charAt(i);
                i++;
            }
            if (cCharAt != '\"') {
                this.matchStat = -1;
                return 0L;
            }
        }
        long j = TypeUtils.fnv1a_64_magic_hashcode;
        while (true) {
            int i2 = i + 1;
            char cCharAt2 = charAt(i);
            if (cCharAt2 == '\"') {
                this.f831bp = i2;
                char cCharAt3 = charAt(i2);
                this.f832ch = cCharAt3;
                while (cCharAt3 != ',') {
                    if (cCharAt3 == '}') {
                        next();
                        skipWhitespace();
                        char current = getCurrent();
                        if (current == ',') {
                            this.token = 16;
                            int i3 = this.f831bp + 1;
                            this.f831bp = i3;
                            this.f832ch = charAt(i3);
                        } else if (current == ']') {
                            this.token = 15;
                            int i4 = this.f831bp + 1;
                            this.f831bp = i4;
                            this.f832ch = charAt(i4);
                        } else if (current == '}') {
                            this.token = 13;
                            int i5 = this.f831bp + 1;
                            this.f831bp = i5;
                            this.f832ch = charAt(i5);
                        } else {
                            if (current != 26) {
                                this.matchStat = -1;
                                return 0L;
                            }
                            this.token = 20;
                        }
                        this.matchStat = 4;
                        return j;
                    }
                    if (!JSONLexerBase.isWhitespace(cCharAt3)) {
                        this.matchStat = -1;
                        return 0L;
                    }
                    int i6 = this.f831bp + 1;
                    this.f831bp = i6;
                    cCharAt3 = charAt(i6);
                }
                int i7 = this.f831bp + 1;
                this.f831bp = i7;
                this.f832ch = charAt(i7);
                this.matchStat = 3;
                return j;
            }
            if (i2 > this.len) {
                this.matchStat = -1;
                return 0L;
            }
            j = (j ^ cCharAt2) * TypeUtils.fnv1a_64_magic_prime;
            i = i2;
        }
    }

    public boolean scanISO8601DateIfMatch() {
        return scanISO8601DateIfMatch(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x007c, code lost:
    
        if (r3 != '.') goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007e, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0080, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0081, code lost:
    
        if (r7 == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0083, code lost:
    
        if (r3 == '\"') goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0085, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0087, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0088, code lost:
    
        r3 = charAt(r13);
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008f, code lost:
    
        if (r4 >= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0091, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0093, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0096, code lost:
    
        if (r3 != r17) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0098, code lost:
    
        r16.f831bp = r13;
        r16.f832ch = charAt(r13);
        r16.matchStat = 3;
        r16.token = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a5, code lost:
    
        if (r8 == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a8, code lost:
    
        return -r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ad, code lost:
    
        if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(r3) == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00af, code lost:
    
        r3 = charAt(r13);
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b7, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b9, code lost:
    
        if (r8 == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00bc, code lost:
    
        return -r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:?, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:?, code lost:
    
        return r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0107  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x0120 -> B:68:0x00f1). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int scanInt(char r17) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanInt(char):int");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public long scanLong(char c) {
        int i;
        char cCharAt;
        boolean z = false;
        this.matchStat = 0;
        int i2 = this.f831bp;
        int i3 = i2 + 1;
        char cCharAt2 = charAt(i2);
        boolean z2 = cCharAt2 == '\"';
        if (z2) {
            int i4 = i3 + 1;
            char cCharAt3 = charAt(i3);
            i3 = i4;
            cCharAt2 = cCharAt3;
        }
        boolean z3 = cCharAt2 == '-';
        if (z3) {
            int i5 = i3 + 1;
            char cCharAt4 = charAt(i3);
            i3 = i5;
            cCharAt2 = cCharAt4;
        }
        char c2 = TransactionIdCreater.FILL_BYTE;
        if (cCharAt2 >= '0' && cCharAt2 <= '9') {
            long j = cCharAt2 - TransactionIdCreater.FILL_BYTE;
            while (true) {
                i = i3 + 1;
                cCharAt = charAt(i3);
                if (cCharAt < c2 || cCharAt > '9') {
                    break;
                }
                j = (j * 10) + (cCharAt - '0');
                i3 = i;
                c2 = TransactionIdCreater.FILL_BYTE;
            }
            if (cCharAt == '.') {
                this.matchStat = -1;
                return 0L;
            }
            if (z2) {
                if (cCharAt != '\"') {
                    this.matchStat = -1;
                    return 0L;
                }
                cCharAt = charAt(i);
                i++;
            }
            if (j >= 0 || (j == Long.MIN_VALUE && z3)) {
                z = true;
            }
            if (!z) {
                this.matchStat = -1;
                return 0L;
            }
            while (cCharAt != c) {
                if (!JSONLexerBase.isWhitespace(cCharAt)) {
                    this.matchStat = -1;
                    return j;
                }
                cCharAt = charAt(i);
                i++;
            }
            this.f831bp = i;
            this.f832ch = charAt(i);
            this.matchStat = 3;
            this.token = 16;
            return z3 ? -j : j;
        }
        if (cCharAt2 == 'n') {
            int i6 = i3 + 1;
            if (charAt(i3) == 'u') {
                int i7 = i6 + 1;
                if (charAt(i6) == 'l') {
                    int i8 = i7 + 1;
                    if (charAt(i7) == 'l') {
                        this.matchStat = 5;
                        int i9 = i8 + 1;
                        char cCharAt5 = charAt(i8);
                        if (z2 && cCharAt5 == '\"') {
                            int i10 = i9 + 1;
                            char cCharAt6 = charAt(i9);
                            i9 = i10;
                            cCharAt5 = cCharAt6;
                        }
                        while (cCharAt5 != ',') {
                            if (cCharAt5 == ']') {
                                this.f831bp = i9;
                                this.f832ch = charAt(i9);
                                this.matchStat = 5;
                                this.token = 15;
                                return 0L;
                            }
                            if (!JSONLexerBase.isWhitespace(cCharAt5)) {
                                this.matchStat = -1;
                                return 0L;
                            }
                            int i11 = i9 + 1;
                            char cCharAt7 = charAt(i9);
                            i9 = i11;
                            cCharAt5 = cCharAt7;
                        }
                        this.f831bp = i9;
                        this.f832ch = charAt(i9);
                        this.matchStat = 5;
                        this.token = 16;
                        return 0L;
                    }
                }
            }
        }
        this.matchStat = -1;
        return 0L;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public String scanTypeName(SymbolTable symbolTable) {
        int iIndexOf;
        if (!this.text.startsWith("\"@type\":\"", this.f831bp) || (iIndexOf = this.text.indexOf(34, this.f831bp + 9)) == -1) {
            return null;
        }
        int i = this.f831bp + 9;
        this.f831bp = i;
        int iCharAt = 0;
        while (i < iIndexOf) {
            iCharAt = (iCharAt * 31) + this.text.charAt(i);
            i++;
        }
        int i2 = this.f831bp;
        String strAddSymbol = addSymbol(i2, iIndexOf - i2, iCharAt, symbolTable);
        char cCharAt = this.text.charAt(iIndexOf + 1);
        if (cCharAt != ',' && cCharAt != ']') {
            return null;
        }
        int i3 = iIndexOf + 2;
        this.f831bp = i3;
        this.f832ch = this.text.charAt(i3);
        return strAddSymbol;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0084, code lost:
    
        if (r3 == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008c, code lost:
    
        throw new com.alibaba.fastjson.JSONException("illegal json.");
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean seekArrayToItem(int r11) {
        /*
            r10 = this;
            if (r11 < 0) goto Lb4
            int r0 = r10.token
            r1 = 20
            r2 = 0
            if (r0 != r1) goto La
            return r2
        La:
            r1 = 14
            if (r0 != r1) goto Lae
            r0 = r2
        Lf:
            r3 = 1
            if (r0 >= r11) goto Laa
            r10.skipWhitespace()
            char r4 = r10.f832ch
            r5 = 34
            r6 = 16
            java.lang.String r7 = "illegal json."
            r8 = 93
            r9 = 44
            if (r4 == r5) goto L8d
            r5 = 39
            if (r4 != r5) goto L28
            goto L8d
        L28:
            r5 = 123(0x7b, float:1.72E-43)
            if (r4 != r5) goto L37
            r10.next()
            r3 = 12
            r10.token = r3
            r10.skipObject(r2)
            goto L43
        L37:
            r5 = 91
            if (r4 != r5) goto L53
            r10.next()
            r10.token = r1
            r10.skipArray(r2)
        L43:
            int r3 = r10.token
            if (r3 != r6) goto L48
            goto L97
        L48:
            r11 = 15
            if (r3 != r11) goto L4d
            return r2
        L4d:
            java.lang.UnsupportedOperationException r11 = new java.lang.UnsupportedOperationException
            r11.<init>()
            throw r11
        L53:
            int r4 = r10.f831bp
            int r4 = r4 + r3
        L56:
            java.lang.String r5 = r10.text
            int r5 = r5.length()
            if (r4 >= r5) goto L83
            java.lang.String r5 = r10.text
            char r5 = r5.charAt(r4)
            if (r5 != r9) goto L71
            int r4 = r4 + 1
            r10.f831bp = r4
            char r4 = r10.charAt(r4)
            r10.f832ch = r4
            goto L84
        L71:
            if (r5 != r8) goto L80
            int r4 = r4 + r3
            r10.f831bp = r4
            char r11 = r10.charAt(r4)
            r10.f832ch = r11
            r10.nextToken()
            return r2
        L80:
            int r4 = r4 + 1
            goto L56
        L83:
            r3 = r2
        L84:
            if (r3 == 0) goto L87
            goto L97
        L87:
            com.alibaba.fastjson.JSONException r11 = new com.alibaba.fastjson.JSONException
            r11.<init>(r7)
            throw r11
        L8d:
            r10.skipString()
            char r3 = r10.f832ch
            if (r3 != r9) goto L9b
            r10.next()
        L97:
            int r0 = r0 + 1
            goto Lf
        L9b:
            if (r3 != r8) goto La4
            r10.next()
            r10.nextToken(r6)
            return r2
        La4:
            com.alibaba.fastjson.JSONException r11 = new com.alibaba.fastjson.JSONException
            r11.<init>(r7)
            throw r11
        Laa:
            r10.nextToken()
            return r3
        Lae:
            java.lang.UnsupportedOperationException r11 = new java.lang.UnsupportedOperationException
            r11.<init>()
            throw r11
        Lb4:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "index must > 0, but "
            java.lang.String r11 = com.huawei.hem.C0948f6.m1754L(r1, r11)
            r0.<init>(r11)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.seekArrayToItem(int):boolean");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public int seekObjectToField(long j, boolean z) {
        int i = this.token;
        int i2 = -1;
        if (i == 20) {
            return -1;
        }
        if (i != 13) {
            int i3 = 15;
            if (i != 15) {
                int i4 = 16;
                if (i != 12 && i != 16) {
                    throw new UnsupportedOperationException(JSONToken.name(this.token));
                }
                while (true) {
                    char c = this.f832ch;
                    if (c == '}') {
                        next();
                        nextToken();
                        return i2;
                    }
                    char cCharAt = JSONLexer.EOI;
                    if (c == 26) {
                        return i2;
                    }
                    if (c != '\"') {
                        skipWhitespace();
                    }
                    if (this.f832ch != '\"') {
                        throw new UnsupportedOperationException();
                    }
                    long j2 = TypeUtils.fnv1a_64_magic_hashcode;
                    int i5 = this.f831bp + 1;
                    while (true) {
                        if (i5 >= this.text.length()) {
                            break;
                        }
                        char cCharAt2 = this.text.charAt(i5);
                        if (cCharAt2 == '\\') {
                            i5++;
                            if (i5 == this.text.length()) {
                                StringBuilder sbM1765j = C0948f6.m1765j("unclosed str, ");
                                sbM1765j.append(info());
                                throw new JSONException(sbM1765j.toString());
                            }
                            cCharAt2 = this.text.charAt(i5);
                        }
                        if (cCharAt2 == '\"') {
                            int i6 = i5 + 1;
                            this.f831bp = i6;
                            if (i6 < this.text.length()) {
                                cCharAt = this.text.charAt(this.f831bp);
                            }
                            this.f832ch = cCharAt;
                        } else {
                            j2 = (j2 ^ cCharAt2) * TypeUtils.fnv1a_64_magic_prime;
                            i5++;
                        }
                    }
                    if (j2 == j) {
                        if (this.f832ch != ':') {
                            skipWhitespace();
                        }
                        if (this.f832ch != ':') {
                            return 3;
                        }
                        int i7 = this.f831bp + 1;
                        this.f831bp = i7;
                        char cCharAt3 = i7 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(i7);
                        this.f832ch = cCharAt3;
                        if (cCharAt3 == ',') {
                            int i8 = this.f831bp + 1;
                            this.f831bp = i8;
                            this.f832ch = i8 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(i8);
                            this.token = i4;
                            return 3;
                        }
                        if (cCharAt3 == ']') {
                            int i9 = this.f831bp + 1;
                            this.f831bp = i9;
                            this.f832ch = i9 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(i9);
                            this.token = i3;
                            return 3;
                        }
                        if (cCharAt3 == '}') {
                            int i10 = this.f831bp + 1;
                            this.f831bp = i10;
                            this.f832ch = i10 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(i10);
                            this.token = 13;
                            return 3;
                        }
                        if (cCharAt3 < '0' || cCharAt3 > '9') {
                            nextToken(2);
                            return 3;
                        }
                        this.f834sp = 0;
                        this.pos = this.f831bp;
                        scanNumber();
                        return 3;
                    }
                    if (this.f832ch != ':') {
                        skipWhitespace();
                    }
                    if (this.f832ch != ':') {
                        StringBuilder sbM1765j2 = C0948f6.m1765j("illegal json, ");
                        sbM1765j2.append(info());
                        throw new JSONException(sbM1765j2.toString());
                    }
                    int i11 = this.f831bp + 1;
                    this.f831bp = i11;
                    char cCharAt4 = i11 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(i11);
                    this.f832ch = cCharAt4;
                    if (cCharAt4 != '\"' && cCharAt4 != '\'' && cCharAt4 != '{' && cCharAt4 != '[' && cCharAt4 != '0' && cCharAt4 != '1' && cCharAt4 != '2' && cCharAt4 != '3' && cCharAt4 != '4' && cCharAt4 != '5' && cCharAt4 != '6' && cCharAt4 != '7' && cCharAt4 != '8' && cCharAt4 != '9' && cCharAt4 != '+' && cCharAt4 != '-') {
                        skipWhitespace();
                    }
                    char c2 = this.f832ch;
                    if (c2 == '-' || c2 == '+' || (c2 >= '0' && c2 <= '9')) {
                        next();
                        while (true) {
                            char c3 = this.f832ch;
                            if (c3 < '0' || c3 > '9') {
                                break;
                            }
                            next();
                        }
                        if (this.f832ch == '.') {
                            next();
                            while (true) {
                                char c4 = this.f832ch;
                                if (c4 < '0' || c4 > '9') {
                                    break;
                                }
                                next();
                            }
                        }
                        char c5 = this.f832ch;
                        if (c5 == 'E' || c5 == 'e') {
                            next();
                            char c6 = this.f832ch;
                            if (c6 == '-' || c6 == '+') {
                                next();
                            }
                            while (true) {
                                char c7 = this.f832ch;
                                if (c7 < '0' || c7 > '9') {
                                    break;
                                }
                                next();
                            }
                        }
                        if (this.f832ch != ',') {
                            skipWhitespace();
                        }
                        if (this.f832ch == ',') {
                            next();
                        }
                    } else {
                        char c8 = this.f832ch;
                        if (c8 == '\"') {
                            skipString();
                            char c9 = this.f832ch;
                            if (c9 != ',' && c9 != '}') {
                                skipWhitespace();
                            }
                            if (this.f832ch == ',') {
                                next();
                            }
                        } else if (c8 == 't') {
                            next();
                            if (this.f832ch == 'r') {
                                next();
                                if (this.f832ch == 'u') {
                                    next();
                                    if (this.f832ch == 'e') {
                                        next();
                                    }
                                }
                            }
                            char c10 = this.f832ch;
                            if (c10 != ',' && c10 != '}') {
                                skipWhitespace();
                            }
                            if (this.f832ch == ',') {
                                next();
                            }
                        } else if (c8 == 'n') {
                            next();
                            if (this.f832ch == 'u') {
                                next();
                                if (this.f832ch == 'l') {
                                    next();
                                    if (this.f832ch == 'l') {
                                        next();
                                    }
                                }
                            }
                            char c11 = this.f832ch;
                            if (c11 != ',' && c11 != '}') {
                                skipWhitespace();
                            }
                            if (this.f832ch == ',') {
                                next();
                            }
                        } else if (c8 == 'f') {
                            next();
                            if (this.f832ch == 'a') {
                                next();
                                if (this.f832ch == 'l') {
                                    next();
                                    if (this.f832ch == 's') {
                                        next();
                                        if (this.f832ch == 'e') {
                                            next();
                                        }
                                    }
                                }
                            }
                            char c12 = this.f832ch;
                            if (c12 != ',' && c12 != '}') {
                                skipWhitespace();
                            }
                            if (this.f832ch == ',') {
                                next();
                            }
                        } else if (c8 == '{') {
                            int i12 = this.f831bp + 1;
                            this.f831bp = i12;
                            this.f832ch = i12 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(i12);
                            if (z) {
                                this.token = 12;
                                return 1;
                            }
                            skipObject(false);
                            if (this.token == 13) {
                                return -1;
                            }
                        } else {
                            if (c8 != '[') {
                                throw new UnsupportedOperationException();
                            }
                            next();
                            if (z) {
                                this.token = 14;
                                return 2;
                            }
                            skipArray(false);
                            if (this.token == 13) {
                                return -1;
                            }
                        }
                    }
                    i2 = -1;
                    i3 = 15;
                    i4 = 16;
                }
            }
        }
        nextToken();
        return -1;
    }

    public void setTime(char c, char c2, char c3, char c4, char c5, char c6) {
        this.calendar.set(11, (c2 - '0') + ((c - '0') * 10));
        this.calendar.set(12, (c4 - '0') + ((c3 - '0') * 10));
        this.calendar.set(13, (c6 - '0') + ((c5 - '0') * 10));
    }

    public void setTimeZone(char c, char c2, char c3) {
        setTimeZone(c, c2, c3, TransactionIdCreater.FILL_BYTE, TransactionIdCreater.FILL_BYTE);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipArray() {
        skipArray(false);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipObject() {
        skipObject(false);
    }

    public final void skipString() {
        if (this.f832ch != '\"') {
            throw new UnsupportedOperationException();
        }
        int i = this.f831bp;
        while (true) {
            i++;
            if (i >= this.text.length()) {
                throw new JSONException("unclosed str");
            }
            char cCharAt = this.text.charAt(i);
            if (cCharAt == '\\') {
                if (i < this.len - 1) {
                    i++;
                }
            } else if (cCharAt == '\"') {
                String str = this.text;
                int i2 = i + 1;
                this.f831bp = i2;
                this.f832ch = str.charAt(i2);
                return;
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String stringVal() {
        return !this.hasSpecial ? subString(this.f833np + 1, this.f834sp) : new String(this.sbuf, 0, this.f834sp);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String subString(int i, int i2) {
        if (!ASMUtils.IS_ANDROID) {
            return this.text.substring(i, i2 + i);
        }
        char[] cArr = this.sbuf;
        if (i2 < cArr.length) {
            this.text.getChars(i, i + i2, cArr, 0);
            return new String(this.sbuf, 0, i2);
        }
        char[] cArr2 = new char[i2];
        this.text.getChars(i, i2 + i, cArr2, 0);
        return new String(cArr2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char[] sub_chars(int i, int i2) {
        if (ASMUtils.IS_ANDROID) {
            char[] cArr = this.sbuf;
            if (i2 < cArr.length) {
                this.text.getChars(i, i2 + i, cArr, 0);
                return this.sbuf;
            }
        }
        char[] cArr2 = new char[i2];
        this.text.getChars(i, i2 + i, cArr2, 0);
        return cArr2;
    }

    public JSONScanner(String str, int i) {
        super(i);
        this.text = str;
        this.len = str.length();
        this.f831bp = -1;
        next();
        if (this.f832ch == 65279) {
            next();
        }
    }

    public boolean scanISO8601DateIfMatch(boolean z) {
        return scanISO8601DateIfMatch(z, this.len - this.f831bp);
    }

    public void setTimeZone(char c, char c2, char c3, char c4, char c5) {
        int i = (((c5 - '0') + ((c4 - '0') * 10)) * 60 * 1000) + (((c3 - '0') + ((c2 - '0') * 10)) * TimeUtils.SECONDS_PER_HOUR * 1000);
        if (c == '-') {
            i = -i;
        }
        if (this.calendar.getTimeZone().getRawOffset() != i) {
            this.calendar.setTimeZone(new SimpleTimeZone(i, Integer.toString(i)));
        }
    }

    public final void skipArray(boolean z) {
        int i = this.f831bp;
        boolean z2 = false;
        int i2 = 0;
        while (i < this.text.length()) {
            char cCharAt = this.text.charAt(i);
            if (cCharAt == '\\') {
                if (i >= this.len - 1) {
                    this.f832ch = cCharAt;
                    this.f831bp = i;
                    StringBuilder sbM1765j = C0948f6.m1765j("illegal str, ");
                    sbM1765j.append(info());
                    throw new JSONException(sbM1765j.toString());
                }
                i++;
            } else if (cCharAt == '\"') {
                z2 = !z2;
            } else if (cCharAt != '[') {
                char cCharAt2 = JSONLexer.EOI;
                if (cCharAt == '{' && z) {
                    int i3 = this.f831bp + 1;
                    this.f831bp = i3;
                    if (i3 < this.text.length()) {
                        cCharAt2 = this.text.charAt(i3);
                    }
                    this.f832ch = cCharAt2;
                    skipObject(z);
                } else if (cCharAt == ']' && !z2 && i2 - 1 == -1) {
                    int i4 = i + 1;
                    this.f831bp = i4;
                    if (i4 == this.text.length()) {
                        this.f832ch = JSONLexer.EOI;
                        this.token = 20;
                        return;
                    } else {
                        this.f832ch = this.text.charAt(this.f831bp);
                        nextToken(16);
                        return;
                    }
                }
            } else if (!z2) {
                i2++;
            }
            i++;
        }
        if (i != this.text.length()) {
            return;
        }
        StringBuilder sbM1765j2 = C0948f6.m1765j("illegal str, ");
        sbM1765j2.append(info());
        throw new JSONException(sbM1765j2.toString());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipObject(boolean z) {
        int i = this.f831bp;
        boolean z2 = false;
        int i2 = 0;
        while (i < this.text.length()) {
            char cCharAt = this.text.charAt(i);
            if (cCharAt == '\\') {
                if (i >= this.len - 1) {
                    this.f832ch = cCharAt;
                    this.f831bp = i;
                    StringBuilder sbM1765j = C0948f6.m1765j("illegal str, ");
                    sbM1765j.append(info());
                    throw new JSONException(sbM1765j.toString());
                }
                i++;
            } else if (cCharAt == '\"') {
                z2 = !z2;
            } else if (cCharAt != '{') {
                if (cCharAt == '}' && !z2 && i2 - 1 == -1) {
                    int i3 = i + 1;
                    this.f831bp = i3;
                    int length = this.text.length();
                    char cCharAt2 = JSONLexer.EOI;
                    if (i3 == length) {
                        this.f832ch = JSONLexer.EOI;
                        this.token = 20;
                        return;
                    }
                    char cCharAt3 = this.text.charAt(this.f831bp);
                    this.f832ch = cCharAt3;
                    if (cCharAt3 == ',') {
                        this.token = 16;
                        int i4 = this.f831bp + 1;
                        this.f831bp = i4;
                        if (i4 < this.text.length()) {
                            cCharAt2 = this.text.charAt(i4);
                        }
                        this.f832ch = cCharAt2;
                        return;
                    }
                    if (cCharAt3 == '}') {
                        this.token = 13;
                        next();
                        return;
                    } else if (cCharAt3 != ']') {
                        nextToken(16);
                        return;
                    } else {
                        this.token = 15;
                        next();
                        return;
                    }
                }
            } else if (!z2) {
                i2++;
            }
            i++;
        }
        for (int i5 = 0; i5 < this.f831bp; i5++) {
            if (i5 < this.text.length() && this.text.charAt(i5) == ' ') {
                i++;
            }
        }
        if (i != this.text.length()) {
            return;
        }
        StringBuilder sbM1765j2 = C0948f6.m1765j("illegal str, ");
        sbM1765j2.append(info());
        throw new JSONException(sbM1765j2.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x01f6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean scanISO8601DateIfMatch(boolean r28, int r29) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 1729
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanISO8601DateIfMatch(boolean, int):boolean");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final boolean charArrayCompare(char[] cArr) {
        return charArrayCompare(this.text, this.f831bp, cArr);
    }

    public JSONScanner(char[] cArr, int i) {
        this(cArr, i, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONScanner(char[] cArr, int i, int i2) {
        this(new String(cArr, 0, i), i2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public String[] scanFieldStringArray(char[] cArr, int i, SymbolTable symbolTable) throws NumberFormatException {
        int i2;
        char cCharAt;
        int i3 = this.f831bp;
        char c = this.f832ch;
        while (JSONLexerBase.isWhitespace(this.f832ch)) {
            next();
        }
        if (cArr != null) {
            this.matchStat = 0;
            if (!charArrayCompare(cArr)) {
                this.matchStat = -2;
                return null;
            }
            int length = this.f831bp + cArr.length;
            int i4 = length + 1;
            char cCharAt2 = this.text.charAt(length);
            while (JSONLexerBase.isWhitespace(cCharAt2)) {
                cCharAt2 = this.text.charAt(i4);
                i4++;
            }
            if (cCharAt2 == ':') {
                i2 = i4 + 1;
                cCharAt = this.text.charAt(i4);
                while (JSONLexerBase.isWhitespace(cCharAt)) {
                    cCharAt = this.text.charAt(i2);
                    i2++;
                }
            } else {
                this.matchStat = -1;
                return null;
            }
        } else {
            i2 = this.f831bp + 1;
            cCharAt = this.f832ch;
        }
        if (cCharAt == '[') {
            this.f831bp = i2;
            this.f832ch = this.text.charAt(i2);
            String[] strArr = i >= 0 ? new String[i] : new String[4];
            int i5 = 0;
            while (true) {
                if (JSONLexerBase.isWhitespace(this.f832ch)) {
                    next();
                } else {
                    if (this.f832ch != '\"') {
                        this.f831bp = i3;
                        this.f832ch = c;
                        this.matchStat = -1;
                        return null;
                    }
                    String strScanSymbol = scanSymbol(symbolTable, '\"');
                    if (i5 == strArr.length) {
                        String[] strArr2 = new String[strArr.length + (strArr.length >> 1) + 1];
                        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
                        strArr = strArr2;
                    }
                    int i6 = i5 + 1;
                    strArr[i5] = strScanSymbol;
                    while (JSONLexerBase.isWhitespace(this.f832ch)) {
                        next();
                    }
                    if (this.f832ch == ',') {
                        next();
                        i5 = i6;
                    } else {
                        if (strArr.length != i6) {
                            String[] strArr3 = new String[i6];
                            System.arraycopy(strArr, 0, strArr3, 0, i6);
                            strArr = strArr3;
                        }
                        while (JSONLexerBase.isWhitespace(this.f832ch)) {
                            next();
                        }
                        if (this.f832ch == ']') {
                            next();
                            return strArr;
                        }
                        this.f831bp = i3;
                        this.f832ch = c;
                        this.matchStat = -1;
                        return null;
                    }
                }
            }
        } else {
            if (cCharAt == 'n' && this.text.startsWith("ull", this.f831bp + 1)) {
                int i7 = this.f831bp + 4;
                this.f831bp = i7;
                this.f832ch = this.text.charAt(i7);
                return null;
            }
            this.matchStat = -1;
            return null;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public int seekObjectToField(long[] jArr) {
        int i = this.token;
        if (i != 12 && i != 16) {
            throw new UnsupportedOperationException();
        }
        while (true) {
            char c = this.f832ch;
            if (c == '}') {
                next();
                nextToken();
                this.matchStat = -1;
                return -1;
            }
            char cCharAt = JSONLexer.EOI;
            if (c == 26) {
                this.matchStat = -1;
                return -1;
            }
            if (c != '\"') {
                skipWhitespace();
            }
            if (this.f832ch == '\"') {
                long j = TypeUtils.fnv1a_64_magic_hashcode;
                int i2 = this.f831bp;
                while (true) {
                    i2++;
                    if (i2 >= this.text.length()) {
                        break;
                    }
                    char cCharAt2 = this.text.charAt(i2);
                    if (cCharAt2 == '\\') {
                        i2++;
                        if (i2 != this.text.length()) {
                            cCharAt2 = this.text.charAt(i2);
                        } else {
                            StringBuilder sbM1765j = C0948f6.m1765j("unclosed str, ");
                            sbM1765j.append(info());
                            throw new JSONException(sbM1765j.toString());
                        }
                    }
                    if (cCharAt2 == '\"') {
                        int i3 = i2 + 1;
                        this.f831bp = i3;
                        this.f832ch = i3 >= this.text.length() ? (char) 26 : this.text.charAt(this.f831bp);
                    } else {
                        j = (j ^ cCharAt2) * TypeUtils.fnv1a_64_magic_prime;
                    }
                }
                int i4 = 0;
                while (true) {
                    if (i4 >= jArr.length) {
                        i4 = -1;
                        break;
                    }
                    if (j == jArr[i4]) {
                        break;
                    }
                    i4++;
                }
                if (i4 != -1) {
                    if (this.f832ch != ':') {
                        skipWhitespace();
                    }
                    if (this.f832ch == ':') {
                        int i5 = this.f831bp + 1;
                        this.f831bp = i5;
                        char cCharAt3 = i5 >= this.text.length() ? (char) 26 : this.text.charAt(i5);
                        this.f832ch = cCharAt3;
                        if (cCharAt3 == ',') {
                            int i6 = this.f831bp + 1;
                            this.f831bp = i6;
                            if (i6 < this.text.length()) {
                                cCharAt = this.text.charAt(i6);
                            }
                            this.f832ch = cCharAt;
                            this.token = 16;
                        } else if (cCharAt3 == ']') {
                            int i7 = this.f831bp + 1;
                            this.f831bp = i7;
                            if (i7 < this.text.length()) {
                                cCharAt = this.text.charAt(i7);
                            }
                            this.f832ch = cCharAt;
                            this.token = 15;
                        } else if (cCharAt3 == '}') {
                            int i8 = this.f831bp + 1;
                            this.f831bp = i8;
                            if (i8 < this.text.length()) {
                                cCharAt = this.text.charAt(i8);
                            }
                            this.f832ch = cCharAt;
                            this.token = 13;
                        } else if (cCharAt3 >= '0' && cCharAt3 <= '9') {
                            this.f834sp = 0;
                            this.pos = this.f831bp;
                            scanNumber();
                        } else {
                            nextToken(2);
                        }
                    }
                    this.matchStat = 3;
                    return i4;
                }
                if (this.f832ch != ':') {
                    skipWhitespace();
                }
                if (this.f832ch == ':') {
                    int i9 = this.f831bp + 1;
                    this.f831bp = i9;
                    char cCharAt4 = i9 >= this.text.length() ? (char) 26 : this.text.charAt(i9);
                    this.f832ch = cCharAt4;
                    if (cCharAt4 != '\"' && cCharAt4 != '\'' && cCharAt4 != '{' && cCharAt4 != '[' && cCharAt4 != '0' && cCharAt4 != '1' && cCharAt4 != '2' && cCharAt4 != '3' && cCharAt4 != '4' && cCharAt4 != '5' && cCharAt4 != '6' && cCharAt4 != '7' && cCharAt4 != '8' && cCharAt4 != '9' && cCharAt4 != '+' && cCharAt4 != '-') {
                        skipWhitespace();
                    }
                    char c2 = this.f832ch;
                    if (c2 != '-' && c2 != '+' && (c2 < '0' || c2 > '9')) {
                        char c3 = this.f832ch;
                        if (c3 == '\"') {
                            skipString();
                            char c4 = this.f832ch;
                            if (c4 != ',' && c4 != '}') {
                                skipWhitespace();
                            }
                            if (this.f832ch == ',') {
                                next();
                            }
                        } else if (c3 == '{') {
                            int i10 = this.f831bp + 1;
                            this.f831bp = i10;
                            if (i10 < this.text.length()) {
                                cCharAt = this.text.charAt(i10);
                            }
                            this.f832ch = cCharAt;
                            skipObject(false);
                        } else if (c3 == '[') {
                            next();
                            skipArray(false);
                        } else {
                            throw new UnsupportedOperationException();
                        }
                    } else {
                        next();
                        while (true) {
                            char c5 = this.f832ch;
                            if (c5 < '0' || c5 > '9') {
                                break;
                            }
                            next();
                        }
                        if (this.f832ch == '.') {
                            next();
                            while (true) {
                                char c6 = this.f832ch;
                                if (c6 < '0' || c6 > '9') {
                                    break;
                                }
                                next();
                            }
                        }
                        char c7 = this.f832ch;
                        if (c7 == 'E' || c7 == 'e') {
                            next();
                            char c8 = this.f832ch;
                            if (c8 == '-' || c8 == '+') {
                                next();
                            }
                            while (true) {
                                char c9 = this.f832ch;
                                if (c9 < '0' || c9 > '9') {
                                    break;
                                }
                                next();
                            }
                        }
                        if (this.f832ch != ',') {
                            skipWhitespace();
                        }
                        if (this.f832ch == ',') {
                            next();
                        }
                    }
                } else {
                    StringBuilder sbM1765j2 = C0948f6.m1765j("illegal json, ");
                    sbM1765j2.append(info());
                    throw new JSONException(sbM1765j2.toString());
                }
            } else {
                throw new UnsupportedOperationException();
            }
        }
    }
}
