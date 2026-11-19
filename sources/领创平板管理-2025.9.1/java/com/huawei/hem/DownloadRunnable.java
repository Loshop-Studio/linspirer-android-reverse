package com.huawei.hem;

import com.huawei.hem.CustomComponentHolder;
import com.liulishuo.filedownloader.model.FileDownloadModel;

/* compiled from: DownloadRunnable.java */
/* renamed from: com.huawei.hem.rf */
/* loaded from: classes.dex */
public class DownloadRunnable implements Runnable {

    /* renamed from: a */
    public final ConnectTask f3631a;

    /* renamed from: b */
    public final FileDownloadProcessCallback f3632b;

    /* renamed from: c */
    public final String f3633c;

    /* renamed from: d */
    public final boolean f3634d;

    /* renamed from: e */
    public FetchDataTask f3635e;

    /* renamed from: f */
    public volatile boolean f3636f = false;

    /* renamed from: g */
    public final int f3637g;

    /* renamed from: h */
    public final int f3638h;

    public DownloadRunnable(int i, int i2, ConnectTask c1159nf, FileDownloadProcessCallback interfaceC1334uf, boolean z, String str, a aVar) {
        this.f3637g = i;
        this.f3638h = i2;
        this.f3632b = interfaceC1334uf;
        this.f3633c = str;
        this.f3631a = c1159nf;
        this.f3634d = z;
    }

    /* renamed from: a */
    public final long m2664a() {
        FileDownloadDatabase interfaceC1033ifM2480b = CustomComponentHolder.a.f3463a.m2480b();
        if (this.f3638h < 0) {
            FileDownloadModel fileDownloadModelMo2105o = interfaceC1033ifM2480b.mo2105o(this.f3637g);
            if (fileDownloadModelMo2105o != null) {
                return fileDownloadModelMo2105o.m3926a();
            }
            return 0L;
        }
        for (ConnectionModel c1160ng : interfaceC1033ifM2480b.mo2104n(this.f3637g)) {
            if (c1160ng.f3327b == this.f3638h) {
                return c1160ng.f3329d;
            }
        }
        return 0L;
    }

    /* renamed from: b */
    public void m2665b() {
        this.f3636f = true;
        FetchDataTask c1309tf = this.f3635e;
        if (c1309tf != null) {
            c1309tf.f3807m = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x016a  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.RunnableC1259rf.run():void");
    }
}
