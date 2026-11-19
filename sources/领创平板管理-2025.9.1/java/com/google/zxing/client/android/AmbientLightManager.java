package com.google.zxing.client.android;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import com.journeyapps.barcodescanner.camera.CameraManager;
import com.journeyapps.barcodescanner.camera.CameraSettings;

/* loaded from: classes.dex */
public final class AmbientLightManager implements SensorEventListener {
    public static final float BRIGHT_ENOUGH_LUX = 450.0f;
    public static final float TOO_DARK_LUX = 45.0f;
    public CameraManager cameraManager;
    public CameraSettings cameraSettings;
    public Context context;
    public Handler handler = new Handler();
    public Sensor lightSensor;

    public AmbientLightManager(Context context, CameraManager cameraManager, CameraSettings cameraSettings) {
        this.context = context;
        this.cameraManager = cameraManager;
        this.cameraSettings = cameraSettings;
    }

    private void setTorch(final boolean z) {
        this.handler.post(new Runnable() { // from class: com.google.zxing.client.android.AmbientLightManager.1
            @Override // java.lang.Runnable
            public void run() {
                AmbientLightManager.this.cameraManager.setTorch(z);
            }
        });
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        float f = sensorEvent.values[0];
        if (this.cameraManager != null) {
            if (f <= 45.0f) {
                setTorch(true);
            } else if (f >= 450.0f) {
                setTorch(false);
            }
        }
    }

    public void start() {
        if (this.cameraSettings.isAutoTorchEnabled()) {
            SensorManager sensorManager = (SensorManager) this.context.getSystemService("sensor");
            Sensor defaultSensor = sensorManager.getDefaultSensor(5);
            this.lightSensor = defaultSensor;
            if (defaultSensor != null) {
                sensorManager.registerListener(this, defaultSensor, 3);
            }
        }
    }

    public void stop() {
        if (this.lightSensor != null) {
            ((SensorManager) this.context.getSystemService("sensor")).unregisterListener(this);
            this.lightSensor = null;
        }
    }
}
