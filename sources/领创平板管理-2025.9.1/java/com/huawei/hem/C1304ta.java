package com.huawei.hem;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: com.huawei.hem.ta */
/* loaded from: classes.dex */
public class C1304ta {
    /* renamed from: a */
    public static Map<String, List<C1103la>> m2725a(Context context, String str) {
        HashSet hashSet;
        if (context == null) {
            return null;
        }
        Map<String, ?> all = AbstractC1102l9.m2261B(context, str).getAll();
        Iterator<Map.Entry<String, ?>> it = all.entrySet().iterator();
        if (C1453z9.m3144b() == null) {
            throw null;
        }
        Set<String> setKeySet = C1453z9.f4291b.keySet();
        if (setKeySet == null || setKeySet.size() == 0) {
            hashSet = new HashSet();
        } else {
            hashSet = new HashSet();
            for (String str2 : setKeySet) {
                if ("_default_config_tag".equals(str2)) {
                    hashSet.add("_default_config_tag");
                } else {
                    String strM1761f = C0948f6.m1761f(str2, "-", "oper");
                    String strM1761f2 = C0948f6.m1761f(str2, "-", "maint");
                    hashSet.add(strM1761f);
                    hashSet.add(strM1761f2);
                    hashSet.add(str2 + "-diffprivacy");
                }
            }
        }
        while (it.hasNext()) {
            if (!hashSet.contains(it.next().getKey())) {
                it.remove();
            }
        }
        HashMap map = new HashMap();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            if (entry.getValue() instanceof String) {
                m2727c(key, (String) entry.getValue(), map);
            }
        }
        return map;
    }

    /* renamed from: b */
    public static Map<String, List<C1103la>> m2726b(Context context, String str, String str2) {
        Map<String, List<C1103la>> mapM2725a;
        Map<String, List<C1103la>> mapM2725a2;
        if ("alltype".equals(str2) || TextUtils.isEmpty(str)) {
            C1404xa.m2937d("hmsSdk", "read all event records");
            mapM2725a = m2725a(context, "stat_v2_1");
            mapM2725a2 = m2725a(context, "cached_v2_1");
        } else {
            String strM2260A = AbstractC1102l9.m2260A(str, str2);
            mapM2725a = m2728d(context, "stat_v2_1", strM2260A);
            mapM2725a2 = m2728d(context, "cached_v2_1", strM2260A);
        }
        if (mapM2725a.size() == 0 && mapM2725a2.size() == 0) {
            return new HashMap();
        }
        if (mapM2725a.size() == 0) {
            return mapM2725a2;
        }
        if (mapM2725a2.size() == 0) {
            return mapM2725a;
        }
        HashMap map = new HashMap();
        for (Map.Entry<String, List<C1103la>> entry : mapM2725a.entrySet()) {
            String key = entry.getKey();
            List<C1103la> value = entry.getValue();
            List<C1103la> list = mapM2725a2.get(key);
            if (list != null && list.size() > 0) {
                value.addAll(list);
            }
            map.put(key, value);
        }
        return map;
    }

    /* renamed from: c */
    public static void m2727c(String str, String str2, Map<String, List<C1103la>> map) {
        ArrayList arrayList = new ArrayList();
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str2);
            if (jSONArray.length() == 0) {
                return;
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                C1103la c1103la = new C1103la();
                try {
                    c1103la.m2304b(jSONArray.getJSONObject(i));
                    arrayList.add(c1103la);
                } catch (JSONException unused) {
                    C1404xa.m2939f("hmsSdk", "JSON Exception happened when create data for report - readDataToRecord");
                }
            }
            map.put(str, arrayList);
        } catch (JSONException unused2) {
            C1404xa.m2939f("hmsSdk", "When events turn to JSONArray,JSON Exception has happened");
        }
    }

    /* renamed from: d */
    public static Map<String, List<C1103la>> m2728d(Context context, String str, String str2) {
        String strM2283f = AbstractC1102l9.m2283f(context, str, str2, "");
        HashMap map = new HashMap();
        m2727c(str2, strM2283f, map);
        return map;
    }
}
