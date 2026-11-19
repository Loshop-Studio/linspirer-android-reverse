package com.taobao.accs.p072ut.p073a;

import com.huawei.hem.C0948f6;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.UTMini;
import java.util.HashMap;
import org.android.agoo.common.AgooConstants;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.ut.a.c */
/* loaded from: classes.dex */
public class C1967c {

    /* renamed from: a */
    public int f6334a;

    /* renamed from: b */
    public int f6335b;

    /* renamed from: f */
    public String f6339f;

    /* renamed from: g */
    public String f6340g;

    /* renamed from: h */
    public long f6341h;

    /* renamed from: i */
    public boolean f6342i;

    /* renamed from: j */
    public boolean f6343j;

    /* renamed from: k */
    public long f6344k = 0;

    /* renamed from: c */
    public boolean f6336c = false;

    /* renamed from: d */
    public int f6337d = 0;

    /* renamed from: e */
    public int f6338e = 0;

    /* renamed from: a */
    public void m5719a() {
        String str;
        String str2;
        String strValueOf;
        String str3;
        String strValueOf2;
        String strValueOf3;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (ALog.isPrintLog(ALog.Level.D)) {
            StringBuilder sbM1765j = C0948f6.m1765j("commitUT interval:");
            sbM1765j.append(jCurrentTimeMillis - this.f6344k);
            sbM1765j.append(" interval1:");
            sbM1765j.append(jCurrentTimeMillis - this.f6341h);
            ALog.m5726d("MonitorStatistic", sbM1765j.toString(), new Object[0]);
        }
        if (jCurrentTimeMillis - this.f6344k <= 1200000 || jCurrentTimeMillis - this.f6341h <= 60000) {
            return;
        }
        HashMap map = new HashMap();
        String str4 = null;
        try {
            strValueOf = String.valueOf(this.f6337d);
            try {
                strValueOf2 = String.valueOf(this.f6338e);
                try {
                    strValueOf3 = String.valueOf(221);
                    try {
                        map.put("connStatus", String.valueOf(this.f6334a));
                        map.put("connType", String.valueOf(this.f6335b));
                        map.put("tcpConnected", String.valueOf(this.f6336c));
                        map.put("proxy", String.valueOf(this.f6339f));
                        map.put("startServiceTime", String.valueOf(this.f6341h));
                        map.put("commitTime", String.valueOf(jCurrentTimeMillis));
                        map.put("networkAvailable", String.valueOf(this.f6342i));
                        map.put("threadIsalive", String.valueOf(this.f6343j));
                        map.put(AgooConstants.OPEN_URL, this.f6340g);
                        if (ALog.isPrintLog(ALog.Level.D)) {
                            try {
                                ALog.m5726d("MonitorStatistic", UTMini.getCommitInfo(66001, strValueOf, strValueOf2, strValueOf3, map), new Object[0]);
                            } catch (Throwable th) {
                                th = th;
                                str4 = strValueOf3;
                                str3 = strValueOf2;
                                str2 = str4;
                                str4 = strValueOf;
                                str = str3;
                                ALog.m5726d("MonitorStatistic", UTMini.getCommitInfo(66001, str4, str, str2, map) + " " + th.toString(), new Object[0]);
                            }
                        }
                        str3 = strValueOf2;
                    } catch (Throwable th2) {
                        th = th2;
                        str3 = strValueOf2;
                        str4 = strValueOf3;
                        str2 = str4;
                        str4 = strValueOf;
                        str = str3;
                        ALog.m5726d("MonitorStatistic", UTMini.getCommitInfo(66001, str4, str, str2, map) + " " + th.toString(), new Object[0]);
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                str3 = null;
            }
        } catch (Throwable th5) {
            th = th5;
            str = null;
            str2 = null;
        }
        try {
            UTMini.getInstance().commitEvent(66001, "MONITOR", strValueOf, strValueOf2, strValueOf3, map);
            this.f6344k = jCurrentTimeMillis;
        } catch (Throwable th6) {
            th = th6;
            str4 = strValueOf;
            str2 = strValueOf3;
            str = str3;
            ALog.m5726d("MonitorStatistic", UTMini.getCommitInfo(66001, str4, str, str2, map) + " " + th.toString(), new Object[0]);
        }
    }
}
