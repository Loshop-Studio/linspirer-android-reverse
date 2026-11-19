package com.huawei.hem;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: Headers.java */
/* renamed from: com.huawei.hem.yj */
/* loaded from: classes.dex */
public final class C1438yj {

    /* renamed from: a */
    public final String[] f4229a;

    /* compiled from: Headers.java */
    /* renamed from: com.huawei.hem.yj$a */
    public static final class a {

        /* renamed from: a */
        public final List<String> f4230a = new ArrayList(20);

        /* renamed from: a */
        public a m3115a(String str, String str2) {
            this.f4230a.add(str);
            this.f4230a.add(str2.trim());
            return this;
        }

        /* renamed from: b */
        public a m3116b(String str) {
            int i = 0;
            while (i < this.f4230a.size()) {
                if (str.equalsIgnoreCase(this.f4230a.get(i))) {
                    this.f4230a.remove(i);
                    this.f4230a.remove(i);
                    i -= 2;
                }
                i += 2;
            }
            return this;
        }
    }

    public C1438yj(a aVar) {
        List<String> list = aVar.f4230a;
        this.f4229a = (String[]) list.toArray(new String[list.size()]);
    }

    /* renamed from: a */
    public static void m3107a(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (str.isEmpty()) {
            throw new IllegalArgumentException("name is empty");
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt <= ' ' || cCharAt >= 127) {
                throw new IllegalArgumentException(C1314tk.m2756k("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i), str));
            }
        }
    }

    /* renamed from: b */
    public static void m3108b(String str, String str2) {
        if (str == null) {
            throw new NullPointerException(C0948f6.m1761f("value for name ", str2, " == null"));
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt <= 31 && cCharAt != '\t') || cCharAt >= 127) {
                throw new IllegalArgumentException(C1314tk.m2756k("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(cCharAt), Integer.valueOf(i), str2, str));
            }
        }
    }

    /* renamed from: f */
    public static C1438yj m3109f(String... strArr) {
        if (strArr.length % 2 != 0) {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        String[] strArr2 = (String[]) strArr.clone();
        for (int i = 0; i < strArr2.length; i++) {
            if (strArr2[i] == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            strArr2[i] = strArr2[i].trim();
        }
        for (int i2 = 0; i2 < strArr2.length; i2 += 2) {
            String str = strArr2[i2];
            String str2 = strArr2[i2 + 1];
            m3107a(str);
            m3108b(str2, str);
        }
        return new C1438yj(strArr2);
    }

    @Nullable
    /* renamed from: c */
    public String m3110c(String str) {
        String[] strArr = this.f4229a;
        int length = strArr.length;
        do {
            length -= 2;
            if (length < 0) {
                return null;
            }
        } while (!str.equalsIgnoreCase(strArr[length]));
        return strArr[length + 1];
    }

    /* renamed from: d */
    public String m3111d(int i) {
        return this.f4229a[i * 2];
    }

    /* renamed from: e */
    public a m3112e() {
        a aVar = new a();
        Collections.addAll(aVar.f4230a, this.f4229a);
        return aVar;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C1438yj) && Arrays.equals(((C1438yj) obj).f4229a, this.f4229a);
    }

    /* renamed from: g */
    public int m3113g() {
        return this.f4229a.length / 2;
    }

    /* renamed from: h */
    public String m3114h(int i) {
        return this.f4229a[(i * 2) + 1];
    }

    public int hashCode() {
        return Arrays.hashCode(this.f4229a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int iM3113g = m3113g();
        for (int i = 0; i < iM3113g; i++) {
            sb.append(m3111d(i));
            sb.append(": ");
            sb.append(m3114h(i));
            sb.append("\n");
        }
        return sb.toString();
    }

    public C1438yj(String[] strArr) {
        this.f4229a = strArr;
    }
}
