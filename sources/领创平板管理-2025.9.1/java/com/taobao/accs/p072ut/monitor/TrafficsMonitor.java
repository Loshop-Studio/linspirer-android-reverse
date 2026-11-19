package com.taobao.accs.p072ut.monitor;

import android.content.Context;
import android.text.TextUtils;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.statist.Dimension;
import anet.channel.statist.Measure;
import anet.channel.statist.Monitor;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.p070a.AccsTrafficDatabase;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.BaseMonitor;
import com.taobao.accs.utl.UtilityImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.android.agoo.common.AgooConstants;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class TrafficsMonitor {

    /* renamed from: d */
    public Context f6369d;

    /* renamed from: a */
    public Map<String, List<TrafficSampleRecord>> f6366a = new HashMap();

    /* renamed from: b */
    public Map<String, String> f6367b = new HashMap<String, String>() { // from class: com.taobao.accs.ut.monitor.TrafficsMonitor.1
        {
            put("im", "512");
            put("motu", "513");
            put("acds", "514");
            put("agooSend", "515");
            put(AgooConstants.AGOO_SERVICE_AGOOACK, "515");
            put("agooTokenReport", "515");
            put("accsSelf", "1000");
        }
    };

    /* renamed from: c */
    public int f6368c = 0;

    /* renamed from: e */
    public String f6370e = "";

    /* compiled from: Taobao */
    @Monitor(module = "NetworkSDK", monitorPoint = "TrafficStats")
    public static class StatTrafficMonitor extends BaseMonitor {

        @Dimension
        public String bizId;

        @Dimension
        public String date;

        @Dimension
        public String host;

        @Dimension
        public boolean isBackground;

        @Dimension
        public String serviceId;

        @Measure
        public long size;
    }

    public TrafficsMonitor(Context context) {
        this.f6369d = context;
    }

    /* renamed from: b */
    private void m5722b() {
        String str;
        boolean z;
        synchronized (this.f6366a) {
            String strM5737a = UtilityImpl.m5737a(System.currentTimeMillis());
            if (TextUtils.isEmpty(this.f6370e) || this.f6370e.equals(strM5737a)) {
                str = strM5737a;
                z = false;
            } else {
                str = this.f6370e;
                z = true;
            }
            Iterator<String> it = this.f6366a.keySet().iterator();
            while (it.hasNext()) {
                for (TrafficSampleRecord c1971a : this.f6366a.get(it.next())) {
                    if (c1971a != null) {
                        AccsTrafficDatabase.m5463a(this.f6369d).m5468a(c1971a.f6376e, c1971a.f6374c, this.f6367b.get(c1971a.f6374c), c1971a.f6375d, c1971a.f6377f, str);
                    }
                }
            }
            if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d("TrafficsMonitor", "savetoDay:" + str + " saveTraffics" + this.f6366a.toString(), new Object[0]);
            }
            if (z) {
                this.f6366a.clear();
                m5723c();
            } else if (ALog.isPrintLog(ALog.Level.D)) {
                ALog.m5726d("TrafficsMonitor", "no need commit lastsaveDay:" + this.f6370e + " currday:" + strM5737a, new Object[0]);
            }
            this.f6370e = strM5737a;
            this.f6368c = 0;
        }
    }

    /* renamed from: c */
    private void m5723c() {
        List<TrafficSampleRecord> listM5466a = AccsTrafficDatabase.m5463a(this.f6369d).m5466a(false);
        if (listM5466a == null) {
            return;
        }
        try {
            for (TrafficSampleRecord c1971a : listM5466a) {
                if (c1971a != null) {
                    StatTrafficMonitor statTrafficMonitor = new StatTrafficMonitor();
                    statTrafficMonitor.bizId = c1971a.f6373b;
                    statTrafficMonitor.date = c1971a.f6372a;
                    statTrafficMonitor.host = c1971a.f6376e;
                    statTrafficMonitor.isBackground = c1971a.f6375d;
                    statTrafficMonitor.size = c1971a.f6377f;
                    AppMonitor.getInstance().commitStat(statTrafficMonitor);
                }
            }
            AccsTrafficDatabase.m5463a(this.f6369d).m5467a();
        } catch (Throwable th) {
            ALog.m5728e("", th.toString(), new Object[0]);
            th.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.lang.Object] */
    /* renamed from: a */
    public void m5725a(TrafficSampleRecord c1971a) {
        boolean z;
        if (c1971a == null || c1971a.f6376e == null || c1971a.f6377f <= 0) {
            return;
        }
        c1971a.f6374c = TextUtils.isEmpty(c1971a.f6374c) ? "accsSelf" : c1971a.f6374c;
        synchronized (this.f6366a) {
            String str = this.f6367b.get(c1971a.f6374c);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            c1971a.f6373b = str;
            ALog.isPrintLog(ALog.Level.D);
            ?? arrayList = (List) this.f6366a.get(str);
            if (arrayList != 0) {
                Iterator it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    TrafficSampleRecord c1971a2 = (TrafficSampleRecord) it.next();
                    if (c1971a2.f6375d == c1971a.f6375d && c1971a2.f6376e != null && c1971a2.f6376e.equals(c1971a.f6376e)) {
                        c1971a2.f6377f += c1971a.f6377f;
                        z = false;
                        break;
                    }
                }
                if (z) {
                    arrayList.add(c1971a);
                }
            } else {
                arrayList = new ArrayList();
                arrayList.add(c1971a);
            }
            this.f6366a.put(str, arrayList);
            int i = this.f6368c + 1;
            this.f6368c = i;
            if (i >= 10) {
                m5722b();
            }
        }
    }

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.ut.monitor.TrafficsMonitor$a */
    public static class TrafficSampleRecord {

        /* renamed from: a */
        public String f6372a;

        /* renamed from: b */
        public String f6373b;

        /* renamed from: c */
        public String f6374c;

        /* renamed from: d */
        public boolean f6375d;

        /* renamed from: e */
        public String f6376e;

        /* renamed from: f */
        public long f6377f;

        public TrafficSampleRecord(String str, boolean z, String str2, long j) {
            this.f6374c = str;
            this.f6375d = z;
            this.f6376e = str2;
            this.f6377f = j;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            StringBuilder sbM1765j = CompilerOutline.m1765j("date:");
            sbM1765j.append(this.f6372a);
            sb.append(sbM1765j.toString());
            sb.append(" ");
            sb.append("bizId:" + this.f6373b);
            sb.append(" ");
            sb.append("serviceId:" + this.f6374c);
            sb.append(" ");
            sb.append("host:" + this.f6376e);
            sb.append(" ");
            sb.append("isBackground:" + this.f6375d);
            sb.append(" ");
            sb.append("size:" + this.f6377f);
            return sb.toString();
        }

        public TrafficSampleRecord(String str, String str2, String str3, boolean z, String str4, long j) {
            this.f6372a = str;
            this.f6373b = str2;
            this.f6374c = str3;
            this.f6375d = z;
            this.f6376e = str4;
            this.f6377f = j;
        }
    }

    /* renamed from: a */
    public void m5724a() {
        try {
            synchronized (this.f6366a) {
                this.f6366a.clear();
            }
            List<TrafficSampleRecord> listM5466a = AccsTrafficDatabase.m5463a(this.f6369d).m5466a(true);
            if (listM5466a == null) {
                return;
            }
            Iterator<TrafficSampleRecord> it = listM5466a.iterator();
            while (it.hasNext()) {
                m5725a(it.next());
            }
        } catch (Exception e) {
            ALog.m5732w("TrafficsMonitor", e.toString(), new Object[0]);
        }
    }
}
