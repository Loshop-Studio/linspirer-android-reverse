.class public Lcom/huawei/hem/s9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/s9$a;
    }
.end annotation


# instance fields
.field public a:J

.field public volatile b:Z

.field public c:Lcom/huawei/hem/s9$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/huawei/hem/s9;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hem/s9;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hem/s9;->c:Lcom/huawei/hem/s9$a;

    return-void
.end method
