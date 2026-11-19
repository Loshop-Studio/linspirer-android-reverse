package com.huawei.hem;

import com.huawei.hem.MessageSnapshotFlow;
import com.huawei.hem.FileDownloadList;
import com.huawei.hem.ConnectionProfile;
import com.huawei.hem.FileDownloadServiceProxy;
import com.huawei.hem.ITaskHunter;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;

/* compiled from: FileDownloadTaskLauncher.java */
/* renamed from: com.huawei.hem.te */
/* loaded from: classes.dex */
public class FileDownloadTaskLauncher {

    /* renamed from: a */
    public final b f3789a = new b();

    /* compiled from: FileDownloadTaskLauncher.java */
    /* renamed from: com.huawei.hem.te$a */
    public static class a {

        /* renamed from: a */
        public static final FileDownloadTaskLauncher f3790a = new FileDownloadTaskLauncher();

        static {
            MessageSnapshotFlow c1059jg = MessageSnapshotFlow.a.f2953a;
            MessageSnapshotGate c0879cf = new MessageSnapshotGate();
            c1059jg.f2952b = c0879cf;
            c1059jg.f2951a = new DownloadSnapshotThreadPool(5, c0879cf);
        }
    }

    /* compiled from: FileDownloadTaskLauncher.java */
    /* renamed from: com.huawei.hem.te$b */
    public static class b {

        /* renamed from: a */
        public ThreadPoolExecutor f3791a;

        /* renamed from: b */
        public LinkedBlockingQueue<Runnable> f3792b;

        public b() {
            LinkedBlockingQueue<Runnable> linkedBlockingQueue = new LinkedBlockingQueue<>();
            this.f3792b = linkedBlockingQueue;
            this.f3791a = ConnectionProfile.b.m2444g(3, linkedBlockingQueue, "LauncherTask");
        }
    }

    /* compiled from: FileDownloadTaskLauncher.java */
    /* renamed from: com.huawei.hem.te$c */
    public static class c implements Runnable {

        /* renamed from: a */
        public final ITaskHunter.b f3793a;

        /* renamed from: b */
        public boolean f3794b = false;

        public c(ITaskHunter.b bVar) {
            this.f3793a = bVar;
        }

        public boolean equals(Object obj) {
            return super.equals(obj) || obj == this.f3793a;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f3794b) {
                return;
            }
            DownloadTaskHunter c1032ie = (DownloadTaskHunter) this.f3793a;
            if (c1032ie.f2916d != 10) {
                FileDownloadLog.m1821e(c1032ie, "High concurrent cause, this task %d will not start, because the of status isn't toLaunchPool: %d", Integer.valueOf(c1032ie.m2085a()), Byte.valueOf(c1032ie.f2916d));
                return;
            }
            DownloadTask c1007he = (DownloadTask) c1032ie.f2915c;
            if (c1007he == null) {
                throw null;
            }
            LostServiceConnectedHandler c0853bf = (LostServiceConnectedHandler) FileDownloader.m2788b().m2791c();
            try {
                if (c0853bf.m1418a(c1007he)) {
                    return;
                }
                synchronized (c1032ie.f2914b) {
                    if (c1032ie.f2916d != 10) {
                        FileDownloadLog.m1821e(c1032ie, "High concurrent cause, this task %d will not start, the status can't assign to toFileDownloadService, because the status isn't toLaunchPool: %d", Integer.valueOf(c1032ie.m2085a()), Byte.valueOf(c1032ie.f2916d));
                    } else {
                        c1032ie.f2916d = (byte) 11;
                        FileDownloadList.b.f3261a.m2367a(c1007he);
                        if (!ConnectionProfile.b.m2439b(c1007he.getId(), FileDownloadUtils.m1961k(c1007he.f2850e, c1007he.f2852g, c1007he.f2851f), c1007he.f2859n, true)) {
                            FileDownloadServiceProxy c1233qe = FileDownloadServiceProxy.b.f3535a;
                            String str = c1007he.f2849d;
                            String str2 = c1007he.f2850e;
                            boolean z = c1007he.f2852g;
                            int i = c1007he.f2857l;
                            int i2 = c1007he.f2858m;
                            int i3 = c1007he.f2854i;
                            boolean z2 = c1007he.f2859n;
                            if (((DownloadTask) c1032ie.f2915c) == null) {
                                throw null;
                            }
                            boolean zMo2622d = c1233qe.mo2622d(str, str2, z, i, i2, i3, z2, null, c1007he.f2856k);
                            if (c1032ie.f2916d == -2) {
                                FileDownloadLog.m1821e(c1032ie, "High concurrent cause, this task %d will be paused,because of the status is paused, so the pause action must be applied", Integer.valueOf(c1032ie.m2085a()));
                                if (zMo2622d) {
                                    FileDownloadServiceProxy.b.f3535a.mo2624n(c1032ie.m2085a());
                                }
                            } else if (zMo2622d) {
                                c0853bf.m1419b(c1007he);
                            } else if (!c0853bf.m1418a(c1007he)) {
                                MessageSnapshot messageSnapshotM2089e = c1032ie.m2089e(new RuntimeException("Occur Unknown Error, when request to start maybe some problem in binder, maybe the process was killed in unexpected."));
                                if (FileDownloadList.b.f3261a.m2371e(c1007he)) {
                                    c0853bf.m1419b(c1007he);
                                    FileDownloadList.b.f3261a.m2367a(c1007he);
                                }
                                FileDownloadList.b.f3261a.m2372f(c1007he, messageSnapshotM2089e);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
                FileDownloadList.b.f3261a.m2372f(c1007he, c1032ie.m2089e(th));
            }
        }
    }
}
