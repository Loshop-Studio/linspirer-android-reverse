package com.loc;

import android.support.v4.app.NotificationCompat;
import java.util.List;

/* compiled from: UploadBufferBuilder.java */
/* renamed from: com.loc.bw */
/* loaded from: classes.dex */
public final class UploadBufferBuilder extends AbstractBuilder {

    /* renamed from: b */
    public static UploadBufferBuilder f5156b = new UploadBufferBuilder();

    public UploadBufferBuilder() {
        super(NotificationCompat.Builder.MAX_CHARSEQUENCE_LENGTH);
    }

    /* renamed from: a */
    public static String m4251a(String str) {
        return str == null ? "" : str;
    }

    /* renamed from: b */
    public static UploadBufferBuilder m4252b() {
        return f5156b;
    }

    /* renamed from: a */
    public final byte[] m4253a(byte[] bArr, byte[] bArr2, List<? extends CollectionData> list) {
        if (list == null) {
            return null;
        }
        try {
            int size = list.size();
            if (size <= 0 || bArr == null) {
                return null;
            }
            m4243a();
            int iM4289a = RootTUploadData.m4289a((FlatBufferBuilder) this.f5154a, bArr);
            int[] iArr = new int[size];
            for (int i = 0; i < size; i++) {
                CollectionData c1765ca = list.get(i);
                iArr[i] = TData.m4325a(this.f5154a, (byte) c1765ca.m4279a(), TData.m4326a(this.f5154a, c1765ca.m4280b()));
            }
            this.f5154a.m5191c(RootTUploadData.m4288a(this.f5154a, iM4289a, bArr2 != null ? RootTUploadData.m4292b(this.f5154a, bArr2) : 0, RootTUploadData.m4290a(this.f5154a, iArr)));
            return this.f5154a.m5192c();
        } catch (Throwable th) {
            ALLog.m4567a(th);
            return null;
        }
    }

    /* renamed from: c */
    public final byte[] m4254c() {
        super.m4243a();
        try {
            this.f5154a.m5191c(THeader.m4553a(this.f5154a, HeaderConfig.m4519a(), this.f5154a.mo4250a(HeaderConfig.m4531f()), this.f5154a.mo4250a(HeaderConfig.m4525c()), (byte) HeaderConfig.m4545m(), this.f5154a.mo4250a(HeaderConfig.m4537i()), this.f5154a.mo4250a(HeaderConfig.m4535h()), this.f5154a.mo4250a(m4251a(HeaderConfig.m4533g())), this.f5154a.mo4250a(m4251a(HeaderConfig.m4539j())), AmapWifi.m4515a(HeaderConfig.m4547n()), this.f5154a.mo4250a(HeaderConfig.m4543l()), this.f5154a.mo4250a(HeaderConfig.m4541k()), this.f5154a.mo4250a(HeaderConfig.m4527d()), this.f5154a.mo4250a(HeaderConfig.m4529e())));
            return this.f5154a.m5192c();
        } catch (Exception e) {
            ALLog.m4567a(e);
            return null;
        }
    }
}
