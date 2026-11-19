package com.android.launcher3.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.R;

/* loaded from: classes.dex */
public class GestureLockCircleView extends View {
    public static final int STATUS_CHECKED = 2;
    public static final int STATUS_CHECKED_ERR = 3;
    public static final int STATUS_NOT_CHECKED = 1;
    public int circleFillColor;
    public float circleRadius;
    public boolean hasRoundBorder;
    public int minHeight;
    public int minWidth;
    public Paint paint_border;
    public Paint paint_inner;
    public int roundBorderColor;
    public float roundBorderWidth;

    public GestureLockCircleView(Context context) {
        this(context, null);
    }

    private void dealAttr(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.GestureLockCircleView);
        if (typedArrayObtainStyledAttributes != null) {
            try {
                this.circleFillColor = typedArrayObtainStyledAttributes.getColor(0, 16672357);
                this.circleRadius = typedArrayObtainStyledAttributes.getDimension(1, 0.0f);
                this.hasRoundBorder = typedArrayObtainStyledAttributes.getBoolean(2, false);
                this.roundBorderColor = typedArrayObtainStyledAttributes.getColor(3, 16672357);
                this.roundBorderWidth = typedArrayObtainStyledAttributes.getDimension(4, 0.0f);
            } catch (Exception unused) {
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void initPaint() {
        Paint paint = new Paint();
        this.paint_inner = paint;
        paint.setColor(this.circleFillColor);
        this.paint_inner.setAntiAlias(true);
        this.paint_inner.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.paint_border = paint2;
        paint2.setColor(this.roundBorderColor);
        this.paint_border.setAntiAlias(true);
        this.paint_border.setStyle(Paint.Style.FILL);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float width = getWidth() / 2;
        float height = getHeight() / 2;
        if (this.hasRoundBorder) {
            canvas.drawCircle(width, height, this.roundBorderWidth, this.paint_border);
        }
        canvas.drawCircle(width, height, this.circleRadius, this.paint_inner);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE) {
            setMeasuredDimension(this.minWidth, this.minHeight);
        } else if (mode == Integer.MIN_VALUE) {
            setMeasuredDimension(this.minWidth, size2);
        } else if (mode2 == Integer.MIN_VALUE) {
            setMeasuredDimension(size, this.minHeight);
        }
    }

    public void setBorderRound(boolean z, int i, float f) {
        this.hasRoundBorder = z;
        this.roundBorderColor = i;
        this.roundBorderWidth = f;
        initPaint();
        postInvalidate();
    }

    public void setInnerCircle(int i, float f) {
        this.circleFillColor = i;
        this.circleRadius = f;
        initPaint();
        postInvalidate();
    }

    public void switchStatus(int i) {
        if (i == 2) {
            this.circleFillColor = getResources().getColor(R.color.colorChecked);
            this.roundBorderColor = getResources().getColor(R.color.colorRoundBorder);
        } else if (i != 3) {
            this.circleFillColor = getResources().getColor(R.color.colorNotChecked);
            this.roundBorderColor = getResources().getColor(R.color.half_transparent);
        } else {
            this.circleFillColor = getResources().getColor(R.color.colorCheckedErr);
            this.roundBorderColor = getResources().getColor(R.color.colorRoundBorderErr);
        }
        initPaint();
        postInvalidate();
    }

    public GestureLockCircleView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GestureLockCircleView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.minWidth = 50;
        this.minHeight = 50;
        dealAttr(context, attributeSet);
        initPaint();
    }
}
