package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.IOUtils;
import java.io.CharArrayReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.math.BigDecimal;
import java.math.MathContext;

/* loaded from: classes.dex */
public final class JSONReaderScanner extends JSONLexerBase {
    public static final ThreadLocal<char[]> BUF_LOCAL = new ThreadLocal<>();
    public char[] buf;
    public int bufLength;
    public Reader reader;

    public JSONReaderScanner(String str) {
        this(str, JSON.DEFAULT_PARSER_FEATURE);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String addSymbol(int i, int i2, int i3, SymbolTable symbolTable) {
        return symbolTable.addSymbol(this.buf, i, i2, i3);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void arrayCopy(int i, char[] cArr, int i2, int i3) {
        System.arraycopy(this.buf, i, cArr, i2, i3);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public byte[] bytesValue() {
        if (this.token != 26) {
            return IOUtils.decodeBase64(this.buf, this.f833np + 1, this.f834sp);
        }
        throw new JSONException("TODO");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final boolean charArrayCompare(char[] cArr) {
        for (int i = 0; i < cArr.length; i++) {
            if (charAt(this.f831bp + i) != cArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char charAt(int i) throws IOException {
        int i2 = this.bufLength;
        if (i >= i2) {
            if (i2 == -1) {
                return i < this.f834sp ? this.buf[i] : JSONLexer.EOI;
            }
            int i3 = this.f831bp;
            if (i3 == 0) {
                char[] cArr = this.buf;
                int length = (cArr.length * 3) / 2;
                char[] cArr2 = new char[length];
                System.arraycopy(cArr, i3, cArr2, 0, i2);
                int i4 = this.bufLength;
                try {
                    this.bufLength += this.reader.read(cArr2, i4, length - i4);
                    this.buf = cArr2;
                } catch (IOException e) {
                    throw new JSONException(e.getMessage(), e);
                }
            } else {
                int i5 = i2 - i3;
                if (i5 > 0) {
                    char[] cArr3 = this.buf;
                    System.arraycopy(cArr3, i3, cArr3, 0, i5);
                }
                try {
                    int i6 = this.reader.read(this.buf, i5, this.buf.length - i5);
                    this.bufLength = i6;
                    if (i6 == 0) {
                        throw new JSONException("illegal state, textLength is zero");
                    }
                    if (i6 == -1) {
                        return JSONLexer.EOI;
                    }
                    this.bufLength = i6 + i5;
                    int i7 = this.f831bp;
                    i -= i7;
                    this.f833np -= i7;
                    this.f831bp = 0;
                } catch (IOException e2) {
                    throw new JSONException(e2.getMessage(), e2);
                }
            }
        }
        return this.buf[i];
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        char[] cArr = this.buf;
        if (cArr.length <= 65536) {
            BUF_LOCAL.set(cArr);
        }
        this.buf = null;
        IOUtils.close(this.reader);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void copyTo(int i, int i2, char[] cArr) {
        System.arraycopy(this.buf, i, cArr, 0, i2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final BigDecimal decimalValue() throws IOException {
        int i = this.f833np;
        if (i == -1) {
            i = 0;
        }
        char cCharAt = charAt((this.f834sp + i) - 1);
        int i2 = this.f834sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i2--;
        }
        if (i2 <= 65535) {
            return new BigDecimal(this.buf, i, i2, MathContext.UNLIMITED);
        }
        throw new JSONException("decimal overflow");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final int indexOf(char c, int i) throws IOException {
        int i2 = i - this.f831bp;
        while (true) {
            char cCharAt = charAt(this.f831bp + i2);
            if (c == cCharAt) {
                return i2 + this.f831bp;
            }
            if (cCharAt == 26) {
                return -1;
            }
            i2++;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final boolean isBlankInput() {
        int i = 0;
        while (true) {
            char c = this.buf[i];
            if (c == 26) {
                this.token = 20;
                return true;
            }
            if (!JSONLexerBase.isWhitespace(c)) {
                return false;
            }
            i++;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean isEOF() {
        if (this.bufLength == -1) {
            return true;
        }
        int i = this.f831bp;
        char[] cArr = this.buf;
        if (i != cArr.length) {
            return this.f832ch == 26 && i + 1 >= cArr.length;
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final char next() throws IOException {
        int i = this.f831bp + 1;
        this.f831bp = i;
        int i2 = this.bufLength;
        if (i >= i2) {
            if (i2 == -1) {
                return JSONLexer.EOI;
            }
            int i3 = this.f834sp;
            if (i3 > 0) {
                int i4 = i2 - i3;
                if (this.f832ch == '\"' && i4 > 0) {
                    i4--;
                }
                char[] cArr = this.buf;
                System.arraycopy(cArr, i4, cArr, 0, this.f834sp);
            }
            this.f833np = -1;
            int i5 = this.f834sp;
            this.f831bp = i5;
            try {
                int length = this.buf.length - i5;
                if (length == 0) {
                    char[] cArr2 = new char[this.buf.length * 2];
                    System.arraycopy(this.buf, 0, cArr2, 0, this.buf.length);
                    this.buf = cArr2;
                    length = cArr2.length - i5;
                }
                int i6 = this.reader.read(this.buf, this.f831bp, length);
                this.bufLength = i6;
                if (i6 == 0) {
                    throw new JSONException("illegal stat, textLength is zero");
                }
                if (i6 == -1) {
                    this.f832ch = JSONLexer.EOI;
                    return JSONLexer.EOI;
                }
                this.bufLength = i6 + this.f831bp;
                i = i5;
            } catch (IOException e) {
                throw new JSONException(e.getMessage(), e);
            }
        }
        char c = this.buf[i];
        this.f832ch = c;
        return c;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String numberString() throws IOException {
        int i = this.f833np;
        if (i == -1) {
            i = 0;
        }
        char cCharAt = charAt((this.f834sp + i) - 1);
        int i2 = this.f834sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i2--;
        }
        return new String(this.buf, i, i2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String stringVal() {
        if (this.hasSpecial) {
            return new String(this.sbuf, 0, this.f834sp);
        }
        int i = this.f833np + 1;
        if (i < 0) {
            throw new IllegalStateException();
        }
        if (i <= this.buf.length - this.f834sp) {
            return new String(this.buf, i, this.f834sp);
        }
        throw new IllegalStateException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String subString(int i, int i2) {
        if (i2 >= 0) {
            return new String(this.buf, i, i2);
        }
        throw new StringIndexOutOfBoundsException(i2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char[] sub_chars(int i, int i2) {
        if (i2 < 0) {
            throw new StringIndexOutOfBoundsException(i2);
        }
        if (i == 0) {
            return this.buf;
        }
        char[] cArr = new char[i2];
        System.arraycopy(this.buf, i, cArr, 0, i2);
        return cArr;
    }

    public JSONReaderScanner(String str, int i) {
        this(new StringReader(str), i);
    }

    public JSONReaderScanner(char[] cArr, int i) {
        this(cArr, i, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONReaderScanner(Reader reader) {
        this(reader, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONReaderScanner(Reader reader, int i) throws IOException {
        super(i);
        this.reader = reader;
        char[] cArr = BUF_LOCAL.get();
        this.buf = cArr;
        if (cArr != null) {
            BUF_LOCAL.set(null);
        }
        if (this.buf == null) {
            this.buf = new char[16384];
        }
        try {
            this.bufLength = reader.read(this.buf);
            this.f831bp = -1;
            next();
            if (this.f832ch == 65279) {
                next();
            }
        } catch (IOException e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    public JSONReaderScanner(char[] cArr, int i, int i2) {
        this(new CharArrayReader(cArr, 0, i), i2);
    }
}
