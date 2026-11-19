package com.loc;

import android.support.v7.widget.ActivityChooserView;

/* compiled from: Cgi.java */
/* renamed from: com.loc.dy */
/* loaded from: classes.dex */
public final class Cgi {

    /* renamed from: l */
    public int f5495l;

    /* renamed from: n */
    public boolean f5497n;

    /* renamed from: a */
    public int f5484a = 0;

    /* renamed from: b */
    public int f5485b = 0;

    /* renamed from: c */
    public int f5486c = 0;

    /* renamed from: d */
    public int f5487d = 0;

    /* renamed from: e */
    public long f5488e = 0;

    /* renamed from: f */
    public int f5489f = 0;

    /* renamed from: g */
    public int f5490g = 0;

    /* renamed from: h */
    public int f5491h = 0;

    /* renamed from: i */
    public int f5492i = 0;

    /* renamed from: j */
    public int f5493j = 0;

    /* renamed from: k */
    public int f5494k = -113;

    /* renamed from: m */
    public short f5496m = 0;

    /* renamed from: o */
    public int f5498o = 32767;

    /* renamed from: p */
    public int f5499p = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;

    /* renamed from: q */
    public int f5500q = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;

    /* renamed from: r */
    public boolean f5501r = true;

    /* renamed from: s */
    public int f5502s = 99;

    /* renamed from: t */
    public long f5503t = 0;

    public Cgi(int i, boolean z) {
        this.f5495l = 0;
        this.f5497n = false;
        this.f5495l = i;
        this.f5497n = z;
    }

    /* renamed from: e */
    private String m4735e() {
        int i = this.f5495l;
        return this.f5495l + "#" + this.f5484a + "#" + this.f5485b + "#0#" + m4737a();
    }

    /* renamed from: f */
    private String m4736f() {
        return this.f5495l + "#" + this.f5491h + "#" + this.f5492i + "#" + this.f5493j;
    }

    /* renamed from: a */
    public final long m4737a() {
        return this.f5495l == 5 ? this.f5488e : this.f5487d;
    }

    /* renamed from: b */
    public final String m4738b() {
        int i = this.f5495l;
        if (i != 1) {
            if (i == 2) {
                return m4736f();
            }
            if (i != 3 && i != 4 && i != 5) {
                return null;
            }
        }
        return m4735e();
    }

    /* renamed from: c */
    public final String m4739c() {
        String strM4738b = m4738b();
        if (strM4738b == null || strM4738b.length() <= 0) {
            return "";
        }
        return (this.f5501r ? 1 : 0) + "#" + strM4738b;
    }

    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final Cgi clone() {
        Cgi c1816dy = new Cgi(this.f5495l, this.f5497n);
        c1816dy.f5484a = this.f5484a;
        c1816dy.f5485b = this.f5485b;
        c1816dy.f5486c = this.f5486c;
        c1816dy.f5487d = this.f5487d;
        c1816dy.f5488e = this.f5488e;
        c1816dy.f5489f = this.f5489f;
        c1816dy.f5490g = this.f5490g;
        c1816dy.f5491h = this.f5491h;
        c1816dy.f5492i = this.f5492i;
        c1816dy.f5493j = this.f5493j;
        c1816dy.f5494k = this.f5494k;
        c1816dy.f5496m = this.f5496m;
        c1816dy.f5498o = this.f5498o;
        c1816dy.f5499p = this.f5499p;
        c1816dy.f5500q = this.f5500q;
        c1816dy.f5501r = this.f5501r;
        c1816dy.f5502s = this.f5502s;
        c1816dy.f5503t = this.f5503t;
        return c1816dy;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof Cgi)) {
            Cgi c1816dy = (Cgi) obj;
            int i = c1816dy.f5495l;
            if (i != 1) {
                return i != 2 ? i != 3 ? i != 4 ? i == 5 && this.f5495l == 5 && c1816dy.f5486c == this.f5486c && c1816dy.f5488e == this.f5488e && c1816dy.f5500q == this.f5500q : this.f5495l == 4 && c1816dy.f5486c == this.f5486c && c1816dy.f5487d == this.f5487d && c1816dy.f5485b == this.f5485b : this.f5495l == 3 && c1816dy.f5486c == this.f5486c && c1816dy.f5487d == this.f5487d && c1816dy.f5485b == this.f5485b : this.f5495l == 2 && c1816dy.f5493j == this.f5493j && c1816dy.f5492i == this.f5492i && c1816dy.f5491h == this.f5491h;
            }
            if (this.f5495l == 1 && c1816dy.f5486c == this.f5486c && c1816dy.f5487d == this.f5487d && c1816dy.f5485b == this.f5485b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode;
        int i;
        int iHashCode2 = String.valueOf(this.f5495l).hashCode();
        if (this.f5495l == 2) {
            iHashCode = String.valueOf(this.f5492i).hashCode() + String.valueOf(this.f5493j).hashCode();
            i = this.f5491h;
        } else {
            iHashCode = String.valueOf(this.f5487d).hashCode() + String.valueOf(this.f5486c).hashCode();
            i = this.f5485b;
        }
        return String.valueOf(i).hashCode() + iHashCode + iHashCode2;
    }
}
