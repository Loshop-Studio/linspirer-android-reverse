package anet.channel.strategy;

import anet.channel.strategy.dispatch.DispatchConstants;
import anet.channel.util.ALog;
import com.taobao.accs.common.Constants;
import com.taobao.accs.utl.BaseMonitor;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.l */
/* loaded from: classes.dex */
public class C0407l {

    /* compiled from: Taobao */
    /* renamed from: anet.channel.strategy.l$a */
    public static class a {

        /* renamed from: a */
        public final int f521a;

        /* renamed from: b */
        public final String f522b;

        /* renamed from: c */
        public final int f523c;

        /* renamed from: d */
        public final int f524d;

        /* renamed from: e */
        public final int f525e;

        /* renamed from: f */
        public final int f526f;

        /* renamed from: g */
        public final String f527g;

        /* renamed from: h */
        public final String f528h;

        public a(JSONObject jSONObject) {
            this.f521a = jSONObject.optInt("port");
            this.f522b = jSONObject.optString("protocol");
            this.f523c = jSONObject.optInt("cto");
            this.f524d = jSONObject.optInt("rto");
            this.f525e = jSONObject.optInt("retry");
            this.f526f = jSONObject.optInt("heartbeat");
            this.f527g = jSONObject.optString("rtt", "");
            this.f528h = jSONObject.optString("publickey");
        }
    }

    /* compiled from: Taobao */
    /* renamed from: anet.channel.strategy.l$b */
    public static class b {

        /* renamed from: a */
        public final String f529a;

        /* renamed from: b */
        public final int f530b;

        /* renamed from: c */
        public final String f531c;

        /* renamed from: d */
        public final String f532d;

        /* renamed from: e */
        public final String f533e;

        /* renamed from: f */
        public final String[] f534f;

        /* renamed from: g */
        public final String[] f535g;

        /* renamed from: h */
        public final a[] f536h;

        /* renamed from: i */
        public final e[] f537i;

        /* renamed from: j */
        public final boolean f538j;

        /* renamed from: k */
        public final boolean f539k;

        /* renamed from: l */
        public final int f540l;

        public b(JSONObject jSONObject) {
            this.f529a = jSONObject.optString(Constants.KEY_HOST);
            this.f530b = jSONObject.optInt("ttl");
            this.f531c = jSONObject.optString("safeAisles");
            this.f532d = jSONObject.optString("cname", null);
            this.f533e = jSONObject.optString("unit", null);
            this.f538j = jSONObject.optInt("clear") == 1;
            this.f539k = jSONObject.optBoolean("effectNow");
            this.f540l = jSONObject.optInt("version");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ips");
            if (jSONArrayOptJSONArray != null) {
                int length = jSONArrayOptJSONArray.length();
                this.f534f = new String[length];
                for (int i = 0; i < length; i++) {
                    this.f534f[i] = jSONArrayOptJSONArray.optString(i);
                }
            } else {
                this.f534f = null;
            }
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("sips");
            if (jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray2.length() <= 0) {
                this.f535g = null;
            } else {
                int length2 = jSONArrayOptJSONArray2.length();
                this.f535g = new String[length2];
                for (int i2 = 0; i2 < length2; i2++) {
                    this.f535g[i2] = jSONArrayOptJSONArray2.optString(i2);
                }
            }
            JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("aisles");
            if (jSONArrayOptJSONArray3 != null) {
                int length3 = jSONArrayOptJSONArray3.length();
                this.f536h = new a[length3];
                for (int i3 = 0; i3 < length3; i3++) {
                    this.f536h[i3] = new a(jSONArrayOptJSONArray3.optJSONObject(i3));
                }
            } else {
                this.f536h = null;
            }
            JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("strategies");
            if (jSONArrayOptJSONArray4 == null || jSONArrayOptJSONArray4.length() <= 0) {
                this.f537i = null;
                return;
            }
            int length4 = jSONArrayOptJSONArray4.length();
            this.f537i = new e[length4];
            for (int i4 = 0; i4 < length4; i4++) {
                this.f537i[i4] = new e(jSONArrayOptJSONArray4.optJSONObject(i4));
            }
        }
    }

    /* compiled from: Taobao */
    /* renamed from: anet.channel.strategy.l$c */
    public static class c {

        /* renamed from: a */
        public final String f541a;

        /* renamed from: b */
        public final e[] f542b;

        public c(JSONObject jSONObject) {
            this.f541a = jSONObject.optString(Constants.KEY_HOST);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("strategies");
            if (jSONArrayOptJSONArray == null) {
                this.f542b = null;
                return;
            }
            int length = jSONArrayOptJSONArray.length();
            this.f542b = new e[length];
            for (int i = 0; i < length; i++) {
                this.f542b[i] = new e(jSONArrayOptJSONArray.optJSONObject(i));
            }
        }
    }

    /* compiled from: Taobao */
    /* renamed from: anet.channel.strategy.l$d */
    public static class d {

        /* renamed from: a */
        public final String f543a;

        /* renamed from: b */
        public final b[] f544b;

        /* renamed from: c */
        public final c[] f545c;

        /* renamed from: d */
        public final String f546d;

        /* renamed from: e */
        public final String f547e;

        /* renamed from: f */
        public final int f548f;

        /* renamed from: g */
        public final int f549g;

        /* renamed from: h */
        public final int f550h;

        public d(JSONObject jSONObject) {
            this.f543a = jSONObject.optString("ip");
            this.f546d = jSONObject.optString("uid", null);
            this.f547e = jSONObject.optString("utdid", null);
            this.f548f = jSONObject.optInt(DispatchConstants.CONFIG_VERSION);
            this.f549g = jSONObject.optInt("fcl");
            this.f550h = jSONObject.optInt("fct");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(BaseMonitor.COUNT_POINT_DNS);
            if (jSONArrayOptJSONArray != null) {
                int length = jSONArrayOptJSONArray.length();
                this.f544b = new b[length];
                for (int i = 0; i < length; i++) {
                    this.f544b[i] = new b(jSONArrayOptJSONArray.optJSONObject(i));
                }
            } else {
                this.f544b = null;
            }
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("hrTask");
            if (jSONArrayOptJSONArray2 == null) {
                this.f545c = null;
                return;
            }
            int length2 = jSONArrayOptJSONArray2.length();
            this.f545c = new c[length2];
            for (int i2 = 0; i2 < length2; i2++) {
                this.f545c[i2] = new c(jSONArrayOptJSONArray2.optJSONObject(i2));
            }
        }
    }

    /* compiled from: Taobao */
    /* renamed from: anet.channel.strategy.l$e */
    public static class e {

        /* renamed from: a */
        public final String f551a;

        /* renamed from: b */
        public final a f552b;

        /* renamed from: c */
        public final String f553c;

        public e(JSONObject jSONObject) {
            this.f551a = jSONObject.optString("ip");
            this.f553c = jSONObject.optString("path");
            this.f552b = new a(jSONObject);
        }
    }

    /* renamed from: a */
    public static d m314a(JSONObject jSONObject) {
        try {
            return new d(jSONObject);
        } catch (Exception e2) {
            ALog.m338e("StrategyResultParser", "Parse HttpDns response failed.", null, e2, "JSON Content", jSONObject.toString());
            return null;
        }
    }
}
