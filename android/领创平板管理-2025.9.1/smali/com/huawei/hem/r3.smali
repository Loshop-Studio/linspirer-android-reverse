.class public Lcom/huawei/hem/r3;
.super Lcom/huawei/hem/p3;
.source "ReleaseControlAppList.java"


# instance fields
.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/p3;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/r3;->e:Ljava/util/List;

    const-string v1, "com.android.launcher3.activity.PullNewsActivity"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/r3;->e:Ljava/util/List;

    const-string v1, "com.android.launcher3.LauncherNew"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/huawei/hem/r3;->e:Ljava/util/List;

    const-string v1, "com.android.launcher3.activity.DeviceRotatingActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/huawei/hem/r3;->e:Ljava/util/List;

    const-string v1, "com.android.launcher3.activity.DataCleanActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
