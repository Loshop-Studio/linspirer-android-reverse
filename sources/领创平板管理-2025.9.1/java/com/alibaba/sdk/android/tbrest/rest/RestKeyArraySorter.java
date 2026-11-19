package com.alibaba.sdk.android.tbrest.rest;

import com.alibaba.sdk.android.tbrest.utils.StringUtils;
import java.util.Arrays;
import java.util.Comparator;

/* compiled from: RestKeyArraySorter.java */
/* renamed from: com.alibaba.sdk.android.tbrest.rest.c */
/* loaded from: classes.dex */
public class RestKeyArraySorter {

    /* renamed from: a */
    public static RestKeyArraySorter f1408a;

    /* renamed from: a */
    public final a f1409a;

    /* renamed from: a */
    public final b f1410a;

    /* compiled from: RestKeyArraySorter.java */
    /* renamed from: com.alibaba.sdk.android.tbrest.rest.c$a */
    public static class a implements Comparator<String> {
        public a() {
        }

        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            if (StringUtils.isEmpty(str) || StringUtils.isEmpty(str2)) {
                return 0;
            }
            return str.compareTo(str2);
        }
    }

    /* compiled from: RestKeyArraySorter.java */
    /* renamed from: com.alibaba.sdk.android.tbrest.rest.c$b */
    public static class b implements Comparator<String> {
        public b() {
        }

        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            if (StringUtils.isEmpty(str) || StringUtils.isEmpty(str2)) {
                return 0;
            }
            return str.compareTo(str2) * (-1);
        }
    }

    public RestKeyArraySorter() {
        this.f1410a = new b();
        this.f1409a = new a();
    }

    /* renamed from: a */
    public static synchronized RestKeyArraySorter m981a() {
        if (f1408a == null) {
            f1408a = new RestKeyArraySorter();
        }
        return f1408a;
    }

    /* renamed from: a */
    public String[] m982a(String[] strArr, boolean z) {
        Comparator comparator;
        if (z) {
            comparator = this.f1409a;
        } else {
            comparator = this.f1410a;
        }
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        Arrays.sort(strArr, comparator);
        return strArr;
    }
}
