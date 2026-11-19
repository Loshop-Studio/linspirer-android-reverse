package com.loc;

import android.app.Application;
import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.PointerIconCompat;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import com.alibaba.fastjson.JSONStreamContext;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationListener;
import com.amap.api.location.AMapLocationQualityReport;
import com.amap.api.location.APSService;
import com.amap.api.location.UmidtokenInfo;
import com.google.zxing.client.android.InactivityTimer;
import com.huawei.hem.AppInfo;
import java.util.ArrayList;
import java.util.Iterator;
import org.android.agoo.message.MessageService;

/* compiled from: AmapLocationManager.java */
/* renamed from: com.loc.d */
/* loaded from: classes.dex */
public final class AmapLocationManager {

    /* renamed from: E */
    public static boolean f5232E = true;

    /* renamed from: G */
    public static boolean f5233G = false;

    /* renamed from: g */
    public static volatile boolean f5234g = false;

    /* renamed from: B */
    public Context f5236B;

    /* renamed from: a */
    public AMapLocationServer f5244a;

    /* renamed from: c */
    public c f5246c;

    /* renamed from: i */
    public LastLocationManager f5251i;

    /* renamed from: l */
    public Intent f5254l;

    /* renamed from: b */
    public AMapLocationClientOption f5245b = new AMapLocationClientOption();

    /* renamed from: d */
    public GpsLocation f5247d = null;

    /* renamed from: C */
    public boolean f5237C = false;

    /* renamed from: D */
    public volatile boolean f5238D = false;

    /* renamed from: e */
    public ArrayList<AMapLocationListener> f5248e = new ArrayList<>();

    /* renamed from: f */
    public boolean f5249f = false;

    /* renamed from: h */
    public boolean f5250h = true;

    /* renamed from: j */
    public Messenger f5252j = null;

    /* renamed from: k */
    public Messenger f5253k = null;

    /* renamed from: m */
    public int f5255m = 0;

    /* renamed from: F */
    public boolean f5239F = true;

    /* renamed from: n */
    public b f5256n = null;

    /* renamed from: o */
    public boolean f5257o = false;

    /* renamed from: p */
    public AMapLocationClientOption.AMapLocationMode f5258p = AMapLocationClientOption.AMapLocationMode.Hight_Accuracy;

    /* renamed from: q */
    public Object f5259q = new Object();

    /* renamed from: r */
    public ReportUtil f5260r = null;

    /* renamed from: s */
    public boolean f5261s = false;

    /* renamed from: t */
    public ApsManager f5262t = null;

    /* renamed from: H */
    public AMapLocationClientOption f5240H = new AMapLocationClientOption();

    /* renamed from: I */
    public H5LocationClient f5241I = null;

    /* renamed from: u */
    public String f5263u = null;

    /* renamed from: J */
    public ServiceConnection f5242J = new ServiceConnection() { // from class: com.loc.d.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                AmapLocationManager.this.f5252j = new Messenger(iBinder);
                AmapLocationManager.this.f5237C = true;
                AmapLocationManager.this.f5261s = true;
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "ALManager", "onServiceConnected");
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            AmapLocationManager c1791d = AmapLocationManager.this;
            c1791d.f5252j = null;
            c1791d.f5237C = false;
        }
    };

    /* renamed from: v */
    public AMapLocationQualityReport f5264v = null;

    /* renamed from: w */
    public boolean f5265w = false;

    /* renamed from: x */
    public boolean f5266x = false;

    /* renamed from: K */
    public volatile boolean f5243K = false;

    /* renamed from: y */
    public a f5267y = null;

    /* renamed from: z */
    public String f5268z = null;

    /* renamed from: A */
    public boolean f5235A = false;

    /* compiled from: AmapLocationManager.java */
    /* renamed from: com.loc.d$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5270a;

        static {
            int[] iArr = new int[AMapLocationClientOption.AMapLocationMode.values().length];
            f5270a = iArr;
            try {
                AMapLocationClientOption.AMapLocationMode aMapLocationMode = AMapLocationClientOption.AMapLocationMode.Battery_Saving;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f5270a;
                AMapLocationClientOption.AMapLocationMode aMapLocationMode2 = AMapLocationClientOption.AMapLocationMode.Device_Sensors;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f5270a;
                AMapLocationClientOption.AMapLocationMode aMapLocationMode3 = AMapLocationClientOption.AMapLocationMode.Hight_Accuracy;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: AmapLocationManager.java */
    /* renamed from: com.loc.d$a */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0 */
        /* JADX WARN: Type inference failed for: r0v1 */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v9 */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            ?? r0 = 0;
            try {
                super.handleMessage(message);
                int i = message.what;
                if (i == 11) {
                    AmapLocationManager.this.m4449a(message.getData());
                    return;
                }
                if (i == 12) {
                    AmapLocationManager.this.m4466b(message);
                    return;
                }
                if (i == 1008) {
                    AmapLocationManager.this.m4491m();
                    return;
                }
                if (i == 1009) {
                    AmapLocationManager.this.m4492n();
                    return;
                }
                if (i == 1011) {
                    AmapLocationManager.this.m4445a(14, (Bundle) null);
                    AmapLocationManager.this.m4513h();
                }
                try {
                    switch (i) {
                        case 1002:
                            AmapLocationManager.this.m4475c((AMapLocationListener) message.obj);
                            break;
                        case 1003:
                            AmapLocationManager.this.m4489k();
                            AmapLocationManager.this.m4445a(13, (Bundle) null);
                            break;
                        case 1004:
                            AmapLocationManager.this.m4490l();
                            AmapLocationManager.this.m4445a(14, (Bundle) null);
                            break;
                        case JSONStreamContext.ArrayValue /* 1005 */:
                            AmapLocationManager.this.m4479d((AMapLocationListener) message.obj);
                            break;
                        default:
                            switch (i) {
                                case PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW /* 1014 */:
                                    AmapLocationManager.this.m4450a(message);
                                    break;
                                case PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW /* 1015 */:
                                    AmapLocationManager.this.f5247d.m5226a(AmapLocationManager.this.f5245b);
                                    AmapLocationManager.this.m4446a(InputDeviceCompat.SOURCE_GAMEPAD, (Object) null, InactivityTimer.INACTIVITY_DELAY_MS);
                                    break;
                                case PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW /* 1016 */:
                                    if (!AmapLocationManager.this.f5247d.m5228b()) {
                                        AmapLocationManager.this.m4494p();
                                        break;
                                    } else {
                                        AmapLocationManager.this.m4446a(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, (Object) null, 1000L);
                                        break;
                                    }
                                case PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW /* 1017 */:
                                    AmapLocationManager.this.f5247d.m5224a();
                                    AmapLocationManager.this.m4444a(InputDeviceCompat.SOURCE_GAMEPAD);
                                    break;
                                case PointerIconCompat.TYPE_ZOOM_IN /* 1018 */:
                                    AmapLocationManager.this.f5245b = (AMapLocationClientOption) message.obj;
                                    if (AmapLocationManager.this.f5245b != null) {
                                        AmapLocationManager.this.m4498t();
                                        break;
                                    }
                                    break;
                                default:
                                    switch (i) {
                                        case com.taobao.accs.data.Message.EXT_HEADER_VALUE_MAX_LEN /* 1023 */:
                                            AmapLocationManager.this.m4473c(message);
                                            break;
                                        case 1024:
                                            AmapLocationManager.this.m4478d(message);
                                            break;
                                        case InputDeviceCompat.SOURCE_GAMEPAD /* 1025 */:
                                            if (AmapLocationManager.this.f5247d.m5232f()) {
                                                AmapLocationManager.this.f5247d.m5224a();
                                                AmapLocationManager.this.f5247d.m5226a(AmapLocationManager.this.f5245b);
                                            }
                                            AmapLocationManager.this.m4446a(InputDeviceCompat.SOURCE_GAMEPAD, (Object) null, InactivityTimer.INACTIVITY_DELAY_MS);
                                            break;
                                    }
                            }
                    }
                } catch (Throwable th) {
                    r0 = message;
                    th = th;
                    if (r0 == 0) {
                        r0 = "handleMessage";
                    }
                    CoreUtil.m5014a(th, "AMapLocationManage$MHandlerr", r0);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* compiled from: AmapLocationManager.java */
    /* renamed from: com.loc.d$b */
    public static class b extends HandlerThread {

        /* renamed from: a */
        public AmapLocationManager f5272a;

        public b(String str, AmapLocationManager c1791d) {
            super(str);
            this.f5272a = null;
            this.f5272a = c1791d;
        }

        @Override // android.os.HandlerThread
        public final void onLooperPrepared() {
            try {
                this.f5272a.f5251i.m5247a();
                ReportRecorder.m5057a(this.f5272a.f5236B);
                this.f5272a.m4496r();
                if (this.f5272a != null && this.f5272a.f5236B != null) {
                    AuthUtil.m4980b(this.f5272a.f5236B);
                    AuthUtil.m4971a(this.f5272a.f5236B);
                }
                super.onLooperPrepared();
            } catch (Throwable unused) {
            }
        }

        @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                super.run();
            } catch (Throwable unused) {
            }
        }
    }

    /* compiled from: AmapLocationManager.java */
    /* renamed from: com.loc.d$c */
    public class c extends Handler {
        public c() {
        }

        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            try {
                super.handleMessage(message);
                if (AmapLocationManager.this.f5257o) {
                    return;
                }
                int i = message.what;
                if (i == 1) {
                    Message messageObtainMessage = AmapLocationManager.this.f5267y.obtainMessage();
                    messageObtainMessage.what = 11;
                    messageObtainMessage.setData(message.getData());
                    AmapLocationManager.this.f5267y.sendMessage(messageObtainMessage);
                    return;
                }
                if (i != 2) {
                    if (i == 13) {
                        if (AmapLocationManager.this.f5244a != null) {
                            AmapLocationManager.this.m4451a(AmapLocationManager.this.f5244a);
                            return;
                        }
                        AMapLocation aMapLocation = new AMapLocation("LBS");
                        aMapLocation.setErrorCode(33);
                        AmapLocationManager.this.m4451a(aMapLocation);
                        return;
                    }
                    switch (i) {
                        case 5:
                            Bundle data = message.getData();
                            data.putBundle("optBundle", CoreUtil.m5007a(AmapLocationManager.this.f5245b));
                            AmapLocationManager.this.m4445a(10, data);
                            return;
                        case 6:
                            Bundle data2 = message.getData();
                            if (AmapLocationManager.this.f5247d != null) {
                                AmapLocationManager.this.f5247d.m5225a(data2);
                                return;
                            }
                            return;
                        case 7:
                            AmapLocationManager.this.f5239F = message.getData().getBoolean("ngpsAble");
                            return;
                        case 8:
                            ReportUtil.m5076a((String) null, 2141);
                            break;
                        case 9:
                            boolean unused = AmapLocationManager.f5233G = message.getData().getBoolean("installMockApp");
                            return;
                        case 10:
                            AmapLocationManager.this.m4451a((AMapLocation) message.obj);
                            return;
                        default:
                            return;
                    }
                }
                Message messageObtain = Message.obtain();
                messageObtain.what = 12;
                messageObtain.obj = message.obj;
                AmapLocationManager.this.f5267y.sendMessage(messageObtain);
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "AmapLocationManager$MainHandler", 0 == 0 ? "handleMessage" : null);
            }
        }
    }

    public AmapLocationManager(Context context, Intent intent, Looper looper) {
        this.f5254l = null;
        this.f5236B = context;
        this.f5254l = intent;
        m4465b(looper);
    }

    /* renamed from: a */
    private a m4442a(Looper looper) {
        a aVar;
        synchronized (this.f5259q) {
            aVar = new a(looper);
            this.f5267y = aVar;
        }
        return aVar;
    }

    /* renamed from: a */
    private AMapLocationServer m4443a(Aps c1807dp, boolean z) {
        if (!this.f5245b.isLocationCacheEnable()) {
            return null;
        }
        try {
            return c1807dp.m4620a(z);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "doFirstCacheLoc");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4444a(int i) {
        synchronized (this.f5259q) {
            if (this.f5267y != null) {
                this.f5267y.removeMessages(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4445a(int i, Bundle bundle) {
        if (bundle == null) {
            try {
                bundle = new Bundle();
            } catch (Throwable th) {
                boolean z = (th instanceof IllegalStateException) && th.getMessage().contains("sending message to a Handler on a dead thread");
                if ((th instanceof RemoteException) || z) {
                    this.f5252j = null;
                    this.f5237C = false;
                }
                CoreUtil.m5014a(th, "ALManager", "sendLocMessage");
                return;
            }
        }
        if (TextUtils.isEmpty(this.f5263u)) {
            this.f5263u = CoreUtil.m5021b(this.f5236B);
        }
        bundle.putString("c", this.f5263u);
        Message messageObtain = Message.obtain();
        messageObtain.what = i;
        messageObtain.setData(bundle);
        messageObtain.replyTo = this.f5253k;
        if (this.f5252j != null) {
            this.f5252j.send(messageObtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4446a(int i, Object obj, long j) {
        synchronized (this.f5259q) {
            if (this.f5267y != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = i;
                if (obj instanceof Bundle) {
                    messageObtain.setData((Bundle) obj);
                } else {
                    messageObtain.obj = obj;
                }
                this.f5267y.sendMessageDelayed(messageObtain, j);
            }
        }
    }

    /* renamed from: a */
    private void m4447a(Intent intent) {
        try {
            this.f5236B.bindService(intent, this.f5242J, 1);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "startServiceImpl");
        }
    }

    /* renamed from: a */
    private void m4448a(Intent intent, boolean z) {
        if (this.f5236B != null) {
            if (Build.VERSION.SDK_INT < 26 || !z) {
                this.f5236B.startService(intent);
            } else {
                if (!m4499u()) {
                    Log.e("amapapi", "-------------调用后台定位服务，缺少权限：android.permission.FOREGROUND_SERVICE--------------");
                    return;
                }
                try {
                    this.f5236B.getClass().getMethod("startForegroundService", Intent.class).invoke(this.f5236B, intent);
                } catch (Throwable unused) {
                }
            }
            this.f5235A = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4449a(Bundle bundle) {
        AMapLocationStaticsEntity c1806do;
        AMapLocation aMapLocation;
        AMapLocation aMapLocationM5223a = null;
        if (bundle != null) {
            try {
                bundle.setClassLoader(AMapLocation.class.getClassLoader());
                aMapLocation = (AMapLocation) bundle.getParcelable("loc");
                this.f5268z = bundle.getString("nb");
                c1806do = (AMapLocationStaticsEntity) bundle.getParcelable("statics");
                if (aMapLocation != null) {
                    try {
                        if (aMapLocation.getErrorCode() == 0 && this.f5247d != null) {
                            this.f5247d.m5229c();
                            if (!TextUtils.isEmpty(aMapLocation.getAdCode())) {
                                GpsLocation.f5829y = aMapLocation;
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        CoreUtil.m5014a(th, "AmapLocationManager", "resultLbsLocationSuccess");
                        m4452a(aMapLocationM5223a, c1806do);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                c1806do = null;
                CoreUtil.m5014a(th, "AmapLocationManager", "resultLbsLocationSuccess");
                m4452a(aMapLocationM5223a, c1806do);
            }
        } else {
            c1806do = null;
            aMapLocation = null;
        }
        aMapLocationM5223a = this.f5247d != null ? this.f5247d.m5223a(aMapLocation, this.f5268z) : aMapLocation;
        m4452a(aMapLocationM5223a, c1806do);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4450a(Message message) {
        try {
            Bundle data = message.getData();
            AMapLocation aMapLocation = (AMapLocation) data.getParcelable("loc");
            String string = data.getString("lastLocNb");
            m4474c(aMapLocation);
            if (this.f5251i.m5248a(aMapLocation, string)) {
                this.f5251i.m5251d();
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "doSaveLastLocation");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4451a(AMapLocation aMapLocation) {
        try {
            if (aMapLocation.getErrorCode() != 0) {
                aMapLocation.setLocationType(0);
            }
            if (aMapLocation.getErrorCode() == 0) {
                double latitude = aMapLocation.getLatitude();
                double longitude = aMapLocation.getLongitude();
                if ((latitude == 0.0d && longitude == 0.0d) || latitude < -90.0d || latitude > 90.0d || longitude < -180.0d || longitude > 180.0d) {
                    ReportUtil.m5077a("errorLatLng", aMapLocation.toStr());
                    aMapLocation.setLocationType(0);
                    aMapLocation.setErrorCode(8);
                    aMapLocation.setLocationDetail("LatLng is error#0802");
                }
            }
            if ("gps".equalsIgnoreCase(aMapLocation.getProvider()) || !this.f5247d.m5228b()) {
                aMapLocation.setAltitude(C1841ew.m5135c(aMapLocation.getAltitude()));
                aMapLocation.setBearing(C1841ew.m5102a(aMapLocation.getBearing()));
                aMapLocation.setSpeed(C1841ew.m5102a(aMapLocation.getSpeed()));
                Iterator<AMapLocationListener> it = this.f5248e.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().onLocationChanged(aMapLocation);
                    } catch (Throwable unused) {
                    }
                }
            }
        } catch (Throwable unused2) {
        }
    }

    /* renamed from: a */
    private synchronized void m4452a(AMapLocation aMapLocation, AMapLocationStaticsEntity c1806do) {
        if (aMapLocation == null) {
            try {
                aMapLocation = new AMapLocation("");
                aMapLocation.setErrorCode(8);
                aMapLocation.setLocationDetail("amapLocation is null#0801");
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "ALManager", "handlerLocation part3");
                return;
            }
        }
        if (!"gps".equalsIgnoreCase(aMapLocation.getProvider())) {
            aMapLocation.setProvider("lbs");
        }
        if (this.f5264v == null) {
            this.f5264v = new AMapLocationQualityReport();
        }
        this.f5264v.setLocationMode(this.f5245b.getLocationMode());
        if (this.f5247d != null) {
            this.f5264v.setGPSSatellites(this.f5247d.m5231e());
            this.f5264v.setGpsStatus(this.f5247d.m5230d());
        }
        this.f5264v.setWifiAble(C1841ew.m5151h(this.f5236B));
        this.f5264v.setNetworkType(C1841ew.m5152i(this.f5236B));
        if (aMapLocation.getLocationType() == 1 || "gps".equalsIgnoreCase(aMapLocation.getProvider())) {
            this.f5264v.setNetUseTime(0L);
        }
        if (c1806do != null) {
            this.f5264v.setNetUseTime(c1806do.m4578a());
        }
        this.f5264v.setInstallHighDangerMockApp(f5233G);
        aMapLocation.setLocationQualityReport(this.f5264v);
        try {
            if (this.f5238D) {
                m4453a(aMapLocation, this.f5268z);
                if (c1806do != null) {
                    c1806do.m4588d(C1841ew.m5127b());
                }
                ReportUtil.m5070a(this.f5236B, aMapLocation, c1806do);
                ReportUtil.m5069a(this.f5236B, aMapLocation);
                m4467b(aMapLocation.m5888clone());
                ReportRecorder.m5057a(this.f5236B).m5062a(aMapLocation);
                ReportRecorder.m5057a(this.f5236B).m5063b();
            }
        } catch (Throwable th2) {
            CoreUtil.m5014a(th2, "ALManager", "handlerLocation part2");
        }
        if (this.f5257o) {
            return;
        }
        if (this.f5245b.isOnceLocation()) {
            m4490l();
            m4445a(14, (Bundle) null);
        }
    }

    /* renamed from: a */
    private void m4453a(AMapLocation aMapLocation, String str) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("loc", aMapLocation);
        bundle.putString("lastLocNb", str);
        m4446a(PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, bundle, 0L);
    }

    /* renamed from: a */
    public static void m4460a(Aps c1807dp) {
        try {
            c1807dp.m4631c();
            c1807dp.m4626a(new AMapLocationClientOption().setNeedAddress(false));
            c1807dp.m4621a(true, new AMapLocationStaticsEntity());
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "apsLocation:doFirstNetLocate 2");
        }
    }

    /* renamed from: a */
    private void m4461a(Aps c1807dp, AMapLocationStaticsEntity c1806do) {
        try {
            c1807dp.m4623a(this.f5236B);
            c1807dp.m4626a(this.f5245b);
            c1807dp.m4629b(c1806do);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "initApsBase");
        }
    }

    /* renamed from: a */
    public static void m4462a(Aps c1807dp, AMapLocationServer c1812du) {
        if (c1812du != null) {
            try {
                if (c1812du.getErrorCode() == 0) {
                    c1807dp.m4630b(c1812du);
                }
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "ALManager", "apsLocation:doFirstAddCache");
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(22:0|2|(12:102|3|94|4|(1:6)|98|10|(1:12)|16|17|91|18)|(5:20|(1:36)(2:22|(3:25|(2:27|(1:31))|36)(1:24))|108|76|82)(1:32)|37|(4:(1:40)|100|41|42)|(2:46|47)(1:50)|103|51|(1:55)|92|59|(1:63)|106|64|(1:66)|67|(1:75)|108|76|82|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(33:0|2|102|3|94|4|(1:6)|98|10|(1:12)|16|17|91|18|(5:20|(1:36)(2:22|(3:25|(2:27|(1:31))|36)(1:24))|108|76|82)(1:32)|37|(4:(1:40)|100|41|42)|(2:46|47)(1:50)|103|51|(1:55)|92|59|(1:63)|106|64|(1:66)|67|(1:75)|108|76|82|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00d8, code lost:
    
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00d9, code lost:
    
        com.loc.C1834ep.m5014a(r7, "ALManager", "fixLastLocation");
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x010f, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0110, code lost:
    
        com.loc.C1834ep.m5014a(r1, "ALManager", "apsLocation:callback");
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.loc.AMapLocationServer m4464b(com.loc.Aps r13) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1791d.m4464b(com.loc.dp):com.loc.du");
    }

    /* renamed from: b */
    private void m4465b(Looper looper) {
        try {
            if (looper == null) {
                this.f5246c = Looper.myLooper() == null ? new c(this.f5236B.getMainLooper()) : new c();
            } else {
                this.f5246c = new c(looper);
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "init 1");
        }
        try {
            try {
                this.f5251i = new LastLocationManager(this.f5236B);
            } catch (Throwable th2) {
                CoreUtil.m5014a(th2, "ALManager", "init 2");
            }
            b bVar = new b("amapLocManagerThread", this);
            this.f5256n = bVar;
            bVar.setPriority(5);
            this.f5256n.start();
            this.f5267y = m4442a(this.f5256n.getLooper());
        } catch (Throwable th3) {
            CoreUtil.m5014a(th3, "ALManager", "init 5");
        }
        try {
            this.f5247d = new GpsLocation(this.f5236B, this.f5246c);
        } catch (Throwable th4) {
            CoreUtil.m5014a(th4, "ALManager", "init 3");
        }
        if (this.f5260r == null) {
            this.f5260r = new ReportUtil();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m4466b(Message message) {
        try {
            AMapLocation aMapLocation = (AMapLocation) message.obj;
            if (this.f5250h && this.f5252j != null) {
                Bundle bundle = new Bundle();
                bundle.putBundle("optBundle", CoreUtil.m5007a(this.f5245b));
                m4445a(0, bundle);
                if (this.f5238D) {
                    m4445a(13, (Bundle) null);
                }
                this.f5250h = false;
            }
            m4452a(aMapLocation, (AMapLocationStaticsEntity) null);
            m4444a(InputDeviceCompat.SOURCE_GAMEPAD);
            m4446a(InputDeviceCompat.SOURCE_GAMEPAD, (Object) null, InactivityTimer.INACTIVITY_DELAY_MS);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "resultGpsLocationSuccess");
        }
    }

    /* renamed from: b */
    private void m4467b(AMapLocation aMapLocation) {
        Message messageObtainMessage = this.f5246c.obtainMessage();
        messageObtainMessage.what = 10;
        messageObtainMessage.obj = aMapLocation;
        this.f5246c.sendMessage(messageObtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m4473c(Message message) {
        if (message == null) {
            return;
        }
        try {
            Bundle data = message.getData();
            if (data == null) {
                return;
            }
            int i = data.getInt("i", 0);
            Notification notification = (Notification) data.getParcelable(AMapLog.f5947g);
            Intent intentM4497s = m4497s();
            intentM4497s.putExtra("i", i);
            intentM4497s.putExtra(AMapLog.f5947g, notification);
            intentM4497s.putExtra(AMapLog.f5946f, 1);
            m4448a(intentM4497s, true);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "doEnableBackgroundLocation");
        }
    }

    /* renamed from: c */
    private void m4474c(AMapLocation aMapLocation) {
        if (aMapLocation == null) {
            return;
        }
        AMapLocation aMapLocationM4906a = null;
        try {
            if (LastLocationManager.f5872b != null) {
                aMapLocationM4906a = LastLocationManager.f5872b.m4906a();
            } else if (this.f5251i != null) {
                aMapLocationM4906a = this.f5251i.m5249b();
            }
            ReportUtil.m5075a(aMapLocationM4906a, aMapLocation);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m4475c(AMapLocationListener aMapLocationListener) {
        if (aMapLocationListener == null) {
            throw new IllegalArgumentException("listener参数不能为null");
        }
        if (this.f5248e == null) {
            this.f5248e = new ArrayList<>();
        }
        if (this.f5248e.contains(aMapLocationListener)) {
            return;
        }
        this.f5248e.add(aMapLocationListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m4478d(Message message) {
        if (message == null) {
            return;
        }
        try {
            Bundle data = message.getData();
            if (data == null) {
                return;
            }
            boolean z = data.getBoolean(AMapLog.f5950j, true);
            Intent intentM4497s = m4497s();
            intentM4497s.putExtra(AMapLog.f5950j, z);
            intentM4497s.putExtra(AMapLog.f5946f, 2);
            m4448a(intentM4497s, false);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "doDisableBackgroundLocation");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m4479d(AMapLocationListener aMapLocationListener) {
        if (!this.f5248e.isEmpty() && this.f5248e.contains(aMapLocationListener)) {
            this.f5248e.remove(aMapLocationListener);
        }
        if (this.f5248e.isEmpty()) {
            m4490l();
        }
    }

    /* renamed from: i */
    private void m4486i() {
        synchronized (this.f5259q) {
            if (this.f5267y != null) {
                this.f5267y.removeCallbacksAndMessages(null);
            }
            this.f5267y = null;
        }
    }

    /* renamed from: j */
    private boolean m4488j() {
        boolean z = false;
        int i = 0;
        while (this.f5252j == null) {
            try {
                Thread.sleep(100L);
                i++;
                if (i >= 50) {
                    break;
                }
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "ALManager", "checkAPSManager");
            }
        }
        if (this.f5252j == null) {
            Message messageObtain = Message.obtain();
            Bundle bundle = new Bundle();
            AMapLocation aMapLocation = new AMapLocation("");
            aMapLocation.setErrorCode(10);
            aMapLocation.setLocationDetail(!C1841ew.m5155l(this.f5236B.getApplicationContext()) ? "请检查配置文件是否配置服务，并且manifest中service标签是否配置在application标签内#1003" : "启动ApsServcie失败#1001");
            bundle.putParcelable("loc", aMapLocation);
            messageObtain.setData(bundle);
            messageObtain.what = 1;
            this.f5246c.sendMessage(messageObtain);
        } else {
            z = true;
        }
        if (!z) {
            ReportUtil.m5076a((String) null, !C1841ew.m5155l(this.f5236B.getApplicationContext()) ? 2103 : 2101);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public synchronized void m4489k() {
        if (this.f5245b == null) {
            this.f5245b = new AMapLocationClientOption();
        }
        if (this.f5238D) {
            return;
        }
        this.f5238D = true;
        int i = AnonymousClass2.f5270a[this.f5245b.getLocationMode().ordinal()];
        long gpsFirstTimeout = 0;
        if (i == 1) {
            m4446a(PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, (Object) null, 0L);
            m4446a(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, (Object) null, 0L);
        } else {
            if (i == 2) {
                m4444a(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW);
                m4446a(PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW, (Object) null, 0L);
                return;
            }
            if (i == 3) {
                m4446a(PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW, (Object) null, 0L);
                if (this.f5245b.isGpsFirst() && this.f5245b.isOnceLocation()) {
                    gpsFirstTimeout = this.f5245b.getGpsFirstTimeout();
                }
                m4446a(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, (Object) null, gpsFirstTimeout);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public void m4490l() {
        try {
            m4444a(InputDeviceCompat.SOURCE_GAMEPAD);
            if (this.f5247d != null) {
                this.f5247d.m5224a();
            }
            m4444a(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW);
            this.f5238D = false;
            this.f5255m = 0;
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "stopLocation");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m4491m() {
        try {
            if (this.f5252j != null) {
                this.f5255m = 0;
                Bundle bundle = new Bundle();
                bundle.putBundle("optBundle", CoreUtil.m5007a(this.f5245b));
                m4445a(2, bundle);
                return;
            }
            int i = this.f5255m + 1;
            this.f5255m = i;
            if (i < 10) {
                m4446a(PointerIconCompat.TYPE_TEXT, (Object) null, 50L);
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "startAssistantLocationImpl");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public void m4492n() {
        try {
            Bundle bundle = new Bundle();
            bundle.putBundle("optBundle", CoreUtil.m5007a(this.f5245b));
            m4445a(3, bundle);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "stopAssistantLocationImpl");
        }
    }

    /* renamed from: o */
    private void m4493o() {
        AMapLocationServer c1812duM4464b = m4464b(new Aps(true));
        if (m4488j()) {
            Bundle bundle = new Bundle();
            String str = (c1812duM4464b == null || !(c1812duM4464b.getLocationType() == 2 || c1812duM4464b.getLocationType() == 4)) ? MessageService.MSG_DB_READY_REPORT : "1";
            bundle.putBundle("optBundle", CoreUtil.m5007a(this.f5245b));
            bundle.putString("isCacheLoc", str);
            m4445a(0, bundle);
            if (this.f5238D) {
                m4445a(13, (Bundle) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public void m4494p() {
        try {
            if (f5232E || !(this.f5261s || this.f5243K)) {
                f5232E = false;
                this.f5243K = true;
                m4493o();
            } else {
                try {
                    if (this.f5261s && !m4505a() && !this.f5266x) {
                        this.f5266x = true;
                        m4496r();
                    }
                } catch (Throwable th) {
                    this.f5266x = true;
                    CoreUtil.m5014a(th, "ALManager", "doLBSLocation reStartService");
                }
                if (m4488j()) {
                    this.f5266x = false;
                    Bundle bundle = new Bundle();
                    bundle.putBundle("optBundle", CoreUtil.m5007a(this.f5245b));
                    bundle.putString("d", UmidtokenInfo.getUmidtoken());
                    if (!this.f5247d.m5228b()) {
                        m4445a(1, bundle);
                    }
                }
            }
        } catch (Throwable th2) {
            try {
                CoreUtil.m5014a(th2, "ALManager", "doLBSLocation");
                try {
                    if (this.f5245b.isOnceLocation()) {
                        return;
                    }
                    m4495q();
                } catch (Throwable unused) {
                }
            } finally {
                try {
                    if (!this.f5245b.isOnceLocation()) {
                        m4495q();
                    }
                } catch (Throwable unused2) {
                }
            }
        }
    }

    /* renamed from: q */
    private void m4495q() {
        if (this.f5245b.getLocationMode() != AMapLocationClientOption.AMapLocationMode.Device_Sensors) {
            m4446a(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, (Object) null, this.f5245b.getInterval() >= 1000 ? this.f5245b.getInterval() : 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m4496r() {
        try {
            if (this.f5253k == null) {
                this.f5253k = new Messenger(this.f5246c);
            }
            m4447a(m4497s());
        } catch (Throwable unused) {
        }
    }

    /* renamed from: s */
    private Intent m4497s() {
        String apikey;
        if (this.f5254l == null) {
            this.f5254l = new Intent(this.f5236B, (Class<?>) APSService.class);
        }
        try {
            apikey = !TextUtils.isEmpty(AMapLocationClientOption.getAPIKEY()) ? AMapLocationClientOption.getAPIKEY() : AppInfo.m1641g(this.f5236B);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "startServiceImpl p2");
            apikey = "";
        }
        this.f5254l.putExtra("a", apikey);
        this.f5254l.putExtra("b", AppInfo.m1638d(this.f5236B));
        this.f5254l.putExtra("d", UmidtokenInfo.getUmidtoken());
        return this.f5254l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public void m4498t() {
        ReportUtil c1839eu;
        Context context;
        int i;
        this.f5247d.m5227b(this.f5245b);
        if (this.f5238D && !this.f5245b.getLocationMode().equals(this.f5258p)) {
            m4490l();
            m4489k();
        }
        this.f5258p = this.f5245b.getLocationMode();
        if (this.f5260r != null) {
            if (this.f5245b.isOnceLocation()) {
                c1839eu = this.f5260r;
                context = this.f5236B;
                i = 0;
            } else {
                c1839eu = this.f5260r;
                context = this.f5236B;
                i = 1;
            }
            c1839eu.m5082a(context, i);
            this.f5260r.m5083a(this.f5236B, this.f5245b);
        }
    }

    /* renamed from: u */
    private boolean m4499u() {
        if (C1841ew.m5154k(this.f5236B)) {
            int iM5055b = -1;
            try {
                iM5055b = Reflect.m5055b(((Application) this.f5236B.getApplicationContext()).getBaseContext(), "checkSelfPermission", "android.permission.FOREGROUND_SERVICE");
            } catch (Throwable unused) {
            }
            if (iM5055b != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public final void m4500a(int i, Notification notification) {
        if (i == 0 || notification == null) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("i", i);
            bundle.putParcelable(AMapLog.f5947g, notification);
            m4446a(com.taobao.accs.data.Message.EXT_HEADER_VALUE_MAX_LEN, bundle, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "disableBackgroundLocation");
        }
    }

    /* renamed from: a */
    public final void m4501a(WebView webView) {
        if (this.f5241I == null) {
            this.f5241I = new H5LocationClient(this.f5236B, webView);
        }
        this.f5241I.m5242a();
    }

    /* renamed from: a */
    public final void m4502a(AMapLocationClientOption aMapLocationClientOption) {
        try {
            this.f5240H = aMapLocationClientOption.m5889clone();
            m4446a(PointerIconCompat.TYPE_ZOOM_IN, aMapLocationClientOption.m5889clone(), 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "setLocationOption");
        }
    }

    /* renamed from: a */
    public final void m4503a(AMapLocationListener aMapLocationListener) {
        try {
            m4446a(1002, aMapLocationListener, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "setLocationListener");
        }
    }

    /* renamed from: a */
    public final void m4504a(boolean z) {
        try {
            Bundle bundle = new Bundle();
            bundle.putBoolean(AMapLog.f5950j, z);
            m4446a(1024, bundle, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "disableBackgroundLocation");
        }
    }

    /* renamed from: a */
    public final boolean m4505a() {
        return this.f5237C;
    }

    /* renamed from: b */
    public final void m4506b() {
        try {
            if (this.f5240H.getCacheCallBack() && this.f5246c != null) {
                this.f5246c.sendEmptyMessageDelayed(13, this.f5240H.getCacheCallBackTime());
            }
        } catch (Throwable unused) {
        }
        try {
            m4446a(1003, (Object) null, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "startLocation");
        }
    }

    /* renamed from: b */
    public final void m4507b(AMapLocationListener aMapLocationListener) {
        try {
            m4446a(JSONStreamContext.ArrayValue, aMapLocationListener, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "unRegisterLocationListener");
        }
    }

    /* renamed from: c */
    public final void m4508c() {
        try {
            m4446a(1004, (Object) null, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "stopLocation");
        }
    }

    /* renamed from: d */
    public final void m4509d() {
        try {
            if (this.f5241I != null) {
                this.f5241I.m5243b();
                this.f5241I = null;
            }
            m4446a(PointerIconCompat.TYPE_COPY, (Object) null, 0L);
            this.f5257o = true;
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "onDestroy");
        }
    }

    /* renamed from: e */
    public final AMapLocation m4510e() {
        AMapLocation aMapLocationM5249b = null;
        try {
            if (this.f5251i != null && (aMapLocationM5249b = this.f5251i.m5249b()) != null) {
                aMapLocationM5249b.setTrustedLevel(3);
            }
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "getLastKnownLocation");
        }
        return aMapLocationM5249b;
    }

    /* renamed from: f */
    public final void m4511f() {
        try {
            m4446a(PointerIconCompat.TYPE_TEXT, (Object) null, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "startAssistantLocation");
        }
    }

    /* renamed from: g */
    public final void m4512g() {
        try {
            if (this.f5241I != null) {
                this.f5241I.m5243b();
                this.f5241I = null;
            }
            m4446a(PointerIconCompat.TYPE_VERTICAL_TEXT, (Object) null, 0L);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "ALManager", "stopAssistantLocation");
        }
    }

    /* renamed from: h */
    public final void m4513h() {
        m4445a(12, (Bundle) null);
        this.f5250h = true;
        this.f5237C = false;
        this.f5261s = false;
        m4490l();
        ReportUtil c1839eu = this.f5260r;
        if (c1839eu != null) {
            c1839eu.m5084b(this.f5236B);
        }
        ReportRecorder.m5057a(this.f5236B).m5061a();
        ReportUtil.m5066a(this.f5236B);
        ApsManager c1818e = this.f5262t;
        if (c1818e != null) {
            c1818e.m4814b().sendEmptyMessage(11);
        } else {
            ServiceConnection serviceConnection = this.f5242J;
            if (serviceConnection != null) {
                this.f5236B.unbindService(serviceConnection);
            }
        }
        try {
            if (this.f5235A) {
                this.f5236B.stopService(m4497s());
            }
        } catch (Throwable unused) {
        }
        this.f5235A = false;
        ArrayList<AMapLocationListener> arrayList = this.f5248e;
        if (arrayList != null) {
            arrayList.clear();
            this.f5248e = null;
        }
        this.f5242J = null;
        m4486i();
        b bVar = this.f5256n;
        if (bVar != null) {
            try {
                Reflect.m5051a(bVar, (Class<?>) HandlerThread.class, "quitSafely", new Object[0]);
            } catch (Throwable unused2) {
                this.f5256n.quit();
            }
        }
        this.f5256n = null;
        c cVar = this.f5246c;
        if (cVar != null) {
            cVar.removeCallbacksAndMessages(null);
        }
        LastLocationManager c1848i = this.f5251i;
        if (c1848i != null) {
            c1848i.m5250c();
            this.f5251i = null;
        }
    }
}
