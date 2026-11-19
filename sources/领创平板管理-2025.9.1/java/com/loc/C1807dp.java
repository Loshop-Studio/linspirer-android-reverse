package com.loc;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.text.TextUtils;
import anet.channel.util.HttpConstant;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.apis.utils.core.DeviceInfo;
import com.huawei.hem.C0891d1;
import com.huawei.hem.C0943f1;
import com.huawei.hem.C1094l1;
import com.taobao.accs.net.C1958t;
import com.taobao.accs.utl.UtilityImpl;
import java.util.ArrayList;
import org.android.agoo.common.AgooConstants;
import org.android.agoo.message.MessageService;

/* compiled from: Aps.java */
@SuppressLint({"NewApi"})
/* renamed from: com.loc.dp */
/* loaded from: classes.dex */
public final class C1807dp {

    /* renamed from: C */
    public static int f5352C = -1;

    /* renamed from: F */
    public static String[] f5353F = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};

    /* renamed from: G */
    public static String f5354G = "android.permission.ACCESS_BACKGROUND_LOCATION";

    /* renamed from: M */
    public static boolean f5355M = false;

    /* renamed from: S */
    public static volatile boolean f5356S = false;

    /* renamed from: H */
    public boolean f5361H;

    /* renamed from: P */
    public Handler f5368P;

    /* renamed from: Q */
    public C1820eb f5369Q;

    /* renamed from: R */
    public String f5370R;

    /* renamed from: T */
    public C1808dq f5371T;

    /* renamed from: a */
    public Context f5372a = null;

    /* renamed from: b */
    public ConnectivityManager f5373b = null;

    /* renamed from: c */
    public C1822ed f5374c = null;

    /* renamed from: d */
    public C1817dz f5375d = null;

    /* renamed from: e */
    public C1824ef f5376e = null;

    /* renamed from: f */
    public C1831em f5377f = null;

    /* renamed from: g */
    public ArrayList<C1796de> f5378g = new ArrayList<>();

    /* renamed from: h */
    public a f5379h = null;

    /* renamed from: i */
    public AMapLocationClientOption f5380i = new AMapLocationClientOption();

    /* renamed from: j */
    public C1812du f5381j = null;

    /* renamed from: k */
    public long f5382k = 0;

    /* renamed from: K */
    public int f5364K = 0;

    /* renamed from: l */
    public C1832en f5383l = null;

    /* renamed from: m */
    public boolean f5384m = false;

    /* renamed from: L */
    public String f5365L = null;

    /* renamed from: n */
    public C1829ek f5385n = null;

    /* renamed from: o */
    public StringBuilder f5386o = new StringBuilder();

    /* renamed from: p */
    public boolean f5387p = true;

    /* renamed from: q */
    public boolean f5388q = true;

    /* renamed from: r */
    public AMapLocationClientOption.GeoLanguage f5389r = AMapLocationClientOption.GeoLanguage.DEFAULT;

    /* renamed from: s */
    public boolean f5390s = true;

    /* renamed from: t */
    public boolean f5391t = false;

    /* renamed from: u */
    public WifiInfo f5392u = null;

    /* renamed from: v */
    public boolean f5393v = true;

    /* renamed from: N */
    public String f5366N = null;

    /* renamed from: w */
    public StringBuilder f5394w = null;

    /* renamed from: x */
    public boolean f5395x = false;

    /* renamed from: y */
    public boolean f5396y = false;

    /* renamed from: z */
    public int f5397z = 12;

    /* renamed from: O */
    public boolean f5367O = true;

    /* renamed from: A */
    public C1814dw f5357A = null;

    /* renamed from: B */
    public boolean f5358B = false;

    /* renamed from: D */
    public C1811dt f5359D = null;

    /* renamed from: E */
    public String f5360E = null;

    /* renamed from: I */
    public IntentFilter f5362I = null;

    /* renamed from: J */
    public LocationManager f5363J = null;

    /* compiled from: Aps.java */
    /* renamed from: com.loc.dp$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5398a;

        static {
            int[] iArr = new int[AMapLocationClientOption.GeoLanguage.values().length];
            f5398a = iArr;
            try {
                AMapLocationClientOption.GeoLanguage geoLanguage = AMapLocationClientOption.GeoLanguage.DEFAULT;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f5398a;
                AMapLocationClientOption.GeoLanguage geoLanguage2 = AMapLocationClientOption.GeoLanguage.ZH;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f5398a;
                AMapLocationClientOption.GeoLanguage geoLanguage3 = AMapLocationClientOption.GeoLanguage.EN;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: Aps.java */
    /* renamed from: com.loc.dp$a */
    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (context == null || intent == null) {
                return;
            }
            try {
                String action = intent.getAction();
                if (TextUtils.isEmpty(action)) {
                    return;
                }
                if (!action.equals("android.net.wifi.SCAN_RESULTS")) {
                    if (!action.equals("android.net.wifi.WIFI_STATE_CHANGED") || C1807dp.this.f5374c == null) {
                        return;
                    }
                    C1807dp.this.f5374c.m4864j();
                    return;
                }
                if (C1807dp.this.f5374c != null) {
                    C1807dp.this.f5374c.m4863i();
                }
                try {
                    if (intent.getExtras() == null || !intent.getExtras().getBoolean("resultsUpdated", true) || C1807dp.this.f5374c == null) {
                        return;
                    }
                    C1807dp.this.f5374c.m4862h();
                } catch (Throwable unused) {
                }
            } catch (Throwable th) {
                C1834ep.m5014a(th, "Aps", "onReceive");
            }
        }
    }

    public C1807dp(boolean z) {
        this.f5361H = false;
        this.f5361H = z;
    }

    /* renamed from: a */
    public static C1812du m4598a(int i, String str) {
        C1812du c1812du = new C1812du("");
        c1812du.setErrorCode(i);
        c1812du.setLocationDetail(str);
        if (i == 15) {
            C1839eu.m5076a((String) null, 2151);
        }
        return c1812du;
    }

    /* renamed from: a */
    private C1812du m4599a(C1812du c1812du, C1729as c1729as, C1806do c1806do) {
        if (c1729as != null) {
            try {
                if (c1729as.f5048a != null && c1729as.f5048a.length != 0) {
                    C1831em c1831em = new C1831em();
                    String str = new String(c1729as.f5048a, "UTF-8");
                    if (str.contains("\"status\":\"0\"")) {
                        C1812du c1812duM4962a = c1831em.m4962a(str, this.f5372a, c1729as, c1806do);
                        c1812duM4962a.m4697h(this.f5394w.toString());
                        return c1812duM4962a;
                    }
                    if (!str.contains("</body></html>")) {
                        return null;
                    }
                    c1812du.setErrorCode(5);
                    if (this.f5374c == null || !this.f5374c.m4854a(this.f5373b)) {
                        c1806do.m4593f("#0502");
                        this.f5386o.append("请求可能被劫持了#0502");
                        C1839eu.m5076a((String) null, 2052);
                    } else {
                        c1806do.m4593f("#0501");
                        this.f5386o.append("您连接的是一个需要登录的网络，请确认已经登入网络#0501");
                        C1839eu.m5076a((String) null, C1958t.DEAMON_JOB_ID);
                    }
                    c1812du.setLocationDetail(this.f5386o.toString());
                    return c1812du;
                }
            } catch (Throwable th) {
                c1812du.setErrorCode(4);
                C1834ep.m5014a(th, "Aps", "checkResponseEntity");
                c1806do.m4593f("#0403");
                this.f5386o.append("check response exception ex is" + th.getMessage() + "#0403");
                c1812du.setLocationDetail(this.f5386o.toString());
                return c1812du;
            }
        }
        c1812du.setErrorCode(4);
        this.f5386o.append("网络异常,请求异常#0403");
        c1806do.m4593f("#0403");
        c1812du.m4697h(this.f5394w.toString());
        c1812du.setLocationDetail(this.f5386o.toString());
        if (c1729as != null) {
            C1839eu.m5076a(c1729as.f5051d, 2041);
        }
        return c1812du;
    }

    /* renamed from: a */
    private StringBuilder m4600a(StringBuilder sb) {
        if (sb == null) {
            sb = new StringBuilder(700);
        } else {
            sb.delete(0, sb.length());
        }
        sb.append(this.f5375d.m4780l());
        sb.append(this.f5374c.m4868n());
        return sb;
    }

    /* renamed from: a */
    private boolean m4601a(long j) {
        if (!this.f5367O) {
            this.f5367O = true;
            return false;
        }
        if (C1841ew.m5127b() - j < 800) {
            if ((C1841ew.m5117a(this.f5381j) ? C1841ew.m5107a() - this.f5381j.getTime() : 0L) <= 10000) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: b */
    private C1812du m4602b(boolean z, C1806do c1806do) {
        StringBuilder sb;
        StringBuilder sb2;
        String str;
        String str2;
        try {
            if (TextUtils.isEmpty(this.f5370R)) {
                this.f5370R = C1094l1.m2247p(DeviceInfo.m1078l(this.f5372a) + "," + DeviceInfo.m1083q(this.f5372a));
            }
            StringBuilder sb3 = this.f5386o;
            sb3.append("#id:");
            sb3.append(this.f5370R);
        } catch (Throwable unused) {
        }
        C1812du c1812du = new C1812du("");
        try {
            byte[] bArrM4611l = m4611l();
            long jM5127b = C1841ew.m5127b();
            this.f5382k = jM5127b;
            c1806do.m4579a(jM5127b);
            try {
                C1834ep.m5024c(this.f5372a);
                C1830el c1830elM4942a = this.f5385n.m4942a(this.f5372a, bArrM4611l, C1834ep.m5010a(), C1834ep.m5020b(), z);
                c1830elM4942a.mo1737b();
                String strMo1739c = c1830elM4942a.mo1739c();
                C0943f1.m1708b(this.f5372a);
                boolean z2 = !TextUtils.isEmpty(strMo1739c) && strMo1739c.contains("dualstack");
                int i = C1827ei.f5630a;
                if (C0943f1.m1720n() && C0943f1.m1700C() && z2) {
                    i = C1827ei.f5631b;
                }
                String strM4932a = C0943f1.m1731y() ? null : C1827ei.m4919a(this.f5372a).m4932a(c1830elM4942a, i);
                c1806do.m4580a(i == C1827ei.f5631b ? "v6" : "v4");
                C1729as c1729asM4941a = this.f5385n.m4941a(c1830elM4942a);
                long jM5127b2 = C1841ew.m5127b();
                if (!TextUtils.isEmpty(strM4932a)) {
                    if (c1729asM4941a.f5053f) {
                        C1827ei.m4919a(this.f5372a).m4934a(false, i);
                        C1827ei.m4919a(this.f5372a).m4933a(i);
                    } else {
                        C1827ei.m4919a(this.f5372a).m4934a(true, i);
                    }
                }
                if (c1729asM4941a == null || TextUtils.isEmpty(strM4932a)) {
                    c1806do.m4589d(HttpConstant.SUCCESS);
                } else if (c1729asM4941a.f5053f) {
                    c1806do.m4583b(strM4932a);
                    c1806do.m4586c("FAIL");
                    c1806do.m4589d(HttpConstant.SUCCESS);
                } else {
                    c1806do.m4583b(strM4932a);
                    c1806do.m4586c(HttpConstant.SUCCESS);
                }
                if (this.f5371T != null) {
                    this.f5371T.m4655d();
                }
                c1806do.m4582b(jM5127b2);
                if (c1729asM4941a != null) {
                    if (!TextUtils.isEmpty(c1729asM4941a.f5050c)) {
                        this.f5386o.append("#csid:" + c1729asM4941a.f5050c);
                    }
                    str2 = c1729asM4941a.f5051d;
                    c1812du.m4697h(this.f5394w.toString());
                } else {
                    str2 = "";
                }
                C1812du c1812duM4599a = m4599a(c1812du, c1729asM4941a, c1806do);
                if (c1812duM4599a != null) {
                    return c1812duM4599a;
                }
                byte[] bArrM4876b = C1823ee.m4876b(c1729asM4941a.f5048a);
                if (bArrM4876b == null) {
                    c1812du.setErrorCode(5);
                    c1806do.m4593f("#0503");
                    this.f5386o.append("解密数据失败#0503");
                    c1812du.setLocationDetail(this.f5386o.toString());
                    C1839eu.m5076a(str2, 2053);
                    return c1812du;
                }
                C1812du c1812duM4960a = this.f5377f.m4960a(c1812du, bArrM4876b, c1806do);
                if (C1841ew.m5117a(c1812duM4960a)) {
                    m4605c(c1812duM4960a);
                    c1812duM4960a.setOffset(this.f5388q);
                    c1812duM4960a.m4682a(this.f5387p);
                    c1812duM4960a.m4693f(String.valueOf(this.f5389r));
                    c1812duM4960a.m4691e("new");
                    c1812duM4960a.setLocationDetail(this.f5386o.toString());
                    this.f5360E = c1812duM4960a.m4678a();
                    return c1812duM4960a;
                }
                String strM4683b = c1812duM4960a.m4683b();
                this.f5365L = strM4683b;
                C1839eu.m5076a(str2, !TextUtils.isEmpty(strM4683b) ? 2062 : 2061);
                c1812duM4960a.setErrorCode(6);
                c1806do.m4593f("#0601");
                StringBuilder sb4 = this.f5386o;
                StringBuilder sb5 = new StringBuilder("location faile retype:");
                sb5.append(c1812duM4960a.m4688d());
                sb5.append(" rdesc:");
                sb5.append(TextUtils.isEmpty(this.f5365L) ? "" : this.f5365L);
                sb5.append("#0601");
                sb4.append(sb5.toString());
                c1812duM4960a.m4697h(this.f5394w.toString());
                c1812duM4960a.setLocationDetail(this.f5386o.toString());
                return c1812duM4960a;
            } catch (Throwable th) {
                C1841ew.m5127b();
                c1806do.m4589d("FAIL");
                C1827ei.m4919a(this.f5372a).m4934a(false, C1827ei.f5630a);
                C1834ep.m5014a(th, "Aps", "getApsLoc req");
                C1839eu.m5079a("/mobile/binary", th);
                if (C1841ew.m5143d(this.f5372a)) {
                    if (th instanceof C0891d1) {
                        C0891d1 c0891d1 = th;
                        if (c0891d1.m1553a().contains("网络异常状态码")) {
                            c1806do.m4593f("#0404");
                            StringBuilder sb6 = this.f5386o;
                            sb6.append("网络异常，状态码错误#0404");
                            sb6.append(c0891d1.m1560f());
                            C1812du c1812duM4598a = m4598a(4, this.f5386o.toString());
                            c1812duM4598a.m4697h(this.f5394w.toString());
                            return c1812duM4598a;
                        }
                        if (c0891d1.m1560f() == 23 || Math.abs((C1841ew.m5127b() - this.f5382k) - this.f5380i.getHttpTimeOut()) < 500) {
                            c1806do.m4593f("#0402");
                            sb2 = this.f5386o;
                            str = "网络异常，连接超时#0402";
                        } else {
                            sb = new StringBuilder("#0403,");
                        }
                    } else {
                        sb = new StringBuilder("#0403,");
                    }
                    sb.append(th.getMessage());
                    c1806do.m4593f(sb.toString());
                    sb2 = this.f5386o;
                    str = "网络异常,请求异常#0403";
                } else {
                    c1806do.m4593f("#0401");
                    sb2 = this.f5386o;
                    str = "网络异常，未连接到网络，请连接网络#0401";
                }
                sb2.append(str);
                C1812du c1812duM4598a2 = m4598a(4, this.f5386o.toString());
                c1812duM4598a2.m4697h(this.f5394w.toString());
                return c1812duM4598a2;
            }
        } catch (Throwable th2) {
            c1806do.m4593f("#0301");
            this.f5386o.append("get parames error:" + th2.getMessage() + "#0301");
            C1839eu.m5076a((String) null, 2031);
            C1812du c1812duM4598a3 = m4598a(3, this.f5386o.toString());
            c1812duM4598a3.m4697h(this.f5394w.toString());
            return c1812duM4598a3;
        }
    }

    /* renamed from: b */
    private void m4603b(Context context) {
        try {
            if (context.checkCallingOrSelfPermission(C1094l1.m2251t("EYW5kcm9pZC5wZXJtaXNzaW9uLldSSVRFX1NFQ1VSRV9TRVRUSU5HUw==")) == 0) {
                this.f5384m = true;
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:143:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0262 A[PHI: r15
      0x0262: PHI (r15v17 java.lang.StringBuilder) = 
      (r15v16 java.lang.StringBuilder)
      (r15v16 java.lang.StringBuilder)
      (r15v18 java.lang.StringBuilder)
      (r15v18 java.lang.StringBuilder)
     binds: [B:88:0x025c, B:90:0x0260, B:82:0x0222, B:84:0x0226] A[DONT_GENERATE, DONT_INLINE]] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m4604c(com.loc.C1806do r15) {
        /*
            Method dump skipped, instructions count: 861
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1807dp.m4604c(com.loc.do):java.lang.String");
    }

    /* renamed from: c */
    public static void m4605c(C1812du c1812du) {
        if (c1812du.getErrorCode() == 0 && c1812du.getLocationType() == 0) {
            if ("-5".equals(c1812du.m4688d()) || "1".equals(c1812du.m4688d()) || MessageService.MSG_DB_NOTIFY_CLICK.equals(c1812du.m4688d()) || AgooConstants.ACK_PACK_NOBIND.equals(c1812du.m4688d()) || AgooConstants.REPORT_NOT_ENCRYPT.equals(c1812du.m4688d()) || "-1".equals(c1812du.m4688d())) {
                c1812du.setLocationType(5);
            } else {
                c1812du.setLocationType(6);
            }
        }
    }

    /* renamed from: d */
    private void m4606d(C1812du c1812du) {
        if (c1812du != null) {
            this.f5381j = c1812du;
        }
    }

    /* renamed from: h */
    private void m4607h() {
        if (this.f5385n != null) {
            try {
                if (this.f5380i == null) {
                    this.f5380i = new AMapLocationClientOption();
                }
                this.f5385n.m4944a(this.f5380i.getHttpTimeOut(), this.f5380i.getLocationProtocol().equals(AMapLocationClientOption.AMapLocationProtocol.HTTPS), m4608i());
            } catch (Throwable unused) {
            }
        }
    }

    /* renamed from: i */
    private int m4608i() {
        int i;
        if (this.f5380i.getGeoLanguage() != null && (i = AnonymousClass1.f5398a[this.f5380i.getGeoLanguage().ordinal()]) != 1) {
            if (i == 2) {
                return 1;
            }
            if (i == 3) {
                return 2;
            }
        }
        return 0;
    }

    /* renamed from: j */
    private void m4609j() {
        boolean zIsNeedAddress;
        boolean z;
        boolean zIsOffset;
        AMapLocationClientOption.GeoLanguage geoLanguage = AMapLocationClientOption.GeoLanguage.DEFAULT;
        boolean zIsLocationCacheEnable = true;
        try {
            geoLanguage = this.f5380i.getGeoLanguage();
            zIsNeedAddress = this.f5380i.isNeedAddress();
            try {
                zIsOffset = this.f5380i.isOffset();
            } catch (Throwable unused) {
                z = true;
            }
        } catch (Throwable unused2) {
            zIsNeedAddress = true;
            z = true;
        }
        try {
            zIsLocationCacheEnable = this.f5380i.isLocationCacheEnable();
            this.f5391t = this.f5380i.isOnceLocationLatest();
            this.f5358B = this.f5380i.isSensorEnable();
            if (zIsOffset != this.f5388q || zIsNeedAddress != this.f5387p || zIsLocationCacheEnable != this.f5390s || geoLanguage != this.f5389r) {
                m4616q();
            }
        } catch (Throwable unused3) {
            z = zIsLocationCacheEnable;
            zIsLocationCacheEnable = zIsOffset;
            boolean z2 = z;
            zIsOffset = zIsLocationCacheEnable;
            zIsLocationCacheEnable = z2;
            this.f5388q = zIsOffset;
            this.f5387p = zIsNeedAddress;
            this.f5390s = zIsLocationCacheEnable;
            this.f5389r = geoLanguage;
        }
        this.f5388q = zIsOffset;
        this.f5387p = zIsNeedAddress;
        this.f5390s = zIsLocationCacheEnable;
        this.f5389r = geoLanguage;
    }

    /* renamed from: k */
    private void m4610k() {
        try {
            if (this.f5379h == null) {
                this.f5379h = new a();
            }
            if (this.f5362I == null) {
                IntentFilter intentFilter = new IntentFilter();
                this.f5362I = intentFilter;
                intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
                this.f5362I.addAction("android.net.wifi.SCAN_RESULTS");
            }
            this.f5372a.registerReceiver(this.f5379h, this.f5362I);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "Aps", "initBroadcastListener");
        }
    }

    /* renamed from: l */
    private byte[] m4611l() {
        if (this.f5383l == null) {
            this.f5383l = new C1832en();
        }
        if (this.f5380i == null) {
            this.f5380i = new AMapLocationClientOption();
        }
        this.f5383l.m4969a(this.f5372a, this.f5380i.isNeedAddress(), this.f5380i.isOffset(), this.f5375d, this.f5374c, this.f5373b, this.f5360E, this.f5369Q);
        return this.f5383l.m4970a();
    }

    /* renamed from: m */
    private boolean m4612m() {
        return this.f5382k == 0 || C1841ew.m5127b() - this.f5382k > 20000;
    }

    /* renamed from: n */
    private void m4613n() {
        C1822ed c1822ed = this.f5374c;
        if (c1822ed == null) {
            return;
        }
        c1822ed.m4852a(this.f5384m);
    }

    /* renamed from: o */
    private boolean m4614o() {
        ArrayList<C1796de> arrayListM4859e = this.f5374c.m4859e();
        this.f5378g = arrayListM4859e;
        return arrayListM4859e == null || arrayListM4859e.size() <= 0;
    }

    /* renamed from: p */
    private void m4615p() {
        if (this.f5366N != null) {
            this.f5366N = null;
        }
        StringBuilder sb = this.f5394w;
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    /* renamed from: q */
    private void m4616q() {
        try {
            if (this.f5376e != null) {
                this.f5376e.m4895a();
            }
            m4606d(null);
            this.f5367O = false;
            if (this.f5359D != null) {
                this.f5359D.m4674a();
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "Aps", "cleanCache");
        }
    }

    /* renamed from: a */
    public final C1812du m4617a(double d, double d2) {
        try {
            String strM4943a = this.f5385n.m4943a(this.f5372a, d, d2);
            if (!strM4943a.contains("\"status\":\"1\"")) {
                return null;
            }
            C1812du c1812duM4961a = this.f5377f.m4961a(strM4943a);
            c1812duM4961a.setLatitude(d);
            c1812duM4961a.setLongitude(d2);
            return c1812duM4961a;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:50|(1:52)(2:54|(1:56)(9:57|(1:59)|85|60|(2:63|(1:65)(2:66|(1:68)(2:69|(1:71)(1:72))))|73|(3:75|(1:80)(1:79)|81)|82|83))|53|85|60|(2:63|(0)(0))|73|(0)|82|83) */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0164 A[Catch: all -> 0x0180, TryCatch #0 {all -> 0x0180, blocks: (B:60:0x0154, B:63:0x015a, B:65:0x0164, B:68:0x016e, B:71:0x0178, B:72:0x017d), top: B:85:0x0154 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x019b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.loc.C1812du m4618a(com.loc.C1806do r18) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1807dp.m4618a(com.loc.do):com.loc.du");
    }

    /* renamed from: a */
    public final C1812du m4619a(C1812du c1812du) {
        this.f5359D.m4675a(this.f5390s);
        return this.f5359D.m4673a(c1812du);
    }

    /* renamed from: a */
    public final C1812du m4620a(boolean z) {
        int i;
        String string;
        if (this.f5374c.m4867m()) {
            i = 15;
            string = "networkLocation has been mocked!#1502";
        } else {
            if (!TextUtils.isEmpty(this.f5366N)) {
                C1812du c1812duM4893a = this.f5376e.m4893a(this.f5372a, this.f5366N, this.f5394w, true, z);
                if (C1841ew.m5117a(c1812duM4893a)) {
                    m4606d(c1812duM4893a);
                }
                return c1812duM4893a;
            }
            i = this.f5397z;
            string = this.f5386o.toString();
        }
        return m4598a(i, string);
    }

    /* renamed from: a */
    public final C1812du m4621a(boolean z, C1806do c1806do) {
        c1806do.m4591e(z ? "statics" : "first");
        if (this.f5372a == null) {
            c1806do.m4593f("#0101");
            this.f5386o.append("context is null#0101");
            C1839eu.m5076a((String) null, 2011);
            return m4598a(1, this.f5386o.toString());
        }
        if (this.f5374c.m4867m()) {
            c1806do.m4593f("#1502");
            return m4598a(15, "networkLocation has been mocked!#1502");
        }
        m4622a();
        if (TextUtils.isEmpty(this.f5366N)) {
            return m4598a(this.f5397z, this.f5386o.toString());
        }
        C1812du c1812duM4602b = m4602b(z, c1806do);
        if (C1841ew.m5117a(c1812duM4602b) && !f5356S) {
            this.f5376e.m4899a(this.f5394w.toString());
            this.f5376e.m4898a(this.f5375d.m4772d());
            m4606d(c1812duM4602b);
        }
        f5356S = true;
        return c1812duM4602b;
    }

    /* renamed from: a */
    public final void m4622a() {
        this.f5385n = C1829ek.m4940a(this.f5372a);
        m4607h();
        if (this.f5373b == null) {
            this.f5373b = (ConnectivityManager) C1841ew.m5108a(this.f5372a, "connectivity");
        }
        if (this.f5383l == null) {
            this.f5383l = new C1832en();
        }
    }

    /* renamed from: a */
    public final void m4623a(Context context) {
        try {
            if (this.f5372a != null) {
                return;
            }
            this.f5359D = new C1811dt();
            Context applicationContext = context.getApplicationContext();
            this.f5372a = applicationContext;
            C1841ew.m5129b(applicationContext);
            if (this.f5374c == null) {
                this.f5374c = new C1822ed(this.f5372a, (WifiManager) C1841ew.m5108a(this.f5372a, UtilityImpl.NET_TYPE_WIFI), this.f5368P);
            }
            if (this.f5375d == null) {
                this.f5375d = new C1817dz(this.f5372a, this.f5368P);
            }
            this.f5369Q = new C1820eb(context, this.f5368P);
            if (this.f5376e == null) {
                this.f5376e = new C1824ef();
            }
            if (this.f5377f == null) {
                this.f5377f = new C1831em();
            }
        } catch (Throwable th) {
            th.printStackTrace();
            C1834ep.m5014a(th, "Aps", "initBase");
        }
    }

    /* renamed from: a */
    public final void m4624a(Handler handler) {
        this.f5368P = handler;
    }

    /* renamed from: a */
    public final void m4625a(AMapLocation aMapLocation) {
        if (aMapLocation.getErrorCode() != 0) {
            return;
        }
        C1819ea c1819ea = new C1819ea();
        c1819ea.f5560a = aMapLocation.getLocationType();
        c1819ea.f5563d = aMapLocation.getTime();
        c1819ea.f5564e = (int) aMapLocation.getAccuracy();
        c1819ea.f5561b = aMapLocation.getLatitude();
        c1819ea.f5562c = aMapLocation.getLongitude();
        if (aMapLocation.getLocationType() == 1) {
            this.f5369Q.m4831a(c1819ea);
        }
    }

    /* renamed from: a */
    public final void m4626a(AMapLocationClientOption aMapLocationClientOption) {
        this.f5380i = aMapLocationClientOption;
        if (aMapLocationClientOption == null) {
            this.f5380i = new AMapLocationClientOption();
        }
        C1822ed c1822ed = this.f5374c;
        if (c1822ed != null) {
            this.f5380i.isWifiActiveScan();
            c1822ed.m4853a(this.f5380i.isWifiScan(), this.f5380i.isMockEnable(), AMapLocationClientOption.isOpenAlwaysScanWifi(), aMapLocationClientOption.getScanWifiInterval());
        }
        m4607h();
        C1824ef c1824ef = this.f5376e;
        if (c1824ef != null) {
            c1824ef.m4897a(this.f5380i);
        }
        C1831em c1831em = this.f5377f;
        if (c1831em != null) {
            c1831em.m4963a(this.f5380i);
        }
        m4609j();
    }

    /* renamed from: a */
    public final void m4627a(C1812du c1812du, int i) {
        if (c1812du != null && c1812du.getErrorCode() == 0) {
            C1819ea c1819ea = new C1819ea();
            c1819ea.f5563d = c1812du.getTime();
            c1819ea.f5564e = (int) c1812du.getAccuracy();
            c1819ea.f5561b = c1812du.getLatitude();
            c1819ea.f5562c = c1812du.getLongitude();
            c1819ea.f5560a = i;
            c1819ea.f5566g = Integer.parseInt(c1812du.m4688d());
            c1819ea.f5567h = c1812du.m4701l();
            this.f5369Q.m4833b(c1819ea);
        }
    }

    /* renamed from: b */
    public final void m4628b() {
        if (this.f5357A == null) {
            this.f5357A = new C1814dw(this.f5372a);
        }
        m4610k();
        this.f5374c.m4855b(false);
        this.f5378g = this.f5374c.m4859e();
        this.f5375d.m4769a(false, m4614o());
        this.f5376e.m4896a(this.f5372a);
        m4603b(this.f5372a);
        this.f5396y = true;
    }

    /* renamed from: b */
    public final void m4629b(C1806do c1806do) {
        try {
        } catch (Throwable th) {
            C1834ep.m5014a(th, "Aps", "initFirstLocateParam");
        }
        if (this.f5395x) {
            return;
        }
        m4615p();
        if (this.f5391t) {
            m4610k();
        }
        this.f5374c.m4855b(this.f5391t);
        this.f5378g = this.f5374c.m4859e();
        this.f5375d.m4769a(true, m4614o());
        String strM4604c = m4604c(c1806do);
        this.f5366N = strM4604c;
        if (!TextUtils.isEmpty(strM4604c)) {
            this.f5394w = m4600a(this.f5394w);
        }
        this.f5395x = true;
    }

    /* renamed from: b */
    public final void m4630b(C1812du c1812du) {
        if (C1841ew.m5117a(c1812du)) {
            this.f5376e.m4900a(this.f5366N, this.f5394w, c1812du, this.f5372a, true);
        }
    }

    /* renamed from: c */
    public final void m4631c() {
        if (this.f5386o.length() > 0) {
            StringBuilder sb = this.f5386o;
            sb.delete(0, sb.length());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005f  */
    @android.annotation.SuppressLint({"NewApi"})
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4632d() {
        /*
            r4 = this;
            r0 = 0
            r4.f5360E = r0
            r1 = 0
            r4.f5395x = r1
            r4.f5396y = r1
            com.loc.ef r1 = r4.f5376e
            if (r1 == 0) goto L11
            android.content.Context r2 = r4.f5372a
            r1.m4901b(r2)
        L11:
            com.loc.dt r1 = r4.f5359D
            if (r1 == 0) goto L18
            r1.m4674a()
        L18:
            com.loc.em r1 = r4.f5377f
            if (r1 == 0) goto L1e
            r4.f5377f = r0
        L1e:
            com.loc.eb r1 = r4.f5369Q
            if (r1 == 0) goto L27
            boolean r2 = r4.f5361H
            r1.m4832a(r2)
        L27:
            android.content.Context r1 = r4.f5372a     // Catch: java.lang.Throwable -> L39
            if (r1 == 0) goto L36
            com.loc.dp$a r1 = r4.f5379h     // Catch: java.lang.Throwable -> L39
            if (r1 == 0) goto L36
            android.content.Context r1 = r4.f5372a     // Catch: java.lang.Throwable -> L39
            com.loc.dp$a r2 = r4.f5379h     // Catch: java.lang.Throwable -> L39
            r1.unregisterReceiver(r2)     // Catch: java.lang.Throwable -> L39
        L36:
            r4.f5379h = r0
            goto L42
        L39:
            r1 = move-exception
            java.lang.String r2 = "Aps"
            java.lang.String r3 = "destroy"
            com.loc.C1834ep.m5014a(r1, r2, r3)     // Catch: java.lang.Throwable -> L6b
            goto L36
        L42:
            com.loc.dz r1 = r4.f5375d
            if (r1 == 0) goto L4b
            boolean r2 = r4.f5361H
            r1.m4768a(r2)
        L4b:
            com.loc.ed r1 = r4.f5374c
            if (r1 == 0) goto L54
            boolean r2 = r4.f5361H
            r1.m4857c(r2)
        L54:
            java.util.ArrayList<com.loc.de> r1 = r4.f5378g
            if (r1 == 0) goto L5b
            r1.clear()
        L5b:
            com.loc.dw r1 = r4.f5357A
            if (r1 == 0) goto L62
            r1.m4733f()
        L62:
            r4.f5381j = r0
            r4.f5372a = r0
            r4.f5394w = r0
            r4.f5363J = r0
            return
        L6b:
            r1 = move-exception
            r4.f5379h = r0
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1807dp.m4632d():void");
    }

    /* renamed from: e */
    public final void m4633e() {
        C1808dq c1808dq = this.f5371T;
        if (c1808dq != null) {
            c1808dq.m4655d();
        }
    }

    /* renamed from: f */
    public final void m4634f() {
        try {
            if (this.f5372a == null) {
                return;
            }
            if (this.f5371T == null) {
                this.f5371T = new C1808dq(this.f5372a);
            }
            this.f5371T.m4652a(this.f5375d, this.f5374c, this.f5368P);
        } catch (Throwable th) {
            C1862w.m5333b(th, "as", "stc");
        }
    }

    /* renamed from: g */
    public final void m4635g() {
        C1808dq c1808dq = this.f5371T;
        if (c1808dq != null) {
            c1808dq.m4650a();
        }
    }
}
