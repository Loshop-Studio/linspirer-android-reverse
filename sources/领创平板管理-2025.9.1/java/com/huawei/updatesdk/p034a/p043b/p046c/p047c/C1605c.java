package com.huawei.updatesdk.p034a.p043b.p046c.p047c;

import com.huawei.hem.CompilerOutline;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.updatesdk.p034a.p035a.p040d.AbstractC1590f;
import com.huawei.updatesdk.p034a.p035a.p040d.AbstractC1591g;
import com.huawei.updatesdk.service.appmgr.bean.SDKNetTransmission;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.huawei.updatesdk.a.b.c.c.c */
/* loaded from: classes.dex */
public class C1605c {
    public static final String CLIENT_API = "clientApi";
    public static final String END_FLAG = "_";
    public static String url;

    @SDKNetTransmission
    public String method;

    @SDKNetTransmission
    public String ver = "1.1";

    /* renamed from: a */
    private String m3623a(Field field) throws IllegalAccessException, IllegalArgumentException {
        Object obj = field.get(this);
        if (obj instanceof AbstractC1604b) {
            return ((AbstractC1604b) obj).toJson();
        }
        if (obj != null) {
            return String.valueOf(obj);
        }
        return null;
    }

    /* renamed from: c */
    public static void m3624c(String str) {
        url = str;
    }

    /* renamed from: a */
    public String m3625a() throws IllegalAccessException, IllegalArgumentException {
        m3631e();
        Map<String, Field> mapM3629c = m3629c();
        int size = mapM3629c.size();
        String[] strArr = new String[size];
        mapM3629c.keySet().toArray(strArr);
        Arrays.sort(strArr);
        StringBuilder sb = new StringBuilder();
        int i = 0;
        do {
            String strM3623a = m3623a(mapM3629c.get(strArr[i]));
            if (strM3623a != null) {
                String strM3536a = AbstractC1591g.m3536a(strM3623a);
                sb.append(strArr[i]);
                sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb.append(strM3536a);
                sb.append("&");
            }
            i++;
        } while (i < size);
        int length = sb.length();
        if (length > 0) {
            int i2 = length - 1;
            if (sb.charAt(i2) == '&') {
                sb.deleteCharAt(i2);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public void m3626a(String str) {
        this.method = str;
    }

    /* renamed from: b */
    public String m3627b() {
        return this.method;
    }

    /* renamed from: b */
    public void m3628b(String str) {
        this.ver = str;
    }

    /* renamed from: c */
    public Map<String, Field> m3629c() {
        HashMap map = new HashMap();
        for (Field field : AbstractC1590f.m3535a(getClass())) {
            field.setAccessible(true);
            String name = field.getName();
            if (name.endsWith("_") || field.isAnnotationPresent(SDKNetTransmission.class)) {
                if (name.endsWith("_")) {
                    name = name.substring(0, name.length() - 1);
                }
                map.put(name, field);
            }
        }
        return map;
    }

    /* renamed from: d */
    public String m3630d() {
        return CompilerOutline.m1762g(new StringBuilder(), url, CLIENT_API);
    }

    /* renamed from: e */
    public void m3631e() {
    }
}
