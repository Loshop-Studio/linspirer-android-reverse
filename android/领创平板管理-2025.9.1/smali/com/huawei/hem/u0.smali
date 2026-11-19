.class public Lcom/huawei/hem/u0;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public a:Landroid/content/Context;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hem/u0;->f:Z

    .line 3
    iput-object p1, p0, Lcom/huawei/hem/u0;->a:Landroid/content/Context;

    return-void
.end method
