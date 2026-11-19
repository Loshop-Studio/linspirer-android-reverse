.class public final Lcom/huawei/hem/i1$b;
.super Ljava/lang/Object;
.source "HttpsDecisionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/huawei/hem/i1$b;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hem/i1$b;->b:Z

    iput-boolean p1, p0, Lcom/huawei/hem/i1$b;->c:Z

    return-void
.end method
