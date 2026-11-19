.class public Lcom/huawei/hem/qa;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static c:Lcom/huawei/hem/qa;


# instance fields
.field public a:Z

.field public b:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hem/qa;

    invoke-direct {v0}, Lcom/huawei/hem/qa;-><init>()V

    sput-object v0, Lcom/huawei/hem/qa;->c:Lcom/huawei/hem/qa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hem/qa;->a:Z

    invoke-static {}, Lcom/huawei/hem/y4;->s()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/qa;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    iget-boolean v0, p0, Lcom/huawei/hem/qa;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/huawei/hem/qa;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/huawei/hem/qa;->a:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/huawei/hem/qa;->a:Z

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/huawei/hem/qa;->a:Z

    return v0
.end method
