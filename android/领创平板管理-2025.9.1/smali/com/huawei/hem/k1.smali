.class public final Lcom/huawei/hem/k1;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# annotations
.annotation runtime Lcom/loc/aa;
    a = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/k1$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/loc/ab;
        a = "a1"
        b = 0x6
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/loc/ab;
        a = "a2"
        b = 0x6
    .end annotation
.end field

.field public c:I
    .annotation runtime Lcom/loc/ab;
        a = "a6"
        b = 0x2
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Lcom/loc/ab;
        a = "a4"
        b = 0x6
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation runtime Lcom/loc/ab;
        a = "a5"
        b = 0x6
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/hem/k1;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hem/k1;->k:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/k1$a;B)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    iput p2, p0, Lcom/huawei/hem/k1;->c:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/huawei/hem/k1;->k:[Ljava/lang/String;

    .line 2
    iget-object v0, p1, Lcom/huawei/hem/k1$a;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/huawei/hem/k1;->f:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/huawei/hem/k1$a;->b:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/huawei/hem/k1;->g:Ljava/lang/String;

    .line 6
    iget-object v1, p1, Lcom/huawei/hem/k1$a;->c:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/huawei/hem/k1;->i:Ljava/lang/String;

    .line 8
    iget-object v1, p1, Lcom/huawei/hem/k1$a;->d:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/huawei/hem/k1;->h:Ljava/lang/String;

    .line 10
    iget-boolean v1, p1, Lcom/huawei/hem/k1$a;->e:Z

    .line 11
    iput v1, p0, Lcom/huawei/hem/k1;->c:I

    .line 12
    iget-object v1, p1, Lcom/huawei/hem/k1$a;->f:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/huawei/hem/k1;->j:Ljava/lang/String;

    .line 14
    iget-object p1, p1, Lcom/huawei/hem/k1$a;->g:[Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/huawei/hem/k1;->k:[Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hem/l1;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/k1;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/huawei/hem/k1;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/huawei/hem/l1;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/k1;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/huawei/hem/k1;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/huawei/hem/l1;->p(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/huawei/hem/k1;->k:[Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    :goto_1
    invoke-static {p2}, Lcom/huawei/hem/l1;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/k1;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/huawei/hem/k1;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/huawei/hem/l1;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/k1;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hem/k1;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hem/k1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hem/k1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/k1;->i:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/k1;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hem/k1;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hem/k1;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hem/k1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/k1;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/k1;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hem/k1;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hem/k1;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hem/k1;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/k1;->j:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/k1;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "standard"

    iput-object v0, p0, Lcom/huawei/hem/k1;->j:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/huawei/hem/k1;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final d()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hem/k1;->k:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/k1;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hem/k1;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, ";"

    .line 1
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-object v0, p0, Lcom/huawei/hem/k1;->k:[Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/huawei/hem/k1;->k:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    const-class v2, Lcom/huawei/hem/k1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hem/k1;->i:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Lcom/huawei/hem/k1;

    iget-object v3, v3, Lcom/huawei/hem/k1;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/huawei/hem/k1;->f:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Lcom/huawei/hem/k1;

    iget-object v3, v3, Lcom/huawei/hem/k1;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/huawei/hem/k1;->g:Ljava/lang/String;

    check-cast p1, Lcom/huawei/hem/k1;

    iget-object p1, p1, Lcom/huawei/hem/k1;->g:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    return v1

    :catchall_0
    :cond_3
    return v0
.end method
