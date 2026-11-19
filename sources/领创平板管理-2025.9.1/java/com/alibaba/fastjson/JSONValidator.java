package com.alibaba.fastjson;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* loaded from: classes.dex */
public abstract class JSONValidator implements Cloneable, Closeable {

    /* renamed from: ch */
    public char f826ch;
    public boolean eof;
    public Type type;
    public Boolean validateResult;
    public int pos = -1;
    public int count = 0;
    public boolean supportMultiValue = false;

    public static class ReaderValidator extends JSONValidator {
        public static final ThreadLocal<char[]> bufLocal = new ThreadLocal<>();
        public char[] buf;

        /* renamed from: r */
        public final Reader f827r;
        public int end = -1;
        public int readCount = 0;

        public ReaderValidator(Reader reader) throws IOException {
            this.f827r = reader;
            char[] cArr = bufLocal.get();
            this.buf = cArr;
            if (cArr != null) {
                bufLocal.set(null);
            } else {
                this.buf = new char[8192];
            }
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            bufLocal.set(this.buf);
            this.f827r.close();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() throws IOException {
            int i = this.pos;
            if (i < this.end) {
                char[] cArr = this.buf;
                int i2 = i + 1;
                this.pos = i2;
                this.f826ch = cArr[i2];
                return;
            }
            if (this.eof) {
                return;
            }
            try {
                int i3 = this.f827r.read(this.buf, 0, this.buf.length);
                this.readCount++;
                if (i3 > 0) {
                    this.f826ch = this.buf[0];
                    this.pos = 0;
                    this.end = i3 - 1;
                } else {
                    if (i3 == -1) {
                        this.pos = 0;
                        this.end = 0;
                        this.buf = null;
                        this.f826ch = (char) 0;
                        this.eof = true;
                        return;
                    }
                    this.pos = 0;
                    this.end = 0;
                    this.buf = null;
                    this.f826ch = (char) 0;
                    this.eof = true;
                    throw new JSONException("read error");
                }
            } catch (IOException unused) {
                throw new JSONException("read error");
            }
        }
    }

    public enum Type {
        Object,
        Array,
        Value
    }

    public static class UTF16Validator extends JSONValidator {
        public final String str;

        public UTF16Validator(String str) {
            this.str = str;
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public final void fieldName() {
            char cCharAt;
            int i = this.pos;
            do {
                i++;
                if (i >= this.str.length() || (cCharAt = this.str.charAt(i)) == '\\') {
                    next();
                    while (true) {
                        char c = this.f826ch;
                        if (c == '\\') {
                            next();
                            if (this.f826ch == 'u') {
                                next();
                                next();
                                next();
                                next();
                                next();
                            } else {
                                next();
                            }
                        } else if (c == '\"') {
                            next();
                            return;
                        } else if (this.eof) {
                            return;
                        } else {
                            next();
                        }
                    }
                }
            } while (cCharAt != '\"');
            int i2 = i + 1;
            this.f826ch = this.str.charAt(i2);
            this.pos = i2;
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() {
            int i = this.pos + 1;
            this.pos = i;
            if (i < this.str.length()) {
                this.f826ch = this.str.charAt(this.pos);
            } else {
                this.f826ch = (char) 0;
                this.eof = true;
            }
        }
    }

    public static class UTF8InputStreamValidator extends JSONValidator {
        public static final ThreadLocal<byte[]> bufLocal = new ThreadLocal<>();
        public byte[] buf;

        /* renamed from: is */
        public final InputStream f828is;
        public int end = -1;
        public int readCount = 0;

        public UTF8InputStreamValidator(InputStream inputStream) throws IOException {
            this.f828is = inputStream;
            byte[] bArr = bufLocal.get();
            this.buf = bArr;
            if (bArr != null) {
                bufLocal.set(null);
            } else {
                this.buf = new byte[8192];
            }
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            bufLocal.set(this.buf);
            this.f828is.close();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() throws IOException {
            int i = this.pos;
            if (i < this.end) {
                byte[] bArr = this.buf;
                int i2 = i + 1;
                this.pos = i2;
                this.f826ch = (char) bArr[i2];
                return;
            }
            if (this.eof) {
                return;
            }
            try {
                int i3 = this.f828is.read(this.buf, 0, this.buf.length);
                this.readCount++;
                if (i3 > 0) {
                    this.f826ch = (char) this.buf[0];
                    this.pos = 0;
                    this.end = i3 - 1;
                } else {
                    if (i3 == -1) {
                        this.pos = 0;
                        this.end = 0;
                        this.buf = null;
                        this.f826ch = (char) 0;
                        this.eof = true;
                        return;
                    }
                    this.pos = 0;
                    this.end = 0;
                    this.buf = null;
                    this.f826ch = (char) 0;
                    this.eof = true;
                    throw new JSONException("read error");
                }
            } catch (IOException unused) {
                throw new JSONException("read error");
            }
        }
    }

    public static class UTF8Validator extends JSONValidator {
        public final byte[] bytes;

        public UTF8Validator(byte[] bArr) {
            this.bytes = bArr;
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() {
            int i = this.pos + 1;
            this.pos = i;
            byte[] bArr = this.bytes;
            if (i < bArr.length) {
                this.f826ch = (char) bArr[i];
            } else {
                this.f826ch = (char) 0;
                this.eof = true;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:181:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean any() {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.JSONValidator.any():boolean");
    }

    public static JSONValidator from(String str) {
        return new UTF16Validator(str);
    }

    public static JSONValidator fromUtf8(byte[] bArr) {
        return new UTF8Validator(bArr);
    }

    public static final boolean isWhiteSpace(char c) {
        return c == ' ' || c == '\t' || c == '\r' || c == '\n' || c == '\f' || c == '\b';
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public void fieldName() {
        next();
        while (true) {
            char c = this.f826ch;
            if (c == '\\') {
                next();
                if (this.f826ch == 'u') {
                    next();
                    next();
                    next();
                    next();
                    next();
                } else {
                    next();
                }
            } else {
                if (c == '\"') {
                    next();
                    return;
                }
                next();
            }
        }
    }

    public Type getType() {
        if (this.type == null) {
            validate();
        }
        return this.type;
    }

    public boolean isSupportMultiValue() {
        return this.supportMultiValue;
    }

    public abstract void next();

    public JSONValidator setSupportMultiValue(boolean z) {
        this.supportMultiValue = z;
        return this;
    }

    public void skipWhiteSpace() {
        while (isWhiteSpace(this.f826ch)) {
            next();
        }
    }

    public boolean string() {
        next();
        while (!this.eof) {
            char c = this.f826ch;
            if (c == '\\') {
                next();
                if (this.f826ch == 'u') {
                    next();
                    next();
                    next();
                    next();
                    next();
                } else {
                    next();
                }
            } else {
                if (c == '\"') {
                    next();
                    return true;
                }
                next();
            }
        }
        return false;
    }

    public boolean validate() {
        Boolean bool = this.validateResult;
        if (bool != null) {
            return bool.booleanValue();
        }
        while (any()) {
            skipWhiteSpace();
            this.count++;
            if (this.eof) {
                this.validateResult = Boolean.TRUE;
                return true;
            }
            if (!this.supportMultiValue) {
                this.validateResult = Boolean.FALSE;
                return false;
            }
            skipWhiteSpace();
            if (this.eof) {
                this.validateResult = Boolean.TRUE;
                return true;
            }
        }
        this.validateResult = Boolean.FALSE;
        return false;
    }

    public static JSONValidator from(Reader reader) {
        return new ReaderValidator(reader);
    }

    public static JSONValidator fromUtf8(InputStream inputStream) {
        return new UTF8InputStreamValidator(inputStream);
    }
}
