package com.huawei.hem;

import com.alibaba.sdk.android.tbrest.utils.Base64;
import java.util.AbstractList;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: Options.java */
/* renamed from: com.huawei.hem.tn */
/* loaded from: classes.dex */
public final class C1317tn extends AbstractList<C1091kn> implements RandomAccess {

    /* renamed from: a */
    public final C1091kn[] f3829a;

    /* renamed from: b */
    public final int[] f3830b;

    public C1317tn(C1091kn[] c1091knArr, int[] iArr) {
        this.f3829a = c1091knArr;
        this.f3830b = iArr;
    }

    /* renamed from: b */
    public static void m2776b(long j, C1016hn c1016hn, int i, List<C1091kn> list, int i2, int i3, List<Integer> list2) {
        int iIntValue;
        int i4;
        int i5;
        int i6;
        int i7;
        C1016hn c1016hn2;
        if (i2 >= i3) {
            throw new AssertionError();
        }
        for (int i8 = i2; i8 < i3; i8++) {
            if (list.get(i8).size() < i) {
                throw new AssertionError();
            }
        }
        C1091kn c1091kn = list.get(i2);
        C1091kn c1091kn2 = list.get(i3 - 1);
        if (i == c1091kn.size()) {
            int i9 = i2 + 1;
            i4 = i9;
            iIntValue = list2.get(i2).intValue();
            c1091kn = list.get(i9);
        } else {
            iIntValue = -1;
            i4 = i2;
        }
        long j2 = 4;
        if (c1091kn.getByte(i) == c1091kn2.getByte(i)) {
            int i10 = 0;
            int iMin = Math.min(c1091kn.size(), c1091kn2.size());
            for (int i11 = i; i11 < iMin && c1091kn.getByte(i11) == c1091kn2.getByte(i11); i11++) {
                i10++;
            }
            long j3 = 1 + j + ((int) (c1016hn.f2884b / 4)) + 2 + i10;
            c1016hn.m1991U(-i10);
            c1016hn.m1991U(iIntValue);
            int i12 = i;
            while (true) {
                i5 = i + i10;
                if (i12 >= i5) {
                    break;
                }
                c1016hn.m1991U(c1091kn.getByte(i12) & Base64.EQUALS_SIGN_ENC);
                i12++;
            }
            if (i4 + 1 == i3) {
                if (i5 != list.get(i4).size()) {
                    throw new AssertionError();
                }
                c1016hn.m1991U(list2.get(i4).intValue());
                return;
            } else {
                C1016hn c1016hn3 = new C1016hn();
                c1016hn.m1991U((int) ((((int) (c1016hn3.f2884b / 4)) + j3) * (-1)));
                m2776b(j3, c1016hn3, i5, list, i4, i3, list2);
                c1016hn.mo1619p(c1016hn3, c1016hn3.f2884b);
                return;
            }
        }
        int i13 = 1;
        for (int i14 = i4 + 1; i14 < i3; i14++) {
            if (list.get(i14 - 1).getByte(i) != list.get(i14).getByte(i)) {
                i13++;
            }
        }
        long j4 = j + ((int) (c1016hn.f2884b / 4)) + 2 + (i13 * 2);
        c1016hn.m1991U(i13);
        c1016hn.m1991U(iIntValue);
        for (int i15 = i4; i15 < i3; i15++) {
            byte b = list.get(i15).getByte(i);
            if (i15 == i4 || b != list.get(i15 - 1).getByte(i)) {
                c1016hn.m1991U(b & Base64.EQUALS_SIGN_ENC);
            }
        }
        C1016hn c1016hn4 = new C1016hn();
        int i16 = i4;
        while (i16 < i3) {
            byte b2 = list.get(i16).getByte(i);
            int i17 = i16 + 1;
            int i18 = i17;
            while (true) {
                if (i18 >= i3) {
                    i6 = i3;
                    break;
                } else {
                    if (b2 != list.get(i18).getByte(i)) {
                        i6 = i18;
                        break;
                    }
                    i18++;
                }
            }
            if (i17 == i6 && i + 1 == list.get(i16).size()) {
                c1016hn.m1991U(list2.get(i16).intValue());
                i7 = i6;
                c1016hn2 = c1016hn4;
            } else {
                c1016hn.m1991U((int) ((((int) (c1016hn4.f2884b / j2)) + j4) * (-1)));
                i7 = i6;
                c1016hn2 = c1016hn4;
                m2776b(j4, c1016hn4, i + 1, list, i16, i6, list2);
            }
            c1016hn4 = c1016hn2;
            i16 = i7;
            j2 = 4;
        }
        C1016hn c1016hn5 = c1016hn4;
        c1016hn.mo1619p(c1016hn5, c1016hn5.f2884b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00bc, code lost:
    
        continue;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.huawei.hem.C1317tn m2777e(com.huawei.hem.C1091kn... r10) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1317tn.m2777e(com.huawei.hem.kn[]):com.huawei.hem.tn");
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        return this.f3829a[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3829a.length;
    }
}
