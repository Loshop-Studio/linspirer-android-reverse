package com.huawei.hem;

import android.support.v7.widget.ActivityChooserView;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* compiled from: CacheControl.java */
/* renamed from: com.huawei.hem.jj */
/* loaded from: classes.dex */
public final class CacheControl {

    /* renamed from: a */
    public final boolean f2957a;

    /* renamed from: b */
    public final boolean f2958b;

    /* renamed from: c */
    public final int f2959c;

    /* renamed from: d */
    public final int f2960d;

    /* renamed from: e */
    public final boolean f2961e;

    /* renamed from: f */
    public final boolean f2962f;

    /* renamed from: g */
    public final boolean f2963g;

    /* renamed from: h */
    public final int f2964h;

    /* renamed from: i */
    public final int f2965i;

    /* renamed from: j */
    public final boolean f2966j;

    /* renamed from: k */
    public final boolean f2967k;

    /* renamed from: l */
    public final boolean f2968l;

    /* renamed from: m */
    @Nullable
    public String f2969m;

    /* compiled from: CacheControl.java */
    /* renamed from: com.huawei.hem.jj$a */
    public static final class a {

        /* renamed from: a */
        public boolean f2970a;

        /* renamed from: b */
        public int f2971b = -1;

        /* renamed from: c */
        public int f2972c = -1;

        /* renamed from: d */
        public int f2973d = -1;

        /* renamed from: e */
        public boolean f2974e;
    }

    static {
        a aVar = new a();
        aVar.f2970a = true;
        new CacheControl(aVar);
        a aVar2 = new a();
        aVar2.f2974e = true;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        int i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        long seconds = timeUnit.toSeconds(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        if (seconds <= 2147483647L) {
            i = (int) seconds;
        }
        aVar2.f2972c = i;
        new CacheControl(aVar2);
    }

    public CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, @Nullable String str) {
        this.f2957a = z;
        this.f2958b = z2;
        this.f2959c = i;
        this.f2960d = i2;
        this.f2961e = z3;
        this.f2962f = z4;
        this.f2963g = z5;
        this.f2964h = i3;
        this.f2965i = i4;
        this.f2966j = z6;
        this.f2967k = z7;
        this.f2968l = z8;
        this.f2969m = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0041  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.huawei.hem.CacheControl m2133a(com.huawei.hem.OkHttpHeaderList r22) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1062jj.m2133a(com.huawei.hem.yj):com.huawei.hem.jj");
    }

    public String toString() {
        String string = this.f2969m;
        if (string == null) {
            StringBuilder sb = new StringBuilder();
            if (this.f2957a) {
                sb.append("no-cache, ");
            }
            if (this.f2958b) {
                sb.append("no-store, ");
            }
            if (this.f2959c != -1) {
                sb.append("max-age=");
                sb.append(this.f2959c);
                sb.append(", ");
            }
            if (this.f2960d != -1) {
                sb.append("s-maxage=");
                sb.append(this.f2960d);
                sb.append(", ");
            }
            if (this.f2961e) {
                sb.append("private, ");
            }
            if (this.f2962f) {
                sb.append("public, ");
            }
            if (this.f2963g) {
                sb.append("must-revalidate, ");
            }
            if (this.f2964h != -1) {
                sb.append("max-stale=");
                sb.append(this.f2964h);
                sb.append(", ");
            }
            if (this.f2965i != -1) {
                sb.append("min-fresh=");
                sb.append(this.f2965i);
                sb.append(", ");
            }
            if (this.f2966j) {
                sb.append("only-if-cached, ");
            }
            if (this.f2967k) {
                sb.append("no-transform, ");
            }
            if (this.f2968l) {
                sb.append("immutable, ");
            }
            if (sb.length() == 0) {
                string = "";
            } else {
                sb.delete(sb.length() - 2, sb.length());
                string = sb.toString();
            }
            this.f2969m = string;
        }
        return string;
    }

    public CacheControl(a aVar) {
        this.f2957a = aVar.f2970a;
        this.f2958b = false;
        this.f2959c = aVar.f2971b;
        this.f2960d = -1;
        this.f2961e = false;
        this.f2962f = false;
        this.f2963g = false;
        this.f2964h = aVar.f2972c;
        this.f2965i = aVar.f2973d;
        this.f2966j = aVar.f2974e;
        this.f2967k = false;
        this.f2968l = false;
    }
}
