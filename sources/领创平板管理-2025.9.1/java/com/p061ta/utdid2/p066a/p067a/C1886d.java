package com.p061ta.utdid2.p066a.p067a;

import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Pattern;

/* renamed from: com.ta.utdid2.a.a.d */
/* loaded from: classes.dex */
public class C1886d {

    /* renamed from: a */
    public static final Pattern f6018a = Pattern.compile("([\t\r\n])+");

    /* renamed from: a */
    public static int m5415a(String str) {
        if (str.length() <= 0) {
            return 0;
        }
        int i = 0;
        for (char c : str.toCharArray()) {
            i = (i * 31) + c;
        }
        return i;
    }

    /* renamed from: b */
    public static boolean m5417b(String str) {
        return str == null || str.length() <= 0;
    }

    /* renamed from: e */
    public static String m5418e(String str) {
        return (str == null || "".equals(str)) ? str : f6018a.matcher(str).replaceAll("");
    }

    /* renamed from: a */
    public static Map<String, String> m5416a(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        TreeMap treeMap = new TreeMap(new Comparator<String>() { // from class: com.ta.utdid2.a.a.d.1
            @Override // java.util.Comparator
            public int compare(String str, String str2) {
                return str.compareTo(str2);
            }
        });
        treeMap.putAll(map);
        return treeMap;
    }
}
