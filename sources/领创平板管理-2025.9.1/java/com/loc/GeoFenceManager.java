package com.loc;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.amap.api.fence.GeoFence;
import com.amap.api.fence.GeoFenceListener;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationListener;
import com.amap.api.location.DPoint;
import com.huawei.hem.AppInfo;
import com.huawei.updatesdk.service.otaupdate.UpdateDialogStatusCode;
import com.taobao.accs.common.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* compiled from: GeoFenceManager.java */
@SuppressLint({"NewApi"})
/* renamed from: com.loc.a */
/* loaded from: classes.dex */
public final class GeoFenceManager {

    /* renamed from: A */
    public static boolean f4851A = false;

    /* renamed from: b */
    public Context f4853b;

    /* renamed from: a */
    public ReportUtil f4852a = null;

    /* renamed from: c */
    public PendingIntent f4854c = null;

    /* renamed from: d */
    public String f4855d = null;

    /* renamed from: e */
    public GeoFenceListener f4856e = null;

    /* renamed from: z */
    public Object f4877z = new Object();

    /* renamed from: f */
    public volatile int f4857f = 1;

    /* renamed from: g */
    public ArrayList<GeoFence> f4858g = new ArrayList<>();

    /* renamed from: h */
    public c f4859h = null;

    /* renamed from: i */
    public Object f4860i = new Object();

    /* renamed from: j */
    public Object f4861j = new Object();

    /* renamed from: k */
    public a f4862k = null;

    /* renamed from: l */
    public b f4863l = null;

    /* renamed from: m */
    public volatile boolean f4864m = false;

    /* renamed from: n */
    public volatile boolean f4865n = false;

    /* renamed from: o */
    public volatile boolean f4866o = false;

    /* renamed from: p */
    public GeoFenceNetManager f4867p = null;

    /* renamed from: q */
    public GeoFenceSearchResultParser f4868q = null;

    /* renamed from: r */
    public AMapLocationClient f4869r = null;

    /* renamed from: s */
    public volatile AMapLocation f4870s = null;

    /* renamed from: t */
    public long f4871t = 0;

    /* renamed from: u */
    public AMapLocationClientOption f4872u = null;

    /* renamed from: v */
    public int f4873v = 0;

    /* renamed from: w */
    public AMapLocationListener f4874w = new AMapLocationListener() { // from class: com.loc.a.1
        /* JADX WARN: Removed duplicated region for block: B:17:0x005d A[Catch: all -> 0x009f, TryCatch #0 {all -> 0x009f, blocks: (B:2:0x0000, B:5:0x0007, B:8:0x000e, B:10:0x001b, B:12:0x0025, B:17:0x005d, B:19:0x0068, B:21:0x0073, B:22:0x0085, B:24:0x0093, B:13:0x0035), top: B:27:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0068 A[Catch: all -> 0x009f, TryCatch #0 {all -> 0x009f, blocks: (B:2:0x0000, B:5:0x0007, B:8:0x000e, B:10:0x001b, B:12:0x0025, B:17:0x005d, B:19:0x0068, B:21:0x0073, B:22:0x0085, B:24:0x0093, B:13:0x0035), top: B:27:0x0000 }] */
        @Override // com.amap.api.location.AMapLocationListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onLocationChanged(com.amap.api.location.AMapLocation r14) {
            /*
                r13 = this;
                com.loc.a r0 = com.loc.C1710a.this     // Catch: java.lang.Throwable -> L9f
                boolean r0 = r0.f4876y     // Catch: java.lang.Throwable -> L9f
                if (r0 == 0) goto L7
                return
            L7:
                com.loc.a r0 = com.loc.C1710a.this     // Catch: java.lang.Throwable -> L9f
                boolean r0 = r0.f4866o     // Catch: java.lang.Throwable -> L9f
                if (r0 != 0) goto Le
                return
            Le:
                com.loc.a r0 = com.loc.C1710a.this     // Catch: java.lang.Throwable -> L9f
                r0.f4870s = r14     // Catch: java.lang.Throwable -> L9f
                r0 = 0
                r2 = 0
                r3 = 8
                r4 = 1
                r5 = 0
                if (r14 == 0) goto L59
                int r6 = r14.getErrorCode()     // Catch: java.lang.Throwable -> L9f
                int r7 = r14.getErrorCode()     // Catch: java.lang.Throwable -> L9f
                if (r7 != 0) goto L35
                com.loc.a r14 = com.loc.C1710a.this     // Catch: java.lang.Throwable -> L9f
                long r7 = com.loc.C1841ew.m5127b()     // Catch: java.lang.Throwable -> L9f
                r14.f4871t = r7     // Catch: java.lang.Throwable -> L9f
                com.loc.a r14 = com.loc.C1710a.this     // Catch: java.lang.Throwable -> L9f
                r7 = 5
                r14.m3962a(r7, r2, r0)     // Catch: java.lang.Throwable -> L9f
                r14 = r4
                goto L5b
            L35:
                java.lang.String r7 = "定位失败"
                int r8 = r14.getErrorCode()     // Catch: java.lang.Throwable -> L9f
                java.lang.String r9 = r14.getErrorInfo()     // Catch: java.lang.Throwable -> L9f
                java.lang.String[] r10 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L9f
                java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9f
                java.lang.String r12 = "locationDetail:"
                r11.<init>(r12)     // Catch: java.lang.Throwable -> L9f
                java.lang.String r14 = r14.getLocationDetail()     // Catch: java.lang.Throwable -> L9f
                r11.append(r14)     // Catch: java.lang.Throwable -> L9f
                java.lang.String r14 = r11.toString()     // Catch: java.lang.Throwable -> L9f
                r10[r5] = r14     // Catch: java.lang.Throwable -> L9f
                com.loc.C1710a.m3938a(r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L9f
                goto L5a
            L59:
                r6 = r3
            L5a:
                r14 = r5
            L5b:
                if (r14 == 0) goto L68
                com.loc.a r14 = com.loc.C1710a.this     // Catch: java.lang.Throwable -> L9f
                r14.f4873v = r5     // Catch: java.lang.Throwable -> L9f
                com.loc.a r14 = com.loc.C1710a.this     // Catch: java.lang.Throwable -> L9f
                r3 = 6
                r14.m3962a(r3, r2, r0)     // Catch: java.lang.Throwable -> L9f
                return
            L68:
                android.os.Bundle r14 = new android.os.Bundle     // Catch: java.lang.Throwable -> L9f
                r14.<init>()     // Catch: java.lang.Throwable -> L9f
                com.loc.a r0 = com.loc.C1710a.this     // Catch: java.lang.Throwable -> L9f
                boolean r0 = r0.f4864m     // Catch: java.lang.Throwable -> L9f
                if (r0 != 0) goto L85
                com.loc.a r0 = com.loc.C1710a.this     // Catch: java.lang.Throwable -> L9f
                r1 = 7
                r0.m3974b(r1)     // Catch: java.lang.Throwable -> L9f
                java.lang.String r0 = "interval"
                r1 = 2000(0x7d0, double:9.88E-321)
                r14.putLong(r0, r1)     // Catch: java.lang.Throwable -> L9f
                com.loc.a r0 = com.loc.C1710a.this     // Catch: java.lang.Throwable -> L9f
                r0.m3962a(r3, r14, r1)     // Catch: java.lang.Throwable -> L9f
            L85:
                com.loc.a r0 = com.loc.C1710a.this     // Catch: java.lang.Throwable -> L9f
                int r1 = r0.f4873v     // Catch: java.lang.Throwable -> L9f
                int r1 = r1 + r4
                r0.f4873v = r1     // Catch: java.lang.Throwable -> L9f
                com.loc.a r0 = com.loc.C1710a.this     // Catch: java.lang.Throwable -> L9f
                int r0 = r0.f4873v     // Catch: java.lang.Throwable -> L9f
                r1 = 3
                if (r0 < r1) goto L9f
                java.lang.String r0 = "location_errorcode"
                r14.putInt(r0, r6)     // Catch: java.lang.Throwable -> L9f
                com.loc.a r0 = com.loc.C1710a.this     // Catch: java.lang.Throwable -> L9f
                r1 = 1002(0x3ea, float:1.404E-42)
                r0.m3961a(r1, r14)     // Catch: java.lang.Throwable -> L9f
            L9f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.loc.C1710a.AnonymousClass1.onLocationChanged(com.amap.api.location.AMapLocation):void");
        }
    };

    /* renamed from: x */
    public final int f4875x = 3;

    /* renamed from: y */
    public volatile boolean f4876y = false;

    /* compiled from: GeoFenceManager.java */
    /* renamed from: com.loc.a$a */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            try {
                switch (message.what) {
                    case 0:
                        GeoFenceManager.this.m3975b(message.getData());
                        break;
                    case 1:
                        GeoFenceManager.this.m3979c(message.getData());
                        break;
                    case 2:
                        GeoFenceManager.this.m3983e(message.getData());
                        break;
                    case 3:
                        GeoFenceManager.this.m3981d(message.getData());
                        break;
                    case 4:
                        GeoFenceManager.this.m3985f(message.getData());
                        break;
                    case 5:
                        GeoFenceManager.this.m3982e();
                        break;
                    case 6:
                        GeoFenceManager.this.m3965a(GeoFenceManager.this.f4870s);
                        break;
                    case 7:
                        GeoFenceManager.this.m3980d();
                        break;
                    case 8:
                        GeoFenceManager.this.m3992j(message.getData());
                        break;
                    case 9:
                        GeoFenceManager.this.m3963a(message.getData());
                        break;
                    case 10:
                        GeoFenceManager.this.m3977c();
                        break;
                    case 11:
                        GeoFenceManager.this.m3989h(message.getData());
                        break;
                    case 12:
                        GeoFenceManager.this.m3987g(message.getData());
                        break;
                    case 13:
                        GeoFenceManager.this.m3986g();
                        break;
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* compiled from: GeoFenceManager.java */
    /* renamed from: com.loc.a$b */
    public static class b extends HandlerThread {
        public b(String str) {
            super(str);
        }

        @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                super.run();
            } catch (Throwable unused) {
            }
        }
    }

    /* compiled from: GeoFenceManager.java */
    /* renamed from: com.loc.a$c */
    public class c extends Handler {
        public c() {
        }

        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            try {
                Bundle data = message.getData();
                switch (message.what) {
                    case 1000:
                        GeoFenceManager.this.m3990i(data);
                        return;
                    case 1001:
                        try {
                            GeoFenceManager.this.m3976b((GeoFence) data.getParcelable("geoFence"));
                            return;
                        } catch (Throwable th) {
                            th.printStackTrace();
                            return;
                        }
                    case 1002:
                        try {
                            GeoFenceManager.this.m3978c(data.getInt(GeoFence.BUNDLE_KEY_LOCERRORCODE));
                            return;
                        } catch (Throwable th2) {
                            th2.printStackTrace();
                            return;
                        }
                    default:
                        return;
                }
            } catch (Throwable unused) {
            }
        }
    }

    public GeoFenceManager(Context context) {
        this.f4853b = null;
        try {
            this.f4853b = context.getApplicationContext();
            m3951j();
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManger", "<init>");
        }
    }

    /* renamed from: a */
    public static float m3933a(AMapLocation aMapLocation, List<GeoFence> list) {
        float fMin = Float.MAX_VALUE;
        if (aMapLocation != null && aMapLocation.getErrorCode() == 0 && list != null && !list.isEmpty()) {
            DPoint dPoint = new DPoint(aMapLocation.getLatitude(), aMapLocation.getLongitude());
            for (GeoFence geoFence : list) {
                if (geoFence.isAble()) {
                    float fM5104a = AMapLocationUtilities.m5104a(dPoint, geoFence.getCenter());
                    if (fM5104a > geoFence.getMinDis2Center() && fM5104a < geoFence.getMaxDis2Center()) {
                        return 0.0f;
                    }
                    if (fM5104a > geoFence.getMaxDis2Center()) {
                        fMin = Math.min(fMin, fM5104a - geoFence.getMaxDis2Center());
                    }
                    if (fM5104a < geoFence.getMinDis2Center()) {
                        fMin = Math.min(fMin, geoFence.getMinDis2Center() - fM5104a);
                    }
                }
            }
        }
        return fMin;
    }

    /* renamed from: a */
    public static float m3934a(DPoint dPoint, List<DPoint> list) {
        float fMin = Float.MAX_VALUE;
        if (dPoint != null && list != null && !list.isEmpty()) {
            Iterator<DPoint> it = list.iterator();
            while (it.hasNext()) {
                fMin = Math.min(fMin, AMapLocationUtilities.m5104a(dPoint, it.next()));
            }
        }
        return fMin;
    }

    /* renamed from: a */
    private int m3935a(List<GeoFence> list) {
        try {
            if (this.f4858g == null) {
                this.f4858g = new ArrayList<>();
            }
            Iterator<GeoFence> it = list.iterator();
            while (it.hasNext()) {
                m3948c(it.next());
            }
            return 0;
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "addGeoFenceList");
            m3938a("添加围栏失败", 8, th.getMessage(), new String[0]);
            return 8;
        }
    }

    /* renamed from: a */
    public static Bundle m3936a(GeoFence geoFence, String str, String str2, int i, int i2) {
        Bundle bundle = new Bundle();
        if (str == null) {
            str = "";
        }
        bundle.putString(GeoFence.BUNDLE_KEY_FENCEID, str);
        bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str2);
        bundle.putInt("event", i);
        bundle.putInt(GeoFence.BUNDLE_KEY_LOCERRORCODE, i2);
        bundle.putParcelable(GeoFence.BUNDLE_KEY_FENCE, geoFence);
        return bundle;
    }

    /* renamed from: a */
    private GeoFence m3937a(Bundle bundle, boolean z) {
        GeoFence geoFence = new GeoFence();
        ArrayList arrayList = new ArrayList();
        DPoint dPoint = new DPoint();
        if (z) {
            geoFence.setType(1);
            arrayList = bundle.getParcelableArrayList("pointList");
            if (arrayList != null) {
                dPoint = m3944b(arrayList);
            }
            geoFence.setMaxDis2Center(m3943b(dPoint, arrayList));
            geoFence.setMinDis2Center(m3934a(dPoint, arrayList));
        } else {
            geoFence.setType(0);
            dPoint = (DPoint) bundle.getParcelable("centerPoint");
            if (dPoint != null) {
                arrayList.add(dPoint);
            }
            float f = bundle.getFloat("fenceRadius", 1000.0f);
            float f2 = f > 0.0f ? f : 1000.0f;
            geoFence.setRadius(f2);
            geoFence.setMinDis2Center(f2);
            geoFence.setMaxDis2Center(f2);
        }
        geoFence.setActivatesAction(this.f4857f);
        geoFence.setCustomId(bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(arrayList);
        geoFence.setPointList(arrayList2);
        geoFence.setCenter(dPoint);
        geoFence.setPendingIntentAction(this.f4855d);
        geoFence.setExpiration(-1L);
        geoFence.setPendingIntent(this.f4854c);
        StringBuilder sb = new StringBuilder();
        sb.append(GeoFenceSearchResultParser.m4275a());
        geoFence.setFenceId(sb.toString());
        ReportUtil c1839eu = this.f4852a;
        if (c1839eu != null) {
            c1839eu.m5082a(this.f4853b, 2);
        }
        return geoFence;
    }

    /* renamed from: a */
    public static void m3938a(String str, int i, String str2, String... strArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("===========================================\n");
        stringBuffer.append("              " + str + "                ");
        stringBuffer.append("\n");
        stringBuffer.append("-------------------------------------------\n");
        stringBuffer.append("errorCode:".concat(String.valueOf(i)));
        stringBuffer.append("\n");
        stringBuffer.append("错误信息:".concat(String.valueOf(str2)));
        stringBuffer.append("\n");
        if (strArr.length > 0) {
            for (String str3 : strArr) {
                stringBuffer.append(str3);
                stringBuffer.append("\n");
            }
        }
        stringBuffer.append("===========================================\n");
        Log.i("fenceErrLog", stringBuffer.toString());
    }

    /* renamed from: a */
    public static boolean m3939a(int i, String str, String str2, DPoint dPoint) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (i != 1) {
            if (i == 2) {
                if (dPoint == null) {
                    return false;
                }
                if (dPoint.getLatitude() > 90.0d || dPoint.getLatitude() < -90.0d || dPoint.getLongitude() > 180.0d || dPoint.getLongitude() < -180.0d) {
                    m3938a("添加围栏失败", 0, "经纬度错误，传入的纬度：" + dPoint.getLatitude() + "传入的经度:" + dPoint.getLongitude(), new String[0]);
                    return false;
                }
            }
        } else if (TextUtils.isEmpty(str2)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0030  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m3940a(com.amap.api.fence.GeoFence r4, int r5) {
        /*
            r0 = r5 & 1
            r1 = 1
            r2 = 0
            if (r0 != r1) goto L10
            int r0 = r4.getStatus()     // Catch: java.lang.Throwable -> Le
            if (r0 != r1) goto L10
            r2 = r1
            goto L10
        Le:
            r4 = move-exception
            goto L28
        L10:
            r0 = r5 & 2
            r3 = 2
            if (r0 != r3) goto L1c
            int r0 = r4.getStatus()     // Catch: java.lang.Throwable -> Le
            if (r0 != r3) goto L1c
            r2 = r1
        L1c:
            r0 = 4
            r5 = r5 & r0
            if (r5 != r0) goto L30
            int r4 = r4.getStatus()     // Catch: java.lang.Throwable -> Le
            r5 = 3
            if (r4 != r5) goto L30
            goto L31
        L28:
            java.lang.String r5 = "Utils"
            java.lang.String r0 = "remindStatus"
            com.loc.C1834ep.m5014a(r4, r5, r0)
            goto L32
        L30:
            r1 = r2
        L31:
            r2 = r1
        L32:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1710a.m3940a(com.amap.api.fence.GeoFence, int):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0029 A[Catch: all -> 0x0056, TryCatch #0 {all -> 0x0056, blocks: (B:3:0x0002, B:6:0x000a, B:8:0x0010, B:10:0x001a, B:18:0x0029, B:19:0x0031, B:21:0x0037, B:24:0x0045), top: B:31:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0045 A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #0 {all -> 0x0056, blocks: (B:3:0x0002, B:6:0x000a, B:8:0x0010, B:10:0x001a, B:18:0x0029, B:19:0x0031, B:21:0x0037, B:24:0x0045), top: B:31:0x0002 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m3941a(com.amap.api.location.AMapLocation r4, com.amap.api.fence.GeoFence r5) {
        /*
            r0 = 1
            r1 = 0
            boolean r2 = com.loc.C1841ew.m5116a(r4)     // Catch: java.lang.Throwable -> L56
            if (r2 == 0) goto L54
            if (r5 == 0) goto L54
            java.util.List r2 = r5.getPointList()     // Catch: java.lang.Throwable -> L56
            if (r2 == 0) goto L54
            java.util.List r2 = r5.getPointList()     // Catch: java.lang.Throwable -> L56
            boolean r2 = r2.isEmpty()     // Catch: java.lang.Throwable -> L56
            if (r2 != 0) goto L54
            int r2 = r5.getType()     // Catch: java.lang.Throwable -> L56
            if (r2 == 0) goto L45
            if (r2 == r0) goto L29
            r3 = 2
            if (r2 == r3) goto L45
            r3 = 3
            if (r2 == r3) goto L29
            goto L54
        L29:
            java.util.List r5 = r5.getPointList()     // Catch: java.lang.Throwable -> L56
            java.util.Iterator r5 = r5.iterator()     // Catch: java.lang.Throwable -> L56
        L31:
            boolean r2 = r5.hasNext()     // Catch: java.lang.Throwable -> L56
            if (r2 == 0) goto L54
            java.lang.Object r2 = r5.next()     // Catch: java.lang.Throwable -> L56
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Throwable -> L56
            boolean r2 = m3947b(r4, r2)     // Catch: java.lang.Throwable -> L56
            if (r2 == 0) goto L31
            r1 = r0
            goto L31
        L45:
            com.amap.api.location.DPoint r2 = r5.getCenter()     // Catch: java.lang.Throwable -> L56
            float r5 = r5.getRadius()     // Catch: java.lang.Throwable -> L56
            boolean r4 = m3942a(r4, r2, r5)     // Catch: java.lang.Throwable -> L56
            if (r4 == 0) goto L54
            goto L5f
        L54:
            r0 = r1
            goto L5f
        L56:
            r4 = move-exception
            r0 = r1
            java.lang.String r5 = "Utils"
            java.lang.String r1 = "isInGeoFence"
            com.loc.C1834ep.m5014a(r4, r5, r1)
        L5f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1710a.m3941a(com.amap.api.location.AMapLocation, com.amap.api.fence.GeoFence):boolean");
    }

    /* renamed from: a */
    public static boolean m3942a(AMapLocation aMapLocation, DPoint dPoint, float f) {
        return AMapLocationUtilities.m5105a(new double[]{dPoint.getLatitude(), dPoint.getLongitude(), aMapLocation.getLatitude(), aMapLocation.getLongitude()}) <= f;
    }

    /* renamed from: b */
    public static float m3943b(DPoint dPoint, List<DPoint> list) {
        float fMax = Float.MIN_VALUE;
        if (dPoint != null && list != null && !list.isEmpty()) {
            Iterator<DPoint> it = list.iterator();
            while (it.hasNext()) {
                fMax = Math.max(fMax, AMapLocationUtilities.m5104a(dPoint, it.next()));
            }
        }
        return fMax;
    }

    /* renamed from: b */
    public static DPoint m3944b(List<DPoint> list) {
        DPoint dPoint = new DPoint();
        if (list == null) {
            return dPoint;
        }
        try {
            double latitude = 0.0d;
            double longitude = 0.0d;
            for (DPoint dPoint2 : list) {
                latitude += dPoint2.getLatitude();
                longitude += dPoint2.getLongitude();
            }
            return new DPoint(AMapLocationUtilities.m5125b(latitude / list.size()), AMapLocationUtilities.m5125b(longitude / list.size()));
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceUtil", "getPolygonCenter");
            return dPoint;
        }
    }

    /* renamed from: b */
    private void m3945b(int i, Bundle bundle) {
        String str;
        int iM3935a;
        String str2;
        int i2;
        String str3;
        String strM4200a;
        int iM3949d;
        Bundle bundle2 = new Bundle();
        try {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            if (bundle == null || bundle.isEmpty()) {
                str2 = Constants.KEY_ERROR_CODE;
                i2 = 1;
            } else {
                ArrayList arrayList2 = new ArrayList();
                String string = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                String string2 = bundle.getString("keyWords");
                String string3 = bundle.getString("city");
                String string4 = bundle.getString("poiType");
                DPoint dPoint = (DPoint) bundle.getParcelable("centerPoint");
                int i3 = bundle.getInt("searchSize", 10);
                float f = bundle.getFloat("aroundRadius", 3000.0f);
                if (m3939a(i, string2, string4, dPoint)) {
                    Bundle bundle3 = new Bundle();
                    bundle3.putString(GeoFence.BUNDLE_KEY_CUSTOMID, string);
                    bundle3.putString("pendingIntentAction", this.f4855d);
                    str3 = GeoFence.BUNDLE_KEY_CUSTOMID;
                    str2 = Constants.KEY_ERROR_CODE;
                    try {
                        bundle3.putLong("expiration", -1L);
                        bundle3.putInt("activatesAction", this.f4857f);
                        if (i == 1) {
                            bundle3.putFloat("fenceRadius", 1000.0f);
                            strM4200a = this.f4867p.m4200a(this.f4853b, "http://restsdk.amap.com/v3/place/text?", string2, string4, string3, String.valueOf(i3));
                        } else if (i != 2) {
                            strM4200a = i != 3 ? null : this.f4867p.m4199a(this.f4853b, "http://restsdk.amap.com/v3/config/district?", string2);
                        } else {
                            double dM5125b = AMapLocationUtilities.m5125b(dPoint.getLatitude());
                            double dM5125b2 = AMapLocationUtilities.m5125b(dPoint.getLongitude());
                            int iIntValue = Float.valueOf(f).intValue();
                            bundle3.putFloat("fenceRadius", 200.0f);
                            strM4200a = this.f4867p.m4201a(this.f4853b, "http://restsdk.amap.com/v3/place/around?", string2, string4, String.valueOf(i3), String.valueOf(dM5125b), String.valueOf(dM5125b2), String.valueOf(iIntValue));
                        }
                        if (strM4200a != null) {
                            int iM4274a = 1 == i ? GeoFenceSearchResultParser.m4274a(strM4200a, arrayList2, bundle3) : 0;
                            if (2 == i) {
                                iM4274a = GeoFenceSearchResultParser.m4277b(strM4200a, arrayList2, bundle3);
                            }
                            if (3 == i) {
                                iM4274a = this.f4868q.m4278c(strM4200a, arrayList2, bundle3);
                            }
                            if (iM4274a != 10000) {
                                iM3949d = m3949d(iM4274a);
                            } else if (arrayList2.isEmpty()) {
                                iM3949d = 16;
                            } else {
                                iM3935a = m3935a(arrayList2);
                                if (iM3935a == 0) {
                                    try {
                                        arrayList.addAll(arrayList2);
                                    } catch (Throwable th) {
                                        th = th;
                                        str = str2;
                                        try {
                                            CoreUtil.m5014a(th, "GeoFenceManager", "doAddGeoFenceNearby");
                                            bundle2.putInt(str, 8);
                                            m3961a(1000, bundle2);
                                            return;
                                        } catch (Throwable th2) {
                                            bundle2.putInt(str, iM3935a);
                                            m3961a(1000, bundle2);
                                            throw th2;
                                        }
                                    }
                                }
                            }
                            iM3935a = iM3949d;
                        } else {
                            iM3935a = 4;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        str = str2;
                        iM3935a = 0;
                        CoreUtil.m5014a(th, "GeoFenceManager", "doAddGeoFenceNearby");
                        bundle2.putInt(str, 8);
                        m3961a(1000, bundle2);
                        return;
                    }
                } else {
                    str3 = GeoFence.BUNDLE_KEY_CUSTOMID;
                    str2 = Constants.KEY_ERROR_CODE;
                    iM3935a = 1;
                }
                bundle2.putString(str3, string);
                bundle2.putParcelableArrayList("resultList", arrayList);
                i2 = iM3935a;
            }
            bundle2.putInt(str2, i2);
            m3961a(1000, bundle2);
        } catch (Throwable th4) {
            th = th4;
            str = Constants.KEY_ERROR_CODE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004e  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m3946b(com.amap.api.location.AMapLocation r7, com.amap.api.fence.GeoFence r8) {
        /*
            r0 = 1
            r1 = 0
            boolean r7 = m3941a(r7, r8)     // Catch: java.lang.Throwable -> L50
            r2 = -1
            if (r7 == 0) goto L3e
            long r4 = r8.getEnterTime()     // Catch: java.lang.Throwable -> L50
            int r7 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r7 != 0) goto L23
            int r7 = r8.getStatus()     // Catch: java.lang.Throwable -> L50
            if (r7 == r0) goto L4e
            long r2 = com.loc.C1841ew.m5127b()     // Catch: java.lang.Throwable -> L50
            r8.setEnterTime(r2)     // Catch: java.lang.Throwable -> L50
            r8.setStatus(r0)     // Catch: java.lang.Throwable -> L50
            goto L59
        L23:
            int r7 = r8.getStatus()     // Catch: java.lang.Throwable -> L50
            r2 = 3
            if (r7 == r2) goto L4e
            long r3 = com.loc.C1841ew.m5127b()     // Catch: java.lang.Throwable -> L50
            long r5 = r8.getEnterTime()     // Catch: java.lang.Throwable -> L50
            long r3 = r3 - r5
            r5 = 600000(0x927c0, double:2.964394E-318)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L4e
            r8.setStatus(r2)     // Catch: java.lang.Throwable -> L50
            goto L59
        L3e:
            int r7 = r8.getStatus()     // Catch: java.lang.Throwable -> L50
            r4 = 2
            if (r7 == r4) goto L4e
            r8.setStatus(r4)     // Catch: java.lang.Throwable -> L4c
            r8.setEnterTime(r2)     // Catch: java.lang.Throwable -> L4c
            goto L59
        L4c:
            r7 = move-exception
            goto L52
        L4e:
            r0 = r1
            goto L59
        L50:
            r7 = move-exception
            r0 = r1
        L52:
            java.lang.String r8 = "Utils"
            java.lang.String r1 = "isFenceStatusChanged"
            com.loc.C1834ep.m5014a(r7, r8, r1)
        L59:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1710a.m3946b(com.amap.api.location.AMapLocation, com.amap.api.fence.GeoFence):boolean");
    }

    /* renamed from: b */
    public static boolean m3947b(AMapLocation aMapLocation, List<DPoint> list) {
        if (list.size() < 3) {
            return false;
        }
        return CoreUtil.m5018a(new DPoint(aMapLocation.getLatitude(), aMapLocation.getLongitude()), list);
    }

    /* renamed from: c */
    private int m3948c(GeoFence geoFence) {
        try {
            if (this.f4858g == null) {
                this.f4858g = new ArrayList<>();
            }
            if (this.f4858g.contains(geoFence)) {
                return 17;
            }
            this.f4858g.add(geoFence);
            return 0;
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "addGeoFence2List");
            m3938a("添加围栏失败", 8, th.getMessage(), new String[0]);
            return 8;
        }
    }

    /* renamed from: d */
    public static int m3949d(int i) {
        if (i != 1 && i != 7 && i != 4 && i != 5 && i != 16 && i != 17) {
            switch (i) {
                case 10000:
                    i = 0;
                    break;
                case UpdateDialogStatusCode.DISMISS /* 10001 */:
                case UpdateDialogStatusCode.SHOW /* 10002 */:
                case 10007:
                case 10008:
                case 10009:
                case 10012:
                case 10013:
                    i = 7;
                    break;
                case 10003:
                case 10004:
                case 10005:
                case 10006:
                case 10010:
                case 10011:
                case 10014:
                case 10015:
                case 10016:
                case 10017:
                    i = 4;
                    break;
                default:
                    switch (i) {
                        case 20000:
                        case 20001:
                        case 20002:
                            i = 1;
                            break;
                        case 20003:
                        default:
                            i = 8;
                            break;
                    }
            }
        }
        if (i != 0) {
            m3938a("添加围栏失败", i, "searchErrCode is ".concat(String.valueOf(i)), new String[0]);
        }
        return i;
    }

    /* renamed from: d */
    private void m3950d(GeoFence geoFence) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("geoFence", geoFence);
        m3961a(1001, bundle);
    }

    /* renamed from: j */
    private void m3951j() {
        if (!this.f4866o) {
            this.f4866o = true;
        }
        if (this.f4865n) {
            return;
        }
        try {
            this.f4859h = Looper.myLooper() == null ? new c(this.f4853b.getMainLooper()) : new c();
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManger", "init 1");
        }
        try {
            b bVar = new b("fenceActionThread");
            this.f4863l = bVar;
            bVar.setPriority(5);
            this.f4863l.start();
            this.f4862k = new a(this.f4863l.getLooper());
        } catch (Throwable th2) {
            CoreUtil.m5014a(th2, "GeoFenceManger", "init 2");
        }
        try {
            this.f4867p = new GeoFenceNetManager(this.f4853b);
            this.f4868q = new GeoFenceSearchResultParser();
            this.f4872u = new AMapLocationClientOption();
            this.f4869r = new AMapLocationClient(this.f4853b);
            this.f4872u.setLocationCacheEnable(true);
            this.f4872u.setNeedAddress(false);
            this.f4869r.setLocationListener(this.f4874w);
            if (this.f4852a == null) {
                this.f4852a = new ReportUtil();
            }
        } catch (Throwable th3) {
            CoreUtil.m5014a(th3, "GeoFenceManger", "initBase");
        }
        this.f4865n = true;
        try {
            if (this.f4855d != null && this.f4854c == null) {
                m3958a(this.f4855d);
            }
        } catch (Throwable th4) {
            CoreUtil.m5014a(th4, "GeoFenceManger", "init 4");
        }
        if (f4851A) {
            return;
        }
        f4851A = true;
        ReportUtil.m5074a(this.f4853b, "O020", (JSONObject) null);
    }

    /* renamed from: k */
    private boolean m3952k() {
        ArrayList<GeoFence> arrayList = this.f4858g;
        if (arrayList == null || arrayList.isEmpty()) {
            return true;
        }
        Iterator<GeoFence> it = this.f4858g.iterator();
        while (it.hasNext()) {
            if (it.next().isAble()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: l */
    private void m3953l() {
        try {
            synchronized (this.f4861j) {
                if (this.f4859h != null) {
                    this.f4859h.removeCallbacksAndMessages(null);
                }
                this.f4859h = null;
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "destroyResultHandler");
        }
    }

    /* renamed from: m */
    private void m3954m() {
        try {
            synchronized (this.f4860i) {
                if (this.f4862k != null) {
                    this.f4862k.removeCallbacksAndMessages(null);
                }
                this.f4862k = null;
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "destroyActionHandler");
        }
    }

    /* renamed from: n */
    private void m3955n() {
        if (this.f4876y || this.f4862k == null) {
            return;
        }
        if (m3957p()) {
            m3962a(6, (Bundle) null, 0L);
            m3962a(5, (Bundle) null, 0L);
        } else {
            m3974b(7);
            m3962a(7, (Bundle) null, 0L);
        }
    }

    /* renamed from: o */
    private void m3956o() {
        try {
            if (this.f4864m) {
                m3974b(8);
            }
            if (this.f4869r != null) {
                this.f4869r.stopLocation();
            }
            this.f4864m = false;
        } catch (Throwable unused) {
        }
    }

    /* renamed from: p */
    private boolean m3957p() {
        return this.f4870s != null && AMapLocationUtilities.m5116a(this.f4870s) && AMapLocationUtilities.m5127b() - this.f4871t < 10000;
    }

    /* renamed from: a */
    public final PendingIntent m3958a(String str) {
        synchronized (this.f4877z) {
            try {
                Intent intent = new Intent(str);
                intent.setPackage(AppInfo.m1638d(this.f4853b));
                this.f4854c = PendingIntent.getBroadcast(this.f4853b, 0, intent, 0);
                this.f4855d = str;
            } finally {
                return this.f4854c;
            }
            if (this.f4858g != null && !this.f4858g.isEmpty()) {
                Iterator<GeoFence> it = this.f4858g.iterator();
                while (it.hasNext()) {
                    GeoFence next = it.next();
                    next.setPendingIntent(this.f4854c);
                    next.setPendingIntentAction(this.f4855d);
                }
            }
        }
        return this.f4854c;
    }

    /* renamed from: a */
    public final void m3959a() {
        try {
            this.f4866o = false;
            m3962a(10, (Bundle) null, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "removeGeoFence");
        }
    }

    /* renamed from: a */
    public final void m3960a(int i) {
        try {
            m3951j();
            if (i > 7 || i <= 0) {
                i = 1;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("activatesAction", i);
            m3962a(9, bundle, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "setActivateAction");
        }
    }

    /* renamed from: a */
    public final void m3961a(int i, Bundle bundle) {
        try {
            synchronized (this.f4861j) {
                if (this.f4859h != null) {
                    Message messageObtainMessage = this.f4859h.obtainMessage();
                    messageObtainMessage.what = i;
                    messageObtainMessage.setData(bundle);
                    this.f4859h.sendMessage(messageObtainMessage);
                }
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "sendResultHandlerMessage");
        }
    }

    /* renamed from: a */
    public final void m3962a(int i, Bundle bundle, long j) {
        try {
            synchronized (this.f4860i) {
                if (this.f4862k != null) {
                    Message messageObtainMessage = this.f4862k.obtainMessage();
                    messageObtainMessage.what = i;
                    messageObtainMessage.setData(bundle);
                    this.f4862k.sendMessageDelayed(messageObtainMessage, j);
                }
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "sendActionHandlerMessage");
        }
    }

    /* renamed from: a */
    public final void m3963a(Bundle bundle) {
        int i = 1;
        if (bundle != null) {
            try {
                i = bundle.getInt("activatesAction", 1);
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "GeoFenceManager", "doSetActivatesAction");
                return;
            }
        }
        if (this.f4857f != i) {
            if (this.f4858g != null && !this.f4858g.isEmpty()) {
                Iterator<GeoFence> it = this.f4858g.iterator();
                while (it.hasNext()) {
                    GeoFence next = it.next();
                    next.setStatus(0);
                    next.setEnterTime(-1L);
                }
            }
            m3955n();
        }
        this.f4857f = i;
    }

    /* renamed from: a */
    public final void m3964a(GeoFenceListener geoFenceListener) {
        try {
            this.f4856e = geoFenceListener;
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public final void m3965a(AMapLocation aMapLocation) {
        try {
            if (this.f4876y || this.f4858g == null || this.f4858g.isEmpty() || aMapLocation == null || aMapLocation.getErrorCode() != 0) {
                return;
            }
            Iterator<GeoFence> it = this.f4858g.iterator();
            while (it.hasNext()) {
                GeoFence next = it.next();
                if (next.isAble() && m3946b(aMapLocation, next) && m3940a(next, this.f4857f)) {
                    next.setCurrentLocation(aMapLocation);
                    m3950d(next);
                }
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "doCheckFence");
        }
    }

    /* renamed from: a */
    public final void m3966a(DPoint dPoint, float f, String str) {
        try {
            m3951j();
            Bundle bundle = new Bundle();
            bundle.putParcelable("centerPoint", dPoint);
            bundle.putFloat("fenceRadius", f);
            bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
            m3962a(0, bundle, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "addRoundGeoFence");
        }
    }

    /* renamed from: a */
    public final void m3967a(String str, String str2) {
        try {
            m3951j();
            Bundle bundle = new Bundle();
            bundle.putString("keyWords", str);
            bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str2);
            m3962a(4, bundle, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "addDistricetGeoFence");
        }
    }

    /* renamed from: a */
    public final void m3968a(String str, String str2, DPoint dPoint, float f, int i, String str3) {
        try {
            m3951j();
            if (f <= 0.0f || f > 50000.0f) {
                f = 3000.0f;
            }
            if (i <= 0) {
                i = 10;
            }
            if (i > 25) {
                i = 25;
            }
            Bundle bundle = new Bundle();
            bundle.putString("keyWords", str);
            bundle.putString("poiType", str2);
            bundle.putParcelable("centerPoint", dPoint);
            bundle.putFloat("aroundRadius", f);
            bundle.putInt("searchSize", i);
            bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str3);
            m3962a(3, bundle, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "addNearbyGeoFence");
        }
    }

    /* renamed from: a */
    public final void m3969a(String str, String str2, String str3, int i, String str4) {
        try {
            m3951j();
            if (i <= 0) {
                i = 10;
            }
            if (i > 25) {
                i = 25;
            }
            Bundle bundle = new Bundle();
            bundle.putString("keyWords", str);
            bundle.putString("poiType", str2);
            bundle.putString("city", str3);
            bundle.putInt("searchSize", i);
            bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str4);
            m3962a(2, bundle, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "addKeywordGeoFence");
        }
    }

    /* renamed from: a */
    public final void m3970a(String str, boolean z) {
        try {
            m3951j();
            Bundle bundle = new Bundle();
            bundle.putString("fid", str);
            bundle.putBoolean("ab", z);
            m3962a(12, bundle, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "setGeoFenceAble");
        }
    }

    /* renamed from: a */
    public final void m3971a(List<DPoint> list, String str) {
        try {
            m3951j();
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("pointList", new ArrayList<>(list));
            bundle.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
            m3962a(1, bundle, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "addPolygonGeoFence");
        }
    }

    /* renamed from: a */
    public final boolean m3972a(GeoFence geoFence) {
        try {
            if (this.f4858g != null && !this.f4858g.isEmpty()) {
                if (!this.f4858g.contains(geoFence)) {
                    return false;
                }
                if (this.f4858g.size() == 1) {
                    this.f4866o = false;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable("fc", geoFence);
                m3962a(11, bundle, 0L);
                return true;
            }
            this.f4866o = false;
            m3962a(10, (Bundle) null, 0L);
            return true;
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "removeGeoFence(GeoFence)");
            return false;
        }
    }

    /* renamed from: b */
    public final List<GeoFence> m3973b() {
        try {
            if (this.f4858g == null) {
                this.f4858g = new ArrayList<>();
            }
            return (ArrayList) this.f4858g.clone();
        } catch (Throwable unused) {
            return new ArrayList();
        }
    }

    /* renamed from: b */
    public final void m3974b(int i) {
        try {
            synchronized (this.f4860i) {
                if (this.f4862k != null) {
                    this.f4862k.removeMessages(i);
                }
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "removeActionHandlerMessage");
        }
    }

    /* renamed from: b */
    public final void m3975b(Bundle bundle) {
        String string;
        try {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            String str = "";
            int iM3948c = 1;
            if (bundle == null || bundle.isEmpty()) {
                string = str;
            } else {
                DPoint dPoint = (DPoint) bundle.getParcelable("centerPoint");
                string = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                if (dPoint == null) {
                    str = string;
                    string = str;
                } else if (dPoint.getLatitude() > 90.0d || dPoint.getLatitude() < -90.0d || dPoint.getLongitude() > 180.0d || dPoint.getLongitude() < -180.0d) {
                    m3938a("添加围栏失败", 1, "经纬度错误，传入的纬度：" + dPoint.getLatitude() + "传入的经度:" + dPoint.getLongitude(), new String[0]);
                } else {
                    GeoFence geoFenceM3937a = m3937a(bundle, false);
                    iM3948c = m3948c(geoFenceM3937a);
                    if (iM3948c == 0) {
                        arrayList.add(geoFenceM3937a);
                    }
                }
            }
            Bundle bundle2 = new Bundle();
            bundle2.putInt(Constants.KEY_ERROR_CODE, iM3948c);
            bundle2.putParcelableArrayList("resultList", arrayList);
            bundle2.putString(GeoFence.BUNDLE_KEY_CUSTOMID, string);
            m3961a(1000, bundle2);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "doAddGeoFenceRound");
        }
    }

    /* renamed from: b */
    public final void m3976b(GeoFence geoFence) {
        PendingIntent pendingIntent;
        Context context;
        try {
            synchronized (this.f4877z) {
                if (this.f4853b != null) {
                    if (this.f4854c == null && geoFence.getPendingIntent() == null) {
                        return;
                    }
                    Intent intent = new Intent();
                    intent.putExtras(m3936a(geoFence, geoFence.getFenceId(), geoFence.getCustomId(), geoFence.getStatus(), 0));
                    if (this.f4855d != null) {
                        intent.setAction(this.f4855d);
                    }
                    intent.setPackage(AppInfo.m1638d(this.f4853b));
                    if (geoFence.getPendingIntent() != null) {
                        pendingIntent = geoFence.getPendingIntent();
                        context = this.f4853b;
                    } else {
                        pendingIntent = this.f4854c;
                        context = this.f4853b;
                    }
                    pendingIntent.send(context, 0, intent);
                }
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "resultTriggerGeoFence");
        }
    }

    /* renamed from: c */
    public final void m3977c() {
        if (this.f4865n) {
            if (this.f4858g != null) {
                this.f4858g.clear();
                this.f4858g = null;
            }
            if (this.f4866o) {
                return;
            }
            m3954m();
            if (this.f4869r != null) {
                this.f4869r.stopLocation();
                this.f4869r.onDestroy();
            }
            this.f4869r = null;
            if (this.f4863l != null) {
                this.f4863l.quitSafely();
            }
            this.f4863l = null;
            this.f4867p = null;
            synchronized (this.f4877z) {
                if (this.f4854c != null) {
                    this.f4854c.cancel();
                }
                this.f4854c = null;
            }
            m3953l();
            if (this.f4852a != null) {
                this.f4852a.m5084b(this.f4853b);
            }
            this.f4864m = false;
            this.f4865n = false;
        }
    }

    /* renamed from: c */
    public final void m3978c(int i) {
        try {
            if (this.f4853b != null) {
                synchronized (this.f4877z) {
                    if (this.f4854c == null) {
                        return;
                    }
                    Intent intent = new Intent();
                    intent.putExtras(m3936a((GeoFence) null, (String) null, (String) null, 4, i));
                    this.f4854c.send(this.f4853b, 0, intent);
                }
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "resultRemindLocationError");
        }
    }

    /* renamed from: c */
    public final void m3979c(Bundle bundle) {
        GeoFence geoFenceM3937a;
        try {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            String str = "";
            int iM3948c = 1;
            if (bundle != null && !bundle.isEmpty()) {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("pointList");
                String string = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                if (parcelableArrayList != null && parcelableArrayList.size() > 2 && (iM3948c = m3948c((geoFenceM3937a = m3937a(bundle, true)))) == 0) {
                    arrayList.add(geoFenceM3937a);
                }
                str = string;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString(GeoFence.BUNDLE_KEY_CUSTOMID, str);
            bundle2.putInt(Constants.KEY_ERROR_CODE, iM3948c);
            bundle2.putParcelableArrayList("resultList", arrayList);
            m3961a(1000, bundle2);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "doAddGeoFencePolygon");
        }
    }

    /* renamed from: d */
    public final void m3980d() {
        try {
            if (this.f4869r != null) {
                m3956o();
                this.f4872u.setOnceLocation(true);
                this.f4869r.setLocationOption(this.f4872u);
                this.f4869r.startLocation();
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "doStartOnceLocation");
        }
    }

    /* renamed from: d */
    public final void m3981d(Bundle bundle) {
        m3945b(2, bundle);
    }

    /* renamed from: e */
    public final void m3982e() {
        try {
            if (!this.f4876y && AMapLocationUtilities.m5116a(this.f4870s)) {
                float fM3933a = m3933a(this.f4870s, this.f4858g);
                if (fM3933a == Float.MAX_VALUE) {
                    return;
                }
                if (fM3933a < 1000.0f) {
                    m3974b(7);
                    Bundle bundle = new Bundle();
                    bundle.putLong("interval", 2000L);
                    m3962a(8, bundle, 500L);
                    return;
                }
                if (fM3933a < 5000.0f) {
                    m3956o();
                    m3974b(7);
                    m3962a(7, (Bundle) null, 10000L);
                } else {
                    m3956o();
                    m3974b(7);
                    m3962a(7, (Bundle) null, (long) (((fM3933a - 4000.0f) / 100.0f) * 1000.0f));
                }
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "doCheckLocationPolicy");
        }
    }

    /* renamed from: e */
    public final void m3983e(Bundle bundle) {
        m3945b(1, bundle);
    }

    /* renamed from: f */
    public final void m3984f() {
        try {
            m3951j();
            this.f4876y = true;
            m3962a(13, (Bundle) null, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "pauseGeoFence");
        }
    }

    /* renamed from: f */
    public final void m3985f(Bundle bundle) {
        m3945b(3, bundle);
    }

    /* renamed from: g */
    public final void m3986g() {
        try {
            m3974b(7);
            m3974b(8);
            if (this.f4869r != null) {
                this.f4869r.stopLocation();
            }
            this.f4864m = false;
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "doPauseGeoFence");
        }
    }

    /* renamed from: g */
    public final void m3987g(Bundle bundle) {
        if (bundle != null) {
            try {
                if (bundle.isEmpty()) {
                    return;
                }
                String string = bundle.getString("fid");
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                boolean z = bundle.getBoolean("ab", true);
                if (this.f4858g != null && !this.f4858g.isEmpty()) {
                    Iterator<GeoFence> it = this.f4858g.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        GeoFence next = it.next();
                        if (next.getFenceId().equals(string)) {
                            next.setAble(z);
                            break;
                        }
                    }
                }
                if (z) {
                    m3955n();
                } else if (m3952k()) {
                    m3986g();
                }
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "GeoFenceManager", "doSetGeoFenceAble");
            }
        }
    }

    /* renamed from: h */
    public final void m3988h() {
        try {
            m3951j();
            if (this.f4876y) {
                this.f4876y = false;
                m3955n();
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "resumeGeoFence");
        }
    }

    /* renamed from: h */
    public final void m3989h(Bundle bundle) {
        try {
            if (this.f4858g != null) {
                GeoFence geoFence = (GeoFence) bundle.getParcelable("fc");
                if (this.f4858g.contains(geoFence)) {
                    this.f4858g.remove(geoFence);
                }
                if (this.f4858g.size() <= 0) {
                    m3977c();
                } else {
                    m3955n();
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: i */
    public final void m3990i(Bundle bundle) {
        if (bundle != null) {
            try {
                if (bundle.isEmpty()) {
                    return;
                }
                int i = bundle.getInt(Constants.KEY_ERROR_CODE);
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("resultList");
                if (parcelableArrayList == null) {
                    parcelableArrayList = new ArrayList();
                }
                String string = bundle.getString(GeoFence.BUNDLE_KEY_CUSTOMID);
                if (string == null) {
                    string = "";
                }
                if (this.f4856e != null) {
                    this.f4856e.onGeoFenceCreateFinished((ArrayList) parcelableArrayList.clone(), i, string);
                }
                if (i == 0) {
                    m3955n();
                }
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "GeoFenceManager", "resultAddGeoFenceFinished");
            }
        }
    }

    /* renamed from: i */
    public final boolean m3991i() {
        return this.f4876y;
    }

    /* renamed from: j */
    public final void m3992j(Bundle bundle) {
        try {
            if (this.f4869r != null) {
                long j = 2000;
                if (bundle != null && !bundle.isEmpty()) {
                    j = bundle.getLong("interval", 2000L);
                }
                this.f4872u.setOnceLocation(false);
                this.f4872u.setInterval(j);
                this.f4869r.setLocationOption(this.f4872u);
                if (this.f4864m) {
                    return;
                }
                this.f4869r.stopLocation();
                this.f4869r.startLocation();
                this.f4864m = true;
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "GeoFenceManager", "doStartContinueLocation");
        }
    }
}
