package com.journeyapps.barcodescanner.camera;

import android.hardware.Camera;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import anet.channel.entity.ConnType;
import com.huawei.hem.C0948f6;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes.dex */
public final class AutoFocusManager {
    public static final long AUTO_FOCUS_INTERVAL_MS = 2000;
    public static final Collection<String> FOCUS_MODES_CALLING_AF;
    public static final String TAG = "AutoFocusManager";
    public final Camera camera;
    public boolean focusing;
    public boolean stopped;
    public final boolean useAutoFocus;
    public int MESSAGE_FOCUS = 1;
    public final Handler.Callback focusHandlerCallback = new Handler.Callback() { // from class: com.journeyapps.barcodescanner.camera.AutoFocusManager.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != AutoFocusManager.this.MESSAGE_FOCUS) {
                return false;
            }
            AutoFocusManager.this.focus();
            return true;
        }
    };
    public final Camera.AutoFocusCallback autoFocusCallback = new Camera.AutoFocusCallback() { // from class: com.journeyapps.barcodescanner.camera.AutoFocusManager.2
        @Override // android.hardware.Camera.AutoFocusCallback
        public void onAutoFocus(boolean z, Camera camera) {
            AutoFocusManager.this.handler.post(new Runnable() { // from class: com.journeyapps.barcodescanner.camera.AutoFocusManager.2.1
                @Override // java.lang.Runnable
                public void run() {
                    AutoFocusManager.this.focusing = false;
                    AutoFocusManager.this.autoFocusAgainLater();
                }
            });
        }
    };
    public Handler handler = new Handler(this.focusHandlerCallback);

    static {
        ArrayList arrayList = new ArrayList(2);
        FOCUS_MODES_CALLING_AF = arrayList;
        arrayList.add(ConnType.PK_AUTO);
        FOCUS_MODES_CALLING_AF.add("macro");
    }

    public AutoFocusManager(Camera camera, CameraSettings cameraSettings) {
        this.camera = camera;
        String focusMode = camera.getParameters().getFocusMode();
        this.useAutoFocus = cameraSettings.isAutoFocusEnabled() && FOCUS_MODES_CALLING_AF.contains(focusMode);
        String str = TAG;
        StringBuilder sbM1769n = C0948f6.m1769n("Current focus mode '", focusMode, "'; use auto focus? ");
        sbM1769n.append(this.useAutoFocus);
        Log.i(str, sbM1769n.toString());
        start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void autoFocusAgainLater() {
        if (!this.stopped && !this.handler.hasMessages(this.MESSAGE_FOCUS)) {
            this.handler.sendMessageDelayed(this.handler.obtainMessage(this.MESSAGE_FOCUS), 2000L);
        }
    }

    private void cancelOutstandingTask() {
        this.handler.removeMessages(this.MESSAGE_FOCUS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void focus() {
        if (!this.useAutoFocus || this.stopped || this.focusing) {
            return;
        }
        try {
            this.camera.autoFocus(this.autoFocusCallback);
            this.focusing = true;
        } catch (RuntimeException e) {
            Log.w(TAG, "Unexpected exception while focusing", e);
            autoFocusAgainLater();
        }
    }

    public void start() {
        this.stopped = false;
        focus();
    }

    public void stop() {
        this.stopped = true;
        this.focusing = false;
        cancelOutstandingTask();
        if (this.useAutoFocus) {
            try {
                this.camera.cancelAutoFocus();
            } catch (RuntimeException e) {
                Log.w(TAG, "Unexpected exception while cancelling focusing", e);
            }
        }
    }
}
