package com.huawei.hem;

import android.os.SystemClock;
import com.huawei.hem.CustomComponentHolder;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.IOException;

/* compiled from: FetchDataTask.java */
/* renamed from: com.huawei.hem.tf */
/* loaded from: classes.dex */
public class FetchDataTask {

    /* renamed from: a */
    public final FileDownloadProcessCallback f3795a;

    /* renamed from: b */
    public final int f3796b;

    /* renamed from: c */
    public final int f3797c;

    /* renamed from: d */
    public final DownloadRunnable f3798d;

    /* renamed from: e */
    public final FileDownloadConnection f3799e;

    /* renamed from: f */
    public final boolean f3800f;

    /* renamed from: g */
    public final long f3801g;

    /* renamed from: h */
    public final long f3802h;

    /* renamed from: i */
    public final long f3803i;

    /* renamed from: j */
    public final String f3804j;

    /* renamed from: k */
    public long f3805k;

    /* renamed from: l */
    public FileDownloadOutputStream f3806l;

    /* renamed from: m */
    public volatile boolean f3807m;

    /* renamed from: o */
    public volatile long f3809o = 0;

    /* renamed from: p */
    public volatile long f3810p = 0;

    /* renamed from: n */
    public final FileDownloadDatabase f3808n = CustomComponentHolder.a.f3463a.m2480b();

    public FetchDataTask(FileDownloadConnection interfaceC0983gf, ConnectionProfile c1184of, DownloadRunnable runnableC1259rf, int i, int i2, boolean z, FileDownloadProcessCallback interfaceC1334uf, String str, a aVar) {
        this.f3795a = interfaceC1334uf;
        this.f3804j = str;
        this.f3799e = interfaceC0983gf;
        this.f3800f = z;
        this.f3798d = runnableC1259rf;
        this.f3797c = i2;
        this.f3796b = i;
        this.f3801g = c1184of.f3394a;
        this.f3802h = c1184of.f3396c;
        this.f3805k = c1184of.f3395b;
        this.f3803i = c1184of.f3397d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:146:0x027e, code lost:
    
        throw new com.huawei.hem.C0854bg();
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x02af A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x02a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:243:? A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2733a() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 751
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1309tf.m2733a():void");
    }

    /* renamed from: b */
    public final void m2734b() throws IOException {
        boolean z;
        SystemClock.uptimeMillis();
        try {
            FileDownloadRandomAccessFile c1435yg = (FileDownloadRandomAccessFile) this.f3806l;
            c1435yg.f4218a.flush();
            c1435yg.f4219b.sync();
            z = true;
        } catch (IOException unused) {
            z = false;
        }
        if (z) {
            if (this.f3797c >= 0) {
                this.f3808n.mo2101k(this.f3796b, this.f3797c, this.f3805k);
                return;
            }
            DownloadLaunchRunnable runnableC1234qf = (DownloadLaunchRunnable) this.f3795a;
            FileDownloadDatabase interfaceC1033if = runnableC1234qf.f3542f;
            FileDownloadModel fileDownloadModel = runnableC1234qf.f3538b;
            interfaceC1033if.mo2102l(fileDownloadModel.f4834a, fileDownloadModel.m3926a());
        }
    }
}
