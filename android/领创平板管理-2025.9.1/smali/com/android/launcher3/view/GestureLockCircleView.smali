.class public Lcom/android/launcher3/view/GestureLockCircleView;
.super Landroid/view/View;
.source "GestureLockCircleView.java"


# static fields
.field public static final STATUS_CHECKED:I = 0x2

.field public static final STATUS_CHECKED_ERR:I = 0x3

.field public static final STATUS_NOT_CHECKED:I = 0x1


# instance fields
.field public circleFillColor:I

.field public circleRadius:F

.field public hasRoundBorder:Z

.field public minHeight:I

.field public minWidth:I

.field public paint_border:Landroid/graphics/Paint;

.field public paint_inner:Landroid/graphics/Paint;

.field public roundBorderColor:I

.field public roundBorderWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/view/GestureLockCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/view/GestureLockCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x32

    .line 4
    iput p3, p0, Lcom/android/launcher3/view/GestureLockCircleView;->minWidth:I

    iput p3, p0, Lcom/android/launcher3/view/GestureLockCircleView;->minHeight:I

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/view/GestureLockCircleView;->dealAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    invoke-direct {p0}, Lcom/android/launcher3/view/GestureLockCircleView;->initPaint()V

    return-void
.end method

.method private dealAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/launcher3/R$styleable;->GestureLockCircleView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0xfe6665

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/view/GestureLockCircleView;->circleFillColor:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/view/GestureLockCircleView;->circleRadius:F

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/view/GestureLockCircleView;->hasRoundBorder:Z

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/view/GestureLockCircleView;->roundBorderColor:I

    const/4 p2, 0x4

    .line 6
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/view/GestureLockCircleView;->roundBorderWidth:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    throw p2

    .line 9
    :catch_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private initPaint()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/view/GestureLockCircleView;->paint_inner:Landroid/graphics/Paint;

    .line 2
    iget v1, p0, Lcom/android/launcher3/view/GestureLockCircleView;->circleFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockCircleView;->paint_inner:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockCircleView;->paint_inner:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/view/GestureLockCircleView;->paint_border:Landroid/graphics/Paint;

    .line 6
    iget v2, p0, Lcom/android/launcher3/view/GestureLockCircleView;->roundBorderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockCircleView;->paint_border:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockCircleView;->paint_border:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 4
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 5
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 6
    iget-boolean v2, p0, Lcom/android/launcher3/view/GestureLockCircleView;->hasRoundBorder:Z

    if-eqz v2, :cond_0

    .line 7
    iget v2, p0, Lcom/android/launcher3/view/GestureLockCircleView;->roundBorderWidth:F

    iget-object v3, p0, Lcom/android/launcher3/view/GestureLockCircleView;->paint_border:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 8
    :cond_0
    iget v2, p0, Lcom/android/launcher3/view/GestureLockCircleView;->circleRadius:F

    iget-object v3, p0, Lcom/android/launcher3/view/GestureLockCircleView;->paint_inner:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    .line 6
    iget p1, p0, Lcom/android/launcher3/view/GestureLockCircleView;->minWidth:I

    iget p2, p0, Lcom/android/launcher3/view/GestureLockCircleView;->minHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 7
    iget p1, p0, Lcom/android/launcher3/view/GestureLockCircleView;->minWidth:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 8
    iget p2, p0, Lcom/android/launcher3/view/GestureLockCircleView;->minHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBorderRound(ZIF)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/view/GestureLockCircleView;->hasRoundBorder:Z

    .line 2
    iput p2, p0, Lcom/android/launcher3/view/GestureLockCircleView;->roundBorderColor:I

    .line 3
    iput p3, p0, Lcom/android/launcher3/view/GestureLockCircleView;->roundBorderWidth:F

    .line 4
    invoke-direct {p0}, Lcom/android/launcher3/view/GestureLockCircleView;->initPaint()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setInnerCircle(IF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/view/GestureLockCircleView;->circleFillColor:I

    .line 2
    iput p2, p0, Lcom/android/launcher3/view/GestureLockCircleView;->circleRadius:F

    .line 3
    invoke-direct {p0}, Lcom/android/launcher3/view/GestureLockCircleView;->initPaint()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public switchStatus(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f04003c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/view/GestureLockCircleView;->circleFillColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f040053

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/view/GestureLockCircleView;->roundBorderColor:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f04003b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/view/GestureLockCircleView;->circleFillColor:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f04003e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/view/GestureLockCircleView;->roundBorderColor:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f04003a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/view/GestureLockCircleView;->circleFillColor:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f04003d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/view/GestureLockCircleView;->roundBorderColor:I

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/view/GestureLockCircleView;->initPaint()V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
