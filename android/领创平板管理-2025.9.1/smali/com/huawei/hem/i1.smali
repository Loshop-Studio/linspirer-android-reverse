.class public final Lcom/huawei/hem/i1;
.super Ljava/lang/Object;
.source "HttpsDecisionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/i1$b;,
        Lcom/huawei/hem/i1$a;
    }
.end annotation


# instance fields
.field public volatile a:Lcom/huawei/hem/i1$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/hem/i1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hem/i1$b;-><init>(B)V

    iput-object v0, p0, Lcom/huawei/hem/i1;->a:Lcom/huawei/hem/i1$b;

    const-string v0, "HttpsDecisionUtil"

    .line 1
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "SPUtil"

    :cond_0
    invoke-static {v0}, Lcom/huawei/hem/q0;->c(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hem/i1;->a:Lcom/huawei/hem/i1$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/huawei/hem/i1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hem/i1$b;-><init>(B)V

    iput-object v0, p0, Lcom/huawei/hem/i1;->a:Lcom/huawei/hem/i1$b;

    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/i1;->a:Lcom/huawei/hem/i1$b;

    const/4 v1, 0x1

    const-string v2, "open_common"

    const-string v3, "a3"

    invoke-static {p1, v2, v3, v1}, Lcom/huawei/hem/o1;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1
    iput-boolean v1, v0, Lcom/huawei/hem/i1$b;->b:Z

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/i1;->a:Lcom/huawei/hem/i1$b;

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget v1, v0, Lcom/huawei/hem/i1$b;->a:I

    if-gtz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v1, v0, Lcom/huawei/hem/i1$b;->a:I

    .line 4
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/loc/j;->a(Landroid/content/Context;)Lcom/loc/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loc/j;->a()V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
