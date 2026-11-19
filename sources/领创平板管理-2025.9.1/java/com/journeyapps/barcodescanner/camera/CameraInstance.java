package com.journeyapps.barcodescanner.camera;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.view.SurfaceHolder;
import com.google.zxing.client.android.C0787R;
import com.journeyapps.barcodescanner.Size;
import com.journeyapps.barcodescanner.Util;

/* loaded from: classes.dex */
public class CameraInstance {
    public static final String TAG = "CameraInstance";
    public CameraManager cameraManager;
    public CameraThread cameraThread;
    public DisplayConfiguration displayConfiguration;
    public Handler readyHandler;
    public CameraSurface surface;
    public boolean open = false;
    public boolean cameraClosed = true;
    public CameraSettings cameraSettings = new CameraSettings();
    public Runnable opener = new Runnable() { // from class: com.journeyapps.barcodescanner.camera.CameraInstance.3
        @Override // java.lang.Runnable
        public void run() {
            try {
                Log.d(CameraInstance.TAG, "Opening camera");
                CameraInstance.this.cameraManager.open();
            } catch (Exception e) {
                CameraInstance.this.notifyError(e);
                Log.e(CameraInstance.TAG, "Failed to open camera", e);
            }
        }
    };
    public Runnable configure = new Runnable() { // from class: com.journeyapps.barcodescanner.camera.CameraInstance.4
        @Override // java.lang.Runnable
        public void run() {
            try {
                Log.d(CameraInstance.TAG, "Configuring camera");
                CameraInstance.this.cameraManager.configure();
                if (CameraInstance.this.readyHandler != null) {
                    CameraInstance.this.readyHandler.obtainMessage(C0787R.id.zxing_prewiew_size_ready, CameraInstance.this.getPreviewSize()).sendToTarget();
                }
            } catch (Exception e) {
                CameraInstance.this.notifyError(e);
                Log.e(CameraInstance.TAG, "Failed to configure camera", e);
            }
        }
    };
    public Runnable previewStarter = new Runnable() { // from class: com.journeyapps.barcodescanner.camera.CameraInstance.5
        @Override // java.lang.Runnable
        public void run() {
            try {
                Log.d(CameraInstance.TAG, "Starting preview");
                CameraInstance.this.cameraManager.setPreviewDisplay(CameraInstance.this.surface);
                CameraInstance.this.cameraManager.startPreview();
            } catch (Exception e) {
                CameraInstance.this.notifyError(e);
                Log.e(CameraInstance.TAG, "Failed to start preview", e);
            }
        }
    };
    public Runnable closer = new Runnable() { // from class: com.journeyapps.barcodescanner.camera.CameraInstance.6
        @Override // java.lang.Runnable
        public void run() {
            try {
                Log.d(CameraInstance.TAG, "Closing camera");
                CameraInstance.this.cameraManager.stopPreview();
                CameraInstance.this.cameraManager.close();
            } catch (Exception e) {
                Log.e(CameraInstance.TAG, "Failed to close camera", e);
            }
            CameraInstance.this.cameraClosed = true;
            CameraInstance.this.readyHandler.sendEmptyMessage(C0787R.id.zxing_camera_closed);
            CameraInstance.this.cameraThread.decrementInstances();
        }
    };

    public CameraInstance(Context context) {
        Util.validateMainThread();
        this.cameraThread = CameraThread.getInstance();
        CameraManager cameraManager = new CameraManager(context);
        this.cameraManager = cameraManager;
        cameraManager.setCameraSettings(this.cameraSettings);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Size getPreviewSize() {
        return this.cameraManager.getPreviewSize();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyError(Exception exc) {
        Handler handler = this.readyHandler;
        if (handler != null) {
            handler.obtainMessage(C0787R.id.zxing_camera_error, exc).sendToTarget();
        }
    }

    private void validateOpen() {
        if (!this.open) {
            throw new IllegalStateException("CameraInstance is not open");
        }
    }

    public void close() {
        Util.validateMainThread();
        if (this.open) {
            this.cameraThread.enqueue(this.closer);
        } else {
            this.cameraClosed = true;
        }
        this.open = false;
    }

    public void configureCamera() {
        Util.validateMainThread();
        validateOpen();
        this.cameraThread.enqueue(this.configure);
    }

    public CameraManager getCameraManager() {
        return this.cameraManager;
    }

    public int getCameraRotation() {
        return this.cameraManager.getCameraRotation();
    }

    public CameraSettings getCameraSettings() {
        return this.cameraSettings;
    }

    public CameraThread getCameraThread() {
        return this.cameraThread;
    }

    public DisplayConfiguration getDisplayConfiguration() {
        return this.displayConfiguration;
    }

    public CameraSurface getSurface() {
        return this.surface;
    }

    public boolean isCameraClosed() {
        return this.cameraClosed;
    }

    public boolean isOpen() {
        return this.open;
    }

    public void open() {
        Util.validateMainThread();
        this.open = true;
        this.cameraClosed = false;
        this.cameraThread.incrementAndEnqueue(this.opener);
    }

    public void requestPreview(final PreviewCallback previewCallback) {
        validateOpen();
        this.cameraThread.enqueue(new Runnable() { // from class: com.journeyapps.barcodescanner.camera.CameraInstance.2
            @Override // java.lang.Runnable
            public void run() {
                CameraInstance.this.cameraManager.requestPreviewFrame(previewCallback);
            }
        });
    }

    public void setCameraSettings(CameraSettings cameraSettings) {
        if (this.open) {
            return;
        }
        this.cameraSettings = cameraSettings;
        this.cameraManager.setCameraSettings(cameraSettings);
    }

    public void setDisplayConfiguration(DisplayConfiguration displayConfiguration) {
        this.displayConfiguration = displayConfiguration;
        this.cameraManager.setDisplayConfiguration(displayConfiguration);
    }

    public void setReadyHandler(Handler handler) {
        this.readyHandler = handler;
    }

    public void setSurface(CameraSurface cameraSurface) {
        this.surface = cameraSurface;
    }

    public void setSurfaceHolder(SurfaceHolder surfaceHolder) {
        setSurface(new CameraSurface(surfaceHolder));
    }

    public void setTorch(final boolean z) {
        Util.validateMainThread();
        if (this.open) {
            this.cameraThread.enqueue(new Runnable() { // from class: com.journeyapps.barcodescanner.camera.CameraInstance.1
                @Override // java.lang.Runnable
                public void run() {
                    CameraInstance.this.cameraManager.setTorch(z);
                }
            });
        }
    }

    public void startPreview() {
        Util.validateMainThread();
        validateOpen();
        this.cameraThread.enqueue(this.previewStarter);
    }

    public CameraInstance(CameraManager cameraManager) {
        Util.validateMainThread();
        this.cameraManager = cameraManager;
    }
}
