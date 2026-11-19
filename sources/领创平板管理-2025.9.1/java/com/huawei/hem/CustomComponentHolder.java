package com.huawei.hem;

import com.huawei.hem.FileDownloadUrlConnection;
import com.huawei.hem.ConnectionProfile;
import com.huawei.hem.FileDownloadRandomAccessFile;
import com.huawei.hem.FileDownloadDatabase;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;

/* compiled from: CustomComponentHolder.java */
/* renamed from: com.huawei.hem.pf */
/* loaded from: classes.dex */
public class CustomComponentHolder {

    /* renamed from: a */
    public DownloadMgrInitialParams f3456a;

    /* renamed from: b */
    public InterfaceC0855bh f3457b;

    /* renamed from: c */
    public InterfaceC0881ch f3458c;

    /* renamed from: d */
    public InterfaceC0933eh f3459d;

    /* renamed from: e */
    public FileDownloadDatabase f3460e;

    /* renamed from: f */
    public InterfaceC0907dh f3461f;

    /* renamed from: g */
    public ForegroundServiceConfig f3462g;

    /* compiled from: CustomComponentHolder.java */
    /* renamed from: com.huawei.hem.pf$a */
    public static final class a {

        /* renamed from: a */
        public static final CustomComponentHolder f3463a = new CustomComponentHolder();
    }

    /* renamed from: f */
    public static void m2478f(FileDownloadDatabase.a aVar) throws IOException {
        boolean z;
        Iterator<FileDownloadModel> it = aVar.iterator();
        InterfaceC0907dh interfaceC0907dhM2482d = a.f3463a.m2482d();
        System.currentTimeMillis();
        while (it.hasNext()) {
            try {
                FileDownloadModel next = it.next();
                if (next.m3927b() == 3 || next.m3927b() == 2 || next.m3927b() == -1 || (next.m3927b() == 1 && next.m3926a() > 0)) {
                    next.f4839f.set(-2);
                }
                String strM3928c = next.m3928c();
                if (strM3928c != null) {
                    File file = new File(strM3928c);
                    if (next.m3927b() == -2 && FileDownloadUtils.m1964n(next.f4834a, next, next.f4836c, null)) {
                        File file2 = new File(next.m3929d());
                        if (!file2.exists() && file.exists()) {
                            file.renameTo(file2);
                        }
                    }
                    z = (next.m3927b() == 1 && next.m3926a() <= 0) || !FileDownloadUtils.m1963m(next.f4834a, next) || file.exists();
                }
                if (z) {
                    it.remove();
                    aVar.mo2108a(next);
                } else {
                    int i = next.f4834a;
                    int iM2484a = ((DefaultIdGenerator) interfaceC0907dhM2482d).m2484a(next.f4835b, next.f4836c, next.f4837d);
                    if (iM2484a != i) {
                        next.f4834a = iM2484a;
                        aVar.mo2111f(i, next);
                    }
                    aVar.mo2109c(next);
                }
            } catch (Throwable th) {
                FileDownloadUtils.m1967q(ConnectionProfile.b.f3400a);
                aVar.mo2110d();
                throw th;
            }
        }
        FileDownloadUtils.m1967q(ConnectionProfile.b.f3400a);
        aVar.mo2110d();
    }

    /* renamed from: a */
    public FileDownloadConnection m2479a(String str) {
        InterfaceC0881ch interfaceC0881ch = this.f3458c;
        if (interfaceC0881ch == null) {
            synchronized (this) {
                if (this.f3458c == null) {
                    if (m2481c() == null) {
                        throw null;
                    }
                    this.f3458c = new FileDownloadUrlConnection.b();
                }
            }
            interfaceC0881ch = this.f3458c;
        }
        if (((FileDownloadUrlConnection.b) interfaceC0881ch) != null) {
            return new FileDownloadUrlConnection(str);
        }
        throw null;
    }

    /* renamed from: b */
    public FileDownloadDatabase m2480b() {
        FileDownloadDatabase interfaceC1033if = this.f3460e;
        if (interfaceC1033if != null) {
            return interfaceC1033if;
        }
        synchronized (this) {
            if (this.f3460e == null) {
                if (m2481c() == null) {
                    throw null;
                }
                RemitDatabase c1083kf = new RemitDatabase();
                this.f3460e = c1083kf;
                m2478f(c1083kf.mo2094d());
            }
        }
        return this.f3460e;
    }

    /* renamed from: c */
    public final DownloadMgrInitialParams m2481c() {
        DownloadMgrInitialParams c1235qg = this.f3456a;
        if (c1235qg != null) {
            return c1235qg;
        }
        synchronized (this) {
            if (this.f3456a == null) {
                this.f3456a = new DownloadMgrInitialParams();
            }
        }
        return this.f3456a;
    }

    /* renamed from: d */
    public InterfaceC0907dh m2482d() {
        InterfaceC0907dh interfaceC0907dh = this.f3461f;
        if (interfaceC0907dh != null) {
            return interfaceC0907dh;
        }
        synchronized (this) {
            if (this.f3461f == null) {
                if (m2481c() == null) {
                    throw null;
                }
                this.f3461f = new DefaultIdGenerator();
            }
        }
        return this.f3461f;
    }

    /* renamed from: e */
    public final InterfaceC0933eh m2483e() {
        InterfaceC0933eh interfaceC0933eh = this.f3459d;
        if (interfaceC0933eh != null) {
            return interfaceC0933eh;
        }
        synchronized (this) {
            if (this.f3459d == null) {
                if (m2481c() == null) {
                    throw null;
                }
                this.f3459d = new FileDownloadRandomAccessFile.a();
            }
        }
        return this.f3459d;
    }
}
