package com.journeyapps.barcodescanner;

import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import com.google.zxing.LuminanceSource;
import com.google.zxing.Result;
import com.google.zxing.client.android.ZxingClientAndroidResources;
import com.huawei.hem.CompilerOutline;
import com.journeyapps.barcodescanner.camera.CameraInstance;
import com.journeyapps.barcodescanner.camera.PreviewCallback;

/* loaded from: classes.dex */
public class DecoderThread {
    public static final String TAG = "DecoderThread";
    public CameraInstance cameraInstance;
    public Rect cropRect;
    public Decoder decoder;
    public Handler handler;
    public Handler resultHandler;
    public HandlerThread thread;
    public boolean running = false;
    public final Object LOCK = new Object();
    public final Handler.Callback callback = new Handler.Callback() { // from class: com.journeyapps.barcodescanner.DecoderThread.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == ZxingClientAndroidResources.id.zxing_decode) {
                DecoderThread.this.decode((SourceData) message.obj);
                return true;
            }
            if (i != ZxingClientAndroidResources.id.zxing_preview_failed) {
                return true;
            }
            DecoderThread.this.requestNextPreview();
            return true;
        }
    };
    public final PreviewCallback previewCallback = new PreviewCallback() { // from class: com.journeyapps.barcodescanner.DecoderThread.2
        @Override // com.journeyapps.barcodescanner.camera.PreviewCallback
        public void onPreview(SourceData sourceData) {
            synchronized (DecoderThread.this.LOCK) {
                if (DecoderThread.this.running) {
                    DecoderThread.this.handler.obtainMessage(ZxingClientAndroidResources.id.zxing_decode, sourceData).sendToTarget();
                }
            }
        }

        @Override // com.journeyapps.barcodescanner.camera.PreviewCallback
        public void onPreviewError(Exception exc) {
            synchronized (DecoderThread.this.LOCK) {
                if (DecoderThread.this.running) {
                    DecoderThread.this.handler.obtainMessage(ZxingClientAndroidResources.id.zxing_preview_failed).sendToTarget();
                }
            }
        }
    };

    public DecoderThread(CameraInstance cameraInstance, Decoder decoder, Handler handler) {
        Util.validateMainThread();
        this.cameraInstance = cameraInstance;
        this.decoder = decoder;
        this.resultHandler = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void decode(SourceData sourceData) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        sourceData.setCropRect(this.cropRect);
        LuminanceSource luminanceSourceCreateSource = createSource(sourceData);
        Result resultDecode = luminanceSourceCreateSource != null ? this.decoder.decode(luminanceSourceCreateSource) : null;
        if (resultDecode != null) {
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            String str = TAG;
            StringBuilder sbM1765j = CompilerOutline.m1765j("Found barcode in ");
            sbM1765j.append(jCurrentTimeMillis2 - jCurrentTimeMillis);
            sbM1765j.append(" ms");
            Log.d(str, sbM1765j.toString());
            if (this.resultHandler != null) {
                Message messageObtain = Message.obtain(this.resultHandler, ZxingClientAndroidResources.id.zxing_decode_succeeded, new BarcodeResult(resultDecode, sourceData));
                messageObtain.setData(new Bundle());
                messageObtain.sendToTarget();
            }
        } else {
            Handler handler = this.resultHandler;
            if (handler != null) {
                Message.obtain(handler, ZxingClientAndroidResources.id.zxing_decode_failed).sendToTarget();
            }
        }
        if (this.resultHandler != null) {
            Message.obtain(this.resultHandler, ZxingClientAndroidResources.id.zxing_possible_result_points, this.decoder.getPossibleResultPoints()).sendToTarget();
        }
        requestNextPreview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestNextPreview() {
        if (this.cameraInstance.isOpen()) {
            this.cameraInstance.requestPreview(this.previewCallback);
        }
    }

    public LuminanceSource createSource(SourceData sourceData) {
        if (this.cropRect == null) {
            return null;
        }
        return sourceData.createSource();
    }

    public Rect getCropRect() {
        return this.cropRect;
    }

    public Decoder getDecoder() {
        return this.decoder;
    }

    public void setCropRect(Rect rect) {
        this.cropRect = rect;
    }

    public void setDecoder(Decoder decoder) {
        this.decoder = decoder;
    }

    public void start() {
        Util.validateMainThread();
        HandlerThread handlerThread = new HandlerThread(TAG);
        this.thread = handlerThread;
        handlerThread.start();
        this.handler = new Handler(this.thread.getLooper(), this.callback);
        this.running = true;
        requestNextPreview();
    }

    public void stop() {
        Util.validateMainThread();
        synchronized (this.LOCK) {
            this.running = false;
            this.handler.removeCallbacksAndMessages(null);
            this.thread.quit();
        }
    }
}
