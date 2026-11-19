package com.taobao.agoo.p074a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.taobao.accs.AccsClientConfig;
import com.taobao.accs.common.Constants;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.UtilityImpl;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.android.agoo.common.Config;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Taobao */
/* renamed from: com.taobao.agoo.a.a */
/* loaded from: classes.dex */
public class AgooBindCache {
    public static final String SP_AGOO_BIND_FILE_NAME = "EMAS_AGOO_BIND";

    /* renamed from: a */
    public ConcurrentMap<String, Integer> f6412a = new ConcurrentHashMap();

    /* renamed from: b */
    public long f6413b;

    /* renamed from: c */
    public Context f6414c;

    /* renamed from: d */
    public String f6415d;

    public AgooBindCache(Context context) {
        if (context == null) {
            throw new RuntimeException("Context is null!!");
        }
        this.f6414c = context.getApplicationContext();
        StringBuilder sb = new StringBuilder();
        try {
            sb.append("EMAS_AGOO_BIND");
            sb.append(Config.m5832c(context));
            sb.append(AccsClientConfig.getConfigByTag(Config.m5832c(context)).getInappHost());
            this.f6415d = sb.toString();
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public void m5803a(String str) throws JSONException {
        Integer num = this.f6412a.get(str);
        if (num == null || num.intValue() != 2) {
            this.f6412a.put(str, 2);
            m5800a(this.f6414c, this.f6415d, this.f6413b, this.f6412a);
        }
    }

    /* renamed from: b */
    public boolean m5804b(String str) throws JSONException {
        if (this.f6412a.isEmpty()) {
            m5801b();
        }
        Integer num = this.f6412a.get(str);
        ALog.m5729i("AgooBindCache", "isAgooRegistered", Constants.KEY_PACKAGE_NAME, str, "appStatus", num, "agooBindStatus", this.f6412a);
        return (UtilityImpl.utdidChanged(Config.PREFERENCES, this.f6414c) || num == null || num.intValue() != 2) ? false : true;
    }

    /* renamed from: a */
    private void m5800a(Context context, String str, long j, Map<String, Integer> map) throws JSONException {
        try {
            String[] strArr = (String[]) map.keySet().toArray(new String[0]);
            JSONArray jSONArray = new JSONArray();
            if (j > 0 && j < System.currentTimeMillis()) {
                jSONArray.put(j);
            } else {
                jSONArray.put(System.currentTimeMillis() - (Math.random() * 8.64E7d));
            }
            for (String str2 : strArr) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("p", str2);
                jSONObject.put("s", map.get(str2).intValue());
                jSONArray.put(jSONObject);
            }
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
            editorEdit.putString("bind_status", jSONArray.toString());
            editorEdit.apply();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m5801b() throws JSONException {
        try {
            String string = this.f6414c.getSharedPreferences(this.f6415d, 0).getString("bind_status", null);
            if (TextUtils.isEmpty(string)) {
                ALog.m5732w("AgooBindCache", "restoreAgooClients packs null return", new Object[0]);
                return;
            }
            JSONArray jSONArray = new JSONArray(string);
            this.f6413b = jSONArray.getLong(0);
            if (System.currentTimeMillis() < this.f6413b + Constants.CLIENT_FLUSH_INTERVAL) {
                for (int i = 1; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    this.f6412a.put(jSONObject.getString("p"), Integer.valueOf(jSONObject.getInt("s")));
                }
                ALog.m5729i("AgooBindCache", "restoreAgooClients", "mAgooBindStatus", this.f6412a);
                return;
            }
            ALog.m5729i("AgooBindCache", "restoreAgooClients expired", "agooLastFlushTime", Long.valueOf(this.f6413b));
            this.f6413b = 0L;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m5802a() {
        this.f6412a.clear();
        this.f6413b = 0L;
        try {
            this.f6414c.getSharedPreferences(this.f6415d, 0).edit().clear().commit();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
