package com.journeyapps.barcodescanner;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.view.KeyEvent;
import com.google.zxing.client.android.ZxingClientAndroidResources;

/* loaded from: classes.dex */
public class CaptureActivity extends Activity {
    public DecoratedBarcodeView barcodeScannerView;
    public CaptureManager capture;

    public DecoratedBarcodeView initializeContent() {
        setContentView(ZxingClientAndroidResources.layout.zxing_capture);
        return (DecoratedBarcodeView) findViewById(ZxingClientAndroidResources.id.zxing_barcode_scanner);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DecoratedBarcodeView decoratedBarcodeViewInitializeContent = initializeContent();
        this.barcodeScannerView = decoratedBarcodeViewInitializeContent;
        CaptureManager captureManager = new CaptureManager(this, decoratedBarcodeViewInitializeContent);
        this.capture = captureManager;
        captureManager.initializeFromIntent(getIntent(), bundle);
        this.capture.decode();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.capture.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.barcodeScannerView.onKeyDown(i, keyEvent) || super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public void onPause() throws InterruptedException {
        super.onPause();
        this.capture.onPause();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        this.capture.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.capture.onResume();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.capture.onSaveInstanceState(bundle);
    }
}
