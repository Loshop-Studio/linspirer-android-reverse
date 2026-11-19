package com.huawei.updatesdk.p034a.p035a.p036b;

import com.bumptech.glide.util.ByteArrayPool;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;
import java.util.ArrayDeque;
import java.util.Queue;

/* renamed from: com.huawei.updatesdk.a.a.b.a */
/* loaded from: classes.dex */
public final class C1582a {

    /* renamed from: b */
    public static final C1582a f4616b = new C1582a();

    /* renamed from: a */
    public final Queue<byte[]> f4617a = new ArrayDeque(0);

    /* renamed from: b */
    public static C1582a m3503b() {
        return f4616b;
    }

    /* renamed from: a */
    public void m3504a(byte[] bArr) {
        if (bArr.length == 65536) {
            synchronized (this.f4617a) {
                if (this.f4617a.size() < 32 && !this.f4617a.offer(bArr)) {
                    C1584a.m3514a(ByteArrayPool.TAG, "releaseBytes false");
                }
            }
        }
    }

    /* renamed from: a */
    public byte[] m3505a() {
        byte[] bArrPoll;
        synchronized (this.f4617a) {
            bArrPoll = this.f4617a.poll();
        }
        return bArrPoll == null ? new byte[65536] : bArrPoll;
    }
}
