package com.alibaba.sdk.android.push.p024f;

import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: com.alibaba.sdk.android.push.f.b */
/* loaded from: classes.dex */
public class C0575b {

    /* renamed from: c */
    public static final AmsLogger f1208c = AmsLogger.getLogger("MPS:SyncTool");

    /* renamed from: a */
    public Lock f1209a;

    /* renamed from: b */
    public Condition f1210b;

    public C0575b() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f1209a = reentrantLock;
        this.f1210b = reentrantLock.newCondition();
    }

    /* renamed from: a */
    public void m795a() {
        this.f1209a.lock();
        try {
            this.f1210b.signal();
        } finally {
            this.f1209a.unlock();
        }
    }

    /* renamed from: a */
    public void m796a(int i) {
        this.f1209a.lock();
        try {
            try {
                this.f1210b.await(i, TimeUnit.SECONDS);
            } catch (InterruptedException e) {
                f1208c.m502e("await error:", e);
            }
        } finally {
            this.f1209a.unlock();
        }
    }
}
