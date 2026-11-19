package com.taobao.accs;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class AccsState {
    public static final String ALL = "all";
    public static final String BIND_APP_FROM_CACHE = "bfc";
    public static final String CONNECTION_CHANGE = "cc";
    public static final String LAST_MSG_RECEIVE_TIME = "lmrt";
    public static final String LAST_MSG_SEND_TIME = "lmst";
    public static final String RECENT_ERRORS = "re";
    public static final String SDK_VERSION = "sv";

    /* renamed from: a */
    public HashMap<String, C1896c> f6035a = new HashMap<>();

    /* renamed from: b */
    public long f6036b = -1;

    /* renamed from: c */
    public long f6037c = -1;

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.AccsState$a */
    public static class C1894a {

        /* renamed from: a */
        public static final AccsState f6038a = new AccsState();
    }

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.AccsState$b */
    public static class C1895b {

        /* renamed from: a */
        public long f6039a;

        /* renamed from: b */
        public String f6040b;

        /* renamed from: c */
        public String f6041c;

        public C1895b(long j, String str, String str2) {
            this.f6039a = j;
            this.f6040b = str;
            this.f6041c = str2;
        }

        /* renamed from: a */
        public JSONArray m5454a() {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(this.f6039a);
            jSONArray.put(this.f6040b);
            jSONArray.put(this.f6041c);
            return jSONArray;
        }
    }

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.AccsState$c */
    public static class C1896c {
        public static final int MAX_HISTORY = 5;

        /* renamed from: a */
        public HashMap<String, C1895b> f6042a;

        /* renamed from: b */
        public HashMap<String, ArrayList<C1895b>> f6043b;

        public C1896c() {
            this.f6042a = new HashMap<>();
            this.f6043b = new HashMap<>();
        }

        /* renamed from: a */
        public void m5457a(String str, Object obj, long j) {
            this.f6042a.put(str, new C1895b(j, str, m5455a(obj)));
        }

        /* renamed from: b */
        public void m5460b(String str, Object obj, long j) {
            ArrayList<C1895b> arrayList = this.f6043b.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f6043b.put(str, arrayList);
            }
            arrayList.add(new C1895b(j, str, m5455a(obj)));
            while (arrayList.size() > 5) {
                arrayList.remove(0);
            }
        }

        /* renamed from: a */
        public static String m5455a(Object obj) {
            return obj == null ? "null" : obj.toString();
        }

        /* renamed from: a */
        public boolean m5458a(String str) {
            return this.f6042a.keySet().contains(str) || this.f6043b.keySet().contains(str);
        }

        /* renamed from: a */
        public JSONArray m5456a() {
            JSONArray jSONArray = new JSONArray();
            Iterator it = new ArrayList(this.f6042a.values()).iterator();
            while (it.hasNext()) {
                jSONArray.put(((C1895b) it.next()).m5454a());
            }
            ArrayList arrayList = new ArrayList();
            Iterator<ArrayList<C1895b>> it2 = this.f6043b.values().iterator();
            while (it2.hasNext()) {
                arrayList.addAll(it2.next());
            }
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                jSONArray.put(((C1895b) it3.next()).m5454a());
            }
            return jSONArray;
        }

        /* renamed from: b */
        public JSONArray m5459b(String str) {
            JSONArray jSONArray = new JSONArray();
            C1895b c1895b = this.f6042a.get(str);
            if (c1895b != null) {
                jSONArray.put(c1895b.m5454a());
            }
            ArrayList<C1895b> arrayList = this.f6043b.get(str);
            if (arrayList != null) {
                Iterator<C1895b> it = arrayList.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next().m5454a());
                }
            }
            return jSONArray;
        }
    }

    public static AccsState getInstance() {
        return C1894a.f6038a;
    }

    /* renamed from: a */
    public synchronized void m5449a(String str, Object obj) {
        m5444a(ALL).m5457a(str, obj, m5448b());
    }

    /* renamed from: b */
    public synchronized void m5451b(String str, Object obj) {
        m5444a(ALL).m5460b(str, obj, m5448b());
    }

    public synchronized String getState() {
        if (!m5446a(this.f6035a)) {
            return "{}";
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("t", this.f6037c);
            Iterator it = new ArrayList(this.f6035a.entrySet()).iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                jSONObject.put((String) entry.getKey(), ((C1896c) entry.getValue()).m5456a());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject.toString();
    }

    public synchronized String getStateByKey(String str) {
        if (!m5447a(this.f6035a, str)) {
            return "{}";
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("t", this.f6037c);
            Iterator it = new ArrayList(this.f6035a.entrySet()).iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((C1896c) entry.getValue()).m5458a(str)) {
                    jSONObject.put((String) entry.getKey(), ((C1896c) entry.getValue()).m5459b(str));
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject.toString();
    }

    /* renamed from: a */
    public synchronized void m5450a(String str, String str2, Object obj) {
        m5444a(str).m5457a(str2, obj, m5448b());
    }

    /* renamed from: b */
    public synchronized void m5452b(String str, String str2, Object obj) {
        m5444a(str).m5460b(str2, obj, m5448b());
    }

    /* renamed from: a */
    private C1896c m5444a(String str) {
        C1896c c1896c = this.f6035a.get(str);
        if (c1896c != null) {
            return c1896c;
        }
        C1896c c1896c2 = new C1896c();
        this.f6035a.put(str, c1896c2);
        return c1896c2;
    }

    /* renamed from: b */
    private long m5448b() {
        m5445a();
        return SystemClock.elapsedRealtime() - this.f6036b;
    }

    /* renamed from: a */
    private void m5445a() {
        if (this.f6037c < 0 || this.f6036b < 0) {
            this.f6037c = System.currentTimeMillis();
            this.f6036b = SystemClock.elapsedRealtime();
        }
    }

    /* renamed from: a */
    private boolean m5446a(HashMap<String, C1896c> map) {
        return map.size() > 0;
    }

    /* renamed from: a */
    private boolean m5447a(HashMap<String, C1896c> map, String str) {
        Iterator it = new ArrayList(map.values()).iterator();
        while (it.hasNext()) {
            if (((C1896c) it.next()).m5458a(str)) {
                return true;
            }
        }
        return false;
    }
}
