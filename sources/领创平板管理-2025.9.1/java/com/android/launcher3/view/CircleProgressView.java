package com.android.launcher3.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import com.android.launcher3.R;

/* loaded from: classes.dex */
public class CircleProgressView extends View {
    public boolean isShader;
    public boolean isShowLabel;
    public boolean isShowPercentText;
    public boolean isShowTick;
    public boolean isTurn;
    public float mBlockAngle;
    public float mCircleCenterX;
    public float mCircleCenterY;
    public float mCirclePadding;
    public int mDuration;
    public String mLabelText;
    public int mLabelTextColor;
    public float mLabelTextSize;
    public int mMax;
    public int mNormalColor;
    public OnChangeListener mOnChangeListener;
    public Paint mPaint;
    public int mProgress;
    public int mProgressColor;
    public int mProgressPercent;
    public float mRadius;
    public Shader mShader;
    public int[] mShaderColors;
    public int mStartAngle;
    public float mStrokeWidth;
    public int mSweepAngle;
    public TextPaint mTextPaint;
    public float mTickSplitAngle;
    public int mTotalTickCount;

    public interface OnChangeListener {
        void onProgressChanged(float f, float f2);
    }

    public CircleProgressView(Context context) {
        this(context, null);
    }

    private void drawArc(Canvas canvas) {
        Shader shader;
        Shader shader2;
        Shader shader3;
        this.mPaint.reset();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(this.mStrokeWidth);
        if (this.isShowTick) {
            float f = this.mRadius;
            float f2 = f * 2.0f;
            float f3 = this.mCircleCenterX - f;
            float f4 = this.mCircleCenterY - f;
            RectF rectF = new RectF(f3, f4, f3 + f2, f2 + f4);
            int i = (int) ((this.mProgressPercent / 100.0f) * this.mTotalTickCount);
            int i2 = 0;
            if (this.isTurn) {
                while (i2 < this.mTotalTickCount) {
                    this.mPaint.setShader(null);
                    this.mPaint.setColor(this.mNormalColor);
                    float f5 = this.mBlockAngle;
                    canvas.drawArc(rectF, ((this.mTickSplitAngle + f5) * i2) + this.mStartAngle, f5, false, this.mPaint);
                    i2++;
                }
                for (int i3 = i; i3 < i + i; i3++) {
                    if (!this.isShader || (shader3 = this.mShader) == null) {
                        this.mPaint.setColor(this.mProgressColor);
                    } else {
                        this.mPaint.setShader(shader3);
                    }
                    float f6 = this.mBlockAngle;
                    canvas.drawArc(rectF, ((this.mTickSplitAngle + f6) * i3) + this.mStartAngle, f6, false, this.mPaint);
                }
            } else {
                while (i2 < this.mTotalTickCount) {
                    if (i2 >= i) {
                        this.mPaint.setShader(null);
                        this.mPaint.setColor(this.mNormalColor);
                    } else if (!this.isShader || (shader2 = this.mShader) == null) {
                        this.mPaint.setColor(this.mProgressColor);
                    } else {
                        this.mPaint.setShader(shader2);
                    }
                    float f7 = this.mBlockAngle;
                    canvas.drawArc(rectF, ((this.mTickSplitAngle + f7) * i2) + this.mStartAngle, f7, false, this.mPaint);
                    i2++;
                }
            }
        }
        this.mPaint.setShader(null);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mPaint.setColor(this.mNormalColor);
        float f8 = this.isShowTick ? (this.mRadius - this.mCirclePadding) - this.mStrokeWidth : this.mRadius;
        float f9 = 2.0f * f8;
        float f10 = this.mCircleCenterX - f8;
        float f11 = this.mCircleCenterY - f8;
        RectF rectF2 = new RectF(f10, f11, f10 + f9, f9 + f11);
        canvas.drawArc(rectF2, this.mStartAngle, this.mSweepAngle, false, this.mPaint);
        if (!this.isShader || (shader = this.mShader) == null) {
            this.mPaint.setColor(this.mProgressColor);
        } else {
            this.mPaint.setShader(shader);
        }
        if (this.isTurn) {
            canvas.drawArc(rectF2, (this.mSweepAngle * getRatio()) + this.mStartAngle, this.mSweepAngle * getRatio(), false, this.mPaint);
        } else {
            canvas.drawArc(rectF2, this.mStartAngle, this.mSweepAngle * getRatio(), false, this.mPaint);
        }
    }

    private void drawText(Canvas canvas) {
        if (this.isShowLabel) {
            this.mTextPaint.reset();
            this.mTextPaint.setAntiAlias(true);
            this.mTextPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            this.mTextPaint.setTextSize(this.mLabelTextSize);
            this.mTextPaint.setColor(this.mLabelTextColor);
            this.mTextPaint.setTextAlign(Paint.Align.CENTER);
            Paint.FontMetrics fontMetrics = this.mTextPaint.getFontMetrics();
            float height = (getHeight() - ((getHeight() - (fontMetrics.bottom - fontMetrics.top)) / 2.0f)) - fontMetrics.bottom;
            if (!this.isShowPercentText) {
                if (TextUtils.isEmpty(this.mLabelText)) {
                    return;
                }
                canvas.drawText(this.mLabelText, getWidth() / 2, height, this.mTextPaint);
            } else {
                canvas.drawText(this.mProgressPercent + "%", getWidth() / 2, height, this.mTextPaint);
            }
        }
    }

    private DisplayMetrics getDisplayMetrics() {
        return getResources().getDisplayMetrics();
    }

    private float getRatio() {
        return (this.mProgress * 1.0f) / this.mMax;
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CircleProgressView);
        DisplayMetrics displayMetrics = getDisplayMetrics();
        this.mStrokeWidth = TypedValue.applyDimension(1, 12.0f, displayMetrics);
        this.mLabelTextSize = TypedValue.applyDimension(2, 30.0f, displayMetrics);
        this.mCirclePadding = TypedValue.applyDimension(1, 10.0f, displayMetrics);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == 13) {
                this.mStrokeWidth = typedArrayObtainStyledAttributes.getDimension(index, TypedValue.applyDimension(1, 12.0f, displayMetrics));
            } else if (index == 7) {
                this.mNormalColor = typedArrayObtainStyledAttributes.getColor(index, -3618616);
            } else if (index == 9) {
                this.mProgressColor = typedArrayObtainStyledAttributes.getColor(index, -11539796);
                this.isShader = false;
            } else if (index == 12) {
                this.mStartAngle = typedArrayObtainStyledAttributes.getInt(index, 270);
            } else if (index == 14) {
                this.mSweepAngle = typedArrayObtainStyledAttributes.getInt(index, 360);
            } else if (index == 6) {
                this.mMax = typedArrayObtainStyledAttributes.getInt(index, 100);
            } else if (index == 8) {
                this.mProgress = typedArrayObtainStyledAttributes.getInt(index, 0);
            } else if (index == 2) {
                this.mDuration = typedArrayObtainStyledAttributes.getInt(index, 500);
            } else if (index == 3) {
                this.mLabelText = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == 5) {
                this.mLabelTextSize = typedArrayObtainStyledAttributes.getDimension(index, TypedValue.applyDimension(2, 30.0f, displayMetrics));
            } else if (index == 4) {
                this.mLabelTextColor = typedArrayObtainStyledAttributes.getColor(index, -13421773);
            } else if (index == 10) {
                this.isShowLabel = typedArrayObtainStyledAttributes.getBoolean(index, true);
            } else if (index == 11) {
                this.isShowTick = typedArrayObtainStyledAttributes.getBoolean(index, true);
            } else if (index == 1) {
                this.mCirclePadding = typedArrayObtainStyledAttributes.getDimension(index, TypedValue.applyDimension(1, 10.0f, displayMetrics));
            } else if (index == 15) {
                this.mTickSplitAngle = typedArrayObtainStyledAttributes.getInt(index, 5);
            } else if (index == 0) {
                this.mBlockAngle = typedArrayObtainStyledAttributes.getInt(index, 1);
            } else if (index == 16) {
                this.isTurn = typedArrayObtainStyledAttributes.getBoolean(index, false);
            }
        }
        this.isShowPercentText = TextUtils.isEmpty(this.mLabelText);
        typedArrayObtainStyledAttributes.recycle();
        this.mProgressPercent = (int) ((this.mProgress * 100.0f) / this.mMax);
        this.mPaint = new Paint();
        this.mTextPaint = new TextPaint();
        this.mTotalTickCount = (int) (this.mSweepAngle / (this.mTickSplitAngle + this.mBlockAngle));
    }

    private int measureHandler(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        return mode == 1073741824 ? size : mode == Integer.MIN_VALUE ? Math.min(i2, size) : i2;
    }

    public float getCircleCenterX() {
        return this.mCircleCenterX;
    }

    public float getCircleCenterY() {
        return this.mCircleCenterY;
    }

    public String getLabelText() {
        return this.mLabelText;
    }

    public int getLabelTextColor() {
        return this.mLabelTextColor;
    }

    public int getMax() {
        return this.mMax;
    }

    public int getProgress() {
        return this.mProgress;
    }

    public int getProgressPercent() {
        return this.mProgressPercent;
    }

    public float getRadius() {
        return this.mRadius;
    }

    public int getStartAngle() {
        return this.mStartAngle;
    }

    public int getSweepAngle() {
        return this.mSweepAngle;
    }

    public String getText() {
        if (!this.isShowPercentText) {
            return this.mLabelText;
        }
        return this.mProgressPercent + "%";
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawArc(canvas);
        drawText(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int iApplyDimension = (int) TypedValue.applyDimension(1, 200.0f, getDisplayMetrics());
        int iMeasureHandler = measureHandler(i, iApplyDimension);
        int iMeasureHandler2 = measureHandler(i2, iApplyDimension);
        this.mCircleCenterX = ((getPaddingLeft() + iMeasureHandler) - getPaddingRight()) / 2.0f;
        this.mCircleCenterY = ((getPaddingTop() + iMeasureHandler2) - getPaddingBottom()) / 2.0f;
        this.mRadius = (((iMeasureHandler - Math.max(getPaddingRight() + getPaddingLeft(), getPaddingBottom() + getPaddingTop())) - this.mStrokeWidth) / 2.0f) - this.mCirclePadding;
        setMeasuredDimension(iMeasureHandler, iMeasureHandler2);
    }

    public void setLabelText(String str) {
        this.mLabelText = str;
        this.isShowPercentText = TextUtils.isEmpty(str);
        invalidate();
    }

    public void setLabelTextColor(int i) {
        this.mLabelTextColor = i;
        invalidate();
    }

    public void setLabelTextColorResource(int i) {
        setLabelTextColor(getResources().getColor(i));
    }

    public void setLabelTextSize(float f) {
        setLabelTextSize(2, f);
    }

    public void setMax(int i) {
        this.mMax = i;
        invalidate();
    }

    public void setNormalColor(int i) {
        this.mNormalColor = i;
        invalidate();
    }

    public void setOnChangeListener(OnChangeListener onChangeListener) {
        this.mOnChangeListener = onChangeListener;
    }

    public void setProgress(int i) {
        this.mProgress = i;
        this.mProgressPercent = (int) ((i * 100.0f) / this.mMax);
        invalidate();
        OnChangeListener onChangeListener = this.mOnChangeListener;
        if (onChangeListener != null) {
            onChangeListener.onProgressChanged(this.mProgress, this.mMax);
        }
    }

    public void setProgressColor(int... iArr) {
        float f = this.mCircleCenterX;
        setShader(new SweepGradient(f, f, iArr, (float[]) null));
    }

    public void setProgressColorResource(int i) {
        setProgressColor(getResources().getColor(i));
    }

    public void setShader(Shader shader) {
        this.isShader = true;
        this.mShader = shader;
        invalidate();
    }

    public void setShowTick(boolean z) {
        this.isShowTick = z;
        invalidate();
    }

    public void setTurn(boolean z) {
        this.isTurn = z;
        invalidate();
    }

    public void showAnimation(int i) {
        showAnimation(i, this.mDuration);
    }

    public void showAppendAnimation(int i) {
        showAnimation(this.mProgress, i, this.mDuration);
    }

    public CircleProgressView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setLabelTextSize(int i, float f) {
        float fApplyDimension = TypedValue.applyDimension(i, f, getDisplayMetrics());
        if (this.mLabelTextSize != fApplyDimension) {
            this.mLabelTextSize = fApplyDimension;
            invalidate();
        }
    }

    public void showAnimation(int i, int i2) {
        showAnimation(0, i, i2);
    }

    public CircleProgressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mStartAngle = 270;
        this.mSweepAngle = 360;
        this.mNormalColor = -3618616;
        this.mProgressColor = -11539796;
        this.isShader = true;
        this.mShaderColors = new int[]{-11539796, -5710511, -1518833, -5710511, -11539796};
        this.mTickSplitAngle = 5.0f;
        this.mBlockAngle = 1.0f;
        this.mMax = 100;
        this.mProgress = 0;
        this.mDuration = 500;
        this.mLabelTextColor = -13421773;
        this.isShowLabel = true;
        this.isShowPercentText = true;
        this.isShowTick = true;
        this.isTurn = false;
        init(context, attributeSet);
    }

    public void setProgressColor(int i) {
        this.isShader = false;
        this.mProgressColor = i;
        invalidate();
    }

    public void showAnimation(int i, int i2, int i3) {
        showAnimation(i, i2, i3, null);
    }

    public void showAnimation(int i, int i2, int i3, Animator.AnimatorListener animatorListener) {
        this.mDuration = i3;
        this.mProgress = i;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        valueAnimatorOfInt.setDuration(i3);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.view.CircleProgressView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircleProgressView.this.setProgress(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        if (animatorListener != null) {
            valueAnimatorOfInt.removeAllUpdateListeners();
            valueAnimatorOfInt.addListener(animatorListener);
        }
        valueAnimatorOfInt.start();
    }
}
