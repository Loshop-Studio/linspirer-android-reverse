package anetwork.channel.aidl.adapter;

import anet.channel.bytes.ByteArray;
import anetwork.channel.aidl.ParcelableInputStream;
import anetwork.channel.entity.C0458g;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class ParcelableInputStreamImpl extends ParcelableInputStream.Stub {
    public static final ByteArray EOS = ByteArray.create(0);
    public static final String TAG = "anet.ParcelableInputStreamImpl";
    public int blockIndex;
    public int blockOffset;
    public int contentLength;
    public final ReentrantLock lock;
    public final Condition newDataArrive;
    public final AtomicBoolean isClosed = new AtomicBoolean(false);
    public LinkedList<ByteArray> byteList = new LinkedList<>();
    public int rto = 10000;
    public String seqNo = "";

    public ParcelableInputStreamImpl() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.newDataArrive = reentrantLock.newCondition();
    }

    private void recycleCurrentItem() {
        this.lock.lock();
        try {
            this.byteList.set(this.blockIndex, EOS).recycle();
        } finally {
            this.lock.unlock();
        }
    }

    @Override // anetwork.channel.aidl.ParcelableInputStream
    public int available() {
        if (this.isClosed.get()) {
            throw new RuntimeException("Stream is closed");
        }
        this.lock.lock();
        try {
            int dataLength = 0;
            if (this.blockIndex == this.byteList.size()) {
                return 0;
            }
            ListIterator<ByteArray> listIterator = this.byteList.listIterator(this.blockIndex);
            while (listIterator.hasNext()) {
                dataLength += listIterator.next().getDataLength();
            }
            return dataLength - this.blockOffset;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // anetwork.channel.aidl.ParcelableInputStream
    public void close() {
        if (this.isClosed.compareAndSet(false, true)) {
            this.lock.lock();
            try {
                Iterator<ByteArray> it = this.byteList.iterator();
                while (it.hasNext()) {
                    ByteArray next = it.next();
                    if (next != EOS) {
                        next.recycle();
                    }
                }
                this.byteList.clear();
                this.byteList = null;
                this.blockIndex = -1;
                this.blockOffset = -1;
                this.contentLength = 0;
            } finally {
                this.lock.unlock();
            }
        }
    }

    public void init(C0458g c0458g, int i) {
        this.contentLength = i;
        this.seqNo = c0458g.f740e;
        this.rto = c0458g.f739d;
    }

    @Override // anetwork.channel.aidl.ParcelableInputStream
    public int length() {
        return this.contentLength;
    }

    @Override // anetwork.channel.aidl.ParcelableInputStream
    public int read(byte[] bArr) {
        return readBytes(bArr, 0, bArr.length);
    }

    @Override // anetwork.channel.aidl.ParcelableInputStream
    public int readByte() {
        byte b;
        if (this.isClosed.get()) {
            throw new RuntimeException("Stream is closed");
        }
        this.lock.lock();
        while (true) {
            try {
                try {
                    if (this.blockIndex == this.byteList.size() && !this.newDataArrive.await(this.rto, TimeUnit.MILLISECONDS)) {
                        close();
                        throw new RuntimeException("await timeout.");
                    }
                    ByteArray byteArray = this.byteList.get(this.blockIndex);
                    if (byteArray == EOS) {
                        b = -1;
                        break;
                    }
                    if (this.blockOffset < byteArray.getDataLength()) {
                        b = byteArray.getBuffer()[this.blockOffset];
                        this.blockOffset++;
                        break;
                    }
                    recycleCurrentItem();
                    this.blockIndex++;
                    this.blockOffset = 0;
                } catch (InterruptedException unused) {
                    close();
                    throw new RuntimeException("await interrupt");
                }
            } finally {
                this.lock.unlock();
            }
        }
        return b;
    }

    @Override // anetwork.channel.aidl.ParcelableInputStream
    public int readBytes(byte[] bArr, int i, int i2) {
        int i3;
        if (this.isClosed.get()) {
            throw new RuntimeException("Stream is closed");
        }
        if (bArr == null) {
            throw null;
        }
        if (i < 0 || i2 < 0 || (i3 = i2 + i) > bArr.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        this.lock.lock();
        int i4 = i;
        while (i4 < i3) {
            try {
                try {
                    if (this.blockIndex == this.byteList.size() && !this.newDataArrive.await(this.rto, TimeUnit.MILLISECONDS)) {
                        close();
                        throw new RuntimeException("await timeout.");
                    }
                    ByteArray byteArray = this.byteList.get(this.blockIndex);
                    if (byteArray == EOS) {
                        break;
                    }
                    int dataLength = byteArray.getDataLength() - this.blockOffset;
                    int i5 = i3 - i4;
                    if (dataLength < i5) {
                        System.arraycopy(byteArray.getBuffer(), this.blockOffset, bArr, i4, dataLength);
                        i4 += dataLength;
                        recycleCurrentItem();
                        this.blockIndex++;
                        this.blockOffset = 0;
                    } else {
                        System.arraycopy(byteArray.getBuffer(), this.blockOffset, bArr, i4, i5);
                        this.blockOffset += i5;
                        i4 += i5;
                    }
                } catch (InterruptedException unused) {
                    close();
                    throw new RuntimeException("await interrupt");
                }
            } catch (Throwable th) {
                this.lock.unlock();
                throw th;
            }
        }
        this.lock.unlock();
        int i6 = i4 - i;
        if (i6 > 0) {
            return i6;
        }
        return -1;
    }

    @Override // anetwork.channel.aidl.ParcelableInputStream
    public long skip(int i) {
        ByteArray byteArray;
        this.lock.lock();
        int i2 = 0;
        while (i2 < i) {
            try {
                if (this.blockIndex != this.byteList.size() && (byteArray = this.byteList.get(this.blockIndex)) != EOS) {
                    int dataLength = byteArray.getDataLength();
                    int i3 = i - i2;
                    if (dataLength - this.blockOffset < i3) {
                        i2 += dataLength - this.blockOffset;
                        recycleCurrentItem();
                        this.blockIndex++;
                        this.blockOffset = 0;
                    } else {
                        this.blockOffset += i3;
                        i2 = i;
                    }
                }
            } catch (Throwable th) {
                this.lock.unlock();
                throw th;
            }
        }
        this.lock.unlock();
        return i2;
    }

    public void write(ByteArray byteArray) {
        if (this.isClosed.get()) {
            return;
        }
        this.lock.lock();
        try {
            this.byteList.add(byteArray);
            this.newDataArrive.signal();
        } finally {
            this.lock.unlock();
        }
    }

    public void writeEnd() {
        write(EOS);
    }
}
