package com.huawei.hem;

import android.support.v7.widget.RecyclerView;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* compiled from: Cookie.java */
/* renamed from: com.huawei.hem.qj */
/* loaded from: classes.dex */
public final class C1238qj {

    /* renamed from: j */
    public static final Pattern f3562j = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: k */
    public static final Pattern f3563k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: l */
    public static final Pattern f3564l = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: m */
    public static final Pattern f3565m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* renamed from: a */
    public final String f3566a;

    /* renamed from: b */
    public final String f3567b;

    /* renamed from: c */
    public final long f3568c;

    /* renamed from: d */
    public final String f3569d;

    /* renamed from: e */
    public final String f3570e;

    /* renamed from: f */
    public final boolean f3571f;

    /* renamed from: g */
    public final boolean f3572g;

    /* renamed from: h */
    public final boolean f3573h;

    /* renamed from: i */
    public final boolean f3574i;

    public C1238qj(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f3566a = str;
        this.f3567b = str2;
        this.f3568c = j;
        this.f3569d = str3;
        this.f3570e = str4;
        this.f3571f = z;
        this.f3572g = z2;
        this.f3574i = z3;
        this.f3573h = z4;
    }

    /* renamed from: a */
    public static int m2642a(String str, int i, int i2, boolean z) {
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ':'))) == (!z)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x02e4 A[LOOP:8: B:194:0x02e1->B:196:0x02e4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0303  */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.huawei.hem.C1238qj> m2643b(com.huawei.hem.C1463zj r33, com.huawei.hem.C1438yj r34) throws java.lang.InterruptedException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 874
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1238qj.m2643b(com.huawei.hem.zj, com.huawei.hem.yj):java.util.List");
    }

    /* renamed from: c */
    public static long m2644c(String str, int i, int i2) throws NumberFormatException {
        int iM2642a = m2642a(str, i, i2, false);
        Matcher matcher = f3565m.matcher(str);
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int iIndexOf = -1;
        int i6 = -1;
        int i7 = -1;
        while (iM2642a < i2) {
            int iM2642a2 = m2642a(str, iM2642a + 1, i2, true);
            matcher.region(iM2642a, iM2642a2);
            if (i4 == -1 && matcher.usePattern(f3565m).matches()) {
                i4 = Integer.parseInt(matcher.group(1));
                i6 = Integer.parseInt(matcher.group(2));
                i7 = Integer.parseInt(matcher.group(3));
            } else if (i5 == -1 && matcher.usePattern(f3564l).matches()) {
                i5 = Integer.parseInt(matcher.group(1));
            } else if (iIndexOf == -1 && matcher.usePattern(f3563k).matches()) {
                iIndexOf = f3563k.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
            } else if (i3 == -1 && matcher.usePattern(f3562j).matches()) {
                i3 = Integer.parseInt(matcher.group(1));
            }
            iM2642a = m2642a(str, iM2642a2 + 1, i2, false);
        }
        if (i3 >= 70 && i3 <= 99) {
            i3 += 1900;
        }
        if (i3 >= 0 && i3 <= 69) {
            i3 += RecyclerView.MAX_SCROLL_DURATION;
        }
        if (i3 < 1601) {
            throw new IllegalArgumentException();
        }
        if (iIndexOf == -1) {
            throw new IllegalArgumentException();
        }
        if (i5 < 1 || i5 > 31) {
            throw new IllegalArgumentException();
        }
        if (i4 < 0 || i4 > 23) {
            throw new IllegalArgumentException();
        }
        if (i6 < 0 || i6 > 59) {
            throw new IllegalArgumentException();
        }
        if (i7 < 0 || i7 > 59) {
            throw new IllegalArgumentException();
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(C1314tk.f3822h);
        gregorianCalendar.setLenient(false);
        gregorianCalendar.set(1, i3);
        gregorianCalendar.set(2, iIndexOf - 1);
        gregorianCalendar.set(5, i5);
        gregorianCalendar.set(11, i4);
        gregorianCalendar.set(12, i6);
        gregorianCalendar.set(13, i7);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C1238qj)) {
            return false;
        }
        C1238qj c1238qj = (C1238qj) obj;
        return c1238qj.f3566a.equals(this.f3566a) && c1238qj.f3567b.equals(this.f3567b) && c1238qj.f3569d.equals(this.f3569d) && c1238qj.f3570e.equals(this.f3570e) && c1238qj.f3568c == this.f3568c && c1238qj.f3571f == this.f3571f && c1238qj.f3572g == this.f3572g && c1238qj.f3573h == this.f3573h && c1238qj.f3574i == this.f3574i;
    }

    public int hashCode() {
        int iHashCode = (this.f3570e.hashCode() + ((this.f3569d.hashCode() + ((this.f3567b.hashCode() + ((this.f3566a.hashCode() + 527) * 31)) * 31)) * 31)) * 31;
        long j = this.f3568c;
        return ((((((((iHashCode + ((int) (j ^ (j >>> 32)))) * 31) + (!this.f3571f ? 1 : 0)) * 31) + (!this.f3572g ? 1 : 0)) * 31) + (!this.f3573h ? 1 : 0)) * 31) + (!this.f3574i ? 1 : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f3566a);
        sb.append('=');
        sb.append(this.f3567b);
        if (this.f3573h) {
            if (this.f3568c == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(C1190ol.f3412a.get().format(new Date(this.f3568c)));
            }
        }
        if (!this.f3574i) {
            sb.append("; domain=");
            sb.append(this.f3569d);
        }
        sb.append("; path=");
        sb.append(this.f3570e);
        if (this.f3571f) {
            sb.append("; secure");
        }
        if (this.f3572g) {
            sb.append("; httponly");
        }
        return sb.toString();
    }
}
