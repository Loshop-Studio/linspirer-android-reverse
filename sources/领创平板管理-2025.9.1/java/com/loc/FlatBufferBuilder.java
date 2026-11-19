package com.loc;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.util.Arrays;

/* compiled from: FlatBufferBuilder.java */
/* renamed from: com.loc.ey */
/* loaded from: classes.dex */
public class FlatBufferBuilder {

    /* renamed from: a */
    public ByteBuffer f5803a;

    /* renamed from: b */
    public int f5804b;

    /* renamed from: d */
    public int f5805d;

    /* renamed from: e */
    public int[] f5806e;

    /* renamed from: f */
    public int f5807f;

    /* renamed from: g */
    public boolean f5808g;

    /* renamed from: h */
    public boolean f5809h;

    /* renamed from: i */
    public int f5810i;

    /* renamed from: j */
    public int[] f5811j;

    /* renamed from: k */
    public int f5812k;

    /* renamed from: l */
    public int f5813l;

    /* renamed from: m */
    public boolean f5814m;

    /* renamed from: n */
    public CharsetEncoder f5815n;

    /* renamed from: o */
    public ByteBuffer f5816o;

    /* renamed from: p */
    public static final /* synthetic */ boolean f5802p = !FlatBufferBuilder.class.desiredAssertionStatus();

    /* renamed from: c */
    public static final Charset f5801c = Charset.forName("UTF-8");

    public FlatBufferBuilder() {
        this.f5805d = 1;
        this.f5806e = null;
        this.f5807f = 0;
        this.f5808g = false;
        this.f5809h = false;
        this.f5811j = new int[16];
        this.f5812k = 0;
        this.f5813l = 0;
        this.f5814m = false;
        this.f5815n = f5801c.newEncoder();
        this.f5804b = 1024;
        this.f5803a = m5170d(1024);
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer) {
        this.f5805d = 1;
        this.f5806e = null;
        this.f5807f = 0;
        this.f5808g = false;
        this.f5809h = false;
        this.f5811j = new int[16];
        this.f5812k = 0;
        this.f5813l = 0;
        this.f5814m = false;
        this.f5815n = f5801c.newEncoder();
        m5179a(byteBuffer);
    }

    /* renamed from: a */
    private void m5159a(long j) {
        ByteBuffer byteBuffer = this.f5803a;
        int i = this.f5804b - 8;
        this.f5804b = i;
        byteBuffer.putLong(i, j);
    }

    /* renamed from: a */
    private void m5160a(short s) {
        ByteBuffer byteBuffer = this.f5803a;
        int i = this.f5804b - 2;
        this.f5804b = i;
        byteBuffer.putShort(i, s);
    }

    /* renamed from: b */
    public static ByteBuffer m5161b(ByteBuffer byteBuffer) {
        int iCapacity = byteBuffer.capacity();
        if (((-1073741824) & iCapacity) != 0) {
            throw new AssertionError("FlatBuffers: cannot grow buffer beyond 2 gigabytes.");
        }
        int i = iCapacity << 1;
        byteBuffer.position(0);
        ByteBuffer byteBufferM5170d = m5170d(i);
        byteBufferM5170d.position(i - iCapacity);
        byteBufferM5170d.put(byteBuffer);
        return byteBufferM5170d;
    }

    /* renamed from: b */
    private void m5162b(byte b) {
        ByteBuffer byteBuffer = this.f5803a;
        int i = this.f5804b - 1;
        this.f5804b = i;
        byteBuffer.put(i, b);
    }

    /* renamed from: b */
    private void m5163b(long j) {
        m5167c(8, 0);
        m5159a(j);
    }

    /* renamed from: b */
    private void m5164b(short s) {
        m5167c(2, 0);
        m5160a(s);
    }

    /* renamed from: b */
    private void m5165b(boolean z) {
        ByteBuffer byteBuffer = this.f5803a;
        int i = this.f5804b - 1;
        this.f5804b = i;
        byteBuffer.put(i, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: c */
    private int m5166c(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        m5180a((byte) 0);
        m5184a(1, iRemaining, 1);
        ByteBuffer byteBuffer2 = this.f5803a;
        int i = this.f5804b - iRemaining;
        this.f5804b = i;
        byteBuffer2.position(i);
        this.f5803a.put(byteBuffer);
        return m5178a();
    }

    /* renamed from: c */
    private void m5167c(int i, int i2) {
        if (i > this.f5805d) {
            this.f5805d = i;
        }
        int i3 = ((~((this.f5803a.capacity() - this.f5804b) + i2)) + 1) & (i - 1);
        while (this.f5804b < i3 + i + i2) {
            int iCapacity = this.f5803a.capacity();
            ByteBuffer byteBufferM5161b = m5161b(this.f5803a);
            this.f5803a = byteBufferM5161b;
            this.f5804b = (byteBufferM5161b.capacity() - iCapacity) + this.f5804b;
        }
        m5173e(i3);
    }

    /* renamed from: c */
    private void m5168c(boolean z) {
        m5167c(1, 0);
        m5165b(z);
    }

    /* renamed from: d */
    private int m5169d() {
        return this.f5803a.capacity() - this.f5804b;
    }

    /* renamed from: d */
    public static ByteBuffer m5170d(int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        return byteBufferAllocate;
    }

    /* renamed from: d */
    private byte[] m5171d(int i, int i2) {
        m5172e();
        byte[] bArr = new byte[i2];
        this.f5803a.position(i);
        this.f5803a.get(bArr);
        return bArr;
    }

    /* renamed from: e */
    private void m5172e() {
        if (!this.f5809h) {
            throw new AssertionError("FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish().");
        }
    }

    /* renamed from: e */
    private void m5173e(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            ByteBuffer byteBuffer = this.f5803a;
            int i3 = this.f5804b - 1;
            this.f5804b = i3;
            byteBuffer.put(i3, (byte) 0);
        }
    }

    /* renamed from: f */
    private void m5174f() {
        if (this.f5808g) {
            throw new AssertionError("FlatBuffers: object serialization must not be nested.");
        }
    }

    /* renamed from: f */
    private void m5175f(int i) {
        ByteBuffer byteBuffer = this.f5803a;
        int i2 = this.f5804b - 4;
        this.f5804b = i2;
        byteBuffer.putInt(i2, i);
    }

    /* renamed from: g */
    private void m5176g(int i) {
        m5167c(4, 0);
        m5175f(i);
    }

    /* renamed from: h */
    private void m5177h(int i) {
        this.f5806e[i] = m5169d();
    }

    /* renamed from: a */
    public final int m5178a() {
        if (!this.f5808g) {
            throw new AssertionError("FlatBuffers: endVector called without startVector");
        }
        this.f5808g = false;
        m5175f(this.f5813l);
        return m5169d();
    }

    /* renamed from: a */
    public int mo4250a(CharSequence charSequence) throws CharacterCodingException {
        int iMaxBytesPerChar = (int) (this.f5815n.maxBytesPerChar() * charSequence.length());
        ByteBuffer byteBuffer = this.f5816o;
        if (byteBuffer == null || byteBuffer.capacity() < iMaxBytesPerChar) {
            this.f5816o = ByteBuffer.allocate(Math.max(128, iMaxBytesPerChar));
        }
        this.f5816o.clear();
        CoderResult coderResultEncode = this.f5815n.encode(charSequence instanceof CharBuffer ? (CharBuffer) charSequence : CharBuffer.wrap(charSequence), this.f5816o, true);
        if (coderResultEncode.isError()) {
            try {
                coderResultEncode.throwException();
            } catch (CharacterCodingException e) {
                throw new Error(e);
            }
        }
        this.f5816o.flip();
        return m5166c(this.f5816o);
    }

    /* renamed from: a */
    public final FlatBufferBuilder m5179a(ByteBuffer byteBuffer) {
        this.f5803a = byteBuffer;
        byteBuffer.clear();
        this.f5803a.order(ByteOrder.LITTLE_ENDIAN);
        this.f5805d = 1;
        this.f5804b = this.f5803a.capacity();
        this.f5807f = 0;
        this.f5808g = false;
        this.f5809h = false;
        this.f5810i = 0;
        this.f5812k = 0;
        this.f5813l = 0;
        return this;
    }

    /* renamed from: a */
    public final void m5180a(byte b) {
        m5167c(1, 0);
        m5162b(b);
    }

    /* renamed from: a */
    public final void m5181a(int i) {
        m5167c(4, 0);
        if (!f5802p && i > m5169d()) {
            throw new AssertionError();
        }
        m5175f((m5169d() - i) + 4);
    }

    /* renamed from: a */
    public final void m5182a(int i, byte b) {
        if (this.f5814m || b != 0) {
            m5180a(b);
            m5177h(i);
        }
    }

    /* renamed from: a */
    public final void m5183a(int i, int i2) {
        if (this.f5814m || i2 != 0) {
            m5176g(i2);
            m5177h(i);
        }
    }

    /* renamed from: a */
    public final void m5184a(int i, int i2, int i3) {
        m5174f();
        this.f5813l = i2;
        int i4 = i * i2;
        m5167c(4, i4);
        m5167c(i3, i4);
        this.f5808g = true;
    }

    /* renamed from: a */
    public final void m5185a(int i, long j) {
        if (this.f5814m || j != 0) {
            m5163b(j);
            m5177h(i);
        }
    }

    /* renamed from: a */
    public final void m5186a(int i, short s) {
        if (this.f5814m || s != 0) {
            m5164b(s);
            m5177h(i);
        }
    }

    /* renamed from: a */
    public final void m5187a(boolean z) {
        if (this.f5814m || z) {
            m5168c(z);
            m5177h(0);
        }
    }

    /* renamed from: b */
    public final int m5188b() {
        int i;
        int i2;
        if (this.f5806e == null || !this.f5808g) {
            throw new AssertionError("FlatBuffers: endObject called without startObject");
        }
        m5176g(0);
        int iM5169d = m5169d();
        for (int i3 = this.f5807f - 1; i3 >= 0; i3--) {
            int[] iArr = this.f5806e;
            m5164b((short) (iArr[i3] != 0 ? iM5169d - iArr[i3] : 0));
        }
        m5164b((short) (iM5169d - this.f5810i));
        m5164b((short) ((this.f5807f + 2) * 2));
        int i4 = 0;
        loop1: while (true) {
            if (i4 >= this.f5812k) {
                i = 0;
                break;
            }
            int iCapacity = this.f5803a.capacity() - this.f5811j[i4];
            int i5 = this.f5804b;
            short s = this.f5803a.getShort(iCapacity);
            if (s == this.f5803a.getShort(i5)) {
                for (2; i2 < s; i2 + 2) {
                    i2 = this.f5803a.getShort(iCapacity + i2) == this.f5803a.getShort(i5 + i2) ? i2 + 2 : 2;
                }
                i = this.f5811j[i4];
                break loop1;
            }
            i4++;
        }
        if (i != 0) {
            int iCapacity2 = this.f5803a.capacity() - iM5169d;
            this.f5804b = iCapacity2;
            this.f5803a.putInt(iCapacity2, i - iM5169d);
        } else {
            int i6 = this.f5812k;
            int[] iArr2 = this.f5811j;
            if (i6 == iArr2.length) {
                this.f5811j = Arrays.copyOf(iArr2, i6 * 2);
            }
            int[] iArr3 = this.f5811j;
            int i7 = this.f5812k;
            this.f5812k = i7 + 1;
            iArr3[i7] = m5169d();
            ByteBuffer byteBuffer = this.f5803a;
            byteBuffer.putInt(byteBuffer.capacity() - iM5169d, m5169d() - iM5169d);
        }
        this.f5808g = false;
        return iM5169d;
    }

    /* renamed from: b */
    public final void m5189b(int i) {
        m5174f();
        int[] iArr = this.f5806e;
        if (iArr == null || iArr.length < i) {
            this.f5806e = new int[i];
        }
        this.f5807f = i;
        Arrays.fill(this.f5806e, 0, i, 0);
        this.f5808g = true;
        this.f5810i = m5169d();
    }

    /* renamed from: b */
    public final void m5190b(int i, int i2) {
        if (this.f5814m || i2 != 0) {
            m5181a(i2);
            m5177h(i);
        }
    }

    /* renamed from: c */
    public final void m5191c(int i) {
        m5167c(this.f5805d, 4);
        m5181a(i);
        this.f5803a.position(this.f5804b);
        this.f5809h = true;
    }

    /* renamed from: c */
    public final byte[] m5192c() {
        return m5171d(this.f5804b, this.f5803a.capacity() - this.f5804b);
    }
}
