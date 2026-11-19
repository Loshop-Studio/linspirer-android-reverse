package com.huawei.hem;

import android.support.v7.widget.ActivityChooserView;
import android.text.TextUtils;
import com.huawei.hem.DownloadTaskHunter;
import com.huawei.hem.FileDownloadList;
import com.huawei.hem.ConnectionProfile;
import com.huawei.hem.FileDownloadTaskLauncher;
import com.huawei.hem.FileDownloader;
import com.huawei.hem.BaseDownloadTask;
import com.huawei.hem.ITaskHunter;
import java.io.File;

/* compiled from: DownloadTask.java */
/* renamed from: com.huawei.hem.he */
/* loaded from: classes.dex */
public class DownloadTask implements BaseDownloadTask, BaseDownloadTask.a, DownloadTaskHunter.a {

    /* renamed from: a */
    public final ITaskHunter f2846a;

    /* renamed from: b */
    public final ITaskHunter.a f2847b;

    /* renamed from: c */
    public int f2848c;

    /* renamed from: d */
    public final String f2849d;

    /* renamed from: e */
    public String f2850e;

    /* renamed from: f */
    public String f2851f;

    /* renamed from: g */
    public boolean f2852g;

    /* renamed from: h */
    public FileDownloadListener f2853h;

    /* renamed from: q */
    public final Object f2862q;

    /* renamed from: i */
    public int f2854i = 0;

    /* renamed from: j */
    public boolean f2855j = false;

    /* renamed from: k */
    public boolean f2856k = false;

    /* renamed from: l */
    public int f2857l = 100;

    /* renamed from: m */
    public int f2858m = 10;

    /* renamed from: n */
    public boolean f2859n = false;

    /* renamed from: o */
    public volatile int f2860o = 0;

    /* renamed from: p */
    public boolean f2861p = false;

    /* renamed from: r */
    public volatile boolean f2863r = false;

    /* compiled from: DownloadTask.java */
    /* renamed from: com.huawei.hem.he$b */
    public static final class b implements BaseDownloadTask.b {

        /* renamed from: a */
        public final DownloadTask f2864a;

        public b(DownloadTask c1007he, a aVar) {
            this.f2864a = c1007he;
            c1007he.f2861p = true;
        }
    }

    public DownloadTask(String str) {
        this.f2849d = str;
        Object obj = new Object();
        this.f2862q = obj;
        DownloadTaskHunter c1032ie = new DownloadTaskHunter(this, obj);
        this.f2846a = c1032ie;
        this.f2847b = c1032ie;
    }

    /* renamed from: A */
    public final int m1945A() {
        boolean z = true;
        if (((DownloadTaskHunter) this.f2846a).f2916d != 0) {
            LostServiceConnectedHandler c0853bf = (LostServiceConnectedHandler) FileDownloader.a.f3867a.m2791c();
            if (!c0853bf.f2302b.isEmpty() && c0853bf.f2302b.contains(this) ? true : ConnectionProfile.b.m2441d(mo1791a())) {
                throw new IllegalStateException(FileDownloadUtils.m1955e("This task is running %d, if you want to start the same task, please create a new one by FileDownloader.create", Integer.valueOf(getId())));
            }
            StringBuilder sbM1765j = CompilerOutline.m1765j("This task is dirty to restart, If you want to reuse this task, please invoke #reuse method manually and retry to restart again.");
            sbM1765j.append(this.f2846a.toString());
            throw new IllegalStateException(sbM1765j.toString());
        }
        if (!(this.f2860o != 0)) {
            FileDownloadListener abstractC1158ne = this.f2853h;
            this.f2860o = abstractC1158ne != null ? abstractC1158ne.hashCode() : hashCode();
        }
        DownloadTaskHunter c1032ie = (DownloadTaskHunter) this.f2846a;
        synchronized (c1032ie.f2914b) {
            if (c1032ie.f2916d != 0) {
                FileDownloadLog.m1821e(c1032ie, "High concurrent cause, this task %d will not input to launch pool, because of the status isn't idle : %d", Integer.valueOf(c1032ie.m2085a()), Byte.valueOf(c1032ie.f2916d));
            } else {
                c1032ie.f2916d = (byte) 10;
                DownloadTask c1007he = (DownloadTask) c1032ie.f2915c;
                if (c1007he == null) {
                    throw null;
                }
                try {
                    c1032ie.m2088d();
                } catch (Throwable th) {
                    FileDownloadList.b.f3261a.m2367a(c1007he);
                    FileDownloadList.b.f3261a.m2372f(c1007he, c1032ie.m2089e(th));
                    z = false;
                }
                if (z) {
                    FileDownloadTaskLauncher c1308te = FileDownloadTaskLauncher.a.f3790a;
                    synchronized (c1308te) {
                        c1308te.f3789a.f3791a.execute(new FileDownloadTaskLauncher.c(c1032ie));
                    }
                }
            }
        }
        return getId();
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: a */
    public byte mo1791a() {
        return ((DownloadTaskHunter) this.f2846a).f2916d;
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: b */
    public boolean mo1803b(int i) {
        return getId() == i;
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: c */
    public int mo1792c() {
        ITaskHunter interfaceC1458ze = this.f2846a;
        return ((DownloadTaskHunter) interfaceC1458ze).f2920h > 2147483647L ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) ((DownloadTaskHunter) interfaceC1458ze).f2920h;
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: d */
    public int mo1793d() {
        ITaskHunter interfaceC1458ze = this.f2846a;
        return ((DownloadTaskHunter) interfaceC1458ze).f2919g > 2147483647L ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) ((DownloadTaskHunter) interfaceC1458ze).f2919g;
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: e */
    public void mo1804e() {
        ((DownloadTaskHunter) this.f2846a).f2916d = (byte) 0;
        if (FileDownloadList.b.f3261a.m2371e(this)) {
            this.f2863r = false;
        }
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: f */
    public long mo1794f() {
        return ((DownloadTaskHunter) this.f2846a).f2920h;
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: g */
    public void mo1805g() {
        FileDownloadListener abstractC1158ne = this.f2853h;
        this.f2860o = abstractC1158ne != null ? abstractC1158ne.hashCode() : hashCode();
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    public int getId() {
        int i = this.f2848c;
        if (i != 0) {
            return i;
        }
        if (TextUtils.isEmpty(this.f2850e) || TextUtils.isEmpty(this.f2849d)) {
            return 0;
        }
        int iM1958h = FileDownloadUtils.m1958h(this.f2849d, this.f2850e, this.f2852g);
        this.f2848c = iM1958h;
        return iM1958h;
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: h */
    public void mo1806h() {
        m1945A();
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: i */
    public FileDownloadListener mo1795i() {
        return this.f2853h;
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: j */
    public String mo1796j() {
        return this.f2850e;
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: k */
    public int mo1807k() {
        return this.f2860o;
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: l */
    public boolean mo1808l() {
        return this.f2863r;
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: m */
    public BaseDownloadTask.b mo1797m() {
        return new b(this, null);
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: n */
    public Object mo1809n() {
        return this.f2862q;
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: o */
    public ITaskHunter.a mo1810o() {
        return this.f2847b;
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: p */
    public int mo1798p() {
        return this.f2857l;
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    public boolean pause() {
        boolean zM2087c;
        synchronized (this.f2862q) {
            zM2087c = ((DownloadTaskHunter) this.f2846a).m2087c();
        }
        return zM2087c;
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: q */
    public long mo1799q() {
        return ((DownloadTaskHunter) this.f2846a).f2919g;
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: r */
    public boolean mo1800r() {
        return this.f2860o != 0;
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: s */
    public boolean mo1811s() {
        return ConnectionProfile.b.m2442e(mo1791a());
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    public int start() {
        if (this.f2861p) {
            throw new IllegalStateException("If you start the task manually, it means this task doesn't belong to a queue, so you must not invoke BaseDownloadTask#ready() or InQueueTask#enqueue() before you start() this method. For detail: If this task doesn't belong to a queue, what is just an isolated task, you just need to invoke BaseDownloadTask#start() to start this task, that's all. In other words, If this task doesn't belong to a queue, you must not invoke BaseDownloadTask#ready() method or InQueueTask#enqueue() method before invoke BaseDownloadTask#start(), If you do that and if there is the same listener object to start a queue in another thread, this task may be assembled by the queue, in that case, when you invoke BaseDownloadTask#start() manually to start this task or this task is started by the queue, there is an exception buried in there, because this task object is started two times without declare BaseDownloadTask#reuse() : 1. you invoke BaseDownloadTask#start() manually;  2. the queue start this task automatically.");
        }
        return m1945A();
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: t */
    public BaseDownloadTask mo1812t() {
        return this;
    }

    public String toString() {
        return FileDownloadUtils.m1955e("%d@%s", Integer.valueOf(getId()), super.toString());
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: u */
    public boolean mo1813u() {
        return false;
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: v */
    public void mo1814v() {
        this.f2863r = true;
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: w */
    public boolean mo1801w() {
        return this.f2855j;
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: x */
    public BaseDownloadTask mo1802x(FileDownloadListener abstractC1158ne) {
        this.f2853h = abstractC1158ne;
        return this;
    }

    /* renamed from: y */
    public boolean m1946y() {
        return ((DownloadTaskHunter) this.f2846a).f2922j;
    }

    /* renamed from: z */
    public BaseDownloadTask m1947z(String str, boolean z) {
        this.f2850e = str;
        this.f2852g = z;
        if (z) {
            this.f2851f = null;
        } else {
            this.f2851f = new File(str).getName();
        }
        return this;
    }
}
