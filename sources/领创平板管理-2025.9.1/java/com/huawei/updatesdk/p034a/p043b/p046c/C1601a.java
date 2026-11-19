package com.huawei.updatesdk.p034a.p043b.p046c;

import com.huawei.hem.CompilerOutline;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.C1606d;
import com.huawei.updatesdk.service.appmgr.bean.C1648a;
import com.huawei.updatesdk.service.appmgr.bean.C1649b;
import com.huawei.updatesdk.service.appmgr.bean.C1651d;
import com.huawei.updatesdk.service.appmgr.bean.C1652e;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.huawei.updatesdk.a.b.c.a */
/* loaded from: classes.dex */
public class C1601a {

    /* renamed from: a */
    public static final Map<String, Class> f4647a;

    static {
        HashMap map = new HashMap();
        f4647a = map;
        map.put(C1651d.APIMETHOD, C1652e.class);
        f4647a.put(C1648a.APIMETHOD, C1649b.class);
    }

    /* renamed from: a */
    public static C1606d m3604a(String str) throws InstantiationException {
        Class cls = f4647a.get(str);
        if (cls != null) {
            return (C1606d) cls.newInstance();
        }
        throw new InstantiationException(CompilerOutline.m1760e("ResponseBean class not found, method:", str));
    }
}
