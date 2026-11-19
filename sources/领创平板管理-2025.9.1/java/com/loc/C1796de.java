package com.loc;

import com.huawei.hem.C0948f6;

/* compiled from: AmapWifi.java */
/* renamed from: com.loc.de */
/* loaded from: classes.dex */
public final class C1796de {

    /* renamed from: a */
    public long f5295a;

    /* renamed from: b */
    public String f5296b;

    /* renamed from: d */
    public int f5298d;

    /* renamed from: e */
    public long f5299e;

    /* renamed from: g */
    public short f5301g;

    /* renamed from: h */
    public boolean f5302h;

    /* renamed from: c */
    public int f5297c = -113;

    /* renamed from: f */
    public long f5300f = 0;

    public C1796de(boolean z) {
        this.f5302h = z;
    }

    /* renamed from: a */
    public static long m4515a(String str) {
        long j;
        if (str == null || str.length() == 0) {
            return 0L;
        }
        int i = 0;
        long j2 = 0;
        for (int length = str.length() - 1; length >= 0; length--) {
            long jCharAt = str.charAt(length);
            if (jCharAt < 48 || jCharAt > 57) {
                long j3 = 97;
                if (jCharAt < 97 || jCharAt > 102) {
                    j3 = 65;
                    if (jCharAt < 65 || jCharAt > 70) {
                        if (jCharAt != 58 && jCharAt != 124) {
                            return 0L;
                        }
                    }
                }
                j = (jCharAt - j3) + 10;
            } else {
                j = jCharAt - 48;
            }
            j2 += j << i;
            i += 4;
        }
        if (i != 48) {
            return 0L;
        }
        return j2;
    }

    /* renamed from: a */
    public static String m4516a(long j) {
        if (j < 0 || j > 281474976710655L) {
            return null;
        }
        return C1804dm.m4575a(C1804dm.m4576a(j), ":");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1796de clone() {
        C1796de c1796de = new C1796de(this.f5302h);
        c1796de.f5295a = this.f5295a;
        c1796de.f5296b = this.f5296b;
        c1796de.f5297c = this.f5297c;
        c1796de.f5298d = this.f5298d;
        c1796de.f5299e = this.f5299e;
        c1796de.f5300f = this.f5300f;
        c1796de.f5301g = this.f5301g;
        c1796de.f5302h = this.f5302h;
        return c1796de;
    }

    /* renamed from: a */
    public final String m4518a() {
        return this.f5302h + "#" + this.f5295a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AmapWifi{mac=");
        sb.append(this.f5295a);
        sb.append(", ssid='");
        C0948f6.m1781z(sb, this.f5296b, '\'', ", rssi=");
        sb.append(this.f5297c);
        sb.append(", frequency=");
        sb.append(this.f5298d);
        sb.append(", timestamp=");
        sb.append(this.f5299e);
        sb.append(", lastUpdateUtcMills=");
        sb.append(this.f5300f);
        sb.append(", freshness=");
        sb.append((int) this.f5301g);
        sb.append(", connected=");
        sb.append(this.f5302h);
        sb.append('}');
        return sb.toString();
    }
}
