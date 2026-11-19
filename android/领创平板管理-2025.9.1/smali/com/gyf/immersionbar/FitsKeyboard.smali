.class public Lcom/gyf/immersionbar/FitsKeyboard;
.super Ljava/lang/Object;
.source "FitsKeyboard.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public mChildView:Landroid/view/View;

.field public mContentView:Landroid/view/View;

.field public mDecorView:Landroid/view/View;

.field public mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

.field public mIsAddListener:Z

.field public mPaddingBottom:I

.field public mPaddingLeft:I

.field public mPaddingRight:I

.field public mPaddingTop:I

.field public mTempKeyboardHeight:I

.field public mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lcom/gyf/immersionbar/ImmersionBar;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingBottom:I

    .line 3
    iput-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 4
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mWindow:Landroid/view/Window;

    .line 5
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mDecorView:Landroid/view/View;

    const v2, 0x1020002

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 7
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->isDialogFragment()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->getSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->getFragment()Landroid/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 13
    instance-of v2, p1, Landroid/support/v4/widget/DrawerLayout;

    if-eqz v2, :cond_2

    .line 14
    check-cast p1, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    .line 15
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingLeft:I

    .line 17
    iget-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingTop:I

    .line 18
    iget-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingRight:I

    .line 19
    iget-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingBottom:I

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    if-eqz p1, :cond_4

    move-object v1, p1

    :cond_4
    iput-object v1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mContentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mIsAddListener:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mIsAddListener:Z

    :cond_0
    return-void
.end method

.method public disable()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mIsAddListener:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mContentView:Landroid/view/View;

    iget v1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingLeft:I

    iget v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingTop:I

    iget v3, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingRight:I

    iget v4, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v1}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 5
    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 6
    invoke-virtual {v3}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 7
    invoke-virtual {v4}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingBottom()I

    move-result v4

    .line 8
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enable(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2
    iget-boolean p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mIsAddListener:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mDecorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mIsAddListener:Z

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/BarParams;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/BarParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/gyf/immersionbar/BarParams;->keyboardEnable:Z

    if-eqz v0, :cond_a

    .line 2
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarConfig()Lcom/gyf/immersionbar/BarConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->isNavigationAtBottom()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarWidth()I

    move-result v1

    .line 4
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mDecorView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 6
    iget-object v3, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    .line 7
    iget v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mTempKeyboardHeight:I

    if-eq v3, v2, :cond_a

    .line 8
    iput v3, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mTempKeyboardHeight:I

    .line 9
    iget-object v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v4, 0x1020002

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/gyf/immersionbar/ImmersionBar;->checkFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_6

    .line 10
    iget-object v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 11
    iget-object v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/BarParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/gyf/immersionbar/BarParams;->isSupportActionBar:Z

    if-eqz v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->getActionBarHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getStatusBarHeight()I

    move-result v6

    add-int/2addr v6, v2

    add-int/2addr v3, v6

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/BarParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/gyf/immersionbar/BarParams;->fits:Z

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getStatusBarHeight()I

    move-result v0

    add-int/2addr v3, v0

    :cond_2
    if-le v3, v1, :cond_3

    .line 15
    iget v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingBottom:I

    add-int/2addr v0, v3

    goto :goto_1

    :cond_3
    move v0, v5

    move v4, v0

    .line 16
    :goto_1
    iget-object v1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mContentView:Landroid/view/View;

    iget v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingLeft:I

    iget v6, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingTop:I

    iget v7, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingRight:I

    invoke-virtual {v1, v2, v6, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v3, v1

    if-le v3, v1, :cond_5

    add-int v0, v3, v1

    goto :goto_2

    :cond_5
    move v4, v5

    .line 18
    :goto_2
    iget-object v1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingLeft()I

    move-result v2

    iget-object v6, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 19
    invoke-virtual {v6}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 20
    invoke-virtual {v7}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingRight()I

    move-result v7

    .line 21
    invoke-virtual {v1, v2, v6, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    :cond_6
    sub-int/2addr v3, v1

    if-le v3, v1, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    :goto_3
    if-gez v3, :cond_8

    goto :goto_4

    :cond_8
    move v5, v3

    .line 22
    :goto_4
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/BarParams;

    move-result-object v0

    iget-object v0, v0, Lcom/gyf/immersionbar/BarParams;->onKeyboardListener:Lcom/gyf/immersionbar/OnKeyboardListener;

    if-eqz v0, :cond_9

    .line 23
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/BarParams;

    move-result-object v0

    iget-object v0, v0, Lcom/gyf/immersionbar/BarParams;->onKeyboardListener:Lcom/gyf/immersionbar/OnKeyboardListener;

    invoke-interface {v0, v4, v5}, Lcom/gyf/immersionbar/OnKeyboardListener;->onKeyboardChange(ZI)V

    :cond_9
    if-nez v4, :cond_a

    .line 24
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/BarParams;

    move-result-object v0

    iget-object v0, v0, Lcom/gyf/immersionbar/BarParams;->barHide:Lcom/gyf/immersionbar/BarHide;

    sget-object v1, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    if-eq v0, v1, :cond_a

    .line 25
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->setBar()V

    :cond_a
    return-void
.end method
