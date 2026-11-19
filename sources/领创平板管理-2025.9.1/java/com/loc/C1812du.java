package com.loc;

import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import org.json.JSONObject;

/* compiled from: AMapLocationServer.java */
/* renamed from: com.loc.du */
/* loaded from: classes.dex */
public final class C1812du extends AMapLocation {

    /* renamed from: d */
    public String f5437d;

    /* renamed from: e */
    public boolean f5438e;

    /* renamed from: f */
    public String f5439f;

    /* renamed from: g */
    public String f5440g;

    /* renamed from: h */
    public String f5441h;

    /* renamed from: i */
    public int f5442i;

    /* renamed from: j */
    public String f5443j;

    /* renamed from: k */
    public int f5444k;

    /* renamed from: l */
    public String f5445l;

    /* renamed from: m */
    public JSONObject f5446m;

    /* renamed from: n */
    public String f5447n;

    /* renamed from: o */
    public String f5448o;

    /* renamed from: p */
    public String f5449p;

    public C1812du(String str) {
        super(str);
        this.f5437d = "";
        this.f5440g = null;
        this.f5441h = "";
        this.f5443j = "";
        this.f5444k = 0;
        this.f5445l = "new";
        this.f5446m = null;
        this.f5447n = "";
        this.f5438e = true;
        this.f5439f = String.valueOf(AMapLocationClientOption.GeoLanguage.DEFAULT);
        this.f5448o = "";
        this.f5449p = null;
    }

    /* renamed from: i */
    private void m4676i(String str) {
        this.f5447n = str;
    }

    /* renamed from: j */
    private void m4677j(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String[] strArrSplit = str.split("\\*");
        int length = strArrSplit.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            String str2 = strArrSplit[i];
            if (!TextUtils.isEmpty(str2)) {
                String[] strArrSplit2 = str2.split(",");
                setLongitude(C1841ew.m5136c(strArrSplit2[0]));
                setLatitude(C1841ew.m5136c(strArrSplit2[1]));
                setAccuracy(C1841ew.m5144e(strArrSplit2[2]));
                break;
            }
            i++;
        }
        this.f5448o = str;
    }

    /* renamed from: a */
    public final String m4678a() {
        return this.f5440g;
    }

    /* renamed from: a */
    public final void m4679a(int i) {
        this.f5444k = i;
    }

    /* renamed from: a */
    public final void m4680a(String str) {
        this.f5440g = str;
    }

    /* renamed from: a */
    public final void m4681a(JSONObject jSONObject) {
        this.f5446m = jSONObject;
    }

    /* renamed from: a */
    public final void m4682a(boolean z) {
        this.f5438e = z;
    }

    /* renamed from: b */
    public final String m4683b() {
        return this.f5441h;
    }

    /* renamed from: b */
    public final void m4684b(String str) {
        this.f5441h = str;
    }

    /* renamed from: b */
    public final void m4685b(JSONObject jSONObject) {
        try {
            C1834ep.m5012a(this, jSONObject);
            m4691e(jSONObject.optString("type", this.f5445l));
            m4689d(jSONObject.optString("retype", this.f5443j));
            m4677j(jSONObject.optString("cens", this.f5448o));
            m4695g(jSONObject.optString("desc", this.f5437d));
            m4687c(jSONObject.optString("coord", String.valueOf(this.f5442i)));
            m4676i(jSONObject.optString("mcell", this.f5447n));
            m4682a(jSONObject.optBoolean("isReversegeo", this.f5438e));
            m4693f(jSONObject.optString("geoLanguage", this.f5439f));
            if (C1841ew.m5120a(jSONObject, "poiid")) {
                setBuildingId(jSONObject.optString("poiid"));
            }
            if (C1841ew.m5120a(jSONObject, "pid")) {
                setBuildingId(jSONObject.optString("pid"));
            }
            if (C1841ew.m5120a(jSONObject, "floor")) {
                setFloor(jSONObject.optString("floor"));
            }
            if (C1841ew.m5120a(jSONObject, "flr")) {
                setFloor(jSONObject.optString("flr"));
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AmapLoc", "AmapLoc");
        }
    }

    /* renamed from: c */
    public final int m4686c() {
        return this.f5442i;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001a  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4687c(java.lang.String r2) {
        /*
            r1 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r2)
            if (r0 != 0) goto L1a
            java.lang.String r0 = "0"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L10
            r2 = 0
            goto L1b
        L10:
            java.lang.String r0 = "1"
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L1a
            r2 = 1
            goto L1b
        L1a:
            r2 = -1
        L1b:
            r1.f5442i = r2
            int r2 = r1.f5442i
            if (r2 != 0) goto L27
            java.lang.String r2 = "WGS84"
        L23:
            super.setCoordType(r2)
            return
        L27:
            java.lang.String r2 = "GCJ02"
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1812du.m4687c(java.lang.String):void");
    }

    /* renamed from: d */
    public final String m4688d() {
        return this.f5443j;
    }

    /* renamed from: d */
    public final void m4689d(String str) {
        this.f5443j = str;
    }

    /* renamed from: e */
    public final String m4690e() {
        return this.f5445l;
    }

    /* renamed from: e */
    public final void m4691e(String str) {
        this.f5445l = str;
    }

    /* renamed from: f */
    public final JSONObject m4692f() {
        return this.f5446m;
    }

    /* renamed from: f */
    public final void m4693f(String str) {
        this.f5439f = str;
    }

    /* renamed from: g */
    public final String m4694g() {
        return this.f5447n;
    }

    /* renamed from: g */
    public final void m4695g(String str) {
        this.f5437d = str;
    }

    /* renamed from: h */
    public final C1812du m4696h() {
        String strM4694g = m4694g();
        if (TextUtils.isEmpty(strM4694g)) {
            return null;
        }
        String[] strArrSplit = strM4694g.split(",");
        if (strArrSplit.length != 3) {
            return null;
        }
        C1812du c1812du = new C1812du("");
        c1812du.setProvider(getProvider());
        c1812du.setLongitude(C1841ew.m5136c(strArrSplit[0]));
        c1812du.setLatitude(C1841ew.m5136c(strArrSplit[1]));
        c1812du.setAccuracy(C1841ew.m5141d(strArrSplit[2]));
        c1812du.setCityCode(getCityCode());
        c1812du.setAdCode(getAdCode());
        c1812du.setCountry(getCountry());
        c1812du.setProvince(getProvince());
        c1812du.setCity(getCity());
        c1812du.setTime(getTime());
        c1812du.m4691e(m4690e());
        c1812du.m4687c(String.valueOf(m4686c()));
        if (C1841ew.m5117a(c1812du)) {
            return c1812du;
        }
        return null;
    }

    /* renamed from: h */
    public final void m4697h(String str) {
        this.f5449p = str;
    }

    /* renamed from: i */
    public final boolean m4698i() {
        return this.f5438e;
    }

    /* renamed from: j */
    public final String m4699j() {
        return this.f5439f;
    }

    /* renamed from: k */
    public final String m4700k() {
        return this.f5449p;
    }

    /* renamed from: l */
    public final int m4701l() {
        return this.f5444k;
    }

    @Override // com.amap.api.location.AMapLocation
    public final JSONObject toJson(int i) {
        try {
            JSONObject json = super.toJson(i);
            if (i == 1) {
                json.put("retype", this.f5443j);
                json.put("cens", this.f5448o);
                json.put("coord", this.f5442i);
                json.put("mcell", this.f5447n);
                json.put("desc", this.f5437d);
                json.put("address", getAddress());
                if (this.f5446m != null && C1841ew.m5120a(json, "offpct")) {
                    json.put("offpct", this.f5446m.getString("offpct"));
                }
            } else if (i != 2 && i != 3) {
                return json;
            }
            json.put("type", this.f5445l);
            json.put("isReversegeo", this.f5438e);
            json.put("geoLanguage", this.f5439f);
            return json;
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AmapLoc", "toStr");
            return null;
        }
    }

    @Override // com.amap.api.location.AMapLocation
    public final String toStr() {
        return toStr(1);
    }

    @Override // com.amap.api.location.AMapLocation
    public final String toStr(int i) {
        JSONObject json;
        try {
            json = toJson(i);
            json.put("nb", this.f5449p);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMapLocation", "toStr part2");
            json = null;
        }
        if (json == null) {
            return null;
        }
        return json.toString();
    }
}
