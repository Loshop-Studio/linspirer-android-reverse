package com.huawei.hem;

import android.util.SparseArray;
import com.huawei.hem.ConnectionProfile;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* compiled from: FileDownloadThreadPool.java */
/* renamed from: com.huawei.hem.ug */
/* loaded from: classes.dex */
public class FileDownloadThreadPool {

    /* renamed from: b */
    public ThreadPoolExecutor f3869b;

    /* renamed from: c */
    public int f3870c;

    /* renamed from: a */
    public SparseArray<DownloadLaunchRunnable> f3868a = new SparseArray<>();

    /* renamed from: d */
    public int f3871d = 0;

    public FileDownloadThreadPool(int i) {
        this.f3869b = ConnectionProfile.b.m2443f(i, "Network");
        this.f3870c = i;
    }

    /* renamed from: a */
    public void m2794a(DownloadLaunchRunnable runnableC1234qf) {
        runnableC1234qf.m2631g(runnableC1234qf.f3542f.mo2104n(runnableC1234qf.f3538b.f4834a));
        DownloadStatusCallback c1284sf = runnableC1234qf.f3537a;
        c1284sf.f3692a.f4839f.set(1);
        c1284sf.f3693b.mo2091a(c1284sf.f3692a.f4834a);
        c1284sf.m2695j((byte) 1);
        synchronized (this) {
            this.f3868a.put(runnableC1234qf.f3538b.f4834a, runnableC1234qf);
        }
        this.f3869b.execute(runnableC1234qf);
        int i = this.f3871d;
        if (i < 600) {
            this.f3871d = i + 1;
        } else {
            m2795b();
            this.f3871d = 0;
        }
    }

    /* renamed from: b */
    public final synchronized void m2795b() {
        SparseArray<DownloadLaunchRunnable> sparseArray = new SparseArray<>();
        int size = this.f3868a.size();
        for (int i = 0; i < size; i++) {
            int iKeyAt = this.f3868a.keyAt(i);
            DownloadLaunchRunnable runnableC1234qf = this.f3868a.get(iKeyAt);
            if (runnableC1234qf != null && runnableC1234qf.m2632h()) {
                sparseArray.put(iKeyAt, runnableC1234qf);
            }
        }
        this.f3868a = sparseArray;
    }

    /* renamed from: c */
    public synchronized boolean m2796c(int i) {
        synchronized (this) {
            m2795b();
        }
        if (this.f3868a.size() > 0) {
            FileDownloadLog.m1821e(this, "Can't change the max network thread count, because the  network thread pool isn't in IDLE, please try again after all running tasks are completed or invoking FileDownloader#pauseAll directly.", new Object[0]);
            return false;
        }
        int iM1874a = FileDownloadProperties.m1874a(i);
        List<Runnable> listShutdownNow = this.f3869b.shutdownNow();
        this.f3869b = ConnectionProfile.b.m2443f(iM1874a, "Network");
        if (listShutdownNow.size() > 0) {
            FileDownloadLog.m1821e(this, "recreate the network thread pool and discard %d tasks", Integer.valueOf(listShutdownNow.size()));
        }
        this.f3870c = iM1874a;
        return true;
    }
}
