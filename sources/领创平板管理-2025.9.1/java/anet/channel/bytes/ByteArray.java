package anet.channel.bytes;

import anet.channel.bytes.C0317a;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class ByteArray implements Comparable<ByteArray> {
    public final byte[] buffer;
    public int bufferLength;
    public int dataLength;

    public ByteArray(byte[] bArr, int i) {
        bArr = bArr == null ? new byte[i] : bArr;
        this.buffer = bArr;
        this.bufferLength = bArr.length;
        this.dataLength = i;
    }

    public static ByteArray create(int i) {
        return new ByteArray(null, i);
    }

    public static ByteArray wrap(byte[] bArr, int i) {
        if (bArr == null || i < 0 || i > bArr.length) {
            return null;
        }
        return new ByteArray(bArr, i);
    }

    public byte[] getBuffer() {
        return this.buffer;
    }

    public int getBufferLength() {
        return this.bufferLength;
    }

    public int getDataLength() {
        return this.dataLength;
    }

    public int readFrom(InputStream inputStream) throws IOException {
        int i = inputStream.read(this.buffer, 0, this.bufferLength);
        this.dataLength = i != -1 ? i : 0;
        return i;
    }

    public void recycle() {
        if (this.bufferLength == 0) {
            return;
        }
        C0317a.a.f177a.m72a(this);
    }

    public void setDataLength(int i) {
        this.dataLength = i;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(this.buffer, 0, this.dataLength);
    }

    @Override // java.lang.Comparable
    public int compareTo(ByteArray byteArray) {
        int i = this.bufferLength;
        int i2 = byteArray.bufferLength;
        if (i != i2) {
            return i - i2;
        }
        if (this.buffer == null) {
            return -1;
        }
        if (byteArray.buffer == null) {
            return 1;
        }
        return hashCode() - byteArray.hashCode();
    }

    public static ByteArray wrap(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return wrap(bArr, bArr.length);
    }
}
