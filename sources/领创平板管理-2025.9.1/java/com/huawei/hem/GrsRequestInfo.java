package com.huawei.hem;

import android.content.Context;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.n8 */
/* loaded from: classes.dex */
public class GrsRequestInfo {

    /* renamed from: a */
    public GrsBaseInfo f3289a;

    /* renamed from: b */
    public Context f3290b;

    /* renamed from: c */
    public Set<String> f3291c = new HashSet();

    public GrsRequestInfo(GrsBaseInfo grsBaseInfo, Context context) {
        this.f3289a = grsBaseInfo;
        this.f3290b = context;
    }

    /* renamed from: a */
    public String m2407a() throws JSONException {
        if (this.f3291c.size() != 0) {
            Logger.m3436v("GrsRequestInfo", "getGeoipService enter");
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            Iterator<String> it = this.f3291c.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
            try {
                jSONObject.put("services", jSONArray);
                Logger.m3437v("GrsRequestInfo", "post query service list is:%s", jSONObject.toString());
                return jSONObject.toString();
            } catch (JSONException unused) {
                return "";
            }
        }
        Set<String> set = GrsLocalManagerProxy.m1669a(this.f3290b.getPackageName(), this.f3289a).f2517a.f2392f;
        if (set.isEmpty()) {
            return "";
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray2 = new JSONArray();
        Iterator<String> it2 = set.iterator();
        while (it2.hasNext()) {
            jSONArray2.put(it2.next());
        }
        try {
            jSONObject2.put("services", jSONArray2);
            Logger.m3435i("GrsRequestInfo", "post service list is:%s", jSONObject2.toString());
            return jSONObject2.toString();
        } catch (JSONException unused2) {
            return "";
        }
    }
}
