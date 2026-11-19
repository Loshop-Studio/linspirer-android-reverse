package com.loc;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.support.v7.widget.ActivityChooserView;
import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoNr;
import android.telephony.CellInfoWcdma;
import android.telephony.CellLocation;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: CgiManager.java */
@SuppressLint({"NewApi"})
/* renamed from: com.loc.dz */
/* loaded from: classes.dex */
public final class C1817dz {

    /* renamed from: b */
    public TelephonyManager f5505b;

    /* renamed from: d */
    public SignalStrength f5507d;

    /* renamed from: h */
    public Context f5511h;

    /* renamed from: m */
    public C1815dx f5516m;

    /* renamed from: q */
    @SuppressLint({"NewApi"})
    public TelephonyManager.CellInfoCallback f5520q;

    /* renamed from: s */
    public C1808dq f5522s;

    /* renamed from: i */
    public boolean f5512i = false;

    /* renamed from: j */
    public boolean f5513j = false;

    /* renamed from: a */
    public ArrayList<C1816dy> f5504a = new ArrayList<>();

    /* renamed from: k */
    public String f5514k = null;

    /* renamed from: l */
    public ArrayList<C1816dy> f5515l = new ArrayList<>();

    /* renamed from: n */
    public long f5517n = 0;

    /* renamed from: c */
    public PhoneStateListener f5506c = null;

    /* renamed from: o */
    public boolean f5518o = false;

    /* renamed from: p */
    public Object f5519p = new Object();

    /* renamed from: r */
    public boolean f5521r = false;

    /* renamed from: e */
    public boolean f5508e = false;

    /* renamed from: f */
    public StringBuilder f5509f = null;

    /* renamed from: g */
    public String f5510g = null;

    /* compiled from: CgiManager.java */
    @SuppressLint({"NewApi"})
    /* renamed from: com.loc.dz$a */
    public class a extends TelephonyManager.CellInfoCallback {
        public a() {
        }

        @Override // android.telephony.TelephonyManager.CellInfoCallback
        public final void onCellInfo(List<CellInfo> list) {
            try {
                if (C1841ew.m5127b() - C1817dz.this.f5517n < 500) {
                    return;
                }
                C1817dz.m4754b(C1817dz.this);
                C1817dz.this.m4749a(C1817dz.this.m4763s());
                C1817dz.this.m4767a(list);
                C1817dz.this.f5517n = C1841ew.m5127b();
            } catch (SecurityException e) {
                C1817dz.this.f5510g = e.getMessage();
            } catch (Throwable th) {
                C1834ep.m5014a(th, "Cgi", "cellInfo");
            }
        }
    }

    /* compiled from: CgiManager.java */
    /* renamed from: com.loc.dz$b */
    public class b extends PhoneStateListener {
        public b() {
        }

        @Override // android.telephony.PhoneStateListener
        public final void onCellInfoChanged(List<CellInfo> list) {
            try {
                if (C1817dz.this.f5522s != null) {
                    C1817dz.this.f5522s.m4654c();
                }
                if (C1841ew.m5127b() - C1817dz.this.f5517n < 500) {
                    return;
                }
                C1817dz.this.m4749a(C1817dz.this.m4763s());
                C1817dz.this.m4767a(list);
                C1817dz.this.f5517n = C1841ew.m5127b();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // android.telephony.PhoneStateListener
        public final void onCellLocationChanged(CellLocation cellLocation) {
            if (C1841ew.m5127b() - C1817dz.this.f5517n < 500) {
                return;
            }
            try {
                C1817dz.this.m4749a(cellLocation);
                C1817dz.this.m4767a(C1817dz.this.m4764t());
                C1817dz.this.f5517n = C1841ew.m5127b();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // android.telephony.PhoneStateListener
        public final void onDataConnectionStateChanged(int i) {
            super.onDataConnectionStateChanged(i);
        }

        @Override // android.telephony.PhoneStateListener
        public final void onServiceStateChanged(ServiceState serviceState) {
            try {
                int state = serviceState.getState();
                if (state == 0) {
                    C1817dz.this.m4769a(false, false);
                } else {
                    if (state != 1) {
                        return;
                    }
                    C1817dz.this.m4777i();
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.telephony.PhoneStateListener
        public final void onSignalStrengthChanged(int i) {
            super.onSignalStrengthChanged(i);
        }

        @Override // android.telephony.PhoneStateListener
        public final void onSignalStrengthsChanged(SignalStrength signalStrength) {
            if (signalStrength == null) {
                return;
            }
            C1817dz c1817dz = C1817dz.this;
            c1817dz.f5507d = signalStrength;
            try {
                if (c1817dz.f5522s != null) {
                    C1817dz.this.f5522s.m4654c();
                }
            } catch (Throwable unused) {
            }
        }
    }

    public C1817dz(Context context, Handler handler) {
        this.f5505b = null;
        this.f5516m = null;
        this.f5511h = context;
        if (this.f5505b == null) {
            this.f5505b = (TelephonyManager) C1841ew.m5108a(context, "phone");
        }
        m4758n();
        C1815dx c1815dx = new C1815dx(context, "cellAge", handler);
        this.f5516m = c1815dx;
        c1815dx.m4713a();
    }

    /* renamed from: a */
    public static C1816dy m4743a(int i, boolean z, int i2, int i3, int i4, int i5, int i6) {
        C1816dy c1816dy = new C1816dy(i, z);
        c1816dy.f5484a = i2;
        c1816dy.f5485b = i3;
        c1816dy.f5486c = i4;
        c1816dy.f5487d = i5;
        c1816dy.f5494k = i6;
        return c1816dy;
    }

    /* renamed from: a */
    private C1816dy m4744a(CellInfoCdma cellInfoCdma, boolean z) {
        int i;
        if (cellInfoCdma != null && cellInfoCdma.getCellIdentity() != null) {
            CellIdentityCdma cellIdentity = cellInfoCdma.getCellIdentity();
            if (cellIdentity.getSystemId() > 0 && cellIdentity.getNetworkId() >= 0 && cellIdentity.getBasestationId() >= 0) {
                CellIdentityCdma cellIdentity2 = cellInfoCdma.getCellIdentity();
                String[] strArrM5124a = C1841ew.m5124a(this.f5505b);
                int i2 = 0;
                try {
                    i = Integer.parseInt(strArrM5124a[0]);
                    try {
                        i2 = Integer.parseInt(strArrM5124a[1]);
                    } catch (Throwable unused) {
                    }
                } catch (Throwable unused2) {
                    i = 0;
                }
                C1816dy c1816dyM4743a = m4743a(2, z, i, i2, 0, 0, cellInfoCdma.getCellSignalStrength().getCdmaDbm());
                c1816dyM4743a.f5491h = cellIdentity2.getSystemId();
                c1816dyM4743a.f5492i = cellIdentity2.getNetworkId();
                c1816dyM4743a.f5493j = cellIdentity2.getBasestationId();
                c1816dyM4743a.f5489f = cellIdentity2.getLatitude();
                c1816dyM4743a.f5490g = cellIdentity2.getLongitude();
                c1816dyM4743a.f5502s = cellInfoCdma.getCellSignalStrength().getCdmaDbm();
                return c1816dyM4743a;
            }
        }
        return null;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public static C1816dy m4745a(CellInfoGsm cellInfoGsm, boolean z) {
        if (cellInfoGsm == null || cellInfoGsm.getCellIdentity() == null) {
            return null;
        }
        CellIdentityGsm cellIdentity = cellInfoGsm.getCellIdentity();
        C1816dy c1816dyM4743a = m4743a(1, z, cellIdentity.getMcc(), cellIdentity.getMnc(), cellIdentity.getLac(), cellIdentity.getCid(), cellInfoGsm.getCellSignalStrength().getDbm());
        c1816dyM4743a.f5498o = cellInfoGsm.getCellIdentity().getBsic();
        c1816dyM4743a.f5499p = cellInfoGsm.getCellIdentity().getArfcn();
        c1816dyM4743a.f5500q = cellInfoGsm.getCellSignalStrength().getTimingAdvance();
        c1816dyM4743a.f5502s = cellInfoGsm.getCellSignalStrength().getDbm();
        return c1816dyM4743a;
    }

    /* renamed from: a */
    public static C1816dy m4746a(CellInfoLte cellInfoLte, boolean z) {
        if (cellInfoLte == null || cellInfoLte.getCellIdentity() == null) {
            return null;
        }
        CellIdentityLte cellIdentity = cellInfoLte.getCellIdentity();
        C1816dy c1816dyM4743a = m4743a(3, z, cellIdentity.getMcc(), cellIdentity.getMnc(), cellIdentity.getTac(), cellIdentity.getCi(), cellInfoLte.getCellSignalStrength().getDbm());
        c1816dyM4743a.f5498o = cellIdentity.getPci();
        if (Build.VERSION.SDK_INT >= 24) {
            c1816dyM4743a.f5499p = cellIdentity.getEarfcn();
        }
        c1816dyM4743a.f5500q = cellInfoLte.getCellSignalStrength().getTimingAdvance();
        c1816dyM4743a.f5502s = cellInfoLte.getCellSignalStrength().getDbm();
        return c1816dyM4743a;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0071  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.loc.C1816dy m4747a(android.telephony.CellInfoNr r14, boolean r15) {
        /*
            if (r14 == 0) goto L91
            android.telephony.CellIdentity r0 = r14.getCellIdentity()
            if (r0 != 0) goto La
            goto L91
        La:
            android.telephony.CellIdentity r0 = r14.getCellIdentity()
            android.telephony.CellIdentityNr r0 = (android.telephony.CellIdentityNr) r0
            int r1 = r0.getTac()
            r2 = 2147483647(0x7fffffff, float:NaN)
            r3 = 0
            if (r1 != r2) goto L31
            java.lang.String r2 = android.os.Build.MANUFACTURER
            java.lang.String r4 = "HUAWEI"
            boolean r2 = r4.equals(r2)
            if (r2 == 0) goto L31
            java.lang.String r2 = "getHwTac"
            java.lang.Object[] r4 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L2d
            int r1 = com.loc.C1837es.m5055b(r0, r2, r4)     // Catch: java.lang.Throwable -> L2d
            goto L31
        L2d:
            r2 = move-exception
            r2.printStackTrace()
        L31:
            long r4 = r0.getNci()
            java.lang.String r2 = r0.getMccString()     // Catch: java.lang.Throwable -> L48
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L48
            java.lang.String r6 = r0.getMncString()     // Catch: java.lang.Throwable -> L46
            int r3 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.Throwable -> L46
            goto L4d
        L46:
            r6 = move-exception
            goto L4a
        L48:
            r6 = move-exception
            r2 = r3
        L4a:
            r6.printStackTrace()
        L4d:
            r9 = r2
            r10 = r3
            android.telephony.CellSignalStrength r2 = r14.getCellSignalStrength()
            android.telephony.CellSignalStrengthNr r2 = (android.telephony.CellSignalStrengthNr) r2
            int r13 = r2.getSsRsrp()
            r7 = 5
            int r11 = r0.getTac()
            r12 = 0
            r8 = r15
            com.loc.dy r15 = m4743a(r7, r8, r9, r10, r11, r12, r13)
            r15.f5488e = r4
            r2 = 16777215(0xffffff, float:2.3509886E-38)
            r3 = 65535(0xffff, float:9.1834E-41)
            if (r1 <= r2) goto L71
            r15.f5486c = r3
            goto L7a
        L71:
            if (r1 <= r3) goto L78
            r15.f5486c = r3
            r15.f5500q = r1
            goto L7a
        L78:
            r15.f5486c = r1
        L7a:
            int r1 = r0.getPci()
            r15.f5498o = r1
            int r0 = r0.getNrarfcn()
            r15.f5499p = r0
            android.telephony.CellSignalStrength r14 = r14.getCellSignalStrength()
            int r14 = r14.getDbm()
            r15.f5502s = r14
            return r15
        L91:
            r14 = 0
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1817dz.m4747a(android.telephony.CellInfoNr, boolean):com.loc.dy");
    }

    /* renamed from: a */
    public static C1816dy m4748a(CellInfoWcdma cellInfoWcdma, boolean z) {
        if (cellInfoWcdma == null || cellInfoWcdma.getCellIdentity() == null) {
            return null;
        }
        CellIdentityWcdma cellIdentity = cellInfoWcdma.getCellIdentity();
        C1816dy c1816dyM4743a = m4743a(4, z, cellIdentity.getMcc(), cellIdentity.getMnc(), cellIdentity.getLac(), cellIdentity.getCid(), cellInfoWcdma.getCellSignalStrength().getDbm());
        c1816dyM4743a.f5498o = cellIdentity.getPsc();
        c1816dyM4743a.f5499p = cellInfoWcdma.getCellIdentity().getUarfcn();
        c1816dyM4743a.f5502s = cellInfoWcdma.getCellSignalStrength().getDbm();
        return c1816dyM4743a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized void m4749a(CellLocation cellLocation) {
        String[] strArrM5124a = C1841ew.m5124a(this.f5505b);
        this.f5504a.clear();
        if (cellLocation instanceof GsmCellLocation) {
            GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
            C1816dy c1816dy = new C1816dy(1, true);
            c1816dy.f5484a = C1841ew.m5144e(strArrM5124a[0]);
            c1816dy.f5485b = C1841ew.m5144e(strArrM5124a[1]);
            c1816dy.f5486c = gsmCellLocation.getLac();
            c1816dy.f5487d = gsmCellLocation.getCid();
            if (this.f5507d != null) {
                int gsmSignalStrength = this.f5507d.getGsmSignalStrength();
                c1816dy.f5502s = gsmSignalStrength == 99 ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : m4752b(gsmSignalStrength);
            }
            c1816dy.f5501r = false;
            this.f5516m.m4714a((C1815dx) c1816dy);
            this.f5504a.add(c1816dy);
            return;
        }
        if (cellLocation instanceof CdmaCellLocation) {
            CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
            C1816dy c1816dy2 = new C1816dy(2, true);
            c1816dy2.f5484a = Integer.parseInt(strArrM5124a[0]);
            c1816dy2.f5485b = Integer.parseInt(strArrM5124a[1]);
            c1816dy2.f5489f = cdmaCellLocation.getBaseStationLatitude();
            c1816dy2.f5490g = cdmaCellLocation.getBaseStationLongitude();
            c1816dy2.f5491h = cdmaCellLocation.getSystemId();
            c1816dy2.f5492i = cdmaCellLocation.getNetworkId();
            c1816dy2.f5493j = cdmaCellLocation.getBaseStationId();
            if (this.f5507d != null) {
                c1816dy2.f5502s = this.f5507d.getCdmaDbm();
            }
            c1816dy2.f5501r = false;
            this.f5516m.m4714a((C1815dx) c1816dy2);
            this.f5504a.add(c1816dy2);
        }
    }

    /* renamed from: a */
    public static boolean m4751a(int i) {
        return i > 0 && i <= 15;
    }

    /* renamed from: b */
    public static int m4752b(int i) {
        return (i * 2) - 113;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: b */
    private void m4753b(boolean z, boolean z2) {
        if (!this.f5508e && this.f5505b != null && Build.VERSION.SDK_INT >= 29 && this.f5511h.getApplicationInfo().targetSdkVersion >= 29) {
            if (this.f5520q == null) {
                this.f5520q = new a();
            }
            this.f5505b.requestCellInfoUpdate(C1753bp.m4236a().m4241b(), this.f5520q);
            if (z2 || z) {
                for (int i = 0; !this.f5521r && i < 20; i++) {
                    try {
                        Thread.sleep(5L);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        this.f5513j = false;
        TelephonyManager telephonyManager = this.f5505b;
        if (telephonyManager != null) {
            String networkOperator = telephonyManager.getNetworkOperator();
            this.f5514k = networkOperator;
            if (!TextUtils.isEmpty(networkOperator)) {
                this.f5513j = true;
            }
        }
        this.f5517n = C1841ew.m5127b();
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m4754b(C1817dz c1817dz) {
        c1817dz.f5521r = true;
        return true;
    }

    /* renamed from: n */
    private void m4758n() {
        if (this.f5505b == null) {
            return;
        }
        m4759o();
    }

    /* renamed from: o */
    private void m4759o() {
        b bVar = new b();
        this.f5506c = bVar;
        if (bVar != null) {
            try {
                this.f5505b.listen(bVar, 1360);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: p */
    private int m4760p() {
        C1816dy c1816dyM4772d = m4772d();
        if (c1816dyM4772d != null) {
            return c1816dyM4772d.f5495l;
        }
        return 0;
    }

    /* renamed from: q */
    private CellLocation m4761q() {
        TelephonyManager telephonyManager = this.f5505b;
        if (telephonyManager != null) {
            try {
                CellLocation cellLocation = telephonyManager.getCellLocation();
                this.f5510g = null;
                return cellLocation;
            } catch (SecurityException e) {
                this.f5510g = e.getMessage();
            } catch (Throwable th) {
                this.f5510g = null;
                C1834ep.m5014a(th, "CgiManager", "getCellLocation");
            }
        }
        return null;
    }

    /* renamed from: r */
    private boolean m4762r() {
        return !this.f5508e && C1841ew.m5127b() - this.f5517n >= 45000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public CellLocation m4763s() {
        if (this.f5505b == null) {
            return null;
        }
        return m4761q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    /* renamed from: t */
    public List<CellInfo> m4764t() {
        List<CellInfo> allCellInfo;
        try {
            if (C1841ew.m5137c() < 18 || this.f5505b == null) {
                return null;
            }
            try {
                allCellInfo = this.f5505b.getAllCellInfo();
                try {
                    this.f5510g = null;
                } catch (SecurityException e) {
                    e = e;
                    this.f5510g = e.getMessage();
                    return allCellInfo;
                }
            } catch (SecurityException e2) {
                e = e2;
                allCellInfo = null;
            }
            return allCellInfo;
        } catch (Throwable th) {
            C1834ep.m5014a(th, "Cgi", "getNewCells");
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final List<AbstractC1788cx> m4765a() {
        C1789cy c1789cy;
        C1790cz c1790cz;
        ArrayList arrayList = new ArrayList();
        List<CellInfo> allCellInfo = this.f5505b.getAllCellInfo();
        if (allCellInfo != null) {
            for (CellInfo cellInfo : allCellInfo) {
                if (cellInfo instanceof CellInfoCdma) {
                    CellInfoCdma cellInfoCdma = (CellInfoCdma) cellInfo;
                    CellIdentityCdma cellIdentity = cellInfoCdma.getCellIdentity();
                    C1789cy c1789cy2 = new C1789cy(cellInfo.isRegistered(), true);
                    c1789cy2.f5224m = cellIdentity.getLatitude();
                    c1789cy2.f5225n = cellIdentity.getLongitude();
                    c1789cy2.f5221j = cellIdentity.getSystemId();
                    c1789cy2.f5222k = cellIdentity.getNetworkId();
                    c1789cy2.f5223l = cellIdentity.getBasestationId();
                    c1789cy2.f5215d = cellInfoCdma.getCellSignalStrength().getAsuLevel();
                    c1789cy2.f5214c = cellInfoCdma.getCellSignalStrength().getCdmaDbm();
                    c1789cy = c1789cy2;
                } else {
                    if (cellInfo instanceof CellInfoGsm) {
                        CellInfoGsm cellInfoGsm = (CellInfoGsm) cellInfo;
                        CellIdentityGsm cellIdentity2 = cellInfoGsm.getCellIdentity();
                        C1790cz c1790cz2 = new C1790cz(cellInfo.isRegistered(), true);
                        c1790cz2.f5212a = String.valueOf(cellIdentity2.getMcc());
                        c1790cz2.f5213b = String.valueOf(cellIdentity2.getMnc());
                        c1790cz2.f5226j = cellIdentity2.getLac();
                        c1790cz2.f5227k = cellIdentity2.getCid();
                        c1790cz2.f5214c = cellInfoGsm.getCellSignalStrength().getDbm();
                        c1790cz2.f5215d = cellInfoGsm.getCellSignalStrength().getAsuLevel();
                        c1790cz = c1790cz2;
                        if (Build.VERSION.SDK_INT >= 24) {
                            c1790cz2.f5229m = cellIdentity2.getArfcn();
                            c1790cz2.f5230n = cellIdentity2.getBsic();
                            c1790cz = c1790cz2;
                        }
                    } else if (cellInfo instanceof CellInfoLte) {
                        CellInfoLte cellInfoLte = (CellInfoLte) cellInfo;
                        CellIdentityLte cellIdentity3 = cellInfoLte.getCellIdentity();
                        C1792da c1792da = new C1792da(cellInfo.isRegistered());
                        c1792da.f5212a = String.valueOf(cellIdentity3.getMcc());
                        c1792da.f5213b = String.valueOf(cellIdentity3.getMnc());
                        c1792da.f5276l = cellIdentity3.getPci();
                        c1792da.f5215d = cellInfoLte.getCellSignalStrength().getAsuLevel();
                        c1792da.f5275k = cellIdentity3.getCi();
                        c1792da.f5274j = cellIdentity3.getTac();
                        c1792da.f5278n = cellInfoLte.getCellSignalStrength().getTimingAdvance();
                        c1792da.f5214c = cellInfoLte.getCellSignalStrength().getDbm();
                        c1789cy = c1792da;
                        if (Build.VERSION.SDK_INT >= 24) {
                            c1792da.f5277m = cellIdentity3.getEarfcn();
                            c1789cy = c1792da;
                        }
                    } else if (cellInfo instanceof CellInfoWcdma) {
                        CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) cellInfo;
                        CellIdentityWcdma cellIdentity4 = cellInfoWcdma.getCellIdentity();
                        C1793db c1793db = new C1793db(cellInfo.isRegistered(), true);
                        c1793db.f5212a = String.valueOf(cellIdentity4.getMcc());
                        c1793db.f5213b = String.valueOf(cellIdentity4.getMnc());
                        c1793db.f5279j = cellIdentity4.getLac();
                        c1793db.f5280k = cellIdentity4.getCid();
                        c1793db.f5281l = cellIdentity4.getPsc();
                        c1793db.f5215d = cellInfoWcdma.getCellSignalStrength().getAsuLevel();
                        c1793db.f5214c = cellInfoWcdma.getCellSignalStrength().getDbm();
                        c1790cz = c1793db;
                        if (Build.VERSION.SDK_INT >= 24) {
                            c1793db.f5282m = cellIdentity4.getUarfcn();
                            c1790cz = c1793db;
                        }
                    }
                    arrayList.add(c1790cz);
                }
                arrayList.add(c1789cy);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m4766a(C1808dq c1808dq) {
        this.f5522s = c1808dq;
    }

    /* renamed from: a */
    public final synchronized void m4767a(List<CellInfo> list) {
        if (this.f5515l != null) {
            this.f5515l.clear();
        }
        if (list != null && list.size() > 0) {
            for (int i = 0; i < list.size(); i++) {
                CellInfo cellInfo = list.get(i);
                if (cellInfo != null) {
                    C1816dy c1816dyM4747a = null;
                    boolean zIsRegistered = cellInfo.isRegistered();
                    if (cellInfo instanceof CellInfoCdma) {
                        c1816dyM4747a = m4744a((CellInfoCdma) cellInfo, zIsRegistered);
                    } else if (cellInfo instanceof CellInfoGsm) {
                        c1816dyM4747a = m4745a((CellInfoGsm) cellInfo, zIsRegistered);
                    } else if (cellInfo instanceof CellInfoWcdma) {
                        c1816dyM4747a = m4748a((CellInfoWcdma) cellInfo, zIsRegistered);
                    } else if (cellInfo instanceof CellInfoLte) {
                        c1816dyM4747a = m4746a((CellInfoLte) cellInfo, zIsRegistered);
                    } else if (Build.VERSION.SDK_INT >= 29 && (cellInfo instanceof CellInfoNr)) {
                        c1816dyM4747a = m4747a((CellInfoNr) cellInfo, zIsRegistered);
                    }
                    if (c1816dyM4747a != null) {
                        this.f5516m.m4714a((C1815dx) c1816dyM4747a);
                        c1816dyM4747a.f5496m = (short) Math.min(65535L, this.f5516m.m4723e((C1815dx) c1816dyM4747a));
                        c1816dyM4747a.f5501r = true;
                    }
                    this.f5515l.add(c1816dyM4747a);
                }
            }
            this.f5512i = false;
            if (this.f5515l != null && this.f5515l.size() > 0) {
                this.f5512i = true;
            }
        }
    }

    /* renamed from: a */
    public final void m4768a(boolean z) {
        PhoneStateListener phoneStateListener;
        this.f5516m.m4717a(z);
        this.f5517n = 0L;
        synchronized (this.f5519p) {
            this.f5518o = true;
        }
        TelephonyManager telephonyManager = this.f5505b;
        if (telephonyManager != null && (phoneStateListener = this.f5506c) != null) {
            try {
                telephonyManager.listen(phoneStateListener, 0);
            } catch (Throwable th) {
                C1834ep.m5014a(th, "CgiManager", "destroy");
            }
        }
        this.f5506c = null;
        this.f5507d = null;
        this.f5505b = null;
    }

    /* renamed from: a */
    public final void m4769a(boolean z, boolean z2) {
        try {
            this.f5508e = C1841ew.m5113a(this.f5511h);
            if (m4762r()) {
                m4753b(z, z2);
                m4749a(m4763s());
                m4767a(m4764t());
            }
            if (this.f5508e) {
                m4777i();
            }
        } catch (SecurityException e) {
            this.f5510g = e.getMessage();
        } catch (Throwable th) {
            C1834ep.m5014a(th, "CgiManager", "refresh");
        }
    }

    /* renamed from: b */
    public final synchronized ArrayList<C1816dy> m4770b() {
        ArrayList<C1816dy> arrayList;
        arrayList = new ArrayList<>();
        if (this.f5504a != null) {
            Iterator<C1816dy> it = this.f5504a.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().clone());
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public final synchronized ArrayList<C1816dy> m4771c() {
        ArrayList<C1816dy> arrayList;
        arrayList = new ArrayList<>();
        if (this.f5515l != null) {
            Iterator<C1816dy> it = this.f5515l.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().clone());
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public final synchronized C1816dy m4772d() {
        if (this.f5508e) {
            return null;
        }
        ArrayList<C1816dy> arrayList = this.f5504a;
        if (arrayList.size() <= 0) {
            return null;
        }
        return arrayList.get(0).clone();
    }

    /* renamed from: e */
    public final synchronized C1816dy m4773e() {
        if (this.f5508e) {
            return null;
        }
        ArrayList<C1816dy> arrayList = this.f5515l;
        if (arrayList.size() <= 0) {
            return null;
        }
        Iterator<C1816dy> it = arrayList.iterator();
        while (it.hasNext()) {
            C1816dy next = it.next();
            if (next.f5497n) {
                return next.clone();
            }
        }
        return arrayList.get(0).clone();
    }

    /* renamed from: f */
    public final int m4774f() {
        return m4760p() | (this.f5512i ? 4 : 0) | (this.f5513j ? 8 : 0);
    }

    /* renamed from: g */
    public final int m4775g() {
        return m4760p() & 3;
    }

    /* renamed from: h */
    public final TelephonyManager m4776h() {
        return this.f5505b;
    }

    /* renamed from: i */
    public final synchronized void m4777i() {
        this.f5510g = null;
        this.f5504a.clear();
        this.f5515l.clear();
        this.f5512i = false;
        this.f5513j = false;
    }

    /* renamed from: j */
    public final String m4778j() {
        return this.f5510g;
    }

    /* renamed from: k */
    public final String m4779k() {
        return this.f5514k;
    }

    /* renamed from: l */
    public final synchronized String m4780l() {
        if (this.f5508e) {
            m4777i();
        }
        if (this.f5509f == null) {
            this.f5509f = new StringBuilder();
        } else {
            this.f5509f.delete(0, this.f5509f.length());
        }
        if (m4775g() == 1) {
            for (int i = 1; i < this.f5504a.size(); i++) {
                StringBuilder sb = this.f5509f;
                sb.append("#");
                sb.append(this.f5504a.get(i).f5485b);
                StringBuilder sb2 = this.f5509f;
                sb2.append("|");
                sb2.append(this.f5504a.get(i).f5486c);
                StringBuilder sb3 = this.f5509f;
                sb3.append("|");
                sb3.append(this.f5504a.get(i).f5487d);
            }
        }
        for (int i2 = 1; i2 < this.f5515l.size(); i2++) {
            C1816dy c1816dy = this.f5515l.get(i2);
            if (c1816dy.f5495l == 1 || c1816dy.f5495l == 3 || c1816dy.f5495l == 4 || c1816dy.f5495l == 5) {
                StringBuilder sb4 = this.f5509f;
                sb4.append("#");
                sb4.append(c1816dy.f5495l);
                StringBuilder sb5 = this.f5509f;
                sb5.append("|");
                sb5.append(c1816dy.f5484a);
                StringBuilder sb6 = this.f5509f;
                sb6.append("|");
                sb6.append(c1816dy.f5485b);
                StringBuilder sb7 = this.f5509f;
                sb7.append("|");
                sb7.append(c1816dy.f5486c);
                StringBuilder sb8 = this.f5509f;
                sb8.append("|");
                sb8.append(c1816dy.m4737a());
            } else if (c1816dy.f5495l == 2) {
                StringBuilder sb9 = this.f5509f;
                sb9.append("#");
                sb9.append(c1816dy.f5495l);
                StringBuilder sb10 = this.f5509f;
                sb10.append("|");
                sb10.append(c1816dy.f5484a);
                StringBuilder sb11 = this.f5509f;
                sb11.append("|");
                sb11.append(c1816dy.f5491h);
                StringBuilder sb12 = this.f5509f;
                sb12.append("|");
                sb12.append(c1816dy.f5492i);
                StringBuilder sb13 = this.f5509f;
                sb13.append("|");
                sb13.append(c1816dy.f5493j);
            }
        }
        if (this.f5509f.length() > 0) {
            this.f5509f.deleteCharAt(0);
        }
        return this.f5509f.toString();
    }

    /* renamed from: m */
    public final boolean m4781m() {
        try {
            if (this.f5505b != null) {
                if (!TextUtils.isEmpty(this.f5505b.getSimOperator())) {
                    return true;
                }
                if (!TextUtils.isEmpty(this.f5505b.getSimCountryIso())) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        try {
            int iM5106a = C1841ew.m5106a(C1841ew.m5138c(this.f5511h));
            return iM5106a == 0 || iM5106a == 4 || iM5106a == 2 || iM5106a == 5 || iM5106a == 3;
        } catch (Throwable unused2) {
            return false;
        }
    }
}
