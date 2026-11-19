package com.huawei.hem;

import android.support.v7.widget.ActivityChooserView;
import android.text.TextUtils;
import com.huawei.hem.C1032ie;
import com.huawei.hem.C1133me;
import com.huawei.hem.C1184of;
import com.huawei.hem.C1308te;
import com.huawei.hem.C1333ue;
import com.huawei.hem.InterfaceC0956fe;
import com.huawei.hem.InterfaceC1458ze;
import java.io.File;

/* compiled from: DownloadTask.java */
/* renamed from: com.huawei.hem.he */
/* loaded from: classes.dex */
public class C1007he implements InterfaceC0956fe, InterfaceC0956fe.a, C1032ie.a {

    /* renamed from: a */
    public final InterfaceC1458ze f2846a;

    /* renamed from: b */
    public final InterfaceC1458ze.a f2847b;

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
    public AbstractC1158ne f2853h;

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
    public static final class b implements InterfaceC0956fe.b {

        /* renamed from: a */
        public final C1007he f2864a;

        public b(C1007he c1007he, a aVar) {
            this.f2864a = c1007he;
            c1007he.f2861p = true;
        }
    }

    public C1007he(String str) {
        this.f2849d = str;
        Object obj = new Object();
        this.f2862q = obj;
        C1032ie c1032ie = new C1032ie(this, obj);
        this.f2846a = c1032ie;
        this.f2847b = c1032ie;
    }

    /* renamed from: A */
    public final int m1945A() {
        boolean z = true;
        if (((C1032ie) this.f2846a).f2916d != 0) {
            C0853bf c0853bf = (C0853bf) C1333ue.a.f3867a.m2791c();
            if (!c0853bf.f2302b.isEmpty() && c0853bf.f2302b.contains(this) ? true : C1184of.b.m2441d(mo1791a())) {
                throw new IllegalStateException(C1010hh.m1955e("This task is running %d, if you want to start the same task, please create a new one by FileDownloader.create", Integer.valueOf(getId())));
            }
            StringBuilder sbM1765j = C0948f6.m1765j("This task is dirty to restart, If you want to reuse this task, please invoke #reuse method manually and retry to restart again.");
            sbM1765j.append(this.f2846a.toString());
            throw new IllegalStateException(sbM1765j.toString());
        }
        if (!(this.f2860o != 0)) {
            AbstractC1158ne abstractC1158ne = this.f2853h;
            this.f2860o = abstractC1158ne != null ? abstractC1158ne.hashCode() : hashCode();
        }
        C1032ie c1032ie = (C1032ie) this.f2846a;
        synchronized (c1032ie.f2914b) {
            if (c1032ie.f2916d != 0) {
                C0959fh.m1821e(c1032ie, "High concurrent cause, this task %d will not input to launch pool, because of the status isn't idle : %d", Integer.valueOf(c1032ie.m2085a()), Byte.valueOf(c1032ie.f2916d));
            } else {
                c1032ie.f2916d = (byte) 10;
                C1007he c1007he = (C1007he) c1032ie.f2915c;
                if (c1007he == null) {
                    throw null;
                }
                try {
                    c1032ie.m2088d();
                } catch (Throwable th) {
                    C1133me.b.f3261a.m2367a(c1007he);
                    C1133me.b.f3261a.m2372f(c1007he, c1032ie.m2089e(th));
                    z = false;
                }
                if (z) {
                    C1308te c1308te = C1308te.a.f3790a;
                    synchronized (c1308te) {
                        c1308te.f3789a.f3791a.execute(new C1308te.c(c1032ie));
                    }
                }
            }
        }
        return getId();
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: a */
    public byte mo1791a() {
        return ((C1032ie) this.f2846a).f2916d;
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: b */
    public boolean mo1803b(int i) {
        return getId() == i;
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: c */
    public int mo1792c() {
        InterfaceC1458ze interfaceC1458ze = this.f2846a;
        return ((C1032ie) interfaceC1458ze).f2920h > 2147483647L ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) ((C1032ie) interfaceC1458ze).f2920h;
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: d */
    public int mo1793d() {
        InterfaceC1458ze interfaceC1458ze = this.f2846a;
        return ((C1032ie) interfaceC1458ze).f2919g > 2147483647L ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) ((C1032ie) interfaceC1458ze).f2919g;
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: e */
    public void mo1804e() {
        ((C1032ie) this.f2846a).f2916d = (byte) 0;
        if (C1133me.b.f3261a.m2371e(this)) {
            this.f2863r = false;
        }
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: f */
    public long mo1794f() {
        return ((C1032ie) this.f2846a).f2920h;
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: g */
    public void mo1805g() {
        AbstractC1158ne abstractC1158ne = this.f2853h;
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
        int iM1958h = C1010hh.m1958h(this.f2849d, this.f2850e, this.f2852g);
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
    public AbstractC1158ne mo1795i() {
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
    public InterfaceC0956fe.b mo1797m() {
        return new b(this, null);
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: n */
    public Object mo1809n() {
        return this.f2862q;
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: o */
    public InterfaceC1458ze.a mo1810o() {
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
            zM2087c = ((C1032ie) this.f2846a).m2087c();
        }
        return zM2087c;
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: q */
    public long mo1799q() {
        return ((C1032ie) this.f2846a).f2919g;
    }

    @Override // com.huawei.hem.InterfaceC0956fe
    /* renamed from: r */
    public boolean mo1800r() {
        return this.f2860o != 0;
    }

    @Override // com.huawei.hem.InterfaceC0956fe.a
    /* renamed from: s */
    public boolean mo1811s() {
        return C1184of.b.m2442e(mo1791a());
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
    public InterfaceC0956fe mo1812t() {
        return this;
    }

    public String toString() {
        return C1010hh.m1955e("%d@%s", Integer.valueOf(getId()), super.toString());
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
    public InterfaceC0956fe mo1802x(AbstractC1158ne abstractC1158ne) {
        this.f2853h = abstractC1158ne;
        return this;
    }

    /* renamed from: y */
    public boolean m1946y() {
        return ((C1032ie) this.f2846a).f2922j;
    }

    /* renamed from: z */
    public InterfaceC0956fe m1947z(String str, boolean z) {
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
