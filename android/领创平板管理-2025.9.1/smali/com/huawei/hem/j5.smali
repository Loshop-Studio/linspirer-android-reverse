.class public Lcom/huawei/hem/j5;
.super Lcom/android/launcher3/network/response/LTKResponseListener;
.source "AppUsageHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKResponseListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:I

.field public final synthetic c:Lcom/huawei/hem/k5;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/k5;Ljava/lang/Class;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/j5;->c:Lcom/huawei/hem/k5;

    iput-object p3, p0, Lcom/huawei/hem/j5;->a:Ljava/util/List;

    iput p4, p0, Lcom/huawei/hem/j5;->b:I

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Boolean;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "AppUsageHelper -- usage app data is uploaded successfully "

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/j5;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/j5;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/l5;

    .line 6
    invoke-virtual {p1}, Lcom/huawei/hem/l5;->getmEndTimeStamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 7
    iget-object p1, p0, Lcom/huawei/hem/j5;->c:Lcom/huawei/hem/k5;

    .line 8
    iget-object p1, p1, Lcom/huawei/hem/k5;->c:Lcom/huawei/hem/y5;

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/huawei/hem/y5;->i0(J)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/j5;->c:Lcom/huawei/hem/k5;

    .line 11
    iget-object v0, v0, Lcom/huawei/hem/k5;->c:Lcom/huawei/hem/y5;

    .line 12
    invoke-virtual {p1}, Lcom/huawei/hem/l5;->getmBeginTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/y5;->i0(J)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/huawei/hem/j5;->c:Lcom/huawei/hem/k5;

    .line 14
    iget-object p1, p1, Lcom/huawei/hem/k5;->i:Ljava/util/List;

    .line 15
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/huawei/hem/j5;->c:Lcom/huawei/hem/k5;

    .line 17
    iget-object p1, p1, Lcom/huawei/hem/k5;->i:Ljava/util/List;

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 19
    iget v0, p0, Lcom/huawei/hem/j5;->b:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/huawei/hem/j5;->c:Lcom/huawei/hem/k5;

    .line 21
    iget-object v1, p1, Lcom/huawei/hem/k5;->i:Ljava/util/List;

    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {p1, v1, v0}, Lcom/huawei/hem/k5;->a(Lcom/huawei/hem/k5;Ljava/util/List;I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/huawei/hem/j5;->handleResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 0

    const-string p1, "AppUsageHelper -- usage app data is failed ."

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "AppUsageHelper -- usage app data is onFailureByNet ."

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    return-void
.end method
