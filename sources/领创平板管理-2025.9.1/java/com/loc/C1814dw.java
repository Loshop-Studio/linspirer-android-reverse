package com.loc;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;

/* compiled from: AmapSensorManager.java */
/* renamed from: com.loc.dw */
/* loaded from: classes.dex */
public final class C1814dw implements SensorEventListener {

    /* renamed from: a */
    public SensorManager f5463a;

    /* renamed from: b */
    public Sensor f5464b;

    /* renamed from: c */
    public Sensor f5465c;

    /* renamed from: d */
    public Sensor f5466d;

    /* renamed from: s */
    public Context f5481s;

    /* renamed from: e */
    public boolean f5467e = false;

    /* renamed from: f */
    public double f5468f = 0.0d;

    /* renamed from: g */
    public float f5469g = 0.0f;

    /* renamed from: t */
    public float f5482t = 1013.25f;

    /* renamed from: u */
    public float f5483u = 0.0f;

    /* renamed from: h */
    public Handler f5470h = new Handler();

    /* renamed from: i */
    public double f5471i = 0.0d;

    /* renamed from: j */
    public double f5472j = 0.0d;

    /* renamed from: k */
    public double f5473k = 0.0d;

    /* renamed from: l */
    public double f5474l = 0.0d;

    /* renamed from: m */
    public double[] f5475m = new double[3];

    /* renamed from: n */
    public volatile double f5476n = 0.0d;

    /* renamed from: o */
    public long f5477o = 0;

    /* renamed from: p */
    public long f5478p = 0;

    /* renamed from: q */
    public final int f5479q = 100;

    /* renamed from: r */
    public final int f5480r = 30;

    public C1814dw(Context context) {
        this.f5481s = null;
        this.f5463a = null;
        this.f5464b = null;
        this.f5465c = null;
        this.f5466d = null;
        try {
            this.f5481s = context;
            if (this.f5463a == null) {
                this.f5463a = (SensorManager) context.getSystemService("sensor");
            }
            try {
                this.f5464b = this.f5463a.getDefaultSensor(6);
            } catch (Throwable unused) {
            }
            try {
                this.f5465c = this.f5463a.getDefaultSensor(11);
            } catch (Throwable unused2) {
            }
            try {
                this.f5466d = this.f5463a.getDefaultSensor(1);
            } catch (Throwable unused3) {
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMapSensorManager", "<init>");
        }
    }

    /* renamed from: a */
    private void m4725a(float[] fArr) {
        double[] dArr = this.f5475m;
        dArr[0] = (dArr[0] * 0.800000011920929d) + (fArr[0] * 0.19999999f);
        dArr[1] = (dArr[1] * 0.800000011920929d) + (fArr[1] * 0.19999999f);
        dArr[2] = (dArr[2] * 0.800000011920929d) + (fArr[2] * 0.19999999f);
        this.f5471i = fArr[0] - dArr[0];
        this.f5472j = fArr[1] - dArr[1];
        this.f5473k = fArr[2] - dArr[2];
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f5477o < 100) {
            return;
        }
        double d = this.f5471i;
        double d2 = this.f5472j;
        double d3 = (d2 * d2) + (d * d);
        double d4 = this.f5473k;
        double dSqrt = Math.sqrt((d4 * d4) + d3);
        this.f5478p++;
        this.f5477o = jCurrentTimeMillis;
        this.f5476n += dSqrt;
        if (this.f5478p >= 30) {
            this.f5474l = this.f5476n / this.f5478p;
            this.f5476n = 0.0d;
            this.f5478p = 0L;
        }
    }

    /* renamed from: b */
    private void m4726b(float[] fArr) {
        if (fArr != null) {
            this.f5468f = C1841ew.m5102a(SensorManager.getAltitude(this.f5482t, fArr[0]));
        }
    }

    /* renamed from: c */
    private void m4727c(float[] fArr) {
        if (fArr != null) {
            float[] fArr2 = new float[9];
            SensorManager.getRotationMatrixFromVector(fArr2, fArr);
            SensorManager.getOrientation(fArr2, new float[3]);
            float degrees = (float) Math.toDegrees(r3[0]);
            this.f5483u = degrees;
            if (degrees <= 0.0f) {
                degrees += 360.0f;
            }
            this.f5483u = (float) Math.floor(degrees);
        }
    }

    /* renamed from: a */
    public final void m4728a() {
        SensorManager sensorManager = this.f5463a;
        if (sensorManager == null || this.f5467e) {
            return;
        }
        this.f5467e = true;
        try {
            if (this.f5464b != null) {
                sensorManager.registerListener(this, this.f5464b, 3, this.f5470h);
            }
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMapSensorManager", "registerListener mPressure");
        }
        try {
            if (this.f5465c != null) {
                this.f5463a.registerListener(this, this.f5465c, 3, this.f5470h);
            }
        } catch (Throwable th2) {
            C1834ep.m5014a(th2, "AMapSensorManager", "registerListener mRotationVector");
        }
        try {
            if (this.f5466d != null) {
                this.f5463a.registerListener(this, this.f5466d, 3, this.f5470h);
            }
        } catch (Throwable th3) {
            C1834ep.m5014a(th3, "AMapSensorManager", "registerListener mAcceleroMeterVector");
        }
    }

    /* renamed from: b */
    public final void m4729b() {
        SensorManager sensorManager = this.f5463a;
        if (sensorManager == null || !this.f5467e) {
            return;
        }
        this.f5467e = false;
        try {
            if (this.f5464b != null) {
                sensorManager.unregisterListener(this, this.f5464b);
            }
        } catch (Throwable unused) {
        }
        try {
            if (this.f5465c != null) {
                this.f5463a.unregisterListener(this, this.f5465c);
            }
        } catch (Throwable unused2) {
        }
        try {
            if (this.f5466d != null) {
                this.f5463a.unregisterListener(this, this.f5466d);
            }
        } catch (Throwable unused3) {
        }
    }

    /* renamed from: c */
    public final double m4730c() {
        return this.f5468f;
    }

    /* renamed from: d */
    public final float m4731d() {
        return this.f5483u;
    }

    /* renamed from: e */
    public final double m4732e() {
        return this.f5474l;
    }

    /* renamed from: f */
    public final void m4733f() {
        try {
            m4729b();
            this.f5464b = null;
            this.f5465c = null;
            this.f5463a = null;
            this.f5466d = null;
            this.f5467e = false;
        } catch (Throwable th) {
            C1834ep.m5014a(th, "AMapSensorManager", "destroy");
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent == null) {
            return;
        }
        try {
            int type = sensorEvent.sensor.getType();
            if (type == 1) {
                if (this.f5466d != null) {
                    m4725a((float[]) sensorEvent.values.clone());
                    return;
                }
                return;
            }
            if (type != 6) {
                if (type != 11) {
                    return;
                }
                try {
                    if (this.f5465c != null) {
                        m4727c((float[]) sensorEvent.values.clone());
                        return;
                    }
                    return;
                } catch (Throwable unused) {
                    return;
                }
            }
            try {
                if (this.f5464b != null) {
                    float[] fArr = (float[]) sensorEvent.values.clone();
                    if (fArr != null) {
                        this.f5469g = fArr[0];
                    }
                    m4726b(fArr);
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable unused3) {
        }
    }
}
