package com.huawei.hem;

import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* compiled from: MediaType.java */
/* renamed from: com.huawei.hem.bk */
/* loaded from: classes.dex */
public final class C0858bk {

    /* renamed from: d */
    public static final Pattern f2305d = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: e */
    public static final Pattern f2306e = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: a */
    public final String f2307a;

    /* renamed from: b */
    public final String f2308b;

    /* renamed from: c */
    @Nullable
    public final String f2309c;

    public C0858bk(String str, String str2, String str3, @Nullable String str4) {
        this.f2307a = str;
        this.f2308b = str2;
        this.f2309c = str4;
    }

    /* renamed from: a */
    public static C0858bk m1421a(String str) {
        Matcher matcher = f2305d.matcher(str);
        if (!matcher.lookingAt()) {
            throw new IllegalArgumentException("No subtype found for: \"" + str + '\"');
        }
        String lowerCase = matcher.group(1).toLowerCase(Locale.US);
        String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
        String str2 = null;
        Matcher matcher2 = f2306e.matcher(str);
        for (int iEnd = matcher.end(); iEnd < str.length(); iEnd = matcher2.end()) {
            matcher2.region(iEnd, str.length());
            if (!matcher2.lookingAt()) {
                StringBuilder sbM1765j = C0948f6.m1765j("Parameter is not formatted correctly: \"");
                sbM1765j.append(str.substring(iEnd));
                sbM1765j.append("\" for: \"");
                sbM1765j.append(str);
                sbM1765j.append('\"');
                throw new IllegalArgumentException(sbM1765j.toString());
            }
            String strGroup = matcher2.group(1);
            if (strGroup != null && strGroup.equalsIgnoreCase("charset")) {
                String strGroup2 = matcher2.group(2);
                if (strGroup2 == null) {
                    strGroup2 = matcher2.group(3);
                } else if (strGroup2.startsWith("'") && strGroup2.endsWith("'") && strGroup2.length() > 2) {
                    strGroup2 = strGroup2.substring(1, strGroup2.length() - 1);
                }
                if (str2 != null && !strGroup2.equalsIgnoreCase(str2)) {
                    StringBuilder sbM1770o = C0948f6.m1770o("Multiple charsets defined: \"", str2, "\" and: \"", strGroup2, "\" for: \"");
                    sbM1770o.append(str);
                    sbM1770o.append('\"');
                    throw new IllegalArgumentException(sbM1770o.toString());
                }
                str2 = strGroup2;
            }
        }
        return new C0858bk(str, lowerCase, lowerCase2, str2);
    }

    @Nullable
    /* renamed from: b */
    public static C0858bk m1422b(String str) {
        try {
            return m1421a(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C0858bk) && ((C0858bk) obj).f2307a.equals(this.f2307a);
    }

    public int hashCode() {
        return this.f2307a.hashCode();
    }

    public String toString() {
        return this.f2307a;
    }
}
