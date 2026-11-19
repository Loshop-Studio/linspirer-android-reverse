package com.huawei.updatesdk.p048b.p049a.p051b;

import android.util.ArrayMap;
import android.util.ArraySet;
import com.huawei.hem.C0948f6;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.security.PublicKey;

/* renamed from: com.huawei.updatesdk.b.a.b.c */
/* loaded from: classes.dex */
public class C1611c {

    /* renamed from: com.huawei.updatesdk.b.a.b.c$a */
    public static class a {

        /* renamed from: a */
        public ArrayMap<String, ArraySet<PublicKey>> f4675a = null;

        /* renamed from: b */
        public ArraySet<String> f4676b = null;
    }

    /* renamed from: a */
    public static a m3662a(File file) throws ClassNotFoundException {
        a aVar = new a();
        Object objM3664b = m3664b(file);
        if (objM3664b != null) {
            Object objM3663a = m3663a(objM3664b, "mKeySetMapping");
            if (objM3663a instanceof ArrayMap) {
                aVar.f4675a = (ArrayMap) objM3663a;
            }
            Object objM3663a2 = m3663a(objM3664b, "mUpgradeKeySets");
            if (objM3663a2 instanceof ArraySet) {
                aVar.f4676b = (ArraySet) objM3663a2;
            }
        }
        return aVar;
    }

    /* renamed from: a */
    public static Object m3663a(Object obj, String str) {
        String str2;
        try {
            return Class.forName("android.content.pm.PackageParser$Package").getDeclaredField(str).get(obj);
        } catch (ClassNotFoundException unused) {
            str2 = "can not find class,ClassNotFoundException";
            C1584a.m3517c("KeySetsUtils", str2);
            return null;
        } catch (IllegalAccessException unused2) {
            str2 = "can not find field,IllegalAccessException";
            C1584a.m3517c("KeySetsUtils", str2);
            return null;
        } catch (NoSuchFieldError unused3) {
            str2 = "can not find field,NoSuchFieldError";
            C1584a.m3517c("KeySetsUtils", str2);
            return null;
        } catch (NoSuchFieldException unused4) {
            str2 = "can not find field,NoSuchFieldException";
            C1584a.m3517c("KeySetsUtils", str2);
            return null;
        }
    }

    /* renamed from: b */
    public static Object m3664b(File file) throws ClassNotFoundException {
        String string;
        try {
            Class<?> cls = Class.forName("android.content.pm.PackageParser");
            return cls.getDeclaredMethod("parsePackage", File.class, Integer.TYPE).invoke(cls.newInstance(), file, 0);
        } catch (ClassNotFoundException unused) {
            string = "can not get PackageParser,ClassNotFoundException";
            C1584a.m3517c("KeySetsUtils", string);
            return null;
        } catch (IllegalAccessException unused2) {
            string = "can not get PackageParser,IllegalAccessException";
            C1584a.m3517c("KeySetsUtils", string);
            return null;
        } catch (InstantiationException unused3) {
            string = "can not get PackageParser,InstantiationException";
            C1584a.m3517c("KeySetsUtils", string);
            return null;
        } catch (NoSuchMethodException unused4) {
            string = "can not get PackageParser,NoSuchMethodException";
            C1584a.m3517c("KeySetsUtils", string);
            return null;
        } catch (InvocationTargetException unused5) {
            string = "can not get PackageParser,InvocationTargetException";
            C1584a.m3517c("KeySetsUtils", string);
            return null;
        } catch (Exception e) {
            StringBuilder sbM1765j = C0948f6.m1765j("can not get PackageParser,");
            sbM1765j.append(e.getMessage());
            string = sbM1765j.toString();
            C1584a.m3517c("KeySetsUtils", string);
            return null;
        }
    }
}
