.class public Lcom/android/launcher3/view/CustomViewfinderView;
.super Lcom/journeyapps/barcodescanner/ViewfinderView;
.source "CustomViewfinderView.java"


# static fields
.field public static final CUSTOME_ANIMATION_DELAY:J = 0x10L


# instance fields
.field public mLineColor:I

.field public mLineDepth:F

.field public mLineRate:F

.field public mLinearGradient:Landroid/graphics/LinearGradient;

.field public mPositions:[F

.field public mScanLineColor:[I

.field public mScanLineDepth:F

.field public mScanLineDy:F

.field public mScanLinePosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3dcccccd    # 0.1f

    .line 2
    iput p1, p0, Lcom/android/launcher3/view/CustomViewfinderView;->mLineRate:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/view/CustomViewfinderView;->mLineDepth:F

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/launcher3/view/CustomViewfinderView;->mLineColor:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/launcher3/view/CustomViewfinderView;->mScanLinePosition:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/view/CustomViewfinderView;->mScanLineDepth:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/view/CustomViewfinderView;->mScanLineDy:F

    const/4 p1, 0x3

    new-array p2, p1, [F

    .line 8
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/android/launcher3/view/CustomViewfinderView;->mPositions:[F

    new-array p1, p1, [I

    .line 9
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/launcher3/view/CustomViewfinderView;->mScanLineColor:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0xffffff
        -0x1
        0xffffff
    .end array-data
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/journeyapps/barcodescanner/ViewfinderView;->refreshSizes()V

    .line 2
    iget-object v8, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->framingRect:Landroid/graphics/Rect;

    if-eqz v8, :cond_7

    iget-object v9, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->previewFramingRect:Landroid/graphics/Rect;

    if-nez v9, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    .line 5
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v4, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineDepth:F

    add-float/2addr v4, v0

    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    int-to-float v0, v0

    iget v4, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineDepth:F

    add-float/2addr v4, v0

    int-to-float v0, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v5, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v2, v5

    add-float v5, v2, v0

    iget-object v12, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v1, v2

    sub-float v1, v0, v1

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v3, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    int-to-float v0, v0

    iget v4, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineDepth:F

    add-float/2addr v4, v0

    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 9
    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v2, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineDepth:F

    sub-float/2addr v1, v2

    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v3, v2

    int-to-float v4, v0

    int-to-float v0, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v5, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v2, v5

    add-float v5, v2, v0

    iget-object v12, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 10
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineDepth:F

    sub-float/2addr v2, v3

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v3, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineDepth:F

    add-float/2addr v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 12
    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v1, v2

    sub-float v1, v0, v1

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v3, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineDepth:F

    sub-float/2addr v2, v3

    iget v3, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13
    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineDepth:F

    sub-float v1, v0, v1

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLineRate:F

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v1, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget v1, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultColor:I

    goto :goto_0

    :cond_1
    iget v1, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->maskColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v10, v10

    .line 15
    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 16
    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 17
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 18
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v4, v11

    iget-object v5, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 19
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    const/16 v10, 0xa0

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 21
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget-object v1, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0, v11, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 22
    :cond_2
    iget v0, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mScanLinePosition:I

    int-to-float v0, v0

    iget v1, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mScanLineDy:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mScanLinePosition:I

    .line 23
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    .line 24
    iput v0, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mScanLinePosition:I

    .line 25
    :cond_3
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v13, v1

    iget v1, v8, Landroid/graphics/Rect;->top:I

    iget v2, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mScanLinePosition:I

    add-int v3, v1, v2

    int-to-float v14, v3

    iget v3, v8, Landroid/graphics/Rect;->right:I

    int-to-float v15, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mScanLineColor:[I

    iget-object v3, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mPositions:[F

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v0

    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 26
    iget-object v1, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 27
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v2, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mScanLinePosition:I

    add-int v3, v0, v2

    int-to-float v3, v3

    iget v4, v8, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, v7, Lcom/android/launcher3/view/CustomViewfinderView;->mScanLineDepth:F

    add-float v5, v0, v2

    iget-object v12, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 28
    iget-object v0, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 29
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 30
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 31
    iget-object v2, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 32
    iget-object v3, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 33
    iget v4, v8, Landroid/graphics/Rect;->left:I

    .line 34
    iget v5, v8, Landroid/graphics/Rect;->top:I

    .line 35
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 36
    iput-object v11, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    goto :goto_2

    .line 37
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    const/4 v11, 0x5

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 38
    iput-object v2, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 39
    iget-object v9, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    iget-object v9, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v10, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultPointColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/ResultPoint;

    .line 42
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    mul-float/2addr v10, v0

    float-to-int v10, v10

    add-int/2addr v10, v4

    int-to-float v10, v10

    .line 43
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    mul-float/2addr v9, v1

    float-to-int v9, v9

    add-int/2addr v9, v5

    int-to-float v9, v9

    const/high16 v11, 0x40c00000    # 6.0f

    iget-object v12, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 44
    invoke-virtual {v6, v10, v9, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 45
    iget-object v2, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v9, 0x50

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 46
    iget-object v2, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v9, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40400000    # 3.0f

    .line 47
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/ResultPoint;

    .line 48
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    mul-float/2addr v10, v0

    float-to-int v10, v10

    add-int/2addr v10, v4

    int-to-float v10, v10

    .line 49
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    mul-float/2addr v9, v1

    float-to-int v9, v9

    add-int/2addr v9, v5

    int-to-float v9, v9

    iget-object v11, v7, Lcom/journeyapps/barcodescanner/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {v6, v10, v9, v2, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_6
    :goto_4
    const-wide/16 v1, 0x10

    .line 51
    iget v3, v8, Landroid/graphics/Rect;->left:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    iget v5, v8, Landroid/graphics/Rect;->right:I

    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    :cond_7
    :goto_5
    return-void
.end method
