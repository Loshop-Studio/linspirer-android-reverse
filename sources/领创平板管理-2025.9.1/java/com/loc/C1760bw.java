package com.loc;

import android.support.v4.app.NotificationCompat;
import java.util.List;

/* compiled from: UploadBufferBuilder.java */
/* renamed from: com.loc.bw */
/* loaded from: classes.dex */
public final class C1760bw extends AbstractC1757bt {

    /* renamed from: b */
    public static C1760bw f5156b = new C1760bw();

    public C1760bw() {
        super(NotificationCompat.Builder.MAX_CHARSEQUENCE_LENGTH);
    }

    /* renamed from: a */
    public static String m4251a(String str) {
        return str == null ? "" : str;
    }

    /* renamed from: b */
    public static C1760bw m4252b() {
        return f5156b;
    }

    /* renamed from: a */
    public final byte[] m4253a(byte[] bArr, byte[] bArr2, List<? extends C1765ca> list) {
        if (list == null) {
            return null;
        }
        try {
            int size = list.size();
            if (size <= 0 || bArr == null) {
                return null;
            }
            m4243a();
            int iM4289a = C1768cd.m4289a((C1843ey) this.f5154a, bArr);
            int[] iArr = new int[size];
            for (int i = 0; i < size; i++) {
                C1765ca c1765ca = list.get(i);
                iArr[i] = C1773ci.m4325a(this.f5154a, (byte) c1765ca.m4279a(), C1773ci.m4326a(this.f5154a, c1765ca.m4280b()));
            }
            this.f5154a.m5191c(C1768cd.m4288a(this.f5154a, iM4289a, bArr2 != null ? C1768cd.m4292b(this.f5154a, bArr2) : 0, C1768cd.m4290a(this.f5154a, iArr)));
            return this.f5154a.m5192c();
        } catch (Throwable th) {
            C1799dh.m4567a(th);
            return null;
        }
    }

    /* renamed from: c */
    public final byte[] m4254c() {
        super.m4243a();
        try {
            this.f5154a.m5191c(C1798dg.m4553a(this.f5154a, C1797df.m4519a(), this.f5154a.mo4250a(C1797df.m4531f()), this.f5154a.mo4250a(C1797df.m4525c()), (byte) C1797df.m4545m(), this.f5154a.mo4250a(C1797df.m4537i()), this.f5154a.mo4250a(C1797df.m4535h()), this.f5154a.mo4250a(m4251a(C1797df.m4533g())), this.f5154a.mo4250a(m4251a(C1797df.m4539j())), C1796de.m4515a(C1797df.m4547n()), this.f5154a.mo4250a(C1797df.m4543l()), this.f5154a.mo4250a(C1797df.m4541k()), this.f5154a.mo4250a(C1797df.m4527d()), this.f5154a.mo4250a(C1797df.m4529e())));
            return this.f5154a.m5192c();
        } catch (Exception e) {
            C1799dh.m4567a(e);
            return null;
        }
    }
}
