package com.huawei.updatesdk.p034a.p035a.p040d;

import com.huawei.hem.CompilerOutline;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.UpdateLogWriter;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: com.huawei.updatesdk.a.a.d.f */
/* loaded from: classes.dex */
public abstract class UpdateGenericFieldTypes {

    /* renamed from: a */
    public static final String f4626a = "f";

    /* renamed from: a */
    public static Class m3533a(Field field) {
        int i;
        if (Map.class.isAssignableFrom(field.getType())) {
            i = 1;
        } else {
            if (!List.class.isAssignableFrom(field.getType())) {
                return null;
            }
            i = 0;
        }
        return m3534a(field, i);
    }

    /* renamed from: a */
    public static Class m3534a(Field field, int i) {
        Type[] actualTypeArguments;
        Type genericType = field.getGenericType();
        if ((genericType instanceof ParameterizedType) && (actualTypeArguments = ((ParameterizedType) genericType).getActualTypeArguments()) != null && actualTypeArguments.length > i) {
            try {
                if (actualTypeArguments[i] instanceof Class) {
                    return (Class) actualTypeArguments[i];
                }
                String string = actualTypeArguments[i].toString();
                int iIndexOf = string.indexOf("class ");
                if (iIndexOf < 0) {
                    iIndexOf = 0;
                }
                int iIndexOf2 = string.indexOf("<");
                if (iIndexOf2 < 0) {
                    iIndexOf2 = string.length();
                }
                return Class.forName(string.substring(iIndexOf, iIndexOf2));
            } catch (ClassNotFoundException e) {
                String str = f4626a;
                StringBuilder sbM1765j = CompilerOutline.m1765j("getType exception!");
                sbM1765j.append(e.getMessage());
                UpdateLogWriter.m3516b(str, sbM1765j.toString());
            }
        }
        return null;
    }

    /* renamed from: a */
    public static Field[] m3535a(Class cls) {
        Field[] fieldArrM3535a = cls.getSuperclass() != null ? m3535a(cls.getSuperclass()) : null;
        Field[] declaredFields = cls.getDeclaredFields();
        if (fieldArrM3535a != null && fieldArrM3535a.length > 0) {
            Field[] fieldArr = new Field[declaredFields.length + fieldArrM3535a.length];
            System.arraycopy(fieldArrM3535a, 0, fieldArr, 0, fieldArrM3535a.length);
            System.arraycopy(declaredFields, 0, fieldArr, fieldArrM3535a.length, declaredFields.length);
            declaredFields = fieldArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Field field : declaredFields) {
            if (field.getName().indexOf("$") < 0) {
                arrayList.add(field);
            }
        }
        if (arrayList.size() == declaredFields.length) {
            return declaredFields;
        }
        Field[] fieldArr2 = new Field[arrayList.size()];
        arrayList.toArray(fieldArr2);
        return fieldArr2;
    }
}
