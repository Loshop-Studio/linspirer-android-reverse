.class public Lcom/huawei/hem/m5;
.super Lcom/android/launcher3/network/params/Params;
.source "UsageParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public logs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/l5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/network/params/Params;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hem/l5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/m5;->logs:Ljava/util/List;

    return-object v0
.end method

.method public setLogs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hem/l5;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/m5;->logs:Ljava/util/List;

    return-void
.end method
