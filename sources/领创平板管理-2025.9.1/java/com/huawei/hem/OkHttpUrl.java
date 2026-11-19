package com.huawei.hem;

import anet.channel.util.HttpConstant;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hms.common.internal.TransactionIdCreater;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: HttpUrl.java */
/* renamed from: com.huawei.hem.zj */
/* loaded from: classes.dex */
public final class OkHttpUrl {

    /* renamed from: i */
    public static final char[] f4310i = {TransactionIdCreater.FILL_BYTE, '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    public final String f4311a;

    /* renamed from: b */
    public final String f4312b;

    /* renamed from: c */
    public final String f4313c;

    /* renamed from: d */
    public final String f4314d;

    /* renamed from: e */
    public final int f4315e;

    /* renamed from: f */
    @Nullable
    public final List<String> f4316f;

    /* renamed from: g */
    @Nullable
    public final String f4317g;

    /* renamed from: h */
    public final String f4318h;

    /* compiled from: HttpUrl.java */
    /* renamed from: com.huawei.hem.zj$a */
    public static final class a {

        /* renamed from: a */
        @Nullable
        public String f4319a;

        /* renamed from: d */
        @Nullable
        public String f4322d;

        /* renamed from: f */
        public final List<String> f4324f;

        /* renamed from: g */
        @Nullable
        public List<String> f4325g;

        /* renamed from: h */
        @Nullable
        public String f4326h;

        /* renamed from: b */
        public String f4320b = "";

        /* renamed from: c */
        public String f4321c = "";

        /* renamed from: e */
        public int f4323e = -1;

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f4324f = arrayList;
            arrayList.add("");
        }

        @Nullable
        /* renamed from: b */
        public static String m3165b(String str, int i, int i2) {
            return OkHttpCommonUtilities.m2746a(OkHttpUrl.m3153j(str, i, i2, false));
        }

        /* renamed from: a */
        public OkHttpUrl m3166a() {
            if (this.f4319a == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.f4322d != null) {
                return new OkHttpUrl(this);
            }
            throw new IllegalStateException("host == null");
        }

        /* renamed from: c */
        public a m3167c(@Nullable String str) {
            this.f4325g = str != null ? OkHttpUrl.m3156n(OkHttpUrl.m3150b(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:139:0x0293  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0062  */
        /* JADX WARN: Unreachable blocks removed: 1, instructions: 2 */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.huawei.hem.OkHttpUrl.a m3168d(@javax.annotation.Nullable com.huawei.hem.OkHttpUrl r22, java.lang.String r23) {
            /*
                Method dump skipped, instructions count: 949
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1463zj.a.m3168d(com.huawei.hem.zj, java.lang.String):com.huawei.hem.zj$a");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.f4319a;
            if (str != null) {
                sb.append(str);
                sb.append(HttpConstant.SCHEME_SPLIT);
            } else {
                sb.append("//");
            }
            if (!this.f4320b.isEmpty() || !this.f4321c.isEmpty()) {
                sb.append(this.f4320b);
                if (!this.f4321c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f4321c);
                }
                sb.append('@');
            }
            String str2 = this.f4322d;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb.append('[');
                    sb.append(this.f4322d);
                    sb.append(']');
                } else {
                    sb.append(this.f4322d);
                }
            }
            if (this.f4323e != -1 || this.f4319a != null) {
                int iM3151c = this.f4323e;
                if (iM3151c == -1) {
                    iM3151c = OkHttpUrl.m3151c(this.f4319a);
                }
                String str3 = this.f4319a;
                if (str3 == null || iM3151c != OkHttpUrl.m3151c(str3)) {
                    sb.append(':');
                    sb.append(iM3151c);
                }
            }
            List<String> list = this.f4324f;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                sb.append('/');
                sb.append(list.get(i));
            }
            if (this.f4325g != null) {
                sb.append('?');
                OkHttpUrl.m3152i(sb, this.f4325g);
            }
            if (this.f4326h != null) {
                sb.append('#');
                sb.append(this.f4326h);
            }
            return sb.toString();
        }
    }

    public OkHttpUrl(a aVar) {
        this.f4311a = aVar.f4319a;
        this.f4312b = m3154k(aVar.f4320b, false);
        this.f4313c = m3154k(aVar.f4321c, false);
        this.f4314d = aVar.f4322d;
        int i = aVar.f4323e;
        this.f4315e = i == -1 ? m3151c(aVar.f4319a) : i;
        m3162l(aVar.f4324f, false);
        List<String> list = aVar.f4325g;
        this.f4316f = list != null ? m3162l(list, true) : null;
        String str = aVar.f4326h;
        this.f4317g = str != null ? m3153j(str, 0, str.length(), false) : null;
        this.f4318h = aVar.toString();
    }

    /* renamed from: a */
    public static String m3149a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, @Nullable Charset charset) {
        int iCharCount = i;
        while (iCharCount < i2) {
            int iCodePointAt = str.codePointAt(iCharCount);
            int i3 = -1;
            if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z4) || str2.indexOf(iCodePointAt) != -1 || ((iCodePointAt == 37 && (!z || (z2 && !m3155m(str, iCharCount, i2)))) || (iCodePointAt == 43 && z3)))) {
                OkioBuffer c1016hn = new OkioBuffer();
                c1016hn.m1994X(str, i, iCharCount);
                OkioBuffer c1016hn2 = null;
                while (iCharCount < i2) {
                    int iCodePointAt2 = str.codePointAt(iCharCount);
                    if (!z || (iCodePointAt2 != 9 && iCodePointAt2 != 10 && iCodePointAt2 != 12 && iCodePointAt2 != 13)) {
                        if (iCodePointAt2 == 43 && z3) {
                            c1016hn.m1993W(z ? "+" : "%2B");
                        } else if (iCodePointAt2 < 32 || iCodePointAt2 == 127 || ((iCodePointAt2 >= 128 && z4) || str2.indexOf(iCodePointAt2) != i3 || (iCodePointAt2 == 37 && (!z || (z2 && !m3155m(str, iCharCount, i2)))))) {
                            if (c1016hn2 == null) {
                                c1016hn2 = new OkioBuffer();
                            }
                            if (charset == null || charset.equals(StandardCharsets.UTF_8)) {
                                c1016hn2.m1995Y(iCodePointAt2);
                            } else {
                                int iCharCount2 = Character.charCount(iCodePointAt2) + iCharCount;
                                if (iCharCount < 0) {
                                    throw new IllegalAccessError(CompilerOutline.m1754L("beginIndex < 0: ", iCharCount));
                                }
                                if (iCharCount2 < iCharCount) {
                                    throw new IllegalArgumentException("endIndex < beginIndex: " + iCharCount2 + " < " + iCharCount);
                                }
                                if (iCharCount2 > str.length()) {
                                    StringBuilder sbM1766k = CompilerOutline.m1766k("endIndex > string.length: ", iCharCount2, " > ");
                                    sbM1766k.append(str.length());
                                    throw new IllegalArgumentException(sbM1766k.toString());
                                }
                                if (charset.equals(OkioByteUtilities.f2363a)) {
                                    c1016hn2.m1994X(str, iCharCount, iCharCount2);
                                } else {
                                    byte[] bytes = str.substring(iCharCount, iCharCount2).getBytes(charset);
                                    c1016hn2.m1987Q(bytes, 0, bytes.length);
                                }
                            }
                            while (!c1016hn2.mo2017y()) {
                                int i4 = c1016hn2.readByte() & Base64.EQUALS_SIGN_ENC;
                                c1016hn.m1988R(37);
                                c1016hn.m1988R(f4310i[(i4 >> 4) & 15]);
                                c1016hn.m1988R(f4310i[i4 & 15]);
                            }
                        } else {
                            c1016hn.m1995Y(iCodePointAt2);
                        }
                    }
                    iCharCount += Character.charCount(iCodePointAt2);
                    i3 = -1;
                }
                return c1016hn.m2004j();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.substring(i, i2);
    }

    /* renamed from: b */
    public static String m3150b(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return m3149a(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }

    /* renamed from: c */
    public static int m3151c(String str) {
        if (str.equals(HttpConstant.HTTP)) {
            return 80;
        }
        return str.equals(HttpConstant.HTTPS) ? 443 : -1;
    }

    /* renamed from: i */
    public static void m3152i(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = list.get(i);
            String str2 = list.get(i + 1);
            if (i > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0052  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m3153j(java.lang.String r8, int r9, int r10, boolean r11) {
        /*
            r0 = r9
        L1:
            if (r0 >= r10) goto L60
            char r1 = r8.charAt(r0)
            r2 = 43
            r3 = 37
            if (r1 == r3) goto L15
            if (r1 != r2) goto L12
            if (r11 == 0) goto L12
            goto L15
        L12:
            int r0 = r0 + 1
            goto L1
        L15:
            com.huawei.hem.hn r1 = new com.huawei.hem.hn
            r1.<init>()
            r1.m1994X(r8, r9, r0)
        L1d:
            if (r0 >= r10) goto L5b
            int r9 = r8.codePointAt(r0)
            if (r9 != r3) goto L48
            int r4 = r0 + 2
            if (r4 >= r10) goto L48
            int r5 = r0 + 1
            char r5 = r8.charAt(r5)
            int r5 = com.huawei.hem.C1314tk.m2751f(r5)
            char r6 = r8.charAt(r4)
            int r6 = com.huawei.hem.C1314tk.m2751f(r6)
            r7 = -1
            if (r5 == r7) goto L52
            if (r6 == r7) goto L52
            int r0 = r5 << 4
            int r0 = r0 + r6
            r1.m1988R(r0)
            r0 = r4
            goto L55
        L48:
            if (r9 != r2) goto L52
            if (r11 == 0) goto L52
            r4 = 32
            r1.m1988R(r4)
            goto L55
        L52:
            r1.m1995Y(r9)
        L55:
            int r9 = java.lang.Character.charCount(r9)
            int r0 = r0 + r9
            goto L1d
        L5b:
            java.lang.String r8 = r1.m2004j()
            return r8
        L60:
            java.lang.String r8 = r8.substring(r9, r10)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1463zj.m3153j(java.lang.String, int, int, boolean):java.lang.String");
    }

    /* renamed from: k */
    public static String m3154k(String str, boolean z) {
        return m3153j(str, 0, str.length(), z);
    }

    /* renamed from: m */
    public static boolean m3155m(String str, int i, int i2) {
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && OkHttpCommonUtilities.m2751f(str.charAt(i + 1)) != -1 && OkHttpCommonUtilities.m2751f(str.charAt(i3)) != -1;
    }

    /* renamed from: n */
    public static List<String> m3156n(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int iIndexOf = str.indexOf(38, i);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i);
            if (iIndexOf2 == -1 || iIndexOf2 > iIndexOf) {
                arrayList.add(str.substring(i, iIndexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i, iIndexOf2));
                arrayList.add(str.substring(iIndexOf2 + 1, iIndexOf));
            }
            i = iIndexOf + 1;
        }
        return arrayList;
    }

    /* renamed from: d */
    public String m3157d() {
        if (this.f4313c.isEmpty()) {
            return "";
        }
        return this.f4318h.substring(this.f4318h.indexOf(58, this.f4311a.length() + 3) + 1, this.f4318h.indexOf(64));
    }

    /* renamed from: e */
    public String m3158e() {
        int iIndexOf = this.f4318h.indexOf(47, this.f4311a.length() + 3);
        String str = this.f4318h;
        return this.f4318h.substring(iIndexOf, OkHttpCommonUtilities.m2754i(str, iIndexOf, str.length(), "?#"));
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof OkHttpUrl) && ((OkHttpUrl) obj).f4318h.equals(this.f4318h);
    }

    /* renamed from: f */
    public List<String> m3159f() {
        int iIndexOf = this.f4318h.indexOf(47, this.f4311a.length() + 3);
        String str = this.f4318h;
        int iM2754i = OkHttpCommonUtilities.m2754i(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iM2754i) {
            int i = iIndexOf + 1;
            int iM2753h = OkHttpCommonUtilities.m2753h(this.f4318h, i, iM2754i, '/');
            arrayList.add(this.f4318h.substring(i, iM2753h));
            iIndexOf = iM2753h;
        }
        return arrayList;
    }

    @Nullable
    /* renamed from: g */
    public String m3160g() {
        if (this.f4316f == null) {
            return null;
        }
        int iIndexOf = this.f4318h.indexOf(63) + 1;
        String str = this.f4318h;
        return this.f4318h.substring(iIndexOf, OkHttpCommonUtilities.m2753h(str, iIndexOf, str.length(), '#'));
    }

    /* renamed from: h */
    public String m3161h() {
        if (this.f4312b.isEmpty()) {
            return "";
        }
        int length = this.f4311a.length() + 3;
        String str = this.f4318h;
        return this.f4318h.substring(length, OkHttpCommonUtilities.m2754i(str, length, str.length(), ":@"));
    }

    public int hashCode() {
        return this.f4318h.hashCode();
    }

    /* renamed from: l */
    public final List<String> m3162l(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? m3153j(str, 0, str.length(), z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: o */
    public String m3163o() {
        a aVar;
        try {
            aVar = new a();
            aVar.m3168d(this, "/...");
        } catch (IllegalArgumentException unused) {
            aVar = null;
        }
        if (aVar == null) {
            throw null;
        }
        aVar.f4320b = m3150b("", " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        aVar.f4321c = m3150b("", " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        return aVar.m3166a().f4318h;
    }

    /* renamed from: p */
    public URI m3164p() {
        a aVar = new a();
        aVar.f4319a = this.f4311a;
        aVar.f4320b = m3161h();
        aVar.f4321c = m3157d();
        aVar.f4322d = this.f4314d;
        aVar.f4323e = this.f4315e != m3151c(this.f4311a) ? this.f4315e : -1;
        aVar.f4324f.clear();
        aVar.f4324f.addAll(m3159f());
        aVar.m3167c(m3160g());
        aVar.f4326h = this.f4317g == null ? null : this.f4318h.substring(this.f4318h.indexOf(35) + 1);
        int size = aVar.f4324f.size();
        for (int i = 0; i < size; i++) {
            aVar.f4324f.set(i, m3150b(aVar.f4324f.get(i), "[]", true, true, false, true));
        }
        List<String> list = aVar.f4325g;
        if (list != null) {
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String str = aVar.f4325g.get(i2);
                if (str != null) {
                    aVar.f4325g.set(i2, m3150b(str, "\\^`{|}", true, true, true, true));
                }
            }
        }
        String str2 = aVar.f4326h;
        if (str2 != null) {
            aVar.f4326h = m3150b(str2, " \"#<>\\^`{|}", true, true, false, false);
        }
        String string = aVar.toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e) {
            try {
                return URI.create(string.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e);
            }
        }
    }

    public String toString() {
        return this.f4318h;
    }
}
