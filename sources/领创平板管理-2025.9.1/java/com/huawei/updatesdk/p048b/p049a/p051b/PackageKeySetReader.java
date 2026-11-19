package com.huawei.updatesdk.p048b.p049a.p051b;

import android.content.pm.PackageInfo;
import android.util.ArrayMap;
import android.util.ArraySet;
import com.huawei.updatesdk.p034a.p035a.p040d.UpdateStringEncoding;
import com.huawei.updatesdk.p048b.p049a.p051b.PackageKeySetCacheEntry;
import com.huawei.updatesdk.p048b.p049a.p051b.AndroidKeySetReflection;
import java.io.File;
import java.security.PublicKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.huawei.updatesdk.b.a.b.b */
/* loaded from: classes.dex */
public class PackageKeySetReader {

    /* renamed from: b */
    public static PackageKeySetReader f4673b;

    /* renamed from: a */
    public final Map<String, PackageKeySetCacheEntry> f4674a = new HashMap();

    /* renamed from: a */
    public static synchronized PackageKeySetReader m3658a() {
        if (f4673b == null) {
            f4673b = new PackageKeySetReader();
        }
        return f4673b;
    }

    /* renamed from: a */
    public static void m3659a(PackageKeySetCacheEntry c1609a) {
        m3658a().f4674a.put(c1609a.m3655c(), c1609a);
    }

    /* renamed from: b */
    public static ArrayList<String> m3660b(PackageInfo packageInfo) throws ClassNotFoundException {
        ArraySet<String> arraySet;
        PackageKeySetCacheEntry c1609a = new PackageKeySetCacheEntry();
        c1609a.m3653a(packageInfo.packageName);
        File file = new File(packageInfo.applicationInfo.sourceDir);
        if (!file.exists()) {
            return null;
        }
        c1609a.m3651a(file.lastModified());
        AndroidKeySetReflection.a aVarM3662a = AndroidKeySetReflection.m3662a(file);
        ArrayMap<String, ArraySet<PublicKey>> arrayMap = aVarM3662a.f4675a;
        if (arrayMap == null || arrayMap.isEmpty() || (arraySet = aVarM3662a.f4676b) == null || arraySet.isEmpty()) {
            m3659a(c1609a);
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        for (Map.Entry<String, ArraySet<PublicKey>> entry : aVarM3662a.f4675a.entrySet()) {
            if (aVarM3662a.f4676b.contains(entry.getKey())) {
                Iterator<PublicKey> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    arrayList.add(UpdateStringEncoding.m3537a(it.next().getEncoded()));
                }
            }
        }
        PackageKeySetCacheEntry.a aVar = new PackageKeySetCacheEntry.a();
        aVar.m3657a(arrayList);
        c1609a.m3652a(aVar);
        m3659a(c1609a);
        return arrayList;
    }

    /* renamed from: a */
    public List<String> m3661a(PackageInfo packageInfo) {
        String str;
        if (packageInfo == null || (str = packageInfo.applicationInfo.sourceDir) == null) {
            return null;
        }
        long jLastModified = new File(str).lastModified();
        PackageKeySetCacheEntry c1609a = m3658a().f4674a.get(packageInfo.packageName);
        if (c1609a == null || c1609a.m3654b() != jLastModified) {
            return m3660b(packageInfo);
        }
        if (c1609a.m3650a() == null) {
            return null;
        }
        return c1609a.m3650a().m3656a();
    }
}
