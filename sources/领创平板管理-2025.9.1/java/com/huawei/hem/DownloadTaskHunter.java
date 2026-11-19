package com.huawei.hem;

import android.os.SystemClock;
import com.huawei.hem.FileDownloadList;
import com.huawei.hem.ConnectionProfile;
import com.huawei.hem.FileDownloadServiceProxy;
import com.huawei.hem.FileDownloadTaskLauncher;
import com.huawei.hem.FileDownloader;
import com.huawei.hem.BaseDownloadTask;
import com.huawei.hem.ITaskHunter;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.message.SmallMessageSnapshot;
import java.io.File;
import java.io.IOException;
import java.security.InvalidParameterException;

/* compiled from: DownloadTaskHunter.java */
/* renamed from: com.huawei.hem.ie */
/* loaded from: classes.dex */
public class DownloadTaskHunter implements ITaskHunter, ITaskHunter.b, ITaskHunter.a, BaseDownloadTask.c {

    /* renamed from: a */
    public IFileDownloadMessenger f2913a;

    /* renamed from: b */
    public final Object f2914b;

    /* renamed from: c */
    public final a f2915c;

    /* renamed from: d */
    public volatile byte f2916d = 0;

    /* renamed from: e */
    public Throwable f2917e = null;

    /* renamed from: f */
    public final DownloadSpeedMonitor f2918f = new DownloadSpeedMonitor();

    /* renamed from: g */
    public long f2919g;

    /* renamed from: h */
    public long f2920h;

    /* renamed from: i */
    public int f2921i;

    /* renamed from: j */
    public boolean f2922j;

    /* compiled from: DownloadTaskHunter.java */
    /* renamed from: com.huawei.hem.ie$a */
    public interface a {
    }

    public DownloadTaskHunter(a aVar, Object obj) {
        this.f2914b = obj;
        this.f2915c = aVar;
        this.f2913a = new FileDownloadMessenger((DownloadTask) aVar, this);
    }

    /* renamed from: a */
    public final int m2085a() {
        DownloadTask c1007he = (DownloadTask) this.f2915c;
        if (c1007he != null) {
            return c1007he.getId();
        }
        throw null;
    }

    /* renamed from: b */
    public void m2086b() {
        if (((DownloadTask) this.f2915c) == null) {
            throw null;
        }
        DownloadSpeedMonitor c0982ge = this.f2918f;
        long j = this.f2919g;
        if (c0982ge.f2771d > 0) {
            long j2 = j - c0982ge.f2770c;
            c0982ge.f2768a = 0L;
            long jUptimeMillis = SystemClock.uptimeMillis() - c0982ge.f2771d;
            if (jUptimeMillis <= 0) {
                c0982ge.f2772e = (int) j2;
            } else {
                c0982ge.f2772e = (int) (j2 / jUptimeMillis);
            }
        }
        if (((DownloadTask) this.f2915c) == null) {
            throw null;
        }
        ILostServiceConnectedHandler interfaceC1408xeM2791c = FileDownloader.m2788b().m2791c();
        DownloadTask c1007he = (DownloadTask) this.f2915c;
        if (c1007he == null) {
            throw null;
        }
        ((LostServiceConnectedHandler) interfaceC1408xeM2791c).m1419b(c1007he);
    }

    /* renamed from: c */
    public boolean m2087c() {
        if (ConnectionProfile.b.m2442e(this.f2916d)) {
            return false;
        }
        this.f2916d = (byte) -2;
        DownloadTask c1007he = (DownloadTask) this.f2915c;
        if (c1007he == null) {
            throw null;
        }
        FileDownloadTaskLauncher c1308te = FileDownloadTaskLauncher.a.f3790a;
        synchronized (c1308te) {
            c1308te.f3789a.f3792b.remove(this);
        }
        if (FileDownloader.m2788b().m2793e()) {
            FileDownloadServiceProxy.b.f3535a.mo2624n(c1007he.getId());
        }
        FileDownloadList.b.f3261a.m2367a(c1007he);
        FileDownloadList.b.f3261a.m2372f(c1007he, c1007he.m1946y() ? new LargeMessageSnapshot.PausedSnapshot(c1007he.getId(), c1007he.mo1799q(), c1007he.mo1794f()) : new SmallMessageSnapshot.PausedSnapshot(c1007he.getId(), c1007he.mo1793d(), c1007he.mo1792c()));
        ((LostServiceConnectedHandler) FileDownloader.a.f3867a.m2791c()).m1419b(c1007he);
        return true;
    }

    /* renamed from: d */
    public final void m2088d() throws IOException {
        File file;
        DownloadTask c1007he = (DownloadTask) this.f2915c;
        if (c1007he == null) {
            throw null;
        }
        if (c1007he.f2850e == null) {
            c1007he.m1947z(FileDownloadUtils.m1959i(c1007he.f2849d), false);
        }
        if (c1007he.f2852g) {
            file = new File(c1007he.f2850e);
        } else {
            String strM1960j = FileDownloadUtils.m1960j(c1007he.f2850e);
            if (strM1960j == null) {
                throw new InvalidParameterException(FileDownloadUtils.m1955e("the provided mPath[%s] is invalid, can't find its directory", c1007he.f2850e));
            }
            file = new File(strM1960j);
        }
        if (!file.exists() && !file.mkdirs() && !file.exists()) {
            throw new IOException(FileDownloadUtils.m1955e("Create parent directory failed, please make sure you have permission to create file or directory on the path: %s", file.getAbsolutePath()));
        }
    }

    /* renamed from: e */
    public MessageSnapshot m2089e(Throwable th) {
        this.f2916d = (byte) -1;
        this.f2917e = th;
        int iM2085a = m2085a();
        long j = this.f2919g;
        return j > 2147483647L ? new LargeMessageSnapshot.ErrorMessageSnapshot(iM2085a, j, th) : new SmallMessageSnapshot.ErrorMessageSnapshot(iM2085a, (int) j, th);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0093  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2090f(com.liulishuo.filedownloader.message.MessageSnapshot r14) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1032ie.m2090f(com.liulishuo.filedownloader.message.MessageSnapshot):void");
    }
}
