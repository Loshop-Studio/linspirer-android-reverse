package com.huawei.hem;

import com.huawei.hem.ITaskHunter;

/* compiled from: BaseDownloadTask.java */
/* renamed from: com.huawei.hem.fe */
/* loaded from: classes.dex */
public interface BaseDownloadTask {

    /* compiled from: BaseDownloadTask.java */
    /* renamed from: com.huawei.hem.fe$a */
    public interface a {
        /* renamed from: b */
        boolean mo1803b(int i);

        /* renamed from: e */
        void mo1804e();

        /* renamed from: g */
        void mo1805g();

        /* renamed from: h */
        void mo1806h();

        /* renamed from: k */
        int mo1807k();

        /* renamed from: l */
        boolean mo1808l();

        /* renamed from: n */
        Object mo1809n();

        /* renamed from: o */
        ITaskHunter.a mo1810o();

        /* renamed from: s */
        boolean mo1811s();

        /* renamed from: t */
        BaseDownloadTask mo1812t();

        /* renamed from: u */
        boolean mo1813u();

        /* renamed from: v */
        void mo1814v();
    }

    /* compiled from: BaseDownloadTask.java */
    /* renamed from: com.huawei.hem.fe$b */
    public interface b {
    }

    /* compiled from: BaseDownloadTask.java */
    /* renamed from: com.huawei.hem.fe$c */
    public interface c {
    }

    /* renamed from: a */
    byte mo1791a();

    /* renamed from: c */
    int mo1792c();

    /* renamed from: d */
    int mo1793d();

    /* renamed from: f */
    long mo1794f();

    int getId();

    /* renamed from: i */
    FileDownloadListener mo1795i();

    /* renamed from: j */
    String mo1796j();

    /* renamed from: m */
    b mo1797m();

    /* renamed from: p */
    int mo1798p();

    boolean pause();

    /* renamed from: q */
    long mo1799q();

    /* renamed from: r */
    boolean mo1800r();

    int start();

    /* renamed from: w */
    boolean mo1801w();

    /* renamed from: x */
    BaseDownloadTask mo1802x(FileDownloadListener abstractC1158ne);
}
