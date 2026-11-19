package com.journeyapps.barcodescanner.camera;

/* loaded from: classes.dex */
public class CameraSettings {
    public int requestedCameraId = -1;
    public boolean scanInverted = false;
    public boolean barcodeSceneModeEnabled = false;
    public boolean meteringEnabled = false;
    public boolean autoFocusEnabled = true;
    public boolean continuousFocusEnabled = false;
    public boolean exposureEnabled = false;
    public boolean autoTorchEnabled = false;
    public FocusMode focusMode = FocusMode.AUTO;

    public enum FocusMode {
        AUTO,
        CONTINUOUS,
        INFINITY,
        MACRO
    }

    public FocusMode getFocusMode() {
        return this.focusMode;
    }

    public int getRequestedCameraId() {
        return this.requestedCameraId;
    }

    public boolean isAutoFocusEnabled() {
        return this.autoFocusEnabled;
    }

    public boolean isAutoTorchEnabled() {
        return this.autoTorchEnabled;
    }

    public boolean isBarcodeSceneModeEnabled() {
        return this.barcodeSceneModeEnabled;
    }

    public boolean isContinuousFocusEnabled() {
        return this.continuousFocusEnabled;
    }

    public boolean isExposureEnabled() {
        return this.exposureEnabled;
    }

    public boolean isMeteringEnabled() {
        return this.meteringEnabled;
    }

    public boolean isScanInverted() {
        return this.scanInverted;
    }

    public void setAutoFocusEnabled(boolean z) {
        this.autoFocusEnabled = z;
        if (z && this.continuousFocusEnabled) {
            this.focusMode = FocusMode.CONTINUOUS;
        } else if (z) {
            this.focusMode = FocusMode.AUTO;
        } else {
            this.focusMode = null;
        }
    }

    public void setAutoTorchEnabled(boolean z) {
        this.autoTorchEnabled = z;
    }

    public void setBarcodeSceneModeEnabled(boolean z) {
        this.barcodeSceneModeEnabled = z;
    }

    public void setContinuousFocusEnabled(boolean z) {
        this.continuousFocusEnabled = z;
        if (z) {
            this.focusMode = FocusMode.CONTINUOUS;
        } else if (this.autoFocusEnabled) {
            this.focusMode = FocusMode.AUTO;
        } else {
            this.focusMode = null;
        }
    }

    public void setExposureEnabled(boolean z) {
        this.exposureEnabled = z;
    }

    public void setFocusMode(FocusMode focusMode) {
        this.focusMode = focusMode;
    }

    public void setMeteringEnabled(boolean z) {
        this.meteringEnabled = z;
    }

    public void setRequestedCameraId(int i) {
        this.requestedCameraId = i;
    }

    public void setScanInverted(boolean z) {
        this.scanInverted = z;
    }
}
