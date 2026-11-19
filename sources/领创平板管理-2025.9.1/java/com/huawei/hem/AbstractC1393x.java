package com.huawei.hem;

import android.os.Parcelable;
import android.support.annotation.RestrictTo;

/* compiled from: VersionedParcel.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.huawei.hem.x */
/* loaded from: classes.dex */
public abstract class AbstractC1393x {
    /* renamed from: b */
    public static Class m2920b(Class<? extends InterfaceC1443z> cls) {
        return Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
    }

    /* renamed from: a */
    public abstract void mo2921a();

    /* renamed from: c */
    public abstract boolean mo2922c(int i);

    /* renamed from: d */
    public int m2923d(int i, int i2) {
        return !mo2922c(i2) ? i : ((C1418y) this).f4097b.readInt();
    }

    /* renamed from: e */
    public <T extends Parcelable> T m2924e(T t, int i) {
        return !mo2922c(i) ? t : (T) ((C1418y) this).f4097b.readParcelable(C1418y.class.getClassLoader());
    }

    /* renamed from: f */
    public abstract void mo2925f(int i);

    /* renamed from: g */
    public void m2926g(int i, int i2) {
        mo2925f(i2);
        ((C1418y) this).f4097b.writeInt(i);
    }
}
