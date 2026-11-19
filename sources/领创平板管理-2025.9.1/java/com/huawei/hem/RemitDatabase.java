package com.huawei.hem;

import android.database.SQLException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.SparseArray;
import com.huawei.hem.FileDownloadProperties;
import com.huawei.hem.SqliteDatabaseImpl.a;
import com.huawei.hem.FileDownloadDatabase;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.LockSupport;

/* compiled from: RemitDatabase.java */
/* renamed from: com.huawei.hem.kf */
/* loaded from: classes.dex */
public class RemitDatabase implements FileDownloadDatabase {

    /* renamed from: c */
    public Handler f3083c;

    /* renamed from: g */
    public volatile Thread f3087g;

    /* renamed from: e */
    public final List<Integer> f3085e = new ArrayList();

    /* renamed from: f */
    public AtomicInteger f3086f = new AtomicInteger();

    /* renamed from: a */
    public final NoDatabaseImpl f3081a = new NoDatabaseImpl();

    /* renamed from: b */
    public final SqliteDatabaseImpl f3082b = new SqliteDatabaseImpl();

    /* renamed from: d */
    public final long f3084d = FileDownloadProperties.b.f2783a.f2776b;

    /* compiled from: RemitDatabase.java */
    /* renamed from: com.huawei.hem.kf$a */
    public class a implements Handler.Callback {
        public a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                if (RemitDatabase.this.f3087g != null) {
                    LockSupport.unpark(RemitDatabase.this.f3087g);
                    RemitDatabase.this.f3087g = null;
                }
                return false;
            }
            try {
                RemitDatabase.this.f3086f.set(i);
                RemitDatabase.this.m2197t(i);
                RemitDatabase.this.f3085e.add(Integer.valueOf(i));
                return false;
            } finally {
                RemitDatabase.this.f3086f.set(0);
                if (RemitDatabase.this.f3087g != null) {
                    LockSupport.unpark(RemitDatabase.this.f3087g);
                    RemitDatabase.this.f3087g = null;
                }
            }
        }
    }

    public RemitDatabase() {
        HandlerThread handlerThread = new HandlerThread(FileDownloadUtils.m1962l("RemitHandoverToDB"));
        handlerThread.start();
        this.f3083c = new Handler(handlerThread.getLooper(), new a());
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: a */
    public void mo2091a(int i) {
        if (this.f3081a == null) {
            throw null;
        }
        if (!(!this.f3085e.contains(Integer.valueOf(i))) && this.f3082b == null) {
            throw null;
        }
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: b */
    public void mo2092b(ConnectionModel c1160ng) {
        this.f3081a.mo2092b(c1160ng);
        if (m2196s(c1160ng.f3326a)) {
            return;
        }
        this.f3082b.f3175a.insert("filedownloaderConnection", null, c1160ng.m2413b());
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: c */
    public void mo2093c(int i) throws SQLException {
        this.f3081a.mo2093c(i);
        if (!this.f3085e.contains(Integer.valueOf(i))) {
            return;
        }
        this.f3082b.mo2093c(i);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    public void clear() {
        NoDatabaseImpl c1058jf = this.f3081a;
        synchronized (c1058jf.f2948a) {
            c1058jf.f2948a.clear();
        }
        SqliteDatabaseImpl c1108lf = this.f3082b;
        c1108lf.f3175a.delete("filedownloader", null, null);
        c1108lf.f3175a.delete("filedownloaderConnection", null, null);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: d */
    public FileDownloadDatabase.a mo2094d() {
        SqliteDatabaseImpl c1108lf = this.f3082b;
        NoDatabaseImpl c1058jf = this.f3081a;
        SparseArray<FileDownloadModel> sparseArray = c1058jf.f2948a;
        SparseArray<List<ConnectionModel>> sparseArray2 = c1058jf.f2949b;
        if (c1108lf != null) {
            return c1108lf.new a(sparseArray, sparseArray2);
        }
        throw null;
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: e */
    public void mo2095e(int i, Throwable th) {
        if (this.f3081a == null) {
            throw null;
        }
        if (!this.f3085e.contains(Integer.valueOf(i))) {
            return;
        }
        this.f3082b.mo2095e(i, th);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: f */
    public void mo2096f(int i) {
        this.f3083c.sendEmptyMessageDelayed(i, this.f3084d);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: g */
    public void mo2097g(int i, long j) {
        this.f3081a.remove(i);
        if (!this.f3085e.contains(Integer.valueOf(i))) {
            this.f3083c.removeMessages(i);
            if (this.f3086f.get() == i) {
                this.f3087g = Thread.currentThread();
                this.f3083c.sendEmptyMessage(0);
                LockSupport.park();
                this.f3082b.remove(i);
            }
        } else {
            this.f3082b.remove(i);
        }
        this.f3085e.remove(Integer.valueOf(i));
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: h */
    public void mo2098h(FileDownloadModel fileDownloadModel) {
        this.f3081a.mo2098h(fileDownloadModel);
        if (m2196s(fileDownloadModel.f4834a)) {
            return;
        }
        this.f3082b.mo2098h(fileDownloadModel);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: i */
    public void mo2099i(int i, Throwable th, long j) throws SQLException {
        if (this.f3081a == null) {
            throw null;
        }
        if (!this.f3085e.contains(Integer.valueOf(i))) {
            m2195r(i);
        }
        this.f3082b.mo2099i(i, th, j);
        this.f3085e.remove(Integer.valueOf(i));
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: j */
    public void mo2100j(int i, String str, long j, long j2, int i2) {
        if (this.f3081a == null) {
            throw null;
        }
        if (!this.f3085e.contains(Integer.valueOf(i))) {
            return;
        }
        this.f3082b.mo2100j(i, str, j, j2, i2);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: k */
    public void mo2101k(int i, int i2, long j) {
        this.f3081a.mo2101k(i, i2, j);
        if (!this.f3085e.contains(Integer.valueOf(i))) {
            return;
        }
        this.f3082b.mo2101k(i, i2, j);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: l */
    public void mo2102l(int i, long j) {
        if (this.f3081a == null) {
            throw null;
        }
        if (!this.f3085e.contains(Integer.valueOf(i))) {
            return;
        }
        this.f3082b.mo2102l(i, j);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: m */
    public void mo2103m(int i, long j, String str, String str2) {
        if (this.f3081a == null) {
            throw null;
        }
        if (!this.f3085e.contains(Integer.valueOf(i))) {
            return;
        }
        this.f3082b.mo2103m(i, j, str, str2);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: n */
    public List<ConnectionModel> mo2104n(int i) {
        return this.f3081a.mo2104n(i);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: o */
    public FileDownloadModel mo2105o(int i) {
        return this.f3081a.mo2105o(i);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: p */
    public void mo2106p(int i, int i2) {
        if (this.f3081a == null) {
            throw null;
        }
        if (!this.f3085e.contains(Integer.valueOf(i))) {
            return;
        }
        this.f3082b.mo2106p(i, i2);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: q */
    public void mo2107q(int i, long j) throws SQLException {
        if (this.f3081a == null) {
            throw null;
        }
        if (!this.f3085e.contains(Integer.valueOf(i))) {
            m2195r(i);
        }
        this.f3082b.mo2107q(i, j);
        this.f3085e.remove(Integer.valueOf(i));
    }

    /* renamed from: r */
    public final void m2195r(int i) throws SQLException {
        this.f3083c.removeMessages(i);
        if (this.f3086f.get() != i) {
            m2197t(i);
            return;
        }
        this.f3087g = Thread.currentThread();
        this.f3083c.sendEmptyMessage(0);
        LockSupport.park();
    }

    @Override // com.huawei.hem.InterfaceC1033if
    public boolean remove(int i) {
        this.f3082b.remove(i);
        this.f3081a.remove(i);
        return true;
    }

    /* renamed from: s */
    public final boolean m2196s(int i) {
        return !this.f3085e.contains(Integer.valueOf(i));
    }

    /* renamed from: t */
    public final void m2197t(int i) throws SQLException {
        this.f3082b.mo2098h(this.f3081a.mo2105o(i));
        List<ConnectionModel> listMo2104n = this.f3081a.mo2104n(i);
        this.f3082b.mo2093c(i);
        Iterator it = ((ArrayList) listMo2104n).iterator();
        while (it.hasNext()) {
            this.f3082b.mo2092b((ConnectionModel) it.next());
        }
    }
}
