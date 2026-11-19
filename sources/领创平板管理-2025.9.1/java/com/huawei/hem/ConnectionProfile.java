package com.huawei.hem;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.huawei.hem.MessageSnapshotFlow;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot;
import com.liulishuo.filedownloader.message.SmallMessageSnapshot;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: ConnectionProfile.java */
/* renamed from: com.huawei.hem.of */
/* loaded from: classes.dex */
public class ConnectionProfile {

    /* renamed from: a */
    public final long f3394a;

    /* renamed from: b */
    public final long f3395b;

    /* renamed from: c */
    public final long f3396c;

    /* renamed from: d */
    public final long f3397d;

    /* renamed from: e */
    public final boolean f3398e;

    /* renamed from: f */
    public final boolean f3399f;

    /* compiled from: ConnectionProfile.java */
    /* renamed from: com.huawei.hem.of$b */
    public static class b {

        /* renamed from: a */
        @SuppressLint({"StaticFieldLeak"})
        public static Context f3400a;

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0036, code lost:
        
            r1 = r3.f3538b.f4834a;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean m2438a(int r5, long r6, java.lang.String r8, java.lang.String r9, com.huawei.hem.IThreadPoolMonitor r10) {
            /*
                r0 = 0
                if (r9 == 0) goto L65
                if (r8 == 0) goto L65
                com.huawei.hem.tg r10 = (com.huawei.hem.C1310tg) r10
                com.huawei.hem.ug r10 = r10.f3812b
                monitor-enter(r10)
                android.util.SparseArray<com.huawei.hem.qf> r1 = r10.f3868a     // Catch: java.lang.Throwable -> L62
                int r1 = r1.size()     // Catch: java.lang.Throwable -> L62
                r2 = r0
            L11:
                if (r2 >= r1) goto L3f
                android.util.SparseArray<com.huawei.hem.qf> r3 = r10.f3868a     // Catch: java.lang.Throwable -> L62
                java.lang.Object r3 = r3.valueAt(r2)     // Catch: java.lang.Throwable -> L62
                com.huawei.hem.qf r3 = (com.huawei.hem.RunnableC1234qf) r3     // Catch: java.lang.Throwable -> L62
                if (r3 != 0) goto L1e
                goto L3c
            L1e:
                boolean r4 = r3.m2632h()     // Catch: java.lang.Throwable -> L62
                if (r4 == 0) goto L3c
                com.liulishuo.filedownloader.model.FileDownloadModel r4 = r3.f3538b     // Catch: java.lang.Throwable -> L62
                int r4 = r4.f4834a     // Catch: java.lang.Throwable -> L62
                if (r4 == r5) goto L3c
                com.liulishuo.filedownloader.model.FileDownloadModel r4 = r3.f3538b     // Catch: java.lang.Throwable -> L62
                java.lang.String r4 = r4.m3929d()     // Catch: java.lang.Throwable -> L62
                boolean r4 = r8.equals(r4)     // Catch: java.lang.Throwable -> L62
                if (r4 == 0) goto L3c
                com.liulishuo.filedownloader.model.FileDownloadModel r1 = r3.f3538b     // Catch: java.lang.Throwable -> L62
                int r1 = r1.f4834a     // Catch: java.lang.Throwable -> L62
                monitor-exit(r10)
                goto L41
            L3c:
                int r2 = r2 + 1
                goto L11
            L3f:
                monitor-exit(r10)
                r1 = r0
            L41:
                if (r1 == 0) goto L65
                com.huawei.hem.jg r10 = com.huawei.hem.C1059jg.a.f2953a
                com.huawei.hem.eg r0 = new com.huawei.hem.eg
                r0.<init>(r1, r8, r9)
                r8 = 2147483647(0x7fffffff, double:1.060997895E-314)
                int r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r8 <= 0) goto L57
                com.liulishuo.filedownloader.message.LargeMessageSnapshot$ErrorMessageSnapshot r8 = new com.liulishuo.filedownloader.message.LargeMessageSnapshot$ErrorMessageSnapshot
                r8.<init>(r5, r6, r0)
                goto L5d
            L57:
                com.liulishuo.filedownloader.message.SmallMessageSnapshot$ErrorMessageSnapshot r8 = new com.liulishuo.filedownloader.message.SmallMessageSnapshot$ErrorMessageSnapshot
                int r6 = (int) r6
                r8.<init>(r5, r6, r0)
            L5d:
                r10.m2132a(r8)
                r5 = 1
                return r5
            L62:
                r5 = move-exception
                monitor-exit(r10)
                throw r5
            L65:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1184of.b.m2438a(int, long, java.lang.String, java.lang.String, com.huawei.hem.af):boolean");
        }

        /* renamed from: b */
        public static boolean m2439b(int i, String str, boolean z, boolean z2) {
            if (!z && str != null) {
                File file = new File(str);
                if (file.exists()) {
                    MessageSnapshotFlow c1059jg = MessageSnapshotFlow.a.f2953a;
                    long length = file.length();
                    c1059jg.m2132a(length > 2147483647L ? z2 ? new LargeMessageSnapshot.CompletedFlowDirectlySnapshot(i, true, length) : new LargeMessageSnapshot.CompletedSnapshot(i, true, length) : z2 ? new SmallMessageSnapshot.CompletedFlowDirectlySnapshot(i, true, (int) length) : new SmallMessageSnapshot.CompletedSnapshot(i, true, (int) length));
                    return true;
                }
            }
            return false;
        }

        /* renamed from: c */
        public static boolean m2440c(int i, FileDownloadModel fileDownloadModel, IThreadPoolMonitor interfaceC0827af, boolean z) {
            if (!((FileDownloadManager) interfaceC0827af).m2737c(fileDownloadModel)) {
                return false;
            }
            MessageSnapshotFlow c1059jg = MessageSnapshotFlow.a.f2953a;
            long jM3926a = fileDownloadModel.m3926a();
            long j = fileDownloadModel.f4841h;
            c1059jg.m2132a(j > 2147483647L ? z ? new LargeMessageSnapshot.WarnFlowDirectlySnapshot(i, jM3926a, j) : new LargeMessageSnapshot.WarnMessageSnapshot(i, jM3926a, j) : z ? new SmallMessageSnapshot.WarnFlowDirectlySnapshot(i, (int) jM3926a, (int) j) : new SmallMessageSnapshot.WarnMessageSnapshot(i, (int) jM3926a, (int) j));
            return true;
        }

        /* renamed from: d */
        public static boolean m2441d(int i) {
            return i > 0;
        }

        /* renamed from: e */
        public static boolean m2442e(int i) {
            return i < 0;
        }

        /* renamed from: f */
        public static ThreadPoolExecutor m2443f(int i, String str) {
            return m2444g(i, new LinkedBlockingQueue(), str);
        }

        /* renamed from: g */
        public static ThreadPoolExecutor m2444g(int i, LinkedBlockingQueue<Runnable> linkedBlockingQueue, String str) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 15L, TimeUnit.SECONDS, linkedBlockingQueue, new FileDownloadThreadFactory(str));
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            return threadPoolExecutor;
        }

        /* renamed from: h */
        public static void m2445h(Context context, String[] strArr) {
            Log.i("ebenmdm", "setAppDisable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.app.disable");
            intent.putExtra("appdisable", strArr);
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        }

        /* renamed from: i */
        public static void m2446i(Context context, String[] strArr) {
            Log.i("ebenmdm", "setAppEnable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.app.able");
            intent.putExtra("appable", strArr);
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        }

        /* renamed from: j */
        public static void m2447j(Context context, String str) {
            Log.i("ebenmdm", "silentInstall" + str);
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.silent.install");
            intent.putExtra("silentinstall", str);
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        }

        /* renamed from: k */
        public static void m2448k(Context context, String str) {
            Log.i("ebenmdm", "silentUninstall" + str);
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.silent.uninstall");
            intent.putExtra("silentuninstall", str);
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        }
    }

    public ConnectionProfile(a aVar) {
        this.f3394a = 0L;
        this.f3395b = 0L;
        this.f3396c = 0L;
        this.f3397d = 0L;
        this.f3398e = false;
        this.f3399f = true;
    }

    public String toString() {
        return FileDownloadUtils.m1955e("range[%d, %d) current offset[%d]", Long.valueOf(this.f3394a), Long.valueOf(this.f3396c), Long.valueOf(this.f3395b));
    }

    public ConnectionProfile(long j, long j2, long j3, long j4, a aVar) {
        this(j, j2, j3, j4, false);
    }

    public ConnectionProfile(long j, long j2, long j3, long j4, boolean z) {
        if ((j == 0 && j3 == 0) || !z) {
            this.f3394a = j;
            this.f3395b = j2;
            this.f3396c = j3;
            this.f3397d = j4;
            this.f3398e = z;
            this.f3399f = false;
            return;
        }
        throw new IllegalArgumentException();
    }
}
