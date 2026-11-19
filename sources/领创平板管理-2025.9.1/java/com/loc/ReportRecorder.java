package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.huawei.hem.C0994h1;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.android.agoo.message.MessageService;
import org.json.JSONObject;

/* compiled from: ReportRecorder.java */
/* renamed from: com.loc.et */
/* loaded from: classes.dex */
public final class ReportRecorder {

    /* renamed from: f */
    public static ReportRecorder f5775f;

    /* renamed from: i */
    public static long f5776i;

    /* renamed from: d */
    public File f5780d;

    /* renamed from: e */
    public String f5781e;

    /* renamed from: g */
    public Context f5782g;

    /* renamed from: h */
    public boolean f5783h;

    /* renamed from: c */
    public LinkedHashMap<String, Long> f5779c = new LinkedHashMap<>();

    /* renamed from: a */
    public String f5777a = "";

    /* renamed from: b */
    public String f5778b = null;

    public ReportRecorder(Context context) {
        this.f5781e = null;
        Context applicationContext = context.getApplicationContext();
        this.f5782g = applicationContext;
        String path = applicationContext.getFilesDir().getPath();
        if (this.f5781e == null) {
            this.f5781e = C1841ew.m5156m(this.f5782g);
        }
        try {
            this.f5780d = new File(path, "reportRecorder");
        } catch (Throwable th) {
            ALLog.m4567a(th);
        }
        m5059c();
    }

    /* renamed from: a */
    public static synchronized ReportRecorder m5057a(Context context) {
        if (f5775f == null) {
            f5775f = new ReportRecorder(context);
        }
        return f5775f;
    }

    /* renamed from: b */
    private boolean m5058b(Context context) {
        if (this.f5778b == null) {
            this.f5778b = C1840ev.m5092a(context, "pref", "lastavedate", MessageService.MSG_DB_READY_REPORT);
        }
        if (this.f5778b.equals(this.f5777a)) {
            return false;
        }
        SharedPreferences.Editor editorM5090a = C1840ev.m5090a(context, "pref");
        C1840ev.m5097a(editorM5090a, "lastavedate", this.f5777a);
        C1840ev.m5093a(editorM5090a);
        this.f5778b = this.f5777a;
        return true;
    }

    /* renamed from: c */
    private synchronized void m5059c() {
        if (this.f5779c == null || this.f5779c.size() <= 0) {
            try {
                this.f5777a = new SimpleDateFormat("yyyyMMdd").format(new Date(System.currentTimeMillis()));
                Iterator<String> it = C1841ew.m5111a(this.f5780d).iterator();
                while (it.hasNext()) {
                    try {
                        try {
                            String[] strArrSplit = new String(C1823ee.m4877b(C0994h1.m1934e(it.next()), this.f5781e), "UTF-8").split(",");
                            if (strArrSplit != null && strArrSplit.length > 1) {
                                this.f5779c.put(strArrSplit[0], Long.valueOf(Long.parseLong(strArrSplit[1])));
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    /* renamed from: d */
    private void m5060d() {
        try {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, Long> entry : this.f5779c.entrySet()) {
                try {
                    sb.append(C0994h1.m1933d(C1823ee.m4874a((entry.getKey() + "," + entry.getValue()).getBytes("UTF-8"), this.f5781e)) + "\n");
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
            String string = sb.toString();
            if (TextUtils.isEmpty(string)) {
                return;
            }
            C1841ew.m5112a(this.f5780d, string);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    public final synchronized void m5061a() {
        if (this.f5783h) {
            m5060d();
            this.f5783h = false;
        }
    }

    /* renamed from: a */
    public final synchronized void m5062a(AMapLocation aMapLocation) {
        try {
            if ((!this.f5779c.containsKey(this.f5777a) && this.f5779c.size() >= 8) || (this.f5779c.containsKey(this.f5777a) && this.f5779c.size() >= 9)) {
                ArrayList arrayList = new ArrayList();
                Iterator<Map.Entry<String, Long>> it = this.f5779c.entrySet().iterator();
                while (it.hasNext()) {
                    try {
                        arrayList.add(it.next().getKey());
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    if (arrayList.size() == this.f5779c.size() - 7) {
                        break;
                    }
                }
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    this.f5779c.remove((String) it2.next());
                }
            }
            if (aMapLocation.getErrorCode() != 0) {
                return;
            }
            if (aMapLocation.getLocationType() != 6 && aMapLocation.getLocationType() != 5) {
                if (this.f5779c.containsKey(this.f5777a)) {
                    long jLongValue = this.f5779c.get(this.f5777a).longValue() + 1;
                    f5776i = jLongValue;
                    this.f5779c.put(this.f5777a, Long.valueOf(jLongValue));
                } else {
                    this.f5779c.put(this.f5777a, 1L);
                    f5776i = 1L;
                }
                if (f5776i != 0 && f5776i % 100 == 0) {
                    m5061a();
                }
                this.f5783h = true;
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    /* renamed from: b */
    public final synchronized void m5063b() {
        try {
            if (m5058b(this.f5782g)) {
                for (Map.Entry<String, Long> entry : this.f5779c.entrySet()) {
                    try {
                        if (!this.f5777a.equals(entry.getKey())) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("param_long_first", entry.getKey());
                            jSONObject.put("param_long_second", entry.getValue());
                            ReportUtil.m5074a(this.f5782g, "O023", jSONObject);
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
