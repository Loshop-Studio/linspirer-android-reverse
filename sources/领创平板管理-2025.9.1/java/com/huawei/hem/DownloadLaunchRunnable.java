package com.huawei.hem;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.StatFs;
import android.support.v7.widget.ActivityChooserView;
import com.huawei.hem.FileDownloadProperties;
import com.huawei.hem.ConnectionProfile;
import com.huawei.hem.CustomComponentHolder;
import com.huawei.hem.FileDownloadRandomAccessFile;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: DownloadLaunchRunnable.java */
/* renamed from: com.huawei.hem.qf */
/* loaded from: classes.dex */
public class DownloadLaunchRunnable implements Runnable, FileDownloadProcessCallback {

    /* renamed from: w */
    public static final ThreadPoolExecutor f3536w = new ThreadPoolExecutor(0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 15, TimeUnit.SECONDS, new SynchronousQueue(), new FileDownloadThreadFactory("ConnectionBlock"));

    /* renamed from: a */
    public final DownloadStatusCallback f3537a;

    /* renamed from: b */
    public final FileDownloadModel f3538b;

    /* renamed from: c */
    public final FileDownloadHeader f3539c;

    /* renamed from: d */
    public final boolean f3540d;

    /* renamed from: e */
    public final boolean f3541e;

    /* renamed from: g */
    public final IThreadPoolMonitor f3543g;

    /* renamed from: i */
    public int f3545i;

    /* renamed from: k */
    public final boolean f3547k;

    /* renamed from: m */
    public DownloadRunnable f3549m;

    /* renamed from: n */
    public boolean f3550n;

    /* renamed from: o */
    public boolean f3551o;

    /* renamed from: p */
    public boolean f3552p;

    /* renamed from: q */
    public boolean f3553q;

    /* renamed from: t */
    public volatile boolean f3556t;

    /* renamed from: u */
    public volatile Exception f3557u;

    /* renamed from: v */
    public String f3558v;

    /* renamed from: j */
    public boolean f3546j = false;

    /* renamed from: l */
    public final ArrayList<DownloadRunnable> f3548l = new ArrayList<>(5);

    /* renamed from: r */
    public final AtomicBoolean f3554r = new AtomicBoolean(true);

    /* renamed from: s */
    public volatile boolean f3555s = false;

    /* renamed from: h */
    public boolean f3544h = false;

    /* renamed from: f */
    public final FileDownloadDatabase f3542f = CustomComponentHolder.a.f3463a.m2480b();

    /* compiled from: DownloadLaunchRunnable.java */
    /* renamed from: com.huawei.hem.qf$b */
    public class b extends Throwable {
        public b() {
        }
    }

    /* compiled from: DownloadLaunchRunnable.java */
    /* renamed from: com.huawei.hem.qf$c */
    public class c extends Throwable {
        public c() {
        }
    }

    public DownloadLaunchRunnable(FileDownloadModel fileDownloadModel, FileDownloadHeader fileDownloadHeader, IThreadPoolMonitor interfaceC0827af, int i, int i2, boolean z, boolean z2, int i3, a aVar) {
        this.f3538b = fileDownloadModel;
        this.f3539c = fileDownloadHeader;
        this.f3540d = z;
        this.f3541e = z2;
        if (((FileDownloadRandomAccessFile.a) CustomComponentHolder.a.f3463a.m2483e()) == null) {
            throw null;
        }
        this.f3547k = true;
        this.f3543g = interfaceC0827af;
        this.f3545i = i3;
        this.f3537a = new DownloadStatusCallback(fileDownloadModel, i3, i, i2);
    }

    /* renamed from: a */
    public final int m2625a(long j) {
        boolean z = false;
        if ((!this.f3551o || this.f3538b.f4844k > 1) && this.f3552p && this.f3547k && !this.f3553q) {
            z = true;
        }
        if (!z) {
            return 1;
        }
        if (this.f3551o) {
            return this.f3538b.f4844k;
        }
        CustomComponentHolder c1209pf = CustomComponentHolder.a.f3463a;
        FileDownloadModel fileDownloadModel = this.f3538b;
        int i = fileDownloadModel.f4834a;
        String str = fileDownloadModel.f4835b;
        String str2 = fileDownloadModel.f4836c;
        DownloadConnectionCountPolicy interfaceC0855bh = c1209pf.f3457b;
        if (interfaceC0855bh == null) {
            synchronized (c1209pf) {
                if (c1209pf.f3457b == null) {
                    if (c1209pf.m2481c() == null) {
                        throw null;
                    }
                    c1209pf.f3457b = new DefaultConnectionCountAdapter();
                }
            }
            interfaceC0855bh = c1209pf.f3457b;
        }
        if (((DefaultConnectionCountAdapter) interfaceC0855bh) == null) {
            throw null;
        }
        if (j < 1048576) {
            return 1;
        }
        if (j < 5242880) {
            return 2;
        }
        if (j < 52428800) {
            return 3;
        }
        return j < 104857600 ? 4 : 5;
    }

    /* renamed from: b */
    public final void m2626b() throws b, c {
        FileDownloadModel fileDownloadModel = this.f3538b;
        int i = fileDownloadModel.f4834a;
        if (fileDownloadModel.f4837d) {
            String strM3928c = fileDownloadModel.m3928c();
            int iM1957g = FileDownloadUtils.m1957g(this.f3538b.f4835b, strM3928c);
            if (ConnectionProfile.b.m2439b(i, strM3928c, this.f3540d, false)) {
                this.f3542f.remove(i);
                this.f3542f.mo2093c(i);
                throw new b();
            }
            FileDownloadModel fileDownloadModelMo2105o = this.f3542f.mo2105o(iM1957g);
            if (fileDownloadModelMo2105o != null) {
                if (ConnectionProfile.b.m2440c(i, fileDownloadModelMo2105o, this.f3543g, false)) {
                    this.f3542f.remove(i);
                    this.f3542f.mo2093c(i);
                    throw new b();
                }
                List<ConnectionModel> listMo2104n = this.f3542f.mo2104n(iM1957g);
                this.f3542f.remove(iM1957g);
                this.f3542f.mo2093c(iM1957g);
                String strM3928c2 = this.f3538b.m3928c();
                if (strM3928c2 != null) {
                    File file = new File(strM3928c2);
                    if (file.exists()) {
                        file.delete();
                    }
                }
                if (FileDownloadUtils.m1963m(iM1957g, fileDownloadModelMo2105o)) {
                    FileDownloadModel fileDownloadModel2 = this.f3538b;
                    fileDownloadModel2.f4840g.set(fileDownloadModelMo2105o.m3926a());
                    this.f3538b.m3931f(fileDownloadModelMo2105o.f4841h);
                    FileDownloadModel fileDownloadModel3 = this.f3538b;
                    fileDownloadModel3.f4843j = fileDownloadModelMo2105o.f4843j;
                    fileDownloadModel3.f4844k = fileDownloadModelMo2105o.f4844k;
                    this.f3542f.mo2098h(fileDownloadModel3);
                    if (listMo2104n != null) {
                        for (ConnectionModel c1160ng : listMo2104n) {
                            c1160ng.f3326a = i;
                            this.f3542f.mo2092b(c1160ng);
                        }
                    }
                    throw new c();
                }
            }
            if (ConnectionProfile.b.m2438a(i, this.f3538b.m3926a(), this.f3538b.m3929d(), strM3928c, this.f3543g)) {
                this.f3542f.remove(i);
                this.f3542f.mo2093c(i);
                throw new b();
            }
        }
    }

    /* renamed from: c */
    public final void m2627c() {
        if (this.f3541e) {
            if (!(ConnectionProfile.b.f3400a.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0)) {
                throw new FileDownloadGiveUpRetryException(FileDownloadUtils.m1955e("Task[%d] can't start the download runnable, because this task require wifi, but user application nor current process has %s, so we can't check whether the network type connection.", Integer.valueOf(this.f3538b.f4834a), "android.permission.ACCESS_NETWORK_STATE"));
            }
        }
        if (this.f3541e && FileDownloadUtils.m1966p()) {
            throw new FileDownloadNetworkPolicyException();
        }
    }

    /* renamed from: d */
    public final void m2628d(List<ConnectionModel> list, long j) {
        boolean z;
        FileDownloadModel fileDownloadModel = this.f3538b;
        int i = fileDownloadModel.f4834a;
        String str = fileDownloadModel.f4843j;
        String str2 = this.f3558v;
        if (str2 == null) {
            str2 = fileDownloadModel.f4835b;
        }
        String str3 = str2;
        String strM3929d = this.f3538b.m3929d();
        boolean z2 = this.f3551o;
        long j2 = 0;
        for (ConnectionModel c1160ng : list) {
            long j3 = c1160ng.f3330e;
            long j4 = j3 == -1 ? j - c1160ng.f3329d : (j3 - c1160ng.f3329d) + 1;
            long j5 = (c1160ng.f3329d - c1160ng.f3328c) + j2;
            if (j4 == 0) {
                z = z2;
            } else {
                ConnectionProfile c1184of = new ConnectionProfile(c1160ng.f3328c, c1160ng.f3329d, c1160ng.f3330e, j4, (ConnectionProfile.a) null);
                Integer numValueOf = Integer.valueOf(i);
                Integer numValueOf2 = Integer.valueOf(c1160ng.f3327b);
                String str4 = z2 ? str : null;
                FileDownloadHeader fileDownloadHeader = this.f3539c;
                Boolean boolValueOf = Boolean.valueOf(this.f3541e);
                if (strM3929d == null || boolValueOf == null || numValueOf2 == null) {
                    throw new IllegalArgumentException(FileDownloadUtils.m1955e("%s %s %B", this, strM3929d, boolValueOf));
                }
                if (numValueOf == null || str3 == null) {
                    throw new IllegalArgumentException();
                }
                ConnectTask c1159nf = new ConnectTask(c1184of, numValueOf.intValue(), str3, str4, fileDownloadHeader, null);
                z = z2;
                this.f3548l.add(new DownloadRunnable(c1159nf.f3319a, numValueOf2.intValue(), c1159nf, this, boolValueOf.booleanValue(), strM3929d, null));
            }
            z2 = z;
            j2 = j5;
        }
        if (j2 != this.f3538b.m3926a()) {
            FileDownloadLog.m1821e(this, "correct the sofar[%d] from connection table[%d]", Long.valueOf(this.f3538b.m3926a()), Long.valueOf(j2));
            this.f3538b.f4840g.set(j2);
        }
        ArrayList arrayList = new ArrayList(this.f3548l.size());
        Iterator<DownloadRunnable> it = this.f3548l.iterator();
        while (it.hasNext()) {
            DownloadRunnable next = it.next();
            if (this.f3555s) {
                next.m2665b();
            } else {
                arrayList.add(Executors.callable(next));
            }
        }
        if (this.f3555s) {
            this.f3538b.f4839f.set(-2);
        } else {
            f3536w.invokeAll(arrayList);
        }
    }

    /* renamed from: e */
    public final void m2629e(long j, String str) throws IOException {
        FileDownloadOutputStream interfaceC1410xgM1951a = null;
        if (j != -1) {
            try {
                interfaceC1410xgM1951a = FileDownloadUtils.m1951a(this.f3538b.m3929d());
                long length = new File(str).length();
                long j2 = j - length;
                long availableBytes = new StatFs(str).getAvailableBytes();
                if (availableBytes < j2) {
                    throw new FileDownloadOutOfSpaceException(availableBytes, j2, length);
                }
                if (!FileDownloadProperties.b.f2783a.f2780f) {
                    ((FileDownloadRandomAccessFile) interfaceC1410xgM1951a).f4220c.setLength(j);
                }
            } finally {
                if (0 != 0) {
                    ((FileDownloadRandomAccessFile) null).m3087a();
                }
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:153:0x01e1
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Path cross not found for [B:102:0x01e1, B:156:0x01b4], limit reached: 147 */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2630f(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r23, com.huawei.hem.ConnectTask r24, com.huawei.hem.FileDownloadConnection r25) {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.RunnableC1234qf.m2630f(java.util.Map, com.huawei.hem.nf, com.huawei.hem.gf):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001b  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2631g(java.util.List<com.huawei.hem.ConnectionModel> r11) {
        /*
            r10 = this;
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r10.f3538b
            int r1 = r0.f4844k
            java.lang.String r0 = r0.m3929d()
            com.liulishuo.filedownloader.model.FileDownloadModel r2 = r10.f3538b
            java.lang.String r2 = r2.m3928c()
            r3 = 0
            r4 = 1
            if (r1 <= r4) goto L14
            r5 = r4
            goto L15
        L14:
            r5 = r3
        L15:
            boolean r6 = r10.f3546j
            r7 = 0
            if (r6 == 0) goto L1d
        L1b:
            r5 = r7
            goto L50
        L1d:
            if (r5 == 0) goto L24
            boolean r6 = r10.f3547k
            if (r6 != 0) goto L24
            goto L1b
        L24:
            com.liulishuo.filedownloader.model.FileDownloadModel r6 = r10.f3538b
            int r9 = r6.f4834a
            boolean r6 = com.huawei.hem.C1010hh.m1963m(r9, r6)
            if (r6 == 0) goto L1b
            boolean r6 = r10.f3547k
            if (r6 != 0) goto L3c
            java.io.File r11 = new java.io.File
            r11.<init>(r0)
            long r5 = r11.length()
            goto L50
        L3c:
            if (r5 == 0) goto L4a
            int r5 = r11.size()
            if (r1 == r5) goto L45
            goto L1b
        L45:
            long r5 = com.huawei.hem.C1160ng.m2412a(r11)
            goto L50
        L4a:
            com.liulishuo.filedownloader.model.FileDownloadModel r11 = r10.f3538b
            long r5 = r11.m3926a()
        L50:
            com.liulishuo.filedownloader.model.FileDownloadModel r11 = r10.f3538b
            java.util.concurrent.atomic.AtomicLong r11 = r11.f4840g
            r11.set(r5)
            int r11 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r11 <= 0) goto L5c
            r3 = r4
        L5c:
            r10.f3551o = r3
            if (r3 != 0) goto L6c
            com.huawei.hem.if r11 = r10.f3542f
            com.liulishuo.filedownloader.model.FileDownloadModel r1 = r10.f3538b
            int r1 = r1.f4834a
            r11.mo2093c(r1)
            com.huawei.hem.C1010hh.m1953c(r2, r0)
        L6c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.RunnableC1234qf.m2631g(java.util.List):void");
    }

    /* renamed from: h */
    public boolean m2632h() {
        if (!this.f3554r.get()) {
            HandlerThread handlerThread = this.f3537a.f3700i;
            if (!(handlerThread != null && handlerThread.isAlive())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: i */
    public boolean m2633i(Exception exc) {
        if (exc instanceof FileDownloadHttpException) {
            int code = ((FileDownloadHttpException) exc).getCode();
            if (this.f3550n && code == 416 && !this.f3544h) {
                FileDownloadUtils.m1953c(this.f3538b.m3928c(), this.f3538b.m3929d());
                this.f3544h = true;
                return true;
            }
        }
        return this.f3545i > 0 && !(exc instanceof FileDownloadGiveUpRetryException);
    }

    /* renamed from: j */
    public void m2634j(Exception exc) {
        this.f3556t = true;
        this.f3557u = exc;
        if (this.f3555s) {
            return;
        }
        Iterator it = ((ArrayList) this.f3548l.clone()).iterator();
        while (it.hasNext()) {
            DownloadRunnable runnableC1259rf = (DownloadRunnable) it.next();
            if (runnableC1259rf != null) {
                runnableC1259rf.m2665b();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0041  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2635k(long r11) {
        /*
            r10 = this;
            boolean r0 = r10.f3555s
            if (r0 == 0) goto L5
            return
        L5:
            com.huawei.hem.sf r0 = r10.f3537a
            java.util.concurrent.atomic.AtomicLong r1 = r0.f3704m
            r1.addAndGet(r11)
            com.liulishuo.filedownloader.model.FileDownloadModel r1 = r0.f3692a
            java.util.concurrent.atomic.AtomicLong r1 = r1.f4840g
            r1.addAndGet(r11)
            long r11 = android.os.SystemClock.elapsedRealtime()
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.f3707p
            r2 = 1
            r3 = 0
            boolean r1 = r1.compareAndSet(r2, r3)
            if (r1 == 0) goto L22
            goto L41
        L22:
            long r4 = r0.f3703l
            long r4 = r11 - r4
            long r6 = r0.f3698g
            r8 = -1
            int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r1 == 0) goto L43
            java.util.concurrent.atomic.AtomicLong r1 = r0.f3704m
            long r6 = r1.get()
            long r8 = r0.f3698g
            int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r1 < 0) goto L43
            int r1 = r0.f3696e
            long r6 = (long) r1
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 < 0) goto L43
        L41:
            r1 = r2
            goto L44
        L43:
            r1 = r3
        L44:
            if (r1 == 0) goto L57
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.f3705n
            boolean r1 = r1.compareAndSet(r3, r2)
            if (r1 == 0) goto L57
            r0.f3703l = r11
            java.util.concurrent.atomic.AtomicLong r11 = r0.f3704m
            r1 = 0
            r11.set(r1)
        L57:
            android.os.Handler r11 = r0.f3699h
            if (r11 != 0) goto L5f
            r0.m2688c()
            goto L71
        L5f:
            java.util.concurrent.atomic.AtomicBoolean r11 = r0.f3705n
            boolean r11 = r11.get()
            if (r11 == 0) goto L71
            android.os.Handler r11 = r0.f3699h
            r12 = 3
            android.os.Message r11 = r11.obtainMessage(r12)
            r0.m2696k(r11)
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.RunnableC1234qf.m2635k(long):void");
    }

    /* renamed from: l */
    public void m2636l(Exception exc) {
        if (this.f3555s) {
            return;
        }
        int i = this.f3545i;
        int i2 = i - 1;
        this.f3545i = i2;
        if (i < 0) {
            FileDownloadLog.m1818b(this, "valid retry times is less than 0(%d) for download task(%d)", Integer.valueOf(i2), Integer.valueOf(this.f3538b.f4834a));
        }
        DownloadStatusCallback c1284sf = this.f3537a;
        int i3 = this.f3545i;
        c1284sf.f3704m.set(0L);
        Handler handler = c1284sf.f3699h;
        if (handler == null) {
            c1284sf.m2689d(exc, i3);
        } else {
            c1284sf.m2696k(handler.obtainMessage(5, i3, 0, exc));
        }
    }

    /* renamed from: m */
    public final void m2637m(long j, int i) {
        long j2 = j / i;
        int i2 = this.f3538b.f4834a;
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        long j3 = 0;
        while (i3 < i) {
            long j4 = i3 == i + (-1) ? -1L : (j3 + j2) - 1;
            ConnectionModel c1160ng = new ConnectionModel();
            c1160ng.f3326a = i2;
            c1160ng.f3327b = i3;
            c1160ng.f3328c = j3;
            c1160ng.f3329d = j3;
            c1160ng.f3330e = j4;
            arrayList.add(c1160ng);
            this.f3542f.mo2092b(c1160ng);
            j3 += j2;
            i3++;
        }
        this.f3538b.f4844k = i;
        this.f3542f.mo2106p(i2, i);
        m2628d(arrayList, j);
    }

    /* renamed from: n */
    public final void m2638n(int i, List<ConnectionModel> list) {
        if (i <= 1 || list.size() != i) {
            throw new IllegalArgumentException();
        }
        m2628d(list, this.f3538b.f4841h);
    }

    /* renamed from: o */
    public final void m2639o(long j) {
        ConnectionProfile c1184of;
        if (this.f3552p) {
            c1184of = new ConnectionProfile(this.f3538b.m3926a(), this.f3538b.m3926a(), -1L, j - this.f3538b.m3926a(), (ConnectionProfile.a) null);
        } else {
            this.f3538b.f4840g.set(0L);
            c1184of = new ConnectionProfile(0L, 0L, -1L, j, (ConnectionProfile.a) null);
        }
        ConnectionProfile c1184of2 = c1184of;
        Integer numValueOf = Integer.valueOf(this.f3538b.f4834a);
        Integer num = -1;
        FileDownloadModel fileDownloadModel = this.f3538b;
        String str = fileDownloadModel.f4835b;
        String str2 = fileDownloadModel.f4843j;
        FileDownloadHeader fileDownloadHeader = this.f3539c;
        Boolean boolValueOf = Boolean.valueOf(this.f3541e);
        String strM3929d = this.f3538b.m3929d();
        if (strM3929d == null || boolValueOf == null || num == null) {
            throw new IllegalArgumentException(FileDownloadUtils.m1955e("%s %s %B", this, strM3929d, boolValueOf));
        }
        if (numValueOf == null || str == null) {
            throw new IllegalArgumentException();
        }
        ConnectTask c1159nf = new ConnectTask(c1184of2, numValueOf.intValue(), str, str2, fileDownloadHeader, null);
        this.f3549m = new DownloadRunnable(c1159nf.f3319a, num.intValue(), c1159nf, this, boolValueOf.booleanValue(), strM3929d, null);
        FileDownloadModel fileDownloadModel2 = this.f3538b;
        fileDownloadModel2.f4844k = 1;
        this.f3542f.mo2106p(fileDownloadModel2.f4834a, 1);
        if (!this.f3555s) {
            this.f3549m.run();
        } else {
            this.f3538b.f4839f.set(-2);
            this.f3549m.m2665b();
        }
    }

    /* renamed from: p */
    public final void m2640p() throws IOException {
        try {
            ConnectionProfile c1184of = this.f3546j ? new ConnectionProfile(0L, 0L, 0L, 0L, true) : new ConnectionProfile(null);
            Integer numValueOf = Integer.valueOf(this.f3538b.f4834a);
            String str = this.f3538b.f4835b;
            String str2 = this.f3538b.f4843j;
            FileDownloadHeader fileDownloadHeader = this.f3539c;
            if (numValueOf == null || str == null) {
                throw new IllegalArgumentException();
            }
            ConnectTask c1159nf = new ConnectTask(c1184of, numValueOf.intValue(), str, str2, fileDownloadHeader, null);
            FileDownloadConnection interfaceC0983gfM2411a = c1159nf.m2411a();
            m2630f(c1159nf.f3324f, c1159nf, interfaceC0983gfM2411a);
            ((FileDownloadUrlConnection) interfaceC0983gfM2411a).m1948a();
        } catch (Throwable th) {
            if (0 != 0) {
                ((FileDownloadUrlConnection) null).m1948a();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0092, code lost:
    
        r9.f3537a.m2686a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0099, code lost:
    
        if (r9.f3555s == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009e, code lost:
    
        if (r9.f3556t == false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a1, code lost:
    
        r9.f3537a.m2691f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a7, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c1, code lost:
    
        if (r9.f3555s == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c3, code lost:
    
        r9.f3538b.m3930e((byte) -2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c8, code lost:
    
        r9.f3537a.m2686a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cf, code lost:
    
        if (r9.f3555s == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d5, code lost:
    
        if (r9.f3556t == false) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d8, code lost:
    
        r9.f3537a.m2691f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00de, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e0, code lost:
    
        r4 = r9.f3538b.f4841h;
        m2629e(r4, r9.f3538b.m3929d());
        r6 = m2625a(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00f1, code lost:
    
        if (r6 <= 0) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00f7, code lost:
    
        if (r4 != 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f9, code lost:
    
        r9.f3537a.m2686a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0100, code lost:
    
        if (r9.f3555s == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0106, code lost:
    
        if (r9.f3556t == false) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x010a, code lost:
    
        r9.f3537a.m2691f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0111, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0116, code lost:
    
        if (r9.f3555s == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0118, code lost:
    
        r9.f3538b.m3930e((byte) -2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x011d, code lost:
    
        r9.f3537a.m2686a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0124, code lost:
    
        if (r9.f3555s == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x012a, code lost:
    
        if (r9.f3556t == false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x012e, code lost:
    
        r9.f3537a.m2691f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0135, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0138, code lost:
    
        if (r6 != 1) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x013a, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x013c, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x013d, code lost:
    
        r9.f3550n = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x013f, code lost:
    
        if (r7 == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0141, code lost:
    
        m2639o(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0145, code lost:
    
        r9.f3537a.m2693h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x014c, code lost:
    
        if (r9.f3551o == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x014e, code lost:
    
        m2638n(r6, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0152, code lost:
    
        m2637m(r4, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0169, code lost:
    
        throw new java.lang.IllegalAccessException(com.huawei.hem.C1010hh.m1955e("invalid connection count %d, the connection count must be larger than 0", java.lang.Integer.valueOf(r6)));
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01a0 A[Catch: all -> 0x01d5, TryCatch #13 {all -> 0x01d5, blocks: (B:3:0x0003, B:5:0x0010, B:8:0x0019, B:21:0x0074, B:23:0x0078, B:24:0x008e, B:36:0x00a9, B:38:0x00c3, B:49:0x00e0, B:63:0x0114, B:65:0x0118, B:79:0x013d, B:81:0x0141, B:82:0x0145, B:84:0x014e, B:85:0x0152, B:86:0x0156, B:87:0x0169, B:88:0x016a, B:111:0x019a, B:113:0x01a0, B:114:0x01a5), top: B:154:0x0003, inners: #15, #13, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x01a5 A[SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.RunnableC1234qf.run():void");
    }
}
