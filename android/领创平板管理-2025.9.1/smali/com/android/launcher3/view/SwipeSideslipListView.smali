.class public Lcom/android/launcher3/view/SwipeSideslipListView;
.super Landroid/widget/ListView;
.source "SwipeSideslipListView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CustomListView"


# instance fields
.field public isBtnDelShow:Ljava/lang/Boolean;

.field public itemViewGroup:Landroid/view/ViewGroup;

.field public mBtnDelWidth:I

.field public mContext:Landroid/content/Context;

.field public mDownX:I

.field public mDownY:I

.field public mSreeenWidth:I

.field public params:Landroid/widget/LinearLayout$LayoutParams;

.field public subViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->isBtnDelShow:Ljava/lang/Boolean;

    .line 3
    iput-object p1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/launcher3/view/SwipeSideslipListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->isBtnDelShow:Ljava/lang/Boolean;

    .line 7
    iput-object p1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/launcher3/view/SwipeSideslipListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->isBtnDelShow:Ljava/lang/Boolean;

    .line 11
    iput-object p1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/launcher3/view/SwipeSideslipListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private onActionDowm(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->isBtnDelShow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/launcher3/view/SwipeSideslipListView;->resetItemView()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->mDownX:I

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->mDownY:I

    .line 5
    iget v0, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->mDownX:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, -0x1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->itemViewGroup:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->subViewGroup:Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object p1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    iget v1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->mSreeenWidth:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 11
    iget-object p1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->subViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onActionMove(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 3
    iget v2, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->mDownX:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->mDownY:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v2, v1, :cond_2

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 5
    iget v1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->mDownX:I

    if-ge v0, v1, :cond_1

    sub-int/2addr v1, v0

    .line 6
    iget v0, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->mBtnDelWidth:I

    if-lt v1, v0, :cond_0

    move v1, v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->params:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    neg-int v1, v1

    .line 8
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 9
    iget-object v0, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->itemViewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return p1

    .line 10
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private onActionUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->params:Landroid/widget/LinearLayout$LayoutParams;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->mBtnDelWidth:I

    div-int/lit8 v2, v1, 0x2

    if-lt v0, v2, :cond_1

    neg-int v0, v1

    .line 3
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->isBtnDelShow:Ljava/lang/Boolean;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/view/SwipeSideslipListView;->resetItemView()V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->itemViewGroup:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public initView(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->mBtnDelWidth:I

    const-string v0, "window"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->mSreeenWidth:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/view/SwipeSideslipListView;->onActionMove(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/view/SwipeSideslipListView;->onActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/view/SwipeSideslipListView;->onActionDowm(Landroid/view/MotionEvent;)V

    .line 5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public resetItemView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->params:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->itemViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/launcher3/view/SwipeSideslipListView;->isBtnDelShow:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
