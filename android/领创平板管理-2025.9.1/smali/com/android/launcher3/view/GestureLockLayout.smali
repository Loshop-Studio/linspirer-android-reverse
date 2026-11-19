.class public Lcom/android/launcher3/view/GestureLockLayout;
.super Landroid/widget/RelativeLayout;
.source "GestureLockLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/view/GestureLockLayout$ToastStrHolder;,
        Lcom/android/launcher3/view/GestureLockLayout$ColorHolder;,
        Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallbackAdapter;,
        Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;
    }
.end annotation


# static fields
.field public static final STATUS_CHECK:I = 0x2

.field public static final STATUS_RESET:I = 0x1


# instance fields
.field public background_color:I

.field public background_color_transparent:I

.field public checkPwd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public childEndIndex:I

.field public childStartIndex:I

.field public currentAttemptTime:I

.field public currentPaint:Landroid/graphics/Paint;

.field public downX:I

.field public downY:I

.field public gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

.field public guideLineEndX:I

.field public guideLineEndY:I

.field public guideLineStartX:I

.field public guideLineStartY:I

.field public hasRoundBorder:Z

.field public ifAllowDrawLockPath:Z

.field public ifAllowInteract:Z

.field public ifCheckOnErr:Z

.field public lockPath:Landroid/graphics/Path;

.field public lockPathArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mCount:I

.field public mGestureEventCallback:Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;

.field public mGesturePasswordViewWidth:I

.field public mHeight:I

.field public mModeStatus:I

.field public mWidth:I

.field public marginRate:F

.field public maxAttemptTimes:I

.field public minLengthOfPwd:I

.field public movedX:I

.field public movedY:I

.field public paint_correct:Landroid/graphics/Paint;

.field public paint_error:Landroid/graphics/Paint;

.field public resetCurrentTime:I

.field public tempPwd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/view/GestureLockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/view/GestureLockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput-object p3, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    const/4 p3, 0x4

    .line 5
    iput p3, p0, Lcom/android/launcher3/view/GestureLockLayout;->mCount:I

    const v0, 0x3e4ccccd    # 0.2f

    .line 6
    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->marginRate:F

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->ifAllowDrawLockPath:Z

    .line 8
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPath:Landroid/graphics/Path;

    .line 9
    iput p3, p0, Lcom/android/launcher3/view/GestureLockLayout;->minLengthOfPwd:I

    const/4 p3, -0x1

    .line 10
    iput p3, p0, Lcom/android/launcher3/view/GestureLockLayout;->mModeStatus:I

    const/4 p3, 0x5

    .line 11
    iput p3, p0, Lcom/android/launcher3/view/GestureLockLayout;->maxAttemptTimes:I

    const/4 p3, 0x1

    .line 12
    iput p3, p0, Lcom/android/launcher3/view/GestureLockLayout;->currentAttemptTime:I

    .line 13
    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->resetCurrentTime:I

    .line 14
    iput-boolean v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->ifCheckOnErr:Z

    const p3, -0xb86f01

    .line 15
    iput p3, p0, Lcom/android/launcher3/view/GestureLockLayout;->background_color:I

    .line 16
    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->background_color_transparent:I

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/view/GestureLockLayout;->dealAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/android/launcher3/view/GestureLockLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method private addPwd(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/view/GestureLockLayout;->checkRepetition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPathArr:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private checkRepetition(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPathArr:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private compare(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "\u5b58\u5728list\u4e3a\u7a7a\uff0c\u4e0d\u6267\u884c\u5bf9\u6bd4"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private copyPwd(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private dealAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/R$styleable;->GestureLockLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/view/GestureLockLayout;->hasRoundBorder:Z

    const/4 p2, 0x3

    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/view/GestureLockLayout;->mCount:I

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/view/GestureLockLayout;->ifAllowInteract:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    throw p2

    .line 7
    :catch_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private drawLockPath(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->currentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawMovingPath(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->guideLineStartX:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->guideLineStartY:I

    if-eqz v1, :cond_0

    int-to-float v3, v0

    int-to-float v4, v1

    .line 2
    iget v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->guideLineEndX:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->guideLineEndY:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/launcher3/view/GestureLockLayout;->currentPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getCenterPoint(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 4
    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    .line 5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getCircleView(I)Lcom/android/launcher3/view/GestureLockCircleView;
    .locals 11

    .line 1
    new-instance v0, Lcom/android/launcher3/view/GestureLockCircleView;

    iget-object v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/view/GestureLockCircleView;-><init>(Landroid/content/Context;)V

    .line 2
    iget v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->mCount:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f04003a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    int-to-double v7, p1

    div-double v1, v7, v1

    double-to-float p1, v1

    invoke-virtual {v0, v5, p1}, Lcom/android/launcher3/view/GestureLockCircleView;->setInnerCircle(IF)V

    .line 4
    iget-object v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->paint_correct:Landroid/graphics/Paint;

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->paint_error:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget p1, p0, Lcom/android/launcher3/view/GestureLockLayout;->mCount:I

    int-to-double v1, p1

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v1, v3

    .line 7
    iget-boolean p1, p0, Lcom/android/launcher3/view/GestureLockLayout;->hasRoundBorder:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    div-double/2addr v7, v1

    double-to-float v1, v7

    invoke-virtual {v0, p1, v3, v1}, Lcom/android/launcher3/view/GestureLockCircleView;->setBorderRound(ZIF)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/launcher3/view/GestureLockCircleView;->switchStatus(I)V

    return-object v0
.end method

.method private getClickedChild(II)Lcom/android/launcher3/view/GestureLockCircleView;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-direct {p0, p1, p2, v3}, Lcom/android/launcher3/view/GestureLockLayout;->ifClickOnView(IILandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getClickedChildIndex(II)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    .line 3
    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher3/view/GestureLockLayout;->ifClickOnView(IILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private ifClickOnView(IILandroid/view/View;)Z
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 4
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    .line 5
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/view/GestureLockLayout;->marginRate:F

    int-to-float v1, v1

    mul-float v4, v3, v1

    add-float/2addr v4, v2

    float-to-int v2, v4

    .line 6
    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float p3, p3

    mul-float v5, v3, p3

    add-float/2addr v5, v4

    float-to-int v4, v5

    .line 7
    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v1, v3

    sub-float/2addr v5, v1

    float-to-int v1, v5

    .line 8
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v3, p3

    sub-float/2addr v0, v3

    float-to-int p3, v0

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v4, v1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/view/GestureLockLayout;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 3
    iget v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->background_color_transparent:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->paint_correct:Landroid/graphics/Paint;

    .line 5
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->paint_correct:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->paint_correct:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->paint_error:Landroid/graphics/Paint;

    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->paint_error:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iget-object p1, p0, Lcom/android/launcher3/view/GestureLockLayout;->paint_error:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    invoke-direct {p0}, Lcom/android/launcher3/view/GestureLockLayout;->initLockPathArr()V

    .line 13
    iget-object p1, p0, Lcom/android/launcher3/view/GestureLockLayout;->paint_correct:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/android/launcher3/view/GestureLockLayout;->currentPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private initLockPathArr()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPathArr:Ljava/util/List;

    return-void
.end method

.method private onCheck()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->mGestureEventCallback:Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->checkPwd:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPathArr:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/view/GestureLockLayout;->compare(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 3
    iget v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->currentAttemptTime:I

    iget v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->maxAttemptTimes:I

    const/4 v3, 0x1

    if-gt v1, v2, :cond_3

    if-eqz v0, :cond_1

    .line 4
    iget-object v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->mGestureEventCallback:Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;

    invoke-interface {v2, v0, v1}, Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;->onCheckFinish(ZI)V

    .line 5
    iput v3, p0, Lcom/android/launcher3/view/GestureLockLayout;->currentAttemptTime:I

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->paint_correct:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->currentPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->ifCheckOnErr:Z

    goto :goto_1

    :cond_1
    sub-int/2addr v2, v1

    if-lez v2, :cond_2

    const v0, -0xcdce

    const-string v1, "\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\u624b\u52bf\u5bc6\u7801"

    .line 8
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/view/GestureLockLayout;->onToast(Ljava/lang/String;I)V

    .line 9
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->paint_error:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->currentPaint:Landroid/graphics/Paint;

    .line 10
    iput-boolean v3, p0, Lcom/android/launcher3/view/GestureLockLayout;->ifCheckOnErr:Z

    goto :goto_0

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->mGestureEventCallback:Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;

    invoke-interface {v2, v0, v1}, Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;->onCheckFinish(ZI)V

    .line 12
    :goto_0
    iget v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->currentAttemptTime:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->currentAttemptTime:I

    goto :goto_1

    .line 13
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->mGestureEventCallback:Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;

    invoke-interface {v2, v0, v1}, Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;->onCheckFinish(ZI)V

    .line 14
    iput v3, p0, Lcom/android/launcher3/view/GestureLockLayout;->currentAttemptTime:I

    :goto_1
    return-void
.end method

.method private onGetTempPassword(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->mGestureEventCallback:Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;->onGetTempPassword(Ljava/util/List;)V

    return-void
.end method

.method private onReset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->mGestureEventCallback:Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->resetCurrentTime:I

    const v1, -0x666667

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPathArr:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/launcher3/view/GestureLockLayout;->copyPwd(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->tempPwd:Ljava/util/List;

    .line 4
    iget v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->resetCurrentTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->resetCurrentTime:I

    const-string v0, "\u8bf7\u518d\u6b21\u7ed8\u5236\u624b\u52bf\u5bc6\u7801"

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/view/GestureLockLayout;->onToast(Ljava/lang/String;I)V

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->tempPwd:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/launcher3/view/GestureLockLayout;->onGetTempPassword(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->tempPwd:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPathArr:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/view/GestureLockLayout;->compare(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u7ed8\u5236\u6210\u529f"

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/view/GestureLockLayout;->onToast(Ljava/lang/String;I)V

    .line 9
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->mGestureEventCallback:Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;

    iget-object v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPathArr:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/launcher3/view/GestureLockLayout;->copyPwd(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;->onResetFinish(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const-string v0, "\u4e0e\u9996\u6b21\u7ed8\u5236\u4e0d\u4e00\u81f4\uff0c\u8bf7\u518d\u6b21\u7ed8\u5236"

    const v1, -0xcdce

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/view/GestureLockLayout;->onToast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private onSwipeFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->mGestureEventCallback:Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPathArr:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/launcher3/view/GestureLockLayout;->copyPwd(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;->onSwipeFinish(Ljava/util/List;)V

    return-void
.end method

.method private onSwipeMore()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->mGestureEventCallback:Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;->onSwipeMore()V

    return-void
.end method

.method private onToast(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->mGestureEventCallback:Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;->onToast(Ljava/lang/String;I)V

    return-void
.end method

.method private resetAllCircleBtn()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/view/GestureLockCircleView;->switchStatus(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetMovingPathCoordinate()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->guideLineStartX:I

    .line 2
    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->guideLineStartY:I

    .line 3
    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->guideLineEndX:I

    .line 4
    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->guideLineEndY:I

    return-void
.end method

.method private resetPwd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPathArr:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPathArr:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    const-string v0, "onDrawTag"

    const-string v1, "dispatchDraw"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->ifAllowInteract:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/launcher3/view/GestureLockLayout;->drawLockPath(Landroid/graphics/Canvas;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/android/launcher3/view/GestureLockLayout;->drawMovingPath(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getCurrentMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->mModeStatus:I

    return v0
.end method

.method public initCurrentTimes()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->resetCurrentTime:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    const-string p1, "onDrawTag"

    const-string v0, "onDraw"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/view/GestureLockLayout;->mWidth:I

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/view/GestureLockLayout;->mHeight:I

    .line 4
    iget p2, p0, Lcom/android/launcher3/view/GestureLockLayout;->mWidth:I

    if-ge p2, p1, :cond_0

    move p1, p2

    :cond_0
    iput p1, p0, Lcom/android/launcher3/view/GestureLockLayout;->mWidth:I

    iput p1, p0, Lcom/android/launcher3/view/GestureLockLayout;->mHeight:I

    .line 5
    iget-object p2, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    if-nez p2, :cond_3

    .line 6
    iget p2, p0, Lcom/android/launcher3/view/GestureLockLayout;->mCount:I

    mul-int v0, p2, p2

    new-array v0, v0, [Lcom/android/launcher3/view/GestureLockCircleView;

    iput-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    .line 7
    div-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/view/GestureLockLayout;->mGesturePasswordViewWidth:I

    const/4 p1, 0x0

    move p2, p1

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    array-length v1, v0

    if-ge p2, v1, :cond_3

    .line 9
    iget v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->mHeight:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/view/GestureLockLayout;->getCircleView(I)Lcom/android/launcher3/view/GestureLockCircleView;

    move-result-object v1

    aput-object v1, v0, p2

    .line 10
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    aget-object v0, v0, p2

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 11
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->mGesturePasswordViewWidth:I

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 12
    iget v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->mCount:I

    rem-int v2, p2, v2

    if-eqz v2, :cond_1

    .line 13
    iget-object v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    add-int/lit8 v3, p2, -0x1

    aget-object v2, v2, v3

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x1

    .line 15
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16
    :cond_1
    iget v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->mCount:I

    add-int/lit8 v3, v2, -0x1

    if-le p2, v3, :cond_2

    const/4 v3, 0x3

    .line 17
    iget-object v4, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    sub-int v2, p2, v2

    aget-object v2, v4, v2

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    .line 19
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 20
    :cond_2
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 21
    iget-object v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    aget-object p2, v2, p2

    invoke-virtual {p0, p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move p2, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->ifAllowInteract:Z

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_5

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->ifAllowDrawLockPath:Z

    if-eqz v0, :cond_d

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->movedX:I

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->movedY:I

    .line 6
    iget v5, p0, Lcom/android/launcher3/view/GestureLockLayout;->movedX:I

    invoke-direct {p0, v5, v0}, Lcom/android/launcher3/view/GestureLockLayout;->getClickedChildIndex(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->childEndIndex:I

    .line 7
    iget v5, p0, Lcom/android/launcher3/view/GestureLockLayout;->childStartIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-eq v0, v6, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v2

    .line 8
    :goto_0
    iget v5, p0, Lcom/android/launcher3/view/GestureLockLayout;->childStartIndex:I

    iget v6, p0, Lcom/android/launcher3/view/GestureLockLayout;->childEndIndex:I

    if-eq v5, v6, :cond_2

    move v2, v4

    .line 9
    :cond_2
    iget v4, p0, Lcom/android/launcher3/view/GestureLockLayout;->childEndIndex:I

    invoke-direct {p0, v4}, Lcom/android/launcher3/view/GestureLockLayout;->checkRepetition(I)Z

    move-result v4

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    if-nez v4, :cond_4

    .line 10
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    iget v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->childEndIndex:I

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/android/launcher3/view/GestureLockLayout;->getCenterPoint(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 11
    iget v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->movedX:I

    iget v4, p0, Lcom/android/launcher3/view/GestureLockLayout;->movedY:I

    invoke-direct {p0, v2, v4}, Lcom/android/launcher3/view/GestureLockLayout;->getClickedChild(II)Lcom/android/launcher3/view/GestureLockCircleView;

    move-result-object v2

    .line 12
    iget-boolean v4, p0, Lcom/android/launcher3/view/GestureLockLayout;->ifCheckOnErr:Z

    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {v2, v1}, Lcom/android/launcher3/view/GestureLockCircleView;->switchStatus(I)V

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v2, v3}, Lcom/android/launcher3/view/GestureLockCircleView;->switchStatus(I)V

    .line 15
    :goto_1
    iget v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->childEndIndex:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/view/GestureLockLayout;->addPwd(I)V

    .line 16
    iget-object v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPath:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->guideLineStartX:I

    .line 18
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->guideLineStartY:I

    .line 19
    :cond_4
    iget v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->movedX:I

    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->guideLineEndX:I

    .line 20
    iget v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->movedY:I

    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->guideLineEndY:I

    .line 21
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    goto/16 :goto_3

    .line 22
    :cond_5
    iget-boolean v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->ifAllowDrawLockPath:Z

    if-eqz v0, :cond_d

    .line 23
    invoke-direct {p0}, Lcom/android/launcher3/view/GestureLockLayout;->resetMovingPathCoordinate()V

    .line 24
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 25
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    .line 26
    invoke-direct {p0}, Lcom/android/launcher3/view/GestureLockLayout;->resetAllCircleBtn()V

    .line 27
    invoke-direct {p0}, Lcom/android/launcher3/view/GestureLockLayout;->onSwipeFinish()V

    .line 28
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPathArr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->minLengthOfPwd:I

    if-lt v0, v1, :cond_8

    .line 29
    iget v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->mModeStatus:I

    if-ne v0, v4, :cond_6

    .line 30
    invoke-direct {p0}, Lcom/android/launcher3/view/GestureLockLayout;->onReset()V

    goto/16 :goto_3

    :cond_6
    if-ne v0, v3, :cond_7

    .line 31
    invoke-direct {p0}, Lcom/android/launcher3/view/GestureLockLayout;->onCheck()V

    goto/16 :goto_3

    .line 32
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u5f02\u5e38\u6a21\u5f0f\uff0c\u8bf7\u6b63\u786e\u8c03\u7528switchToCheckMode/switchToResetMode!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-array v0, v4, [Ljava/lang/Object;

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "\u8bf7\u6700\u5c11\u8fde\u63a5%s\u4e2a\u70b9"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, -0xcdce

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/view/GestureLockLayout;->onToast(Ljava/lang/String;I)V

    goto :goto_3

    :cond_9
    const v0, -0x666667

    const-string v5, ""

    .line 34
    invoke-direct {p0, v5, v0}, Lcom/android/launcher3/view/GestureLockLayout;->onToast(Ljava/lang/String;I)V

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->downX:I

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->downY:I

    .line 37
    iput-boolean v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->ifAllowDrawLockPath:Z

    .line 38
    iget v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->downX:I

    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/view/GestureLockLayout;->getClickedChild(II)Lcom/android/launcher3/view/GestureLockCircleView;

    move-result-object v0

    const-string v2, "tagpx"

    if-eqz v0, :cond_c

    .line 39
    iput-boolean v4, p0, Lcom/android/launcher3/view/GestureLockLayout;->ifAllowDrawLockPath:Z

    .line 40
    iget-boolean v4, p0, Lcom/android/launcher3/view/GestureLockLayout;->ifCheckOnErr:Z

    if-eqz v4, :cond_a

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/launcher3/view/GestureLockCircleView;->switchStatus(I)V

    goto :goto_2

    .line 42
    :cond_a
    invoke-virtual {v0, v3}, Lcom/android/launcher3/view/GestureLockCircleView;->switchStatus(I)V

    .line 43
    :goto_2
    iget v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->downX:I

    iget v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->downY:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/view/GestureLockLayout;->getClickedChildIndex(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->childStartIndex:I

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 45
    invoke-direct {p0}, Lcom/android/launcher3/view/GestureLockLayout;->resetPwd()V

    .line 46
    iget v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->childStartIndex:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/view/GestureLockLayout;->addPwd(I)V

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    iget v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->childStartIndex:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/launcher3/view/GestureLockLayout;->getCenterPoint(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 48
    iget-object v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->lockPath:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 49
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->guideLineStartX:I

    .line 50
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->guideLineStartY:I

    goto :goto_3

    :cond_b
    const-string v0, "1"

    .line 51
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    const-string v0, "2"

    .line 52
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_d
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public refreshPwdKeyboard(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->mCount:I

    iget v3, p0, Lcom/android/launcher3/view/GestureLockLayout;->mCount:I

    mul-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/view/GestureLockCircleView;->switchStatus(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/launcher3/view/GestureLockLayout;->gestureCircleViewArr:[Lcom/android/launcher3/view/GestureLockCircleView;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/view/GestureLockCircleView;->switchStatus(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public setGestureFinishedCallback(Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/view/GestureLockLayout;->mGestureEventCallback:Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallback;

    return-void
.end method

.method public switchToCheckMode(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->currentAttemptTime:I

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->mModeStatus:I

    .line 3
    iput p2, p0, Lcom/android/launcher3/view/GestureLockLayout;->maxAttemptTimes:I

    .line 4
    invoke-direct {p0, p1}, Lcom/android/launcher3/view/GestureLockLayout;->copyPwd(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/view/GestureLockLayout;->checkPwd:Ljava/util/List;

    return-void

    :cond_1
    :goto_0
    const-string p1, "switchToCheckMode"

    const-string p2, "\u53c2\u6570\u9519\u8bef,pwd\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u800c\u4e14 maxAttemptTimes\u5fc5\u987b\u5927\u4e8e0"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public switchToResetMode()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/android/launcher3/view/GestureLockLayout;->mModeStatus:I

    return-void
.end method
