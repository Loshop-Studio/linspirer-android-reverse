package com.huawei.hem;

import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.List;

/* compiled from: FileDownloadDatabase.java */
/* renamed from: com.huawei.hem.if */
/* loaded from: classes.dex */
public interface InterfaceC1033if {

    /* compiled from: FileDownloadDatabase.java */
    /* renamed from: com.huawei.hem.if$a */
    public interface a extends Iterable<FileDownloadModel> {
        /* renamed from: a */
        void mo2108a(FileDownloadModel fileDownloadModel);

        /* renamed from: c */
        void mo2109c(FileDownloadModel fileDownloadModel);

        /* renamed from: d */
        void mo2110d();

        /* renamed from: f */
        void mo2111f(int i, FileDownloadModel fileDownloadModel);
    }

    /* renamed from: a */
    void mo2091a(int i);

    /* renamed from: b */
    void mo2092b(C1160ng c1160ng);

    /* renamed from: c */
    void mo2093c(int i);

    void clear();

    /* renamed from: d */
    a mo2094d();

    /* renamed from: e */
    void mo2095e(int i, Throwable th);

    /* renamed from: f */
    void mo2096f(int i);

    /* renamed from: g */
    void mo2097g(int i, long j);

    /* renamed from: h */
    void mo2098h(FileDownloadModel fileDownloadModel);

    /* renamed from: i */
    void mo2099i(int i, Throwable th, long j);

    /* renamed from: j */
    void mo2100j(int i, String str, long j, long j2, int i2);

    /* renamed from: k */
    void mo2101k(int i, int i2, long j);

    /* renamed from: l */
    void mo2102l(int i, long j);

    /* renamed from: m */
    void mo2103m(int i, long j, String str, String str2);

    /* renamed from: n */
    List<C1160ng> mo2104n(int i);

    /* renamed from: o */
    FileDownloadModel mo2105o(int i);

    /* renamed from: p */
    void mo2106p(int i, int i2);

    /* renamed from: q */
    void mo2107q(int i, long j);

    boolean remove(int i);
}
