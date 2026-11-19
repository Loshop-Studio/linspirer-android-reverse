package com.loc;

import android.os.Build;
import com.huawei.hem.C0948f6;
import org.android.agoo.common.AgooConstants;

/* compiled from: Rom.java */
/* renamed from: com.loc.r */
/* loaded from: classes.dex */
public enum EnumC1857r {
    MIUI(AgooConstants.MESSAGE_SYSTEM_SOURCE_XIAOMI),
    Flyme(AgooConstants.MESSAGE_SYSTEM_SOURCE_MEIZU),
    EMUI(AgooConstants.MESSAGE_SYSTEM_SOURCE_HUAWEI),
    ColorOS(AgooConstants.MESSAGE_SYSTEM_SOURCE_OPPO),
    FuntouchOS(AgooConstants.MESSAGE_SYSTEM_SOURCE_VIVO),
    SmartisanOS("smartisan"),
    AmigoOS("amigo"),
    EUI("letv"),
    Sense("htc"),
    LG("lge"),
    Google("google"),
    NubiaUI("nubia"),
    Other("");


    /* renamed from: n */
    public String f5931n;

    /* renamed from: o */
    public int f5932o;

    /* renamed from: p */
    public String f5933p;

    /* renamed from: q */
    public String f5934q;

    /* renamed from: r */
    public String f5935r = Build.MANUFACTURER;

    EnumC1857r(String str) {
        this.f5931n = str;
    }

    /* renamed from: a */
    public final String m5289a() {
        return this.f5931n;
    }

    /* renamed from: a */
    public final void m5290a(int i) {
        this.f5932o = i;
    }

    /* renamed from: a */
    public final void m5291a(String str) {
        this.f5933p = str;
    }

    /* renamed from: b */
    public final String m5292b() {
        return this.f5933p;
    }

    /* renamed from: b */
    public final void m5293b(String str) {
        this.f5934q = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("ROM{name='");
        sb.append(name());
        sb.append('\'');
        sb.append(",versionCode=");
        sb.append(this.f5932o);
        sb.append(", versionName='");
        C0948f6.m1781z(sb, this.f5934q, '\'', ",ma=");
        C0948f6.m1781z(sb, this.f5931n, '\'', ",manufacturer=");
        sb.append(this.f5935r);
        sb.append('\'');
        sb.append('}');
        return sb.toString();
    }
}
