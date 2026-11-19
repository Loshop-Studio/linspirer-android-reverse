package com.huawei.hem;

import com.huawei.hem.FileDownloadProperties;
import com.huawei.hem.CustomComponentHolder;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: FileDownloadManager.java */
/* renamed from: com.huawei.hem.tg */
/* loaded from: classes.dex */
public class FileDownloadManager implements IThreadPoolMonitor {

    /* renamed from: a */
    public final FileDownloadDatabase f3811a;

    /* renamed from: b */
    public final FileDownloadThreadPool f3812b;

    public FileDownloadManager() {
        CustomComponentHolder c1209pf = CustomComponentHolder.a.f3463a;
        this.f3811a = c1209pf.m2480b();
        if (c1209pf.m2481c() == null) {
            throw null;
        }
        this.f3812b = new FileDownloadThreadPool(FileDownloadProperties.b.f2783a.f2779e);
    }

    /* renamed from: a */
    public boolean m2735a(int i) {
        if (i == 0) {
            FileDownloadLog.m1821e(this, "The task[%d] id is invalid, can't clear it.", Integer.valueOf(i));
            return false;
        }
        if (m2737c(this.f3811a.mo2105o(i))) {
            FileDownloadLog.m1821e(this, "The task[%d] is downloading, can't clear it.", Integer.valueOf(i));
            return false;
        }
        this.f3811a.remove(i);
        this.f3811a.mo2093c(i);
        return true;
    }

    /* renamed from: b */
    public long m2736b(int i) {
        FileDownloadModel fileDownloadModelMo2105o = this.f3811a.mo2105o(i);
        if (fileDownloadModelMo2105o == null) {
            return 0L;
        }
        int i2 = fileDownloadModelMo2105o.f4844k;
        if (i2 <= 1) {
            return fileDownloadModelMo2105o.m3926a();
        }
        List<ConnectionModel> listMo2104n = this.f3811a.mo2104n(i);
        if (listMo2104n == null || listMo2104n.size() != i2) {
            return 0L;
        }
        return ConnectionModel.m2412a(listMo2104n);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001c  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m2737c(com.liulishuo.filedownloader.model.FileDownloadModel r6) {
        /*
            r5 = this;
            r0 = 0
            if (r6 != 0) goto L4
            return r0
        L4:
            com.huawei.hem.ug r1 = r5.f3812b
            int r2 = r6.f4834a
            monitor-enter(r1)
            android.util.SparseArray<com.huawei.hem.qf> r3 = r1.f3868a     // Catch: java.lang.Throwable -> L4a
            java.lang.Object r2 = r3.get(r2)     // Catch: java.lang.Throwable -> L4a
            com.huawei.hem.qf r2 = (com.huawei.hem.RunnableC1234qf) r2     // Catch: java.lang.Throwable -> L4a
            r3 = 1
            if (r2 == 0) goto L1c
            boolean r2 = r2.m2632h()     // Catch: java.lang.Throwable -> L4a
            if (r2 == 0) goto L1c
            r2 = r3
            goto L1d
        L1c:
            r2 = r0
        L1d:
            monitor-exit(r1)
            byte r1 = r6.m3927b()
            boolean r1 = com.huawei.hem.C1184of.b.m2442e(r1)
            if (r1 == 0) goto L2b
            if (r2 == 0) goto L49
            goto L2d
        L2b:
            if (r2 == 0) goto L2f
        L2d:
            r0 = r3
            goto L49
        L2f:
            java.lang.String r1 = "%d status is[%s](not finish) & but not in the pool"
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            int r4 = r6.f4834a
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r2[r0] = r4
            byte r6 = r6.m3927b()
            java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
            r2[r3] = r6
            com.huawei.hem.C0959fh.m1818b(r5, r1, r2)
        L49:
            return r0
        L4a:
            r6 = move-exception
            monitor-exit(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1310tg.m2737c(com.liulishuo.filedownloader.model.FileDownloadModel):boolean");
    }

    /* renamed from: d */
    public boolean m2738d() {
        int size;
        FileDownloadThreadPool c1335ug = this.f3812b;
        synchronized (c1335ug) {
            c1335ug.m2795b();
            size = c1335ug.f3868a.size();
        }
        return size <= 0;
    }

    /* renamed from: e */
    public boolean m2739e(int i) {
        FileDownloadModel fileDownloadModelMo2105o = this.f3811a.mo2105o(i);
        if (fileDownloadModelMo2105o == null) {
            return false;
        }
        fileDownloadModelMo2105o.f4839f.set(-2);
        FileDownloadThreadPool c1335ug = this.f3812b;
        c1335ug.m2795b();
        synchronized (c1335ug) {
            DownloadLaunchRunnable runnableC1234qf = c1335ug.f3868a.get(i);
            if (runnableC1234qf != null) {
                runnableC1234qf.f3555s = true;
                DownloadRunnable runnableC1259rf = runnableC1234qf.f3549m;
                if (runnableC1259rf != null) {
                    runnableC1259rf.m2665b();
                }
                Iterator it = ((ArrayList) runnableC1234qf.f3548l.clone()).iterator();
                while (it.hasNext()) {
                    DownloadRunnable runnableC1259rf2 = (DownloadRunnable) it.next();
                    if (runnableC1259rf2 != null) {
                        runnableC1259rf2.m2665b();
                    }
                }
                c1335ug.f3869b.remove(runnableC1234qf);
            }
            c1335ug.f3868a.remove(i);
        }
        return true;
    }

    /* renamed from: f */
    public void m2740f() {
        ArrayList arrayList;
        FileDownloadThreadPool c1335ug = this.f3812b;
        synchronized (c1335ug) {
            c1335ug.m2795b();
            arrayList = new ArrayList();
            for (int i = 0; i < c1335ug.f3868a.size(); i++) {
                arrayList.add(Integer.valueOf(c1335ug.f3868a.get(c1335ug.f3868a.keyAt(i)).f3538b.f4834a));
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            m2739e(((Integer) it.next()).intValue());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x0121 A[Catch: all -> 0x0171, TryCatch #0 {, blocks: (B:4:0x0009, B:7:0x001c, B:9:0x002c, B:11:0x0036, B:15:0x0043, B:20:0x004d, B:22:0x0056, B:28:0x0065, B:32:0x006f, B:35:0x0080, B:38:0x008c, B:42:0x009a, B:44:0x00a1, B:46:0x00a8, B:48:0x00ae, B:50:0x00b5, B:52:0x00bc, B:54:0x00c0, B:56:0x00d6, B:57:0x00da, B:59:0x00e0, B:69:0x0121, B:70:0x0126, B:76:0x0144, B:79:0x016b, B:80:0x0170, B:60:0x00ee, B:62:0x00f6, B:65:0x00ff, B:66:0x0105, B:34:0x0075, B:21:0x0052), top: B:84:0x0009 }] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void m2741g(java.lang.String r19, java.lang.String r20, boolean r21, int r22, int r23, int r24, boolean r25, com.liulishuo.filedownloader.model.FileDownloadHeader r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1310tg.m2741g(java.lang.String, java.lang.String, boolean, int, int, int, boolean, com.liulishuo.filedownloader.model.FileDownloadHeader, boolean):void");
    }
}
