package com.amap.api.location;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.amap.apis.utils.core.DeviceInfo;
import com.loc.C1723am;
import com.loc.C1791d;
import com.loc.C1834ep;
import com.loc.C1839eu;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AMapLocationClient {

    /* renamed from: a */
    public Context f1517a;

    /* renamed from: b */
    public C1791d f1518b;

    public AMapLocationClient(Context context) {
        try {
            if (context == null) {
                throw new IllegalArgumentException("Context参数不能为null");
            }
            this.f1517a = context.getApplicationContext();
            this.f1518b = new C1791d(context, null, null);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "ne1");
        }
    }

    public AMapLocationClient(Context context, Intent intent) {
        try {
            if (context == null) {
                throw new IllegalArgumentException("Context参数不能为null");
            }
            Context applicationContext = context.getApplicationContext();
            this.f1517a = applicationContext;
            this.f1518b = new C1791d(applicationContext, intent, null);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "ne2");
        }
    }

    public AMapLocationClient(Looper looper, Context context) {
        try {
            if (context == null) {
                throw new IllegalArgumentException("Context参数不能为null");
            }
            Context applicationContext = context.getApplicationContext();
            this.f1517a = applicationContext;
            this.f1518b = new C1791d(applicationContext, null, looper);
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "ne3");
        }
    }

    public static String getDeviceId(Context context) {
        return DeviceInfo.m1091y(context) + "#" + DeviceInfo.m1078l(context) + "#" + DeviceInfo.m1090x(context);
    }

    public static void setApiKey(String str) {
        try {
            AMapLocationClientOption.f1519a = str;
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "sKey");
        }
    }

    public static void setHost(String str) {
        if (TextUtils.isEmpty(str)) {
            C1723am.f4933a = -1;
            str = "";
        } else {
            C1723am.f4933a = 1;
        }
        C1723am.f4934b = str;
    }

    public void disableBackgroundLocation(boolean z) {
        try {
            if (this.f1518b != null) {
                this.f1518b.m4504a(z);
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "dBackL");
        }
    }

    public void enableBackgroundLocation(int i, Notification notification) {
        try {
            if (this.f1518b != null) {
                this.f1518b.m4500a(i, notification);
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "eBackL");
        }
    }

    public AMapLocation getLastKnownLocation() {
        try {
            if (this.f1518b != null) {
                return this.f1518b.m4510e();
            }
            return null;
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "gLastL");
            return null;
        }
    }

    public String getVersion() {
        return "5.5.1";
    }

    public boolean isStarted() {
        try {
            if (this.f1518b != null) {
                return this.f1518b.m4505a();
            }
            return false;
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "isS");
            return false;
        }
    }

    public void onDestroy() {
        try {
            if (this.f1518b != null) {
                this.f1518b.m4509d();
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "onDy");
        }
    }

    public void setLocationListener(AMapLocationListener aMapLocationListener) {
        try {
            if (aMapLocationListener == null) {
                throw new IllegalArgumentException("listener参数不能为null");
            }
            if (this.f1518b != null) {
                this.f1518b.m4503a(aMapLocationListener);
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "sLocL");
        }
    }

    public void setLocationOption(AMapLocationClientOption aMapLocationClientOption) {
        try {
            if (aMapLocationClientOption == null) {
                throw new IllegalArgumentException("LocationManagerOption参数不能为null");
            }
            if (this.f1518b != null) {
                this.f1518b.m4502a(aMapLocationClientOption);
            }
            if (aMapLocationClientOption.f1530b) {
                aMapLocationClientOption.f1530b = false;
                JSONObject jSONObject = new JSONObject();
                if (!TextUtils.isEmpty(aMapLocationClientOption.f1531c)) {
                    jSONObject.put("amap_loc_scenes_type", aMapLocationClientOption.f1531c);
                }
                C1839eu.m5074a(this.f1517a, "O019", jSONObject);
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "sLocnO");
        }
    }

    public void startAssistantLocation() {
        try {
            if (this.f1518b != null) {
                this.f1518b.m4511f();
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "stAssLo");
        }
    }

    public void startAssistantLocation(WebView webView) {
        try {
            if (this.f1518b != null) {
                this.f1518b.m4501a(webView);
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "sttAssL1");
        }
    }

    public void startLocation() {
        try {
            if (this.f1518b != null) {
                this.f1518b.m4506b();
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "stl");
        }
    }

    public void stopAssistantLocation() {
        try {
            if (this.f1518b != null) {
                this.f1518b.m4512g();
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "stAssL");
        }
    }

    public void stopLocation() {
        try {
            if (this.f1518b != null) {
                this.f1518b.m4508c();
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "stl");
        }
    }

    public void unRegisterLocationListener(AMapLocationListener aMapLocationListener) {
        try {
            if (this.f1518b != null) {
                this.f1518b.m4507b(aMapLocationListener);
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMClt", "unRL");
        }
    }
}
