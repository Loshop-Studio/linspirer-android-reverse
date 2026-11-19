package com.loc;

import anet.channel.strategy.dispatch.DispatchConstants;
import java.util.Objects;
import org.json.JSONObject;

/* compiled from: HistoryLocation.java */
/* renamed from: com.loc.ea */
/* loaded from: classes.dex */
public final class C1819ea {

    /* renamed from: a */
    public int f5560a = 0;

    /* renamed from: b */
    public double f5561b = 0.0d;

    /* renamed from: c */
    public double f5562c = 0.0d;

    /* renamed from: d */
    public long f5563d = 0;

    /* renamed from: e */
    public int f5564e = 0;

    /* renamed from: f */
    public int f5565f = 0;

    /* renamed from: g */
    public int f5566g = 63;

    /* renamed from: h */
    public int f5567h = 0;

    /* renamed from: a */
    public final String m4819a() {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            jSONObject.put("time", this.f5563d);
            jSONObject.put("lon", this.f5562c);
            jSONObject.put(DispatchConstants.LATITUDE, this.f5561b);
            jSONObject.put("radius", this.f5564e);
            jSONObject.put("locationType", this.f5560a);
            jSONObject.put("reType", this.f5566g);
            jSONObject.put("reSubType", this.f5567h);
        } catch (Throwable unused) {
            jSONObject = null;
        }
        return jSONObject == null ? "" : jSONObject.toString();
    }

    /* renamed from: a */
    public final void m4820a(JSONObject jSONObject) {
        try {
            this.f5561b = jSONObject.optDouble(DispatchConstants.LATITUDE, this.f5561b);
            this.f5562c = jSONObject.optDouble("lon", this.f5562c);
            this.f5560a = jSONObject.optInt("locationType", this.f5560a);
            this.f5566g = jSONObject.optInt("reType", this.f5566g);
            this.f5567h = jSONObject.optInt("reSubType", this.f5567h);
            this.f5564e = jSONObject.optInt("radius", this.f5564e);
            this.f5563d = jSONObject.optLong("time", this.f5563d);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "CoreUtil", "transformLocation");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1819ea.class == obj.getClass()) {
            C1819ea c1819ea = (C1819ea) obj;
            if (this.f5560a == c1819ea.f5560a && Double.compare(c1819ea.f5561b, this.f5561b) == 0 && Double.compare(c1819ea.f5562c, this.f5562c) == 0 && this.f5563d == c1819ea.f5563d && this.f5564e == c1819ea.f5564e && this.f5565f == c1819ea.f5565f && this.f5566g == c1819ea.f5566g && this.f5567h == c1819ea.f5567h) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f5560a), Double.valueOf(this.f5561b), Double.valueOf(this.f5562c), Long.valueOf(this.f5563d), Integer.valueOf(this.f5564e), Integer.valueOf(this.f5565f), Integer.valueOf(this.f5566g), Integer.valueOf(this.f5567h));
    }
}
