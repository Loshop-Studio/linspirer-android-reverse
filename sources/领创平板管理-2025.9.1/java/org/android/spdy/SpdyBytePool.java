package org.android.spdy;

import java.util.Random;
import java.util.TreeSet;

/* loaded from: classes.dex */
public class SpdyBytePool {
    public static volatile SpdyBytePool gInstance;
    public static Object lock = new Object();
    public static Random rand = new Random();
    public TreeSet<SpdyByteArray> pool;
    public SpdyByteArray std = new SpdyByteArray();
    public long reused = 0;

    public SpdyBytePool() {
        this.pool = null;
        this.pool = new TreeSet<>();
    }

    public static SpdyBytePool getInstance() {
        if (gInstance == null) {
            synchronized (lock) {
                if (gInstance == null) {
                    gInstance = new SpdyBytePool();
                }
            }
        }
        return gInstance;
    }

    public SpdyByteArray getSpdyByteArray(int i) {
        SpdyByteArray spdyByteArrayCeiling;
        synchronized (lock) {
            this.std.length = i;
            spdyByteArrayCeiling = this.pool.ceiling(this.std);
            if (spdyByteArrayCeiling == null) {
                spdyByteArrayCeiling = new SpdyByteArray(i);
            } else {
                this.pool.remove(spdyByteArrayCeiling);
                this.reused += i;
            }
        }
        spduLog.Logi("libeasy", "getSpdyByteArray: " + spdyByteArrayCeiling);
        spduLog.Logi("libeasy", "reused: " + this.reused);
        return spdyByteArrayCeiling;
    }

    public void recycle(SpdyByteArray spdyByteArray) {
        synchronized (lock) {
            this.pool.add(spdyByteArray);
            while (this.pool.size() > 100) {
                if (rand.nextBoolean()) {
                    this.pool.pollFirst();
                } else {
                    this.pool.pollLast();
                }
            }
        }
    }
}
