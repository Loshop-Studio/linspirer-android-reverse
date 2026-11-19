package com.android.launcher3.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.google.zxing.ResultPoint;
import com.journeyapps.barcodescanner.ViewfinderView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class CustomViewfinderView extends ViewfinderView {
    public static final long CUSTOME_ANIMATION_DELAY = 16;
    public int mLineColor;
    public float mLineDepth;
    public float mLineRate;
    public LinearGradient mLinearGradient;
    public float[] mPositions;
    public int[] mScanLineColor;
    public float mScanLineDepth;
    public float mScanLineDy;
    public int mScanLinePosition;

    public CustomViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLineRate = 0.1f;
        this.mLineDepth = TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics());
        this.mLineColor = -1;
        this.mScanLinePosition = 0;
        this.mScanLineDepth = TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics());
        this.mScanLineDy = TypedValue.applyDimension(1, 3.0f, getResources().getDisplayMetrics());
        this.mPositions = new float[]{0.0f, 0.5f, 1.0f};
        this.mScanLineColor = new int[]{ViewCompat.MEASURED_SIZE_MASK, -1, ViewCompat.MEASURED_SIZE_MASK};
    }

    @Override // com.journeyapps.barcodescanner.ViewfinderView, android.view.View
    public void onDraw(Canvas canvas) {
        Rect rect;
        refreshSizes();
        Rect rect2 = this.framingRect;
        if (rect2 == null || (rect = this.previewFramingRect) == null) {
            return;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        this.paint.setColor(this.mLineColor);
        int i = rect2.left;
        canvas.drawRect(i, rect2.top, (rect2.width() * this.mLineRate) + i, this.mLineDepth + rect2.top, this.paint);
        int i2 = rect2.left;
        int i3 = rect2.top;
        canvas.drawRect(i2, i3, this.mLineDepth + i2, (rect2.height() * this.mLineRate) + i3, this.paint);
        float fWidth = rect2.right - (rect2.width() * this.mLineRate);
        int i4 = rect2.top;
        canvas.drawRect(fWidth, i4, rect2.right, this.mLineDepth + i4, this.paint);
        int i5 = rect2.right;
        float f = i5 - this.mLineDepth;
        int i6 = rect2.top;
        canvas.drawRect(f, i6, i5, (rect2.height() * this.mLineRate) + i6, this.paint);
        int i7 = rect2.left;
        canvas.drawRect(i7, rect2.bottom - this.mLineDepth, (rect2.width() * this.mLineRate) + i7, rect2.bottom, this.paint);
        canvas.drawRect(rect2.left, rect2.bottom - (rect2.height() * this.mLineRate), this.mLineDepth + rect2.left, rect2.bottom, this.paint);
        float fWidth2 = rect2.right - (rect2.width() * this.mLineRate);
        int i8 = rect2.bottom;
        canvas.drawRect(fWidth2, i8 - this.mLineDepth, rect2.right, i8, this.paint);
        canvas.drawRect(rect2.right - this.mLineDepth, rect2.bottom - (rect2.height() * this.mLineRate), rect2.right, rect2.bottom, this.paint);
        this.paint.setColor(this.resultBitmap != null ? this.resultColor : this.maskColor);
        float f2 = width;
        canvas.drawRect(0.0f, 0.0f, f2, rect2.top, this.paint);
        canvas.drawRect(0.0f, rect2.top, rect2.left, rect2.bottom + 1, this.paint);
        canvas.drawRect(rect2.right + 1, rect2.top, f2, rect2.bottom + 1, this.paint);
        canvas.drawRect(0.0f, rect2.bottom + 1, f2, height, this.paint);
        if (this.resultBitmap != null) {
            this.paint.setAlpha(160);
            canvas.drawBitmap(this.resultBitmap, (Rect) null, rect2, this.paint);
        } else {
            int i9 = (int) (this.mScanLinePosition + this.mScanLineDy);
            this.mScanLinePosition = i9;
            if (i9 > rect2.height()) {
                this.mScanLinePosition = 0;
            }
            float f3 = rect2.left;
            int i10 = rect2.top;
            int i11 = this.mScanLinePosition;
            LinearGradient linearGradient = new LinearGradient(f3, i10 + i11, rect2.right, i10 + i11, this.mScanLineColor, this.mPositions, Shader.TileMode.CLAMP);
            this.mLinearGradient = linearGradient;
            this.paint.setShader(linearGradient);
            float f4 = rect2.left;
            int i12 = rect2.top;
            int i13 = this.mScanLinePosition;
            canvas.drawRect(f4, i12 + i13, rect2.right, i12 + i13 + this.mScanLineDepth, this.paint);
            this.paint.setShader(null);
            float fWidth3 = rect2.width() / rect.width();
            float fHeight = rect2.height() / rect.height();
            List<ResultPoint> list = this.possibleResultPoints;
            List<ResultPoint> list2 = this.lastPossibleResultPoints;
            int i14 = rect2.left;
            int i15 = rect2.top;
            if (list.isEmpty()) {
                this.lastPossibleResultPoints = null;
            } else {
                this.possibleResultPoints = new ArrayList(5);
                this.lastPossibleResultPoints = list;
                this.paint.setAlpha(160);
                this.paint.setColor(this.resultPointColor);
                for (ResultPoint resultPoint : list) {
                    canvas.drawCircle(((int) (resultPoint.getX() * fWidth3)) + i14, ((int) (resultPoint.getY() * fHeight)) + i15, 6.0f, this.paint);
                }
            }
            if (list2 != null) {
                this.paint.setAlpha(80);
                this.paint.setColor(this.resultPointColor);
                for (ResultPoint resultPoint2 : list2) {
                    canvas.drawCircle(((int) (resultPoint2.getX() * fWidth3)) + i14, ((int) (resultPoint2.getY() * fHeight)) + i15, 3.0f, this.paint);
                }
            }
        }
        postInvalidateDelayed(16L, rect2.left, rect2.top, rect2.right, rect2.bottom);
    }
}
