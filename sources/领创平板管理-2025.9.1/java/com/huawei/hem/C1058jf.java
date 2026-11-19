package com.huawei.hem;

import android.util.SparseArray;
import com.huawei.hem.InterfaceC1033if;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: NoDatabaseImpl.java */
/* renamed from: com.huawei.hem.jf */
/* loaded from: classes.dex */
public class C1058jf implements InterfaceC1033if {

    /* renamed from: a */
    public final SparseArray<FileDownloadModel> f2948a = new SparseArray<>();

    /* renamed from: b */
    public final SparseArray<List<C1160ng>> f2949b = new SparseArray<>();

    /* compiled from: NoDatabaseImpl.java */
    /* renamed from: com.huawei.hem.jf$a */
    public class a implements InterfaceC1033if.a {
        public a() {
        }

        @Override // com.huawei.hem.InterfaceC1033if.a
        /* renamed from: a */
        public void mo2108a(FileDownloadModel fileDownloadModel) {
        }

        @Override // com.huawei.hem.InterfaceC1033if.a
        /* renamed from: c */
        public void mo2109c(FileDownloadModel fileDownloadModel) {
        }

        @Override // com.huawei.hem.InterfaceC1033if.a
        /* renamed from: d */
        public void mo2110d() {
        }

        @Override // com.huawei.hem.InterfaceC1033if.a
        /* renamed from: f */
        public void mo2111f(int i, FileDownloadModel fileDownloadModel) {
        }

        @Override // java.lang.Iterable
        public Iterator<FileDownloadModel> iterator() {
            return new b(C1058jf.this);
        }
    }

    /* compiled from: NoDatabaseImpl.java */
    /* renamed from: com.huawei.hem.jf$b */
    public class b implements Iterator<FileDownloadModel> {
        public b(C1058jf c1058jf) {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public FileDownloadModel next() {
            return null;
        }

        @Override // java.util.Iterator
        public void remove() {
        }
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: a */
    public void mo2091a(int i) {
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: b */
    public void mo2092b(C1160ng c1160ng) {
        int i = c1160ng.f3326a;
        synchronized (this.f2949b) {
            List<C1160ng> arrayList = this.f2949b.get(i);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f2949b.put(i, arrayList);
            }
            arrayList.add(c1160ng);
        }
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: c */
    public void mo2093c(int i) {
        synchronized (this.f2949b) {
            this.f2949b.remove(i);
        }
    }

    @Override // com.huawei.hem.InterfaceC1033if
    public void clear() {
        synchronized (this.f2948a) {
            this.f2948a.clear();
        }
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: d */
    public InterfaceC1033if.a mo2094d() {
        return new a();
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: e */
    public void mo2095e(int i, Throwable th) {
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: f */
    public void mo2096f(int i) {
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: g */
    public void mo2097g(int i, long j) {
        remove(i);
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: h */
    public void mo2098h(FileDownloadModel fileDownloadModel) {
        if (fileDownloadModel == null) {
            C0959fh.m1821e(this, "update but model == null!", new Object[0]);
            return;
        }
        if (mo2105o(fileDownloadModel.f4834a) == null) {
            synchronized (this.f2948a) {
                this.f2948a.put(fileDownloadModel.f4834a, fileDownloadModel);
            }
        } else {
            synchronized (this.f2948a) {
                this.f2948a.remove(fileDownloadModel.f4834a);
                this.f2948a.put(fileDownloadModel.f4834a, fileDownloadModel);
            }
        }
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: i */
    public void mo2099i(int i, Throwable th, long j) {
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: j */
    public void mo2100j(int i, String str, long j, long j2, int i2) {
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: k */
    public void mo2101k(int i, int i2, long j) {
        synchronized (this.f2949b) {
            List<C1160ng> list = this.f2949b.get(i);
            if (list == null) {
                return;
            }
            for (C1160ng c1160ng : list) {
                if (c1160ng.f3327b == i2) {
                    c1160ng.f3329d = j;
                    return;
                }
            }
        }
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: l */
    public void mo2102l(int i, long j) {
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: m */
    public void mo2103m(int i, long j, String str, String str2) {
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: n */
    public List<C1160ng> mo2104n(int i) {
        List<C1160ng> list;
        ArrayList arrayList = new ArrayList();
        synchronized (this.f2949b) {
            list = this.f2949b.get(i);
        }
        if (list != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: o */
    public FileDownloadModel mo2105o(int i) {
        FileDownloadModel fileDownloadModel;
        synchronized (this.f2948a) {
            fileDownloadModel = this.f2948a.get(i);
        }
        return fileDownloadModel;
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: p */
    public void mo2106p(int i, int i2) {
    }

    @Override // com.huawei.hem.InterfaceC1033if
    /* renamed from: q */
    public void mo2107q(int i, long j) {
    }

    @Override // com.huawei.hem.InterfaceC1033if
    public boolean remove(int i) {
        synchronized (this.f2948a) {
            this.f2948a.remove(i);
        }
        return true;
    }
}
