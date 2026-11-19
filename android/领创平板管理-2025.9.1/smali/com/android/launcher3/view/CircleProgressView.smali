.class public Lcom/android/launcher3/view/CircleProgressView;
.super Landroid/view/View;
.source "CircleProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/view/CircleProgressView$OnChangeListener;
    }
.end annotation


# instance fields
.field public isShader:Z

.field public isShowLabel:Z

.field public isShowPercentText:Z

.field public isShowTick:Z

.field public isTurn:Z

.field public mBlockAngle:F

.field public mCircleCenterX:F

.field public mCircleCenterY:F

.field public mCirclePadding:F

.field public mDuration:I

.field public mLabelText:Ljava/lang/String;

.field public mLabelTextColor:I

.field public mLabelTextSize:F

.field public mMax:I

.field public mNormalColor:I

.field public mOnChangeListener:Lcom/android/launcher3/view/CircleProgressView$OnChangeListener;

.field public mPaint:Landroid/graphics/Paint;

.field public mProgress:I

.field public mProgressColor:I

.field public mProgressPercent:I

.field public mRadius:F

.field public mShader:Landroid/graphics/Shader;

.field public mShaderColors:[I

.field public mStartAngle:I

.field public mStrokeWidth:F

.field public mSweepAngle:I

.field public mTextPaint:Landroid/text/TextPaint;

.field public mTickSplitAngle:F

.field public mTotalTickCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/view/CircleProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/view/CircleProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x10e

    .line 4
    iput p3, p0, Lcom/android/launcher3/view/CircleProgressView;->mStartAngle:I

    const/16 p3, 0x168

    .line 5
    iput p3, p0, Lcom/android/launcher3/view/CircleProgressView;->mSweepAngle:I

    const p3, -0x373738

    .line 6
    iput p3, p0, Lcom/android/launcher3/view/CircleProgressView;->mNormalColor:I

    const p3, -0xb01554

    .line 7
    iput p3, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgressColor:I

    const/4 p3, 0x1

    .line 8
    iput-boolean p3, p0, Lcom/android/launcher3/view/CircleProgressView;->isShader:Z

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mShaderColors:[I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 10
    iput v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mTickSplitAngle:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    iput v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mBlockAngle:F

    const/16 v0, 0x64

    .line 12
    iput v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mMax:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgress:I

    const/16 v1, 0x1f4

    .line 14
    iput v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mDuration:I

    const v1, -0xcccccd

    .line 15
    iput v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelTextColor:I

    .line 16
    iput-boolean p3, p0, Lcom/android/launcher3/view/CircleProgressView;->isShowLabel:Z

    .line 17
    iput-boolean p3, p0, Lcom/android/launcher3/view/CircleProgressView;->isShowPercentText:Z

    .line 18
    iput-boolean p3, p0, Lcom/android/launcher3/view/CircleProgressView;->isShowTick:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/launcher3/view/CircleProgressView;->isTurn:Z

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/view/CircleProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        -0xb01554
        -0x5722af
        -0x172cf1
        -0x5722af
        -0xb01554
    .end array-data
.end method

.method private drawArc(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-boolean v0, p0, Lcom/android/launcher3/view/CircleProgressView;->isShowTick:Z

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 6
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mRadius:F

    mul-float v3, v0, v1

    .line 7
    iget v4, p0, Lcom/android/launcher3/view/CircleProgressView;->mCircleCenterX:F

    sub-float/2addr v4, v0

    .line 8
    iget v5, p0, Lcom/android/launcher3/view/CircleProgressView;->mCircleCenterY:F

    sub-float/2addr v5, v0

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    add-float v6, v4, v3

    add-float/2addr v3, v5

    invoke-direct {v0, v4, v5, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 10
    iget v3, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgressPercent:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/view/CircleProgressView;->mTotalTickCount:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 11
    iget-boolean v4, p0, Lcom/android/launcher3/view/CircleProgressView;->isTurn:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 12
    :goto_0
    iget v4, p0, Lcom/android/launcher3/view/CircleProgressView;->mTotalTickCount:I

    if-ge v5, v4, :cond_0

    .line 13
    iget-object v4, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 14
    iget-object v4, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/launcher3/view/CircleProgressView;->mNormalColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v5

    .line 15
    iget v9, p0, Lcom/android/launcher3/view/CircleProgressView;->mBlockAngle:F

    iget v6, p0, Lcom/android/launcher3/view/CircleProgressView;->mTickSplitAngle:F

    add-float/2addr v6, v9

    mul-float/2addr v6, v4

    iget v4, p0, Lcom/android/launcher3/view/CircleProgressView;->mStartAngle:I

    int-to-float v4, v4

    add-float v8, v6, v4

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move-object v7, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    add-int v5, v3, v3

    if-ge v4, v5, :cond_5

    .line 16
    iget-boolean v5, p0, Lcom/android/launcher3/view/CircleProgressView;->isShader:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/view/CircleProgressView;->mShader:Landroid/graphics/Shader;

    if-eqz v5, :cond_1

    .line 17
    iget-object v6, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 18
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgressColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    int-to-float v5, v4

    .line 19
    iget v9, p0, Lcom/android/launcher3/view/CircleProgressView;->mBlockAngle:F

    iget v6, p0, Lcom/android/launcher3/view/CircleProgressView;->mTickSplitAngle:F

    add-float/2addr v6, v9

    mul-float/2addr v6, v5

    iget v5, p0, Lcom/android/launcher3/view/CircleProgressView;->mStartAngle:I

    int-to-float v5, v5

    add-float v8, v6, v5

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move-object v7, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 20
    :cond_2
    :goto_3
    iget v4, p0, Lcom/android/launcher3/view/CircleProgressView;->mTotalTickCount:I

    if-ge v5, v4, :cond_5

    if-ge v5, v3, :cond_4

    .line 21
    iget-boolean v4, p0, Lcom/android/launcher3/view/CircleProgressView;->isShader:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/view/CircleProgressView;->mShader:Landroid/graphics/Shader;

    if-eqz v4, :cond_3

    .line 22
    iget-object v6, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_4

    .line 23
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgressColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 24
    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 25
    iget-object v4, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/launcher3/view/CircleProgressView;->mNormalColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    int-to-float v4, v5

    .line 26
    iget v9, p0, Lcom/android/launcher3/view/CircleProgressView;->mBlockAngle:F

    iget v6, p0, Lcom/android/launcher3/view/CircleProgressView;->mTickSplitAngle:F

    add-float/2addr v6, v9

    mul-float/2addr v6, v4

    iget v4, p0, Lcom/android/launcher3/view/CircleProgressView;->mStartAngle:I

    int-to-float v4, v4

    add-float v8, v6, v4

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move-object v7, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 28
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 29
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/launcher3/view/CircleProgressView;->mNormalColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-boolean v0, p0, Lcom/android/launcher3/view/CircleProgressView;->isShowTick:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mRadius:F

    iget v2, p0, Lcom/android/launcher3/view/CircleProgressView;->mCirclePadding:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/view/CircleProgressView;->mStrokeWidth:F

    sub-float/2addr v0, v2

    goto :goto_5

    :cond_6
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mRadius:F

    :goto_5
    mul-float/2addr v1, v0

    .line 31
    iget v2, p0, Lcom/android/launcher3/view/CircleProgressView;->mCircleCenterX:F

    sub-float/2addr v2, v0

    .line 32
    iget v3, p0, Lcom/android/launcher3/view/CircleProgressView;->mCircleCenterY:F

    sub-float/2addr v3, v0

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    add-float v4, v2, v1

    add-float/2addr v1, v3

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 34
    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mStartAngle:I

    int-to-float v6, v1

    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mSweepAngle:I

    int-to-float v7, v1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 35
    iget-boolean v1, p0, Lcom/android/launcher3/view/CircleProgressView;->isShader:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mShader:Landroid/graphics/Shader;

    if-eqz v1, :cond_7

    .line 36
    iget-object v2, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_6

    .line 37
    :cond_7
    iget-object v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgressColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    :goto_6
    iget-boolean v1, p0, Lcom/android/launcher3/view/CircleProgressView;->isTurn:Z

    if-eqz v1, :cond_8

    .line 39
    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mStartAngle:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/view/CircleProgressView;->mSweepAngle:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/android/launcher3/view/CircleProgressView;->getRatio()F

    move-result v3

    mul-float/2addr v2, v3

    add-float v6, v2, v1

    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mSweepAngle:I

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/android/launcher3/view/CircleProgressView;->getRatio()F

    move-result v2

    mul-float v7, v1, v2

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_7

    .line 40
    :cond_8
    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mStartAngle:I

    int-to-float v6, v1

    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mSweepAngle:I

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/android/launcher3/view/CircleProgressView;->getRatio()F

    move-result v2

    mul-float v7, v1, v2

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_7
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/view/CircleProgressView;->isShowLabel:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 9
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v0

    .line 11
    iget-boolean v0, p0, Lcom/android/launcher3/view/CircleProgressView;->isShowPercentText:Z

    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgressPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/launcher3/view/CircleProgressView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/launcher3/view/CircleProgressView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method private getRatio()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgress:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/android/launcher3/R$styleable;->CircleProgressView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lcom/android/launcher3/view/CircleProgressView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v0, 0x1

    const/high16 v1, 0x41400000    # 12.0f

    .line 3
    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/view/CircleProgressView;->mStrokeWidth:F

    const/4 v2, 0x2

    const/high16 v3, 0x41f00000    # 30.0f

    .line 4
    invoke-static {v2, v3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelTextSize:F

    const/high16 v4, 0x41200000    # 10.0f

    .line 5
    invoke-static {v0, v4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    iput v5, p0, Lcom/android/launcher3/view/CircleProgressView;->mCirclePadding:F

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_11

    .line 7
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_0

    .line 8
    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/android/launcher3/view/CircleProgressView;->mStrokeWidth:F

    goto/16 :goto_1

    :cond_0
    const/4 v9, 0x7

    if-ne v8, v9, :cond_1

    const v9, -0x373738

    .line 9
    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/view/CircleProgressView;->mNormalColor:I

    goto/16 :goto_1

    :cond_1
    const/16 v9, 0x9

    if-ne v8, v9, :cond_2

    const v9, -0xb01554

    .line 10
    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgressColor:I

    .line 11
    iput-boolean v6, p0, Lcom/android/launcher3/view/CircleProgressView;->isShader:Z

    goto/16 :goto_1

    :cond_2
    const/16 v9, 0xc

    if-ne v8, v9, :cond_3

    const/16 v9, 0x10e

    .line 12
    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/view/CircleProgressView;->mStartAngle:I

    goto/16 :goto_1

    :cond_3
    const/16 v9, 0xe

    if-ne v8, v9, :cond_4

    const/16 v9, 0x168

    .line 13
    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/view/CircleProgressView;->mSweepAngle:I

    goto/16 :goto_1

    :cond_4
    const/4 v9, 0x6

    if-ne v8, v9, :cond_5

    const/16 v9, 0x64

    .line 14
    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/view/CircleProgressView;->mMax:I

    goto/16 :goto_1

    :cond_5
    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    .line 15
    invoke-virtual {p1, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgress:I

    goto/16 :goto_1

    :cond_6
    if-ne v8, v2, :cond_7

    const/16 v9, 0x1f4

    .line 16
    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/view/CircleProgressView;->mDuration:I

    goto/16 :goto_1

    :cond_7
    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    .line 17
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelText:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const/4 v9, 0x5

    if-ne v8, v9, :cond_9

    .line 18
    invoke-static {v2, v3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelTextSize:F

    goto :goto_1

    :cond_9
    const/4 v10, 0x4

    if-ne v8, v10, :cond_a

    const v9, -0xcccccd

    .line 19
    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelTextColor:I

    goto :goto_1

    :cond_a
    const/16 v10, 0xa

    if-ne v8, v10, :cond_b

    .line 20
    invoke-virtual {p1, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher3/view/CircleProgressView;->isShowLabel:Z

    goto :goto_1

    :cond_b
    const/16 v10, 0xb

    if-ne v8, v10, :cond_c

    .line 21
    invoke-virtual {p1, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher3/view/CircleProgressView;->isShowTick:Z

    goto :goto_1

    :cond_c
    if-ne v8, v0, :cond_d

    .line 22
    invoke-static {v0, v4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/android/launcher3/view/CircleProgressView;->mCirclePadding:F

    goto :goto_1

    :cond_d
    const/16 v10, 0xf

    if-ne v8, v10, :cond_e

    .line 23
    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    int-to-float v8, v8

    iput v8, p0, Lcom/android/launcher3/view/CircleProgressView;->mTickSplitAngle:F

    goto :goto_1

    :cond_e
    if-nez v8, :cond_f

    .line 24
    invoke-virtual {p1, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    int-to-float v8, v8

    iput v8, p0, Lcom/android/launcher3/view/CircleProgressView;->mBlockAngle:F

    goto :goto_1

    :cond_f
    const/16 v9, 0x10

    if-ne v8, v9, :cond_10

    .line 25
    invoke-virtual {p1, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher3/view/CircleProgressView;->isTurn:Z

    :cond_10
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 26
    :cond_11
    iget-object p2, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelText:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/view/CircleProgressView;->isShowPercentText:Z

    .line 27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    iget p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgress:I

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/android/launcher3/view/CircleProgressView;->mMax:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgressPercent:I

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    .line 30
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mTextPaint:Landroid/text/TextPaint;

    .line 31
    iget p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mSweepAngle:I

    int-to-float p1, p1

    iget p2, p0, Lcom/android/launcher3/view/CircleProgressView;->mTickSplitAngle:F

    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mBlockAngle:F

    add-float/2addr p2, v0

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mTotalTickCount:I

    return-void
.end method

.method private measureHandler(II)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method


# virtual methods
.method public getCircleCenterX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mCircleCenterX:F

    return v0
.end method

.method public getCircleCenterY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mCircleCenterY:F

    return v0
.end method

.method public getLabelText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelText:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelTextColor:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgress:I

    return v0
.end method

.method public getProgressPercent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgressPercent:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mRadius:F

    return v0
.end method

.method public getStartAngle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mStartAngle:I

    return v0
.end method

.method public getSweepAngle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mSweepAngle:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/view/CircleProgressView;->isShowPercentText:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgressPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelText:Ljava/lang/String;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/launcher3/view/CircleProgressView;->drawArc(Landroid/graphics/Canvas;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/android/launcher3/view/CircleProgressView;->drawText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-direct {p0}, Lcom/android/launcher3/view/CircleProgressView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/view/CircleProgressView;->measureHandler(II)I

    move-result p1

    .line 4
    invoke-direct {p0, p2, v0}, Lcom/android/launcher3/view/CircleProgressView;->measureHandler(II)I

    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mCircleCenterX:F

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mCircleCenterY:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    .line 8
    iget v2, p0, Lcom/android/launcher3/view/CircleProgressView;->mStrokeWidth:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mCirclePadding:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mRadius:F

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelText:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/view/CircleProgressView;->isShowPercentText:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLabelTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelTextColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLabelTextColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/view/CircleProgressView;->setLabelTextColor(I)V

    return-void
.end method

.method public setLabelTextSize(F)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/view/CircleProgressView;->setLabelTextSize(IF)V

    return-void
.end method

.method public setLabelTextSize(IF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/android/launcher3/view/CircleProgressView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 3
    iget p2, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelTextSize:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_0

    .line 4
    iput p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mLabelTextSize:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mMax:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mNormalColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnChangeListener(Lcom/android/launcher3/view/CircleProgressView$OnChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mOnChangeListener:Lcom/android/launcher3/view/CircleProgressView$OnChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgress:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    .line 2
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mMax:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgressPercent:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mOnChangeListener:Lcom/android/launcher3/view/CircleProgressView$OnChangeListener;

    if-eqz p1, :cond_0

    .line 5
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mMax:I

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/view/CircleProgressView$OnChangeListener;->onProgressChanged(FF)V

    :cond_0
    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/launcher3/view/CircleProgressView;->isShader:Z

    .line 4
    iput p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgressColor:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public varargs setProgressColor([I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mCircleCenterX:F

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, p1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/view/CircleProgressView;->setShader(Landroid/graphics/Shader;)V

    return-void
.end method

.method public setProgressColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/view/CircleProgressView;->setProgressColor(I)V

    return-void
.end method

.method public setShader(Landroid/graphics/Shader;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/launcher3/view/CircleProgressView;->isShader:Z

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mShader:Landroid/graphics/Shader;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShowTick(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/view/CircleProgressView;->isShowTick:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTurn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/view/CircleProgressView;->isTurn:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showAnimation(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/view/CircleProgressView;->showAnimation(II)V

    return-void
.end method

.method public showAnimation(II)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/view/CircleProgressView;->showAnimation(III)V

    return-void
.end method

.method public showAnimation(III)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/view/CircleProgressView;->showAnimation(IIILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public showAnimation(IIILandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 4
    iput p3, p0, Lcom/android/launcher3/view/CircleProgressView;->mDuration:I

    .line 5
    iput p1, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgress:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 6
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long p2, p3

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    new-instance p2, Lcom/android/launcher3/view/CircleProgressView$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/view/CircleProgressView$1;-><init>(Lcom/android/launcher3/view/CircleProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p4, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 10
    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public showAppendAnimation(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/launcher3/view/CircleProgressView;->mProgress:I

    iget v1, p0, Lcom/android/launcher3/view/CircleProgressView;->mDuration:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/view/CircleProgressView;->showAnimation(III)V

    return-void
.end method
