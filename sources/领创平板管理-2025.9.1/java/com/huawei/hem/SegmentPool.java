package com.huawei.hem;

import android.support.v4.media.session.PlaybackStateCompat;
import javax.annotation.Nullable;

/* compiled from: SegmentPool.java */
/* renamed from: com.huawei.hem.xn */
/* loaded from: classes.dex */
public final class SegmentPool {

    /* renamed from: a */
    @Nullable
    public static OkioSegment f4094a;

    /* renamed from: b */
    public static long f4095b;

    /* renamed from: a */
    public static void m2951a(OkioSegment c1392wn) {
        if (c1392wn.f4036f != null || c1392wn.f4037g != null) {
            throw new IllegalArgumentException();
        }
        if (c1392wn.f4034d) {
            return;
        }
        synchronized (SegmentPool.class) {
            if (f4095b + PlaybackStateCompat.ACTION_PLAY_FROM_URI > PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                return;
            }
            f4095b += PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            c1392wn.f4036f = f4094a;
            c1392wn.f4033c = 0;
            c1392wn.f4032b = 0;
            f4094a = c1392wn;
        }
    }

    /* renamed from: b */
    public static OkioSegment m2952b() {
        synchronized (SegmentPool.class) {
            if (f4094a == null) {
                return new OkioSegment();
            }
            OkioSegment c1392wn = f4094a;
            f4094a = c1392wn.f4036f;
            c1392wn.f4036f = null;
            f4095b -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            return c1392wn;
        }
    }
}
