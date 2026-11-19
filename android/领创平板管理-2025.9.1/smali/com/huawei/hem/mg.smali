.class public Lcom/huawei/hem/mg;
.super Ljava/lang/Object;
.source "MessageSnapshotThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/mg$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/mg$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/huawei/hem/jg$b;


# direct methods
.method public constructor <init>(ILcom/huawei/hem/jg$b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/huawei/hem/mg;->b:Lcom/huawei/hem/jg$b;

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/huawei/hem/mg;->a:Ljava/util/List;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/mg;->a:Ljava/util/List;

    new-instance v1, Lcom/huawei/hem/mg$a;

    invoke-direct {v1, p0, p2}, Lcom/huawei/hem/mg$a;-><init>(Lcom/huawei/hem/mg;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
