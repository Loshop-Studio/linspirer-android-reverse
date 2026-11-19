package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import com.journeyapps.barcodescanner.Size;
import java.util.List;

/* loaded from: classes.dex */
public class DisplayConfiguration {
    public static final String TAG = "DisplayConfiguration";
    public boolean center = false;
    public PreviewScalingStrategy previewScalingStrategy = new FitCenterStrategy();
    public int rotation;
    public Size viewfinderSize;

    public DisplayConfiguration(int i) {
        this.rotation = i;
    }

    public Size getBestPreviewSize(List<Size> list, boolean z) {
        return this.previewScalingStrategy.getBestPreviewSize(list, getDesiredPreviewSize(z));
    }

    public Size getDesiredPreviewSize(boolean z) {
        Size size = this.viewfinderSize;
        if (size == null) {
            return null;
        }
        return z ? size.rotate() : size;
    }

    public PreviewScalingStrategy getPreviewScalingStrategy() {
        return this.previewScalingStrategy;
    }

    public int getRotation() {
        return this.rotation;
    }

    public Size getViewfinderSize() {
        return this.viewfinderSize;
    }

    public Rect scalePreview(Size size) {
        return this.previewScalingStrategy.scalePreview(size, this.viewfinderSize);
    }

    public void setPreviewScalingStrategy(PreviewScalingStrategy previewScalingStrategy) {
        this.previewScalingStrategy = previewScalingStrategy;
    }

    public DisplayConfiguration(int i, Size size) {
        this.rotation = i;
        this.viewfinderSize = size;
    }
}
