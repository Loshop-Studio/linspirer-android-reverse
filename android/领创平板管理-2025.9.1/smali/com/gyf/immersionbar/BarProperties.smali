.class public Lcom/gyf/immersionbar/BarProperties;
.super Ljava/lang/Object;
.source "BarProperties.java"


# instance fields
.field public actionBarHeight:I

.field public hasNavigationBar:Z

.field public landscapeLeft:Z

.field public landscapeRight:Z

.field public navigationBarHeight:I

.field public navigationBarWidth:I

.field public notchHeight:I

.field public notchScreen:Z

.field public portrait:Z

.field public statusBarHeight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/BarProperties;->actionBarHeight:I

    return v0
.end method

.method public getNavigationBarHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/BarProperties;->navigationBarHeight:I

    return v0
.end method

.method public getNavigationBarWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/BarProperties;->navigationBarWidth:I

    return v0
.end method

.method public getNotchHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/BarProperties;->notchHeight:I

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gyf/immersionbar/BarProperties;->statusBarHeight:I

    return v0
.end method

.method public hasNavigationBar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/BarProperties;->hasNavigationBar:Z

    return v0
.end method

.method public isLandscapeLeft()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/BarProperties;->landscapeLeft:Z

    return v0
.end method

.method public isLandscapeRight()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/BarProperties;->landscapeRight:Z

    return v0
.end method

.method public isNotchScreen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/BarProperties;->notchScreen:Z

    return v0
.end method

.method public isPortrait()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gyf/immersionbar/BarProperties;->portrait:Z

    return v0
.end method

.method public setActionBarHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gyf/immersionbar/BarProperties;->actionBarHeight:I

    return-void
.end method

.method public setLandscapeLeft(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gyf/immersionbar/BarProperties;->landscapeLeft:Z

    return-void
.end method

.method public setLandscapeRight(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gyf/immersionbar/BarProperties;->landscapeRight:Z

    return-void
.end method

.method public setNavigationBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gyf/immersionbar/BarProperties;->hasNavigationBar:Z

    return-void
.end method

.method public setNavigationBarHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gyf/immersionbar/BarProperties;->navigationBarHeight:I

    return-void
.end method

.method public setNavigationBarWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gyf/immersionbar/BarProperties;->navigationBarWidth:I

    return-void
.end method

.method public setNotchHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gyf/immersionbar/BarProperties;->notchHeight:I

    return-void
.end method

.method public setNotchScreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gyf/immersionbar/BarProperties;->notchScreen:Z

    return-void
.end method

.method public setPortrait(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gyf/immersionbar/BarProperties;->portrait:Z

    return-void
.end method

.method public setStatusBarHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gyf/immersionbar/BarProperties;->statusBarHeight:I

    return-void
.end method
