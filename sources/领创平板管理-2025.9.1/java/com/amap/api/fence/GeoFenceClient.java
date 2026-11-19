package com.amap.api.fence;

import android.app.PendingIntent;
import android.content.Context;
import com.amap.api.location.DPoint;
import com.loc.C1710a;
import com.loc.C1834ep;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class GeoFenceClient {
    public static final int GEOFENCE_IN = 1;
    public static final int GEOFENCE_OUT = 2;
    public static final int GEOFENCE_STAYED = 4;

    /* renamed from: a */
    public Context f1474a;

    /* renamed from: b */
    public C1710a f1475b;

    public GeoFenceClient(Context context) {
        this.f1474a = null;
        this.f1475b = null;
        try {
            if (context == null) {
                throw new IllegalArgumentException("Context参数不能为null");
            }
            Context applicationContext = context.getApplicationContext();
            this.f1474a = applicationContext;
            this.f1475b = m1028a(applicationContext);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "<init>");
        }
    }

    /* renamed from: a */
    public static C1710a m1028a(Context context) {
        return new C1710a(context);
    }

    public void addGeoFence(DPoint dPoint, float f, String str) {
        try {
            this.f1475b.m3966a(dPoint, f, str);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "addGeoFence round");
        }
    }

    public void addGeoFence(String str, String str2) {
        try {
            this.f1475b.m3967a(str, str2);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "addGeoFence district");
        }
    }

    public void addGeoFence(String str, String str2, DPoint dPoint, float f, int i, String str3) {
        try {
            this.f1475b.m3968a(str, str2, dPoint, f, i, str3);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "addGeoFence searche");
        }
    }

    public void addGeoFence(String str, String str2, String str3, int i, String str4) {
        try {
            this.f1475b.m3969a(str, str2, str3, i, str4);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "addGeoFence searche");
        }
    }

    public void addGeoFence(List<DPoint> list, String str) {
        try {
            this.f1475b.m3971a(list, str);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "addGeoFence polygon");
        }
    }

    public PendingIntent createPendingIntent(String str) {
        try {
            return this.f1475b.m3958a(str);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "creatPendingIntent");
            return null;
        }
    }

    public List<GeoFence> getAllGeoFence() {
        ArrayList arrayList = new ArrayList();
        try {
            return this.f1475b.m3973b();
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "getGeoFenceList");
            return arrayList;
        }
    }

    public boolean isPause() {
        try {
            return this.f1475b.m3991i();
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "isPause");
            return true;
        }
    }

    public void pauseGeoFence() {
        try {
            this.f1475b.m3984f();
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "pauseGeoFence");
        }
    }

    public void removeGeoFence() {
        try {
            this.f1475b.m3959a();
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "removeGeoFence");
        }
    }

    public boolean removeGeoFence(GeoFence geoFence) {
        try {
            return this.f1475b.m3972a(geoFence);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "removeGeoFence1");
            return false;
        }
    }

    public void resumeGeoFence() {
        try {
            this.f1475b.m3988h();
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "resumeGeoFence");
        }
    }

    public void setActivateAction(int i) {
        try {
            this.f1475b.m3960a(i);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "setActivatesAction");
        }
    }

    public void setGeoFenceAble(String str, boolean z) {
        try {
            this.f1475b.m3970a(str, z);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "setGeoFenceAble");
        }
    }

    public void setGeoFenceListener(GeoFenceListener geoFenceListener) {
        try {
            this.f1475b.m3964a(geoFenceListener);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "GeoFenceClient", "setGeoFenceListener");
        }
    }
}
