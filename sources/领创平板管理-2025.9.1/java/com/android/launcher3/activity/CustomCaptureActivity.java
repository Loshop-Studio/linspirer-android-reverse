package com.android.launcher3.activity;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.view.KeyEvent;
import com.android.launcher3.R;
import com.journeyapps.barcodescanner.CaptureManager;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;

/* loaded from: classes.dex */
public class CustomCaptureActivity extends Activity {

    /* renamed from: a */
    public CaptureManager f1695a;

    /* renamed from: b */
    public DecoratedBarcodeView f1696b;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_zxing);
        DecoratedBarcodeView decoratedBarcodeView = (DecoratedBarcodeView) findViewById(R.id.zxing_barcode_scanner);
        this.f1696b = decoratedBarcodeView;
        CaptureManager captureManager = new CaptureManager(this, decoratedBarcodeView);
        this.f1695a = captureManager;
        captureManager.initializeFromIntent(getIntent(), bundle);
        this.f1695a.decode();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f1695a.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.f1696b.onKeyDown(i, keyEvent) || super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public void onPause() throws InterruptedException {
        super.onPause();
        this.f1695a.onPause();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        this.f1695a.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.f1695a.onResume();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f1695a.onSaveInstanceState(bundle);
    }
}
