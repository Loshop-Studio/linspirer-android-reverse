package com.huawei.hms.core.aidl;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.core.aidl.annotation.Packed;
import com.huawei.hms.utils.JsonUtil;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MessageCodec.java */
/* renamed from: com.huawei.hms.core.aidl.e */
/* loaded from: classes.dex */
public class MessageCodec {
    /* renamed from: b */
    private void m3399b(IMessageEntity iMessageEntity, Field field, Bundle bundle) {
        boolean zIsAccessible = field.isAccessible();
        field.setAccessible(true);
        m3404a(field.getName(), field.get(iMessageEntity), bundle);
        field.setAccessible(zIsAccessible);
    }

    /* renamed from: a */
    public IMessageEntity m3402a(Bundle bundle, IMessageEntity iMessageEntity) {
        if (bundle == null) {
            return iMessageEntity;
        }
        bundle.setClassLoader(getClass().getClassLoader());
        for (Class<?> superclass = iMessageEntity.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            for (Field field : superclass.getDeclaredFields()) {
                if (field.isAnnotationPresent(Packed.class)) {
                    try {
                        m3398a(iMessageEntity, field, bundle);
                    } catch (IllegalAccessException | IllegalArgumentException unused) {
                        StringBuilder sbM1765j = CompilerOutline.m1765j("decode, set value of the field exception, field name:");
                        sbM1765j.append(field.getName());
                        Log.e("MessageCodec", sbM1765j.toString());
                    }
                }
            }
        }
        return iMessageEntity;
    }

    /* renamed from: b */
    private boolean m3400b(String str, Object obj, Bundle bundle) {
        if (obj instanceof String) {
            bundle.putString(str, (String) obj);
            return true;
        }
        if (obj instanceof Integer) {
            bundle.putInt(str, ((Integer) obj).intValue());
            return true;
        }
        if (obj instanceof Short) {
            bundle.putShort(str, ((Short) obj).shortValue());
            return true;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return true;
        }
        if (obj instanceof Float) {
            bundle.putFloat(str, ((Float) obj).floatValue());
            return true;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
            return true;
        }
        if (!(obj instanceof Boolean)) {
            return false;
        }
        bundle.putBoolean(str, ((Boolean) obj).booleanValue());
        return true;
    }

    /* renamed from: a */
    private void m3398a(IMessageEntity iMessageEntity, Field field, Bundle bundle) throws IllegalAccessException, IllegalArgumentException {
        Object objM3397a = m3397a(field, bundle);
        if (objM3397a != null) {
            boolean zIsAccessible = field.isAccessible();
            field.setAccessible(true);
            field.set(iMessageEntity, objM3397a);
            field.setAccessible(zIsAccessible);
        }
    }

    /* renamed from: a */
    private Object m3397a(Field field, Bundle bundle) {
        String name = field.getName();
        Object obj = bundle.get(name);
        if (obj instanceof Bundle) {
            try {
                Bundle bundle2 = (Bundle) obj;
                int i = bundle2.getInt(JsonUtil.VAL_TYPE, -1);
                if (i == 1) {
                    return mo3403a(field.getGenericType(), bundle2);
                }
                if (i == 0) {
                    return m3402a((Bundle) obj, (IMessageEntity) field.getType().newInstance());
                }
            } catch (Exception unused) {
                Log.e("MessageCodec", "decode, read value of the field exception, field name: " + name);
                return null;
            }
        }
        return obj;
    }

    /* renamed from: a */
    public List<Object> mo3403a(Type type, Bundle bundle) throws InstantiationException {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle2 = bundle.getBundle(JsonUtil.NEXT_ITEM); bundle2 != null; bundle2 = bundle2.getBundle(JsonUtil.NEXT_ITEM)) {
            Object obj = bundle2.get(JsonUtil.LIST_FIELD_VALUE);
            if (!obj.getClass().isPrimitive() && !(obj instanceof String) && !(obj instanceof Serializable)) {
                if (obj instanceof Bundle) {
                    Bundle bundle3 = (Bundle) obj;
                    int i = bundle3.getInt(JsonUtil.VAL_TYPE, -1);
                    if (i == 1) {
                        throw new InstantiationException("Nested List can not be supported");
                    }
                    if (i == 0) {
                        arrayList.add(m3402a(bundle3, (IMessageEntity) ((Class) ((ParameterizedType) type).getActualTypeArguments()[0]).newInstance()));
                    } else {
                        throw new InstantiationException("Unknown type can not be supported");
                    }
                } else {
                    continue;
                }
            } else {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public Bundle m3401a(IMessageEntity iMessageEntity, Bundle bundle) {
        for (Class<?> superclass = iMessageEntity.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            for (Field field : superclass.getDeclaredFields()) {
                if (field.isAnnotationPresent(Packed.class)) {
                    try {
                        m3399b(iMessageEntity, field, bundle);
                    } catch (IllegalAccessException | IllegalArgumentException unused) {
                        StringBuilder sbM1765j = CompilerOutline.m1765j("encode, get value of the field exception, field name: ");
                        sbM1765j.append(field.getName());
                        Log.e("MessageCodec", sbM1765j.toString());
                    }
                }
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public void m3404a(String str, Object obj, Bundle bundle) {
        if (obj == null || m3400b(str, obj, bundle)) {
            return;
        }
        if (obj instanceof CharSequence) {
            bundle.putCharSequence(str, (CharSequence) obj);
            return;
        }
        if (obj instanceof Parcelable) {
            bundle.putParcelable(str, (Parcelable) obj);
            return;
        }
        if (obj instanceof byte[]) {
            bundle.putByteArray(str, (byte[]) obj);
            return;
        }
        if (obj instanceof List) {
            mo3405a(str, (List) obj, bundle);
            return;
        }
        if (obj instanceof Serializable) {
            bundle.putSerializable(str, (Serializable) obj);
            return;
        }
        if (obj instanceof IMessageEntity) {
            Bundle bundleM3401a = m3401a((IMessageEntity) obj, new Bundle());
            bundleM3401a.putInt(JsonUtil.VAL_TYPE, 0);
            bundle.putBundle(str, bundleM3401a);
        } else {
            Log.e("MessageCodec", "cannot support type, " + str);
        }
    }

    /* renamed from: a */
    public void mo3405a(String str, List list, Bundle bundle) {
        Bundle bundleM3396a = null;
        for (Object obj : list) {
            if (bundleM3396a == null) {
                bundleM3396a = new Bundle();
                bundle.putBundle(str, bundleM3396a);
                bundleM3396a.putInt(JsonUtil.VAL_TYPE, 1);
            }
            bundleM3396a = m3396a(JsonUtil.LIST_FIELD_VALUE, bundleM3396a, obj);
        }
    }

    /* renamed from: a */
    private Bundle m3396a(String str, Bundle bundle, Object obj) {
        Bundle bundle2 = new Bundle();
        m3404a(str, obj, bundle2);
        bundle.putBundle(JsonUtil.NEXT_ITEM, bundle2);
        return bundle2;
    }
}
