package com.loc;

import android.content.Context;
import android.support.v4.app.Person;
import com.huawei.hem.IPV6Request;
import com.huawei.hem.AppInfo;
import com.huawei.hem.AMapEncryptionUtilities;
import com.huawei.hem.SDKInfo;
import com.huawei.hem.AMapCoreUtilities;
import com.huawei.hem.AgooNotificationHandler;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BinaryRequest.java */
/* renamed from: com.loc.an */
/* loaded from: classes.dex */
public abstract class BinaryRequest extends IPV6Request {

    /* renamed from: a */
    public Context f4939a;

    /* renamed from: b */
    public SDKInfo f4940b;

    public BinaryRequest(Context context, SDKInfo c1069k1) {
        if (context != null) {
            this.f4939a = context.getApplicationContext();
        }
        this.f4940b = c1069k1;
        m4152r();
    }

    /* renamed from: A */
    public static byte[] m4069A() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(AMapCoreUtilities.m2245n("PANDORA$"));
            byteArrayOutputStream.write(new byte[]{1});
            byteArrayOutputStream.write(new byte[]{0});
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th) {
            try {
                BasicLogHandler.m5312a(th, "bre", "gbh");
                try {
                    byteArrayOutputStream.close();
                    return null;
                } catch (Throwable th2) {
                    BasicLogHandler.m5312a(th2, "bre", "gbh");
                    return null;
                }
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    BasicLogHandler.m5312a(th3, "bre", "gbh");
                }
            }
        }
    }

    /* renamed from: B */
    private byte[] m4070B() {
        byte[] bArrM2515k;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(new byte[]{3});
            if (mo4074h()) {
                try {
                    bArrM2515k = AgooNotificationHandler.m2515k(AgooNotificationHandler.m2517m(this.f4939a, mo4076j(), this.f4940b != null && "navi".equals(this.f4940b.m2156a())));
                } catch (Throwable th) {
                    BasicLogHandler.m5312a(th, "CI", "gz");
                    bArrM2515k = null;
                }
                byteArrayOutputStream.write(m4073a(bArrM2515k));
                byteArrayOutputStream.write(bArrM2515k);
            } else {
                byteArrayOutputStream.write(new byte[]{0, 0});
            }
            byte[] bArrM2245n = AMapCoreUtilities.m2245n(mo1740f());
            if (bArrM2245n == null || bArrM2245n.length <= 0) {
                byteArrayOutputStream.write(new byte[]{0, 0});
            } else {
                byteArrayOutputStream.write(m4073a(bArrM2245n));
                byteArrayOutputStream.write(bArrM2245n);
            }
            byte[] bArrM2245n2 = AMapCoreUtilities.m2245n(mo4075i());
            if (bArrM2245n2 == null || bArrM2245n2.length <= 0) {
                byteArrayOutputStream.write(new byte[]{0, 0});
            } else {
                byteArrayOutputStream.write(m4073a(bArrM2245n2));
                byteArrayOutputStream.write(bArrM2245n2);
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            try {
                BasicLogHandler.m5312a(th2, "bre", "gpd");
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    BasicLogHandler.m5312a(th3, "bre", "gred");
                }
                return new byte[]{0};
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    BasicLogHandler.m5312a(th4, "bre", "gred");
                }
            }
        }
    }

    /* renamed from: C */
    private byte[] m4071C() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArrMo1736a_ = mo1736a_();
            if (bArrMo1736a_ != null && bArrMo1736a_.length != 0) {
                byteArrayOutputStream.write(new byte[]{1});
                byteArrayOutputStream.write(m4073a(bArrMo1736a_));
                byteArrayOutputStream.write(bArrMo1736a_);
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(new byte[]{0});
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                BasicLogHandler.m5312a(th, "bre", "grrd");
            }
            return byteArray;
        } catch (Throwable th2) {
            try {
                BasicLogHandler.m5312a(th2, "bre", "grrd");
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    BasicLogHandler.m5312a(th3, "bre", "grrd");
                }
                return new byte[]{0};
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    BasicLogHandler.m5312a(th4, "bre", "grrd");
                }
            }
        }
    }

    /* renamed from: D */
    private byte[] m4072D() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArrMo1738b_ = mo1738b_();
            if (bArrMo1738b_ != null && bArrMo1738b_.length != 0) {
                byteArrayOutputStream.write(new byte[]{1});
                byte[] bArrM1930a = AMapEncryptionUtilities.m1930a(bArrMo1738b_);
                byteArrayOutputStream.write(m4073a(bArrM1930a));
                byteArrayOutputStream.write(bArrM1930a);
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(new byte[]{0});
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                BasicLogHandler.m5312a(th, "bre", "gred");
            }
            return byteArray;
        } catch (Throwable th2) {
            try {
                BasicLogHandler.m5312a(th2, "bre", "gred");
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    BasicLogHandler.m5312a(th3, "bre", "gred");
                }
                return new byte[]{0};
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    BasicLogHandler.m5312a(th4, "bre", "gred");
                }
            }
        }
    }

    /* renamed from: a */
    public static byte[] m4073a(byte[] bArr) {
        return AMapCoreUtilities.m2244m(bArr.length);
    }

    /* renamed from: a_ */
    public abstract byte[] mo1736a_();

    /* renamed from: b_ */
    public abstract byte[] mo1738b_();

    @Override // com.loc.AbstractC1728ar
    /* renamed from: d */
    public Map<String, String> mo4055d() {
        String strM1641g = AppInfo.m1641g(this.f4939a);
        String strM2505a = AgooNotificationHandler.m2505a();
        String strM2506b = AgooNotificationHandler.m2506b(this.f4939a, strM2505a, "key=".concat(String.valueOf(strM1641g)));
        HashMap map = new HashMap();
        map.put("ts", strM2505a);
        map.put(Person.KEY_KEY, strM1641g);
        map.put("scode", strM2506b);
        return map;
    }

    @Override // com.loc.AbstractC1728ar
    /* renamed from: e */
    public final byte[] mo4056e() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(m4069A());
            byteArrayOutputStream.write(m4070B());
            byteArrayOutputStream.write(m4071C());
            byteArrayOutputStream.write(m4072D());
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th) {
            try {
                BasicLogHandler.m5312a(th, "bre", "geb");
                try {
                    byteArrayOutputStream.close();
                    return null;
                } catch (Throwable th2) {
                    BasicLogHandler.m5312a(th2, "bre", "geb");
                    return null;
                }
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    BasicLogHandler.m5312a(th3, "bre", "geb");
                }
            }
        }
    }

    /* renamed from: f */
    public String mo1740f() {
        return "2.1";
    }

    /* renamed from: h */
    public boolean mo4074h() {
        return true;
    }

    /* renamed from: i */
    public String mo4075i() {
        return String.format("platform=Android&sdkversion=%s&product=%s", this.f4940b.m2157b(), this.f4940b.m2156a());
    }

    /* renamed from: j */
    public boolean mo4076j() {
        return false;
    }
}
