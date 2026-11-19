package com.journeyapps.barcodescanner;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.client.android.BeepManager;
import com.google.zxing.client.android.ZxingClientAndroidResources;
import com.google.zxing.client.android.InactivityTimer;
import com.google.zxing.client.android.Intents;
import com.journeyapps.barcodescanner.CameraPreview;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class CaptureManager {
    public static final String SAVED_ORIENTATION_LOCK = "SAVED_ORIENTATION_LOCK";
    public static final String TAG = "CaptureManager";
    public static int cameraPermissionReqCode = 250;
    public Activity activity;
    public DecoratedBarcodeView barcodeView;
    public BeepManager beepManager;
    public Handler handler;
    public InactivityTimer inactivityTimer;
    public int orientationLock = -1;
    public boolean returnBarcodeImagePath = false;
    public boolean destroyed = false;
    public boolean finishWhenClosed = false;
    public BarcodeCallback callback = new BarcodeCallback() { // from class: com.journeyapps.barcodescanner.CaptureManager.1
        @Override // com.journeyapps.barcodescanner.BarcodeCallback
        public void barcodeResult(final BarcodeResult barcodeResult) {
            CaptureManager.this.barcodeView.pause();
            CaptureManager.this.beepManager.playBeepSoundAndVibrate();
            CaptureManager.this.handler.post(new Runnable() { // from class: com.journeyapps.barcodescanner.CaptureManager.1.1
                @Override // java.lang.Runnable
                public void run() {
                    CaptureManager.this.returnResult(barcodeResult);
                }
            });
        }

        @Override // com.journeyapps.barcodescanner.BarcodeCallback
        public void possibleResultPoints(List<ResultPoint> list) {
        }
    };
    public final CameraPreview.StateListener stateListener = new CameraPreview.StateListener() { // from class: com.journeyapps.barcodescanner.CaptureManager.2
        @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
        public void cameraClosed() {
            if (CaptureManager.this.finishWhenClosed) {
                Log.d(CaptureManager.TAG, "Camera closed; finishing activity");
                CaptureManager.this.finish();
            }
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
        public void cameraError(Exception exc) {
            CaptureManager.this.displayFrameworkBugMessageAndExit();
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
        public void previewSized() {
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
        public void previewStarted() {
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
        public void previewStopped() {
        }
    };
    public boolean askedPermission = false;

    public CaptureManager(Activity activity, DecoratedBarcodeView decoratedBarcodeView) {
        this.activity = activity;
        this.barcodeView = decoratedBarcodeView;
        decoratedBarcodeView.getBarcodeView().addStateListener(this.stateListener);
        this.handler = new Handler();
        this.inactivityTimer = new InactivityTimer(activity, new Runnable() { // from class: com.journeyapps.barcodescanner.CaptureManager.3
            @Override // java.lang.Runnable
            public void run() {
                Log.d(CaptureManager.TAG, "Finishing due to inactivity");
                CaptureManager.this.finish();
            }
        });
        this.beepManager = new BeepManager(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish() {
        this.activity.finish();
    }

    private String getBarcodeImagePath(BarcodeResult barcodeResult) throws IOException {
        if (this.returnBarcodeImagePath) {
            Bitmap bitmap = barcodeResult.getBitmap();
            try {
                File fileCreateTempFile = File.createTempFile("barcodeimage", ".jpg", this.activity.getCacheDir());
                FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                fileOutputStream.close();
                return fileCreateTempFile.getAbsolutePath();
            } catch (IOException e) {
                Log.w(TAG, "Unable to create temporary file and store bitmap! " + e);
            }
        }
        return null;
    }

    public static int getCameraPermissionReqCode() {
        return cameraPermissionReqCode;
    }

    @TargetApi(23)
    private void openCameraWithPermission() {
        if (ContextCompat.checkSelfPermission(this.activity, "android.permission.CAMERA") == 0) {
            this.barcodeView.resume();
        } else {
            if (this.askedPermission) {
                return;
            }
            ActivityCompat.requestPermissions(this.activity, new String[]{"android.permission.CAMERA"}, cameraPermissionReqCode);
            this.askedPermission = true;
        }
    }

    public static Intent resultIntent(BarcodeResult barcodeResult, String str) {
        Intent intent = new Intent(Intents.Scan.ACTION);
        intent.addFlags(524288);
        intent.putExtra(Intents.Scan.RESULT, barcodeResult.toString());
        intent.putExtra(Intents.Scan.RESULT_FORMAT, barcodeResult.getBarcodeFormat().toString());
        byte[] rawBytes = barcodeResult.getRawBytes();
        if (rawBytes != null && rawBytes.length > 0) {
            intent.putExtra(Intents.Scan.RESULT_BYTES, rawBytes);
        }
        Map<ResultMetadataType, Object> resultMetadata = barcodeResult.getResultMetadata();
        if (resultMetadata != null) {
            if (resultMetadata.containsKey(ResultMetadataType.UPC_EAN_EXTENSION)) {
                intent.putExtra(Intents.Scan.RESULT_UPC_EAN_EXTENSION, resultMetadata.get(ResultMetadataType.UPC_EAN_EXTENSION).toString());
            }
            Number number = (Number) resultMetadata.get(ResultMetadataType.ORIENTATION);
            if (number != null) {
                intent.putExtra(Intents.Scan.RESULT_ORIENTATION, number.intValue());
            }
            String str2 = (String) resultMetadata.get(ResultMetadataType.ERROR_CORRECTION_LEVEL);
            if (str2 != null) {
                intent.putExtra(Intents.Scan.RESULT_ERROR_CORRECTION_LEVEL, str2);
            }
            Iterable iterable = (Iterable) resultMetadata.get(ResultMetadataType.BYTE_SEGMENTS);
            if (iterable != null) {
                int i = 0;
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    intent.putExtra(Intents.Scan.RESULT_BYTE_SEGMENTS_PREFIX + i, (byte[]) it.next());
                    i++;
                }
            }
        }
        if (str != null) {
            intent.putExtra(Intents.Scan.RESULT_BARCODE_IMAGE_PATH, str);
        }
        return intent;
    }

    public static void setCameraPermissionReqCode(int i) {
        cameraPermissionReqCode = i;
    }

    public void closeAndFinish() {
        if (this.barcodeView.getBarcodeView().isCameraClosed()) {
            finish();
        } else {
            this.finishWhenClosed = true;
        }
        this.barcodeView.pause();
        this.inactivityTimer.cancel();
    }

    public void decode() {
        this.barcodeView.decodeSingle(this.callback);
    }

    public void displayFrameworkBugMessageAndExit() {
        if (this.activity.isFinishing() || this.destroyed || this.finishWhenClosed) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.activity);
        builder.setTitle(this.activity.getString(ZxingClientAndroidResources.string.zxing_app_name));
        builder.setMessage(this.activity.getString(ZxingClientAndroidResources.string.zxing_msg_camera_framework_bug));
        builder.setPositiveButton(ZxingClientAndroidResources.string.zxing_button_ok, new DialogInterface.OnClickListener() { // from class: com.journeyapps.barcodescanner.CaptureManager.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                CaptureManager.this.finish();
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.journeyapps.barcodescanner.CaptureManager.6
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                CaptureManager.this.finish();
            }
        });
        builder.show();
    }

    public void initializeFromIntent(Intent intent, Bundle bundle) {
        this.activity.getWindow().addFlags(128);
        if (bundle != null) {
            this.orientationLock = bundle.getInt(SAVED_ORIENTATION_LOCK, -1);
        }
        if (intent != null) {
            if (intent.getBooleanExtra(Intents.Scan.ORIENTATION_LOCKED, true)) {
                lockOrientation();
            }
            if (Intents.Scan.ACTION.equals(intent.getAction())) {
                this.barcodeView.initializeFromIntent(intent);
            }
            if (!intent.getBooleanExtra(Intents.Scan.BEEP_ENABLED, true)) {
                this.beepManager.setBeepEnabled(false);
            }
            if (intent.hasExtra(Intents.Scan.TIMEOUT)) {
                this.handler.postDelayed(new Runnable() { // from class: com.journeyapps.barcodescanner.CaptureManager.4
                    @Override // java.lang.Runnable
                    public void run() {
                        CaptureManager.this.returnResultTimeout();
                    }
                }, intent.getLongExtra(Intents.Scan.TIMEOUT, 0L));
            }
            if (intent.getBooleanExtra(Intents.Scan.BARCODE_IMAGE_ENABLED, false)) {
                this.returnBarcodeImagePath = true;
            }
        }
    }

    public void lockOrientation() {
        if (this.orientationLock == -1) {
            int rotation = this.activity.getWindowManager().getDefaultDisplay().getRotation();
            int i = this.activity.getResources().getConfiguration().orientation;
            int i2 = 0;
            if (i == 2) {
                if (rotation != 0 && rotation != 1) {
                    i2 = 8;
                }
            } else if (i == 1) {
                i2 = (rotation == 0 || rotation == 3) ? 1 : 9;
            }
            this.orientationLock = i2;
        }
        this.activity.setRequestedOrientation(this.orientationLock);
    }

    public void onDestroy() {
        this.destroyed = true;
        this.inactivityTimer.cancel();
        this.handler.removeCallbacksAndMessages(null);
    }

    public void onPause() throws InterruptedException {
        this.inactivityTimer.cancel();
        this.barcodeView.pauseAndWait();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == cameraPermissionReqCode) {
            if (iArr.length <= 0 || iArr[0] != 0) {
                displayFrameworkBugMessageAndExit();
            } else {
                this.barcodeView.resume();
            }
        }
    }

    public void onResume() {
        openCameraWithPermission();
        this.inactivityTimer.start();
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(SAVED_ORIENTATION_LOCK, this.orientationLock);
    }

    public void returnResult(BarcodeResult barcodeResult) {
        this.activity.setResult(-1, resultIntent(barcodeResult, getBarcodeImagePath(barcodeResult)));
        closeAndFinish();
    }

    public void returnResultTimeout() {
        Intent intent = new Intent(Intents.Scan.ACTION);
        intent.putExtra(Intents.Scan.TIMEOUT, true);
        this.activity.setResult(0, intent);
        closeAndFinish();
    }
}
