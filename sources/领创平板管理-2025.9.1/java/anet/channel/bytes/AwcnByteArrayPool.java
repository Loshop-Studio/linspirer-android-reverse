package anet.channel.bytes;

import java.util.Arrays;
import java.util.Random;
import java.util.TreeSet;

/* compiled from: Taobao */
/* renamed from: anet.channel.bytes.a */
/* loaded from: classes.dex */
public class AwcnByteArrayPool {
    public static final int MAX_POOL_SIZE = 524288;
    public static final String TAG = "awcn.ByteArrayPool";

    /* renamed from: a */
    public final TreeSet<ByteArray> f173a = new TreeSet<>();

    /* renamed from: b */
    public final ByteArray f174b = ByteArray.create(0);

    /* renamed from: c */
    public final Random f175c = new Random();

    /* renamed from: d */
    public long f176d = 0;

    /* compiled from: Taobao */
    /* renamed from: anet.channel.bytes.a$a */
    public static class a {

        /* renamed from: a */
        public static AwcnByteArrayPool f177a = new AwcnByteArrayPool();
    }

    /* renamed from: a */
    public synchronized void m72a(ByteArray byteArray) {
        if (byteArray != null) {
            if (byteArray.bufferLength < 524288) {
                this.f176d += byteArray.bufferLength;
                this.f173a.add(byteArray);
                while (this.f176d > 524288) {
                    this.f176d -= (this.f175c.nextBoolean() ? this.f173a.pollFirst() : this.f173a.pollLast()).bufferLength;
                }
            }
        }
    }

    /* renamed from: a */
    public synchronized ByteArray m70a(int i) {
        if (i >= 524288) {
            return ByteArray.create(i);
        }
        this.f174b.bufferLength = i;
        ByteArray byteArrayCeiling = this.f173a.ceiling(this.f174b);
        if (byteArrayCeiling == null) {
            byteArrayCeiling = ByteArray.create(i);
        } else {
            Arrays.fill(byteArrayCeiling.buffer, (byte) 0);
            byteArrayCeiling.dataLength = 0;
            this.f173a.remove(byteArrayCeiling);
            this.f176d -= byteArrayCeiling.bufferLength;
        }
        return byteArrayCeiling;
    }

    /* renamed from: a */
    public ByteArray m71a(byte[] bArr, int i) {
        ByteArray byteArrayM70a = m70a(i);
        System.arraycopy(bArr, 0, byteArrayM70a.buffer, 0, i);
        byteArrayM70a.dataLength = i;
        return byteArrayM70a;
    }
}
