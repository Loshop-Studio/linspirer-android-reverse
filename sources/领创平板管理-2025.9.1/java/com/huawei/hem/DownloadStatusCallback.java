package com.huawei.hem;

import android.database.sqlite.SQLiteFullException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.StatFs;
import android.support.v4.media.session.PlaybackStateCompat;
import com.huawei.hem.FileDownloadProperties;
import com.huawei.hem.MessageSnapshotFlow;
import com.huawei.hem.CustomComponentHolder;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.message.SmallMessageSnapshot;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.LockSupport;

/* compiled from: DownloadStatusCallback.java */
/* renamed from: com.huawei.hem.sf */
/* loaded from: classes.dex */
public class DownloadStatusCallback implements Handler.Callback {

    /* renamed from: a */
    public final FileDownloadModel f3692a;

    /* renamed from: c */
    public final a f3694c;

    /* renamed from: d */
    public final int f3695d;

    /* renamed from: e */
    public final int f3696e;

    /* renamed from: f */
    public final int f3697f;

    /* renamed from: g */
    public long f3698g;

    /* renamed from: h */
    public Handler f3699h;

    /* renamed from: i */
    public HandlerThread f3700i;

    /* renamed from: k */
    public volatile Thread f3702k;

    /* renamed from: j */
    public volatile boolean f3701j = false;

    /* renamed from: l */
    public volatile long f3703l = 0;

    /* renamed from: m */
    public final AtomicLong f3704m = new AtomicLong();

    /* renamed from: n */
    public final AtomicBoolean f3705n = new AtomicBoolean(false);

    /* renamed from: o */
    public final AtomicBoolean f3706o = new AtomicBoolean(false);

    /* renamed from: p */
    public final AtomicBoolean f3707p = new AtomicBoolean(true);

    /* renamed from: b */
    public final FileDownloadDatabase f3693b = CustomComponentHolder.a.f3463a.m2480b();

    /* compiled from: DownloadStatusCallback.java */
    /* renamed from: com.huawei.hem.sf$a */
    public static class a {

        /* renamed from: a */
        public boolean f3708a;

        /* renamed from: b */
        public Exception f3709b;

        /* renamed from: c */
        public int f3710c;
    }

    public DownloadStatusCallback(FileDownloadModel fileDownloadModel, int i, int i2, int i3) {
        this.f3692a = fileDownloadModel;
        this.f3696e = i2 < 5 ? 5 : i2;
        this.f3697f = i3;
        this.f3694c = new a();
        this.f3695d = i;
    }

    /* renamed from: a */
    public void m2686a() {
        Handler handler = this.f3699h;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f3700i.quit();
            this.f3702k = Thread.currentThread();
            while (this.f3701j) {
                LockSupport.parkNanos(TimeUnit.MILLISECONDS.toNanos(100L));
            }
            this.f3702k = null;
        }
    }

    /* renamed from: b */
    public final Exception m2687b(Exception exc) {
        long length;
        String strM3929d = this.f3692a.m3929d();
        if ((!(this.f3692a.f4841h == -1) && !FileDownloadProperties.b.f2783a.f2780f) || !(exc instanceof IOException) || !new File(strM3929d).exists()) {
            return exc;
        }
        long availableBytes = new StatFs(strM3929d).getAvailableBytes();
        if (availableBytes > PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            return exc;
        }
        File file = new File(strM3929d);
        if (file.exists()) {
            length = file.length();
        } else {
            FileDownloadLog.m1820d(6, this, exc, "Exception with: free space isn't enough, and the target file not exist.", new Object[0]);
            length = 0;
        }
        return new FileDownloadOutOfSpaceException(availableBytes, PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM, length, exc);
    }

    /* renamed from: c */
    public final void m2688c() {
        long jM3926a = this.f3692a.m3926a();
        FileDownloadModel fileDownloadModel = this.f3692a;
        if (jM3926a == fileDownloadModel.f4841h) {
            this.f3693b.mo2102l(fileDownloadModel.f4834a, fileDownloadModel.m3926a());
            return;
        }
        if (this.f3706o.compareAndSet(true, false)) {
            this.f3692a.f4839f.set(3);
        }
        if (this.f3705n.compareAndSet(true, false)) {
            m2695j((byte) 3);
        }
    }

    /* renamed from: d */
    public final void m2689d(Exception exc, int i) {
        Exception excM2687b = m2687b(exc);
        a aVar = this.f3694c;
        aVar.f3709b = excM2687b;
        aVar.f3710c = this.f3695d - i;
        this.f3692a.f4839f.set(5);
        this.f3692a.f4842i = excM2687b.toString();
        this.f3693b.mo2095e(this.f3692a.f4834a, excM2687b);
        m2695j((byte) 5);
    }

    /* renamed from: e */
    public final void m2690e(SQLiteFullException sQLiteFullException) {
        FileDownloadModel fileDownloadModel = this.f3692a;
        int i = fileDownloadModel.f4834a;
        fileDownloadModel.f4842i = sQLiteFullException.toString();
        this.f3692a.f4839f.set(-1);
        this.f3693b.remove(i);
        this.f3693b.mo2093c(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0055 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2691f() {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1284sf.m2691f():void");
    }

    /* renamed from: g */
    public void m2692g(Exception exc) {
        Exception exc2;
        Exception excM2687b = m2687b(exc);
        if (excM2687b instanceof SQLiteFullException) {
            m2690e((SQLiteFullException) excM2687b);
            exc2 = excM2687b;
        } else {
            try {
                this.f3692a.f4839f.set(-1);
                this.f3692a.f4842i = exc.toString();
                this.f3693b.mo2099i(this.f3692a.f4834a, excM2687b, this.f3692a.m3926a());
                exc2 = excM2687b;
            } catch (SQLiteFullException e) {
                SQLiteFullException sQLiteFullException = e;
                m2690e(sQLiteFullException);
                exc2 = sQLiteFullException;
            }
        }
        this.f3694c.f3709b = exc2;
        m2695j((byte) -1);
    }

    /* renamed from: h */
    public void m2693h() {
        HandlerThread handlerThread = new HandlerThread("source-status-callback");
        this.f3700i = handlerThread;
        handlerThread.start();
        this.f3699h = new Handler(this.f3700i.getLooper(), this);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0020 A[DONT_GENERATE] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r5) {
        /*
            r4 = this;
            r0 = 1
            r4.f3701j = r0
            int r1 = r5.what
            r2 = 3
            r3 = 0
            if (r1 == r2) goto L17
            r2 = 5
            if (r1 == r2) goto Ld
            goto L1a
        Ld:
            java.lang.Object r1 = r5.obj     // Catch: java.lang.Throwable -> L26
            java.lang.Exception r1 = (java.lang.Exception) r1     // Catch: java.lang.Throwable -> L26
            int r5 = r5.arg1     // Catch: java.lang.Throwable -> L26
            r4.m2689d(r1, r5)     // Catch: java.lang.Throwable -> L26
            goto L1a
        L17:
            r4.m2688c()     // Catch: java.lang.Throwable -> L26
        L1a:
            r4.f3701j = r3
            java.lang.Thread r5 = r4.f3702k
            if (r5 == 0) goto L25
            java.lang.Thread r5 = r4.f3702k
            java.util.concurrent.locks.LockSupport.unpark(r5)
        L25:
            return r0
        L26:
            r5 = move-exception
            r4.f3701j = r3
            java.lang.Thread r0 = r4.f3702k
            if (r0 == 0) goto L32
            java.lang.Thread r0 = r4.f3702k
            java.util.concurrent.locks.LockSupport.unpark(r0)
        L32:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1284sf.handleMessage(android.os.Message):boolean");
    }

    /* renamed from: i */
    public void m2694i() {
        this.f3692a.f4839f.set(-2);
        FileDownloadDatabase interfaceC1033if = this.f3693b;
        FileDownloadModel fileDownloadModel = this.f3692a;
        interfaceC1033if.mo2107q(fileDownloadModel.f4834a, fileDownloadModel.m3926a());
        m2695j((byte) -2);
    }

    /* renamed from: j */
    public final void m2695j(byte b) {
        MessageSnapshot completedSnapshot;
        MessageSnapshot errorMessageSnapshot;
        if (b == -2) {
            return;
        }
        MessageSnapshotFlow c1059jg = MessageSnapshotFlow.a.f2953a;
        FileDownloadModel fileDownloadModel = this.f3692a;
        a aVar = this.f3694c;
        int i = fileDownloadModel.f4834a;
        if (b == -4) {
            throw new IllegalStateException(FileDownloadUtils.m1955e("please use #catchWarn instead %d", Integer.valueOf(i)));
        }
        if (b != -3) {
            if (b == -1) {
                errorMessageSnapshot = fileDownloadModel.f4845l ? new LargeMessageSnapshot.ErrorMessageSnapshot(i, fileDownloadModel.m3926a(), aVar.f3709b) : new SmallMessageSnapshot.ErrorMessageSnapshot(i, (int) fileDownloadModel.m3926a(), aVar.f3709b);
            } else if (b == 1) {
                completedSnapshot = fileDownloadModel.f4845l ? new LargeMessageSnapshot.PendingMessageSnapshot(i, fileDownloadModel.m3926a(), fileDownloadModel.f4841h) : new SmallMessageSnapshot.PendingMessageSnapshot(i, (int) fileDownloadModel.m3926a(), (int) fileDownloadModel.f4841h);
            } else if (b == 2) {
                String str = fileDownloadModel.f4837d ? fileDownloadModel.f4838e : null;
                completedSnapshot = fileDownloadModel.f4845l ? new LargeMessageSnapshot.ConnectedMessageSnapshot(i, aVar.f3708a, fileDownloadModel.f4841h, fileDownloadModel.f4843j, str) : new SmallMessageSnapshot.ConnectedMessageSnapshot(i, aVar.f3708a, (int) fileDownloadModel.f4841h, fileDownloadModel.f4843j, str);
            } else if (b == 3) {
                completedSnapshot = fileDownloadModel.f4845l ? new LargeMessageSnapshot.ProgressMessageSnapshot(i, fileDownloadModel.m3926a()) : new SmallMessageSnapshot.ProgressMessageSnapshot(i, (int) fileDownloadModel.m3926a());
            } else if (b == 5) {
                errorMessageSnapshot = fileDownloadModel.f4845l ? new LargeMessageSnapshot.RetryMessageSnapshot(i, fileDownloadModel.m3926a(), aVar.f3709b, aVar.f3710c) : new SmallMessageSnapshot.RetryMessageSnapshot(i, (int) fileDownloadModel.m3926a(), aVar.f3709b, aVar.f3710c);
            } else if (b != 6) {
                String strM1955e = FileDownloadUtils.m1955e("it can't takes a snapshot for the task(%s) when its status is %d,", fileDownloadModel, Byte.valueOf(b));
                FileDownloadLog.m1821e(MessageSnapshotTaker.class, "it can't takes a snapshot for the task(%s) when its status is %d,", fileDownloadModel, Byte.valueOf(b));
                IllegalStateException illegalStateException = aVar.f3709b != null ? new IllegalStateException(strM1955e, aVar.f3709b) : new IllegalStateException(strM1955e);
                completedSnapshot = fileDownloadModel.f4845l ? new LargeMessageSnapshot.ErrorMessageSnapshot(i, fileDownloadModel.m3926a(), illegalStateException) : new SmallMessageSnapshot.ErrorMessageSnapshot(i, (int) fileDownloadModel.m3926a(), illegalStateException);
            } else {
                completedSnapshot = new MessageSnapshot.StartedMessageSnapshot(i);
            }
            completedSnapshot = errorMessageSnapshot;
        } else {
            completedSnapshot = fileDownloadModel.f4845l ? new LargeMessageSnapshot.CompletedSnapshot(i, false, fileDownloadModel.f4841h) : new SmallMessageSnapshot.CompletedSnapshot(i, false, (int) fileDownloadModel.f4841h);
        }
        c1059jg.m2132a(completedSnapshot);
    }

    /* renamed from: k */
    public final synchronized void m2696k(Message message) {
        if (this.f3700i.isAlive()) {
            try {
                this.f3699h.sendMessage(message);
            } catch (IllegalStateException e) {
                if (this.f3700i.isAlive()) {
                    throw e;
                }
            }
        }
    }
}
