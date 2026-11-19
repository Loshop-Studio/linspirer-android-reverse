package com.loc;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: DBOperation.java */
/* renamed from: com.loc.z */
/* loaded from: classes.dex */
public final class C1865z {

    /* renamed from: d */
    public static Map<Class<? extends InterfaceC1864y>, InterfaceC1864y> f5979d = new HashMap();

    /* renamed from: a */
    public C1713ac f5980a;

    /* renamed from: b */
    public SQLiteDatabase f5981b;

    /* renamed from: c */
    public InterfaceC1864y f5982c;

    public C1865z(Context context, InterfaceC1864y interfaceC1864y) {
        try {
            this.f5980a = new C1713ac(context.getApplicationContext(), interfaceC1864y.mo4914a(), interfaceC1864y);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.f5982c = interfaceC1864y;
    }

    /* renamed from: a */
    public static ContentValues m5348a(Object obj, InterfaceC1711aa interfaceC1711aa) throws IllegalAccessException, IllegalArgumentException {
        ContentValues contentValues = new ContentValues();
        for (Field field : m5357a(obj.getClass(), interfaceC1711aa.m3994b())) {
            field.setAccessible(true);
            m5355a(obj, field, contentValues);
        }
        return contentValues;
    }

    /* renamed from: a */
    private SQLiteDatabase m5349a() {
        try {
            if (this.f5981b == null) {
                this.f5981b = this.f5980a.getReadableDatabase();
            }
        } catch (Throwable th) {
            C1859t.m5312a(th, "dbs", "grd");
        }
        return this.f5981b;
    }

    /* renamed from: a */
    public static synchronized InterfaceC1864y m5350a(Class<? extends InterfaceC1864y> cls) {
        if (f5979d.get(cls) == null) {
            f5979d.put(cls, cls.newInstance());
        }
        return f5979d.get(cls);
    }

    /* renamed from: a */
    public static <T> T m5351a(Cursor cursor, Class<T> cls, InterfaceC1711aa interfaceC1711aa) throws IllegalAccessException, NoSuchMethodException, InstantiationException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Object objValueOf;
        Field[] fieldArrM5357a = m5357a((Class<?>) cls, interfaceC1711aa.m3994b());
        Constructor<T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
        declaredConstructor.setAccessible(true);
        T tNewInstance = declaredConstructor.newInstance(new Object[0]);
        for (Field field : fieldArrM5357a) {
            field.setAccessible(true);
            Annotation annotation = field.getAnnotation(InterfaceC1712ab.class);
            if (annotation != null) {
                InterfaceC1712ab interfaceC1712ab = (InterfaceC1712ab) annotation;
                int iM3996b = interfaceC1712ab.m3996b();
                int columnIndex = cursor.getColumnIndex(interfaceC1712ab.m3995a());
                switch (iM3996b) {
                    case 1:
                        objValueOf = Short.valueOf(cursor.getShort(columnIndex));
                        break;
                    case 2:
                        objValueOf = Integer.valueOf(cursor.getInt(columnIndex));
                        break;
                    case 3:
                        objValueOf = Float.valueOf(cursor.getFloat(columnIndex));
                        break;
                    case 4:
                        objValueOf = Double.valueOf(cursor.getDouble(columnIndex));
                        break;
                    case 5:
                        objValueOf = Long.valueOf(cursor.getLong(columnIndex));
                        break;
                    case 6:
                        objValueOf = cursor.getString(columnIndex);
                        break;
                    case 7:
                        field.set(tNewInstance, cursor.getBlob(columnIndex));
                        continue;
                }
                field.set(tNewInstance, objValueOf);
            }
        }
        return tNewInstance;
    }

    /* renamed from: a */
    public static <T> String m5352a(InterfaceC1711aa interfaceC1711aa) {
        if (interfaceC1711aa == null) {
            return null;
        }
        return interfaceC1711aa.m3993a();
    }

    /* renamed from: a */
    public static <T> void m5353a(SQLiteDatabase sQLiteDatabase, T t) {
        InterfaceC1711aa interfaceC1711aaM5359b = m5359b((Class) t.getClass());
        String strM5352a = m5352a(interfaceC1711aaM5359b);
        if (TextUtils.isEmpty(strM5352a) || sQLiteDatabase == null) {
            return;
        }
        sQLiteDatabase.insert(strM5352a, null, m5348a(t, interfaceC1711aaM5359b));
    }

    /* renamed from: a */
    private <T> void m5354a(T t) {
        m5361b((C1865z) t);
    }

    /* renamed from: a */
    public static void m5355a(Object obj, Field field, ContentValues contentValues) throws IllegalAccessException, IllegalArgumentException {
        Annotation annotation = field.getAnnotation(InterfaceC1712ab.class);
        if (annotation == null) {
        }
        InterfaceC1712ab interfaceC1712ab = (InterfaceC1712ab) annotation;
        try {
            switch (interfaceC1712ab.m3996b()) {
                case 1:
                    contentValues.put(interfaceC1712ab.m3995a(), Short.valueOf(field.getShort(obj)));
                    break;
                case 2:
                    contentValues.put(interfaceC1712ab.m3995a(), Integer.valueOf(field.getInt(obj)));
                    break;
                case 3:
                    contentValues.put(interfaceC1712ab.m3995a(), Float.valueOf(field.getFloat(obj)));
                    break;
                case 4:
                    contentValues.put(interfaceC1712ab.m3995a(), Double.valueOf(field.getDouble(obj)));
                    break;
                case 5:
                    contentValues.put(interfaceC1712ab.m3995a(), Long.valueOf(field.getLong(obj)));
                    break;
                case 6:
                    contentValues.put(interfaceC1712ab.m3995a(), (String) field.get(obj));
                    break;
                case 7:
                    contentValues.put(interfaceC1712ab.m3995a(), (byte[]) field.get(obj));
                    break;
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private <T> void m5356a(String str, Object obj) {
        synchronized (this.f5982c) {
            if (obj == null) {
                return;
            }
            InterfaceC1711aa interfaceC1711aaM5359b = m5359b((Class) obj.getClass());
            String strM5352a = m5352a(interfaceC1711aaM5359b);
            if (TextUtils.isEmpty(strM5352a)) {
                return;
            }
            ContentValues contentValuesM5348a = m5348a(obj, interfaceC1711aaM5359b);
            SQLiteDatabase sQLiteDatabaseM5358b = m5358b();
            this.f5981b = sQLiteDatabaseM5358b;
            if (sQLiteDatabaseM5358b == null) {
                return;
            }
            try {
                sQLiteDatabaseM5358b.update(strM5352a, contentValuesM5348a, str, null);
            } catch (Throwable th) {
                try {
                    C1859t.m5312a(th, "dbs", "udd");
                    if (this.f5981b != null) {
                        this.f5981b.close();
                    }
                } catch (Throwable th2) {
                    if (this.f5981b != null) {
                        this.f5981b.close();
                        this.f5981b = null;
                    }
                    throw th2;
                }
            }
            if (this.f5981b != null) {
                this.f5981b.close();
                this.f5981b = null;
            }
        }
    }

    /* renamed from: a */
    public static Field[] m5357a(Class<?> cls, boolean z) {
        if (cls == null) {
            return null;
        }
        return z ? cls.getSuperclass().getDeclaredFields() : cls.getDeclaredFields();
    }

    /* renamed from: b */
    private SQLiteDatabase m5358b() {
        try {
            if (this.f5981b == null || this.f5981b.isReadOnly()) {
                if (this.f5981b != null) {
                    this.f5981b.close();
                }
                this.f5981b = this.f5980a.getWritableDatabase();
            }
        } catch (Throwable th) {
            C1859t.m5312a(th, "dbs", "gwd");
        }
        return this.f5981b;
    }

    /* renamed from: b */
    public static <T> InterfaceC1711aa m5359b(Class<T> cls) {
        Annotation annotation = cls.getAnnotation(InterfaceC1711aa.class);
        if (annotation != null) {
            return (InterfaceC1711aa) annotation;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:? A[Catch: all -> 0x00e4, SYNTHETIC, TryCatch #5 {, blocks: (B:4:0x0003, B:6:0x0014, B:7:0x001a, B:9:0x001e, B:28:0x0060, B:27:0x0059, B:21:0x0045, B:62:0x00bc, B:44:0x008d, B:37:0x0075, B:55:0x00a3, B:76:0x00e1, B:75:0x00da, B:69:0x00c6, B:77:0x00e2, B:52:0x009e, B:34:0x0070, B:18:0x0040, B:66:0x00c1, B:22:0x004c, B:24:0x0050, B:70:0x00cd, B:72:0x00d1, B:50:0x0095), top: B:91:0x0003, inners: #1, #3, #4, #6, #9, #10, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0050 A[Catch: all -> 0x0058, TRY_LEAVE, TryCatch #9 {all -> 0x0058, blocks: (B:22:0x004c, B:24:0x0050), top: B:98:0x004c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00d1 A[Catch: all -> 0x00d9, TRY_LEAVE, TryCatch #10 {all -> 0x00d9, blocks: (B:70:0x00cd, B:72:0x00d1), top: B:100:0x00cd, outer: #5 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> java.util.List<T> m5360b(java.lang.String r13, java.lang.Class<T> r14) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1865z.m5360b(java.lang.String, java.lang.Class):java.util.List");
    }

    /* renamed from: b */
    private <T> void m5361b(T t) {
        synchronized (this.f5982c) {
            SQLiteDatabase sQLiteDatabaseM5358b = m5358b();
            this.f5981b = sQLiteDatabaseM5358b;
            if (sQLiteDatabaseM5358b == null) {
                return;
            }
            try {
                m5353a(sQLiteDatabaseM5358b, t);
            } catch (Throwable th) {
                try {
                    C1859t.m5312a(th, "dbs", "itd");
                    if (this.f5981b != null) {
                        this.f5981b.close();
                    }
                } catch (Throwable th2) {
                    if (this.f5981b != null) {
                        this.f5981b.close();
                        this.f5981b = null;
                    }
                    throw th2;
                }
            }
            if (this.f5981b != null) {
                this.f5981b.close();
                this.f5981b = null;
            }
        }
    }

    /* renamed from: b */
    private <T> void m5362b(String str, Object obj) {
        m5356a(str, obj);
    }

    /* renamed from: a */
    public final <T> List<T> m5363a(String str, Class<T> cls) {
        return m5360b(str, (Class) cls);
    }

    /* renamed from: a */
    public final void m5364a(Object obj, String str) {
        synchronized (this.f5982c) {
            List listM5363a = m5363a(str, (Class) obj.getClass());
            if (listM5363a == null || listM5363a.size() == 0) {
                m5354a((C1865z) obj);
            } else {
                m5362b(str, obj);
            }
        }
    }
}
