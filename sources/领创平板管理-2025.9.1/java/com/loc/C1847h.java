package com.loc;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationListener;
import com.taobao.accs.common.Constants;
import org.json.JSONObject;

/* compiled from: H5LocationClient.java */
/* renamed from: com.loc.h */
/* loaded from: classes.dex */
public final class C1847h {

    /* renamed from: c */
    public a f5862c;

    /* renamed from: d */
    public Context f5863d;

    /* renamed from: f */
    public WebView f5865f;

    /* renamed from: a */
    public Object f5860a = new Object();

    /* renamed from: e */
    public AMapLocationClient f5864e = null;

    /* renamed from: g */
    public String f5866g = "AMap.Geolocation.cbk";

    /* renamed from: b */
    public AMapLocationClientOption f5861b = null;

    /* renamed from: h */
    public volatile boolean f5867h = false;

    /* compiled from: H5LocationClient.java */
    /* renamed from: com.loc.h$2, reason: invalid class name */
    public class AnonymousClass2 implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f5869a;

        public AnonymousClass2(String str) {
            this.f5869a = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1847h.this.f5865f.loadUrl("javascript:" + C1847h.this.f5866g + "('" + this.f5869a + "')");
        }
    }

    /* compiled from: H5LocationClient.java */
    /* renamed from: com.loc.h$a */
    public class a implements AMapLocationListener {
        public a() {
        }

        @Override // com.amap.api.location.AMapLocationListener
        public final void onLocationChanged(AMapLocation aMapLocation) {
            if (C1847h.this.f5867h) {
                C1847h.this.m5240b(C1847h.m5239b(aMapLocation));
            }
        }
    }

    public C1847h(Context context, WebView webView) {
        this.f5865f = null;
        this.f5862c = null;
        this.f5863d = context.getApplicationContext();
        this.f5865f = webView;
        this.f5862c = new a();
    }

    /* renamed from: a */
    private void m5237a(String str) {
        boolean z;
        boolean z2;
        AMapLocationClientOption aMapLocationClientOption;
        AMapLocationClientOption.AMapLocationMode aMapLocationMode;
        if (this.f5861b == null) {
            this.f5861b = new AMapLocationClientOption();
        }
        int iOptInt = 5;
        long jOptLong = 30000;
        boolean z3 = true;
        try {
            JSONObject jSONObject = new JSONObject(str);
            jOptLong = jSONObject.optLong("to", 30000L);
            z = jSONObject.optInt("useGPS", 1) == 1;
            try {
                z2 = jSONObject.optInt("watch", 0) == 1;
                try {
                    iOptInt = jSONObject.optInt("interval", 5);
                    String strOptString = jSONObject.optString("callback", null);
                    if (TextUtils.isEmpty(strOptString)) {
                        strOptString = "AMap.Geolocation.cbk";
                    }
                    this.f5866g = strOptString;
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                z2 = false;
            }
        } catch (Throwable unused3) {
            z = false;
            z2 = false;
        }
        try {
            this.f5861b.setHttpTimeOut(jOptLong);
            if (z) {
                aMapLocationClientOption = this.f5861b;
                aMapLocationMode = AMapLocationClientOption.AMapLocationMode.Hight_Accuracy;
            } else {
                aMapLocationClientOption = this.f5861b;
                aMapLocationMode = AMapLocationClientOption.AMapLocationMode.Battery_Saving;
            }
            aMapLocationClientOption.setLocationMode(aMapLocationMode);
            AMapLocationClientOption aMapLocationClientOption2 = this.f5861b;
            if (z2) {
                z3 = false;
            }
            aMapLocationClientOption2.setOnceLocation(z3);
            if (z2) {
                this.f5861b.setInterval(iOptInt * 1000);
            }
        } catch (Throwable unused4) {
        }
    }

    /* renamed from: b */
    public static String m5239b(AMapLocation aMapLocation) {
        String locationDetail;
        JSONObject jSONObject = new JSONObject();
        String str = "errorInfo";
        if (aMapLocation == null) {
            jSONObject.put(Constants.KEY_ERROR_CODE, -1);
            locationDetail = "unknownError";
        } else {
            if (aMapLocation.getErrorCode() == 0) {
                jSONObject.put(Constants.KEY_ERROR_CODE, 0);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("x", aMapLocation.getLongitude());
                jSONObject2.put("y", aMapLocation.getLatitude());
                jSONObject2.put("precision", aMapLocation.getAccuracy());
                jSONObject2.put("type", aMapLocation.getLocationType());
                jSONObject2.put("country", aMapLocation.getCountry());
                jSONObject2.put("province", aMapLocation.getProvince());
                jSONObject2.put("city", aMapLocation.getCity());
                jSONObject2.put("cityCode", aMapLocation.getCityCode());
                jSONObject2.put("district", aMapLocation.getDistrict());
                jSONObject2.put("adCode", aMapLocation.getAdCode());
                jSONObject2.put("street", aMapLocation.getStreet());
                jSONObject2.put("streetNum", aMapLocation.getStreetNum());
                jSONObject2.put("floor", aMapLocation.getFloor());
                jSONObject2.put("address", aMapLocation.getAddress());
                jSONObject.put("result", jSONObject2);
                return jSONObject.toString();
            }
            jSONObject.put(Constants.KEY_ERROR_CODE, aMapLocation.getErrorCode());
            jSONObject.put("errorInfo", aMapLocation.getErrorInfo());
            str = "locationDetail";
            locationDetail = aMapLocation.getLocationDetail();
        }
        jSONObject.put(str, locationDetail);
        return jSONObject.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    /* renamed from: b */
    public void m5240b(String str) {
        try {
            if (this.f5865f != null) {
                this.f5865f.evaluateJavascript("javascript:" + this.f5866g + "('" + str + "')", new ValueCallback<String>() { // from class: com.loc.h.1
                    @Override // android.webkit.ValueCallback
                    public final /* bridge */ /* synthetic */ void onReceiveValue(String str2) {
                    }
                });
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "H5LocationClient", "callbackJs()");
        }
    }

    /* renamed from: a */
    public final void m5242a() {
        if (this.f5865f == null || this.f5863d == null || this.f5867h) {
            return;
        }
        try {
            this.f5865f.getSettings().setJavaScriptEnabled(true);
            this.f5865f.addJavascriptInterface(this, "AMapAndroidLoc");
            if (!TextUtils.isEmpty(this.f5865f.getUrl())) {
                this.f5865f.reload();
            }
            if (this.f5864e == null) {
                AMapLocationClient aMapLocationClient = new AMapLocationClient(this.f5863d);
                this.f5864e = aMapLocationClient;
                aMapLocationClient.setLocationListener(this.f5862c);
            }
            this.f5867h = true;
        } catch (Throwable unused) {
        }
    }

    /* renamed from: b */
    public final void m5243b() {
        synchronized (this.f5860a) {
            this.f5867h = false;
            if (this.f5864e != null) {
                this.f5864e.unRegisterLocationListener(this.f5862c);
                this.f5864e.stopLocation();
                this.f5864e.onDestroy();
                this.f5864e = null;
            }
            this.f5861b = null;
        }
    }

    @JavascriptInterface
    public final void getLocation(String str) {
        synchronized (this.f5860a) {
            if (this.f5867h) {
                m5237a(str);
                if (this.f5864e != null) {
                    this.f5864e.setLocationOption(this.f5861b);
                    this.f5864e.stopLocation();
                    this.f5864e.startLocation();
                }
            }
        }
    }

    @JavascriptInterface
    public final void stopLocation() {
        AMapLocationClient aMapLocationClient;
        if (this.f5867h && (aMapLocationClient = this.f5864e) != null) {
            aMapLocationClient.stopLocation();
        }
    }
}
