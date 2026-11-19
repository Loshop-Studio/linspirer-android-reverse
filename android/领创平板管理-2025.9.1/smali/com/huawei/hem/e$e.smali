.class public Lcom/huawei/hem/e$e;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lcom/huawei/hem/e$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lcom/huawei/hem/e$g<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/huawei/hem/e$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hem/e$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public final synthetic c:Lcom/huawei/hem/e;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/e;Lcom/huawei/hem/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/e$e;->c:Lcom/huawei/hem/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/huawei/hem/e$e;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hem/e$d;)V
    .locals 1
    .param p1    # Lcom/huawei/hem/e$d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hem/e$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/e$e;->a:Lcom/huawei/hem/e$d;

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, v0, Lcom/huawei/hem/e$d;->d:Lcom/huawei/hem/e$d;

    iput-object p1, p0, Lcom/huawei/hem/e$e;->a:Lcom/huawei/hem/e$d;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-boolean p1, p0, Lcom/huawei/hem/e$e;->b:Z

    :cond_1
    return-void
.end method

.method public hasNext()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/e$e;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/e$e;->c:Lcom/huawei/hem/e;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/e;->a:Lcom/huawei/hem/e$d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/huawei/hem/e$e;->a:Lcom/huawei/hem/e$d;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/huawei/hem/e$d;->c:Lcom/huawei/hem/e$d;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/e$e;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hem/e$e;->b:Z

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/e$e;->c:Lcom/huawei/hem/e;

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/e;->a:Lcom/huawei/hem/e$d;

    .line 5
    iput-object v0, p0, Lcom/huawei/hem/e$e;->a:Lcom/huawei/hem/e$d;

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/e$e;->a:Lcom/huawei/hem/e$d;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/huawei/hem/e$d;->c:Lcom/huawei/hem/e$d;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/huawei/hem/e$e;->a:Lcom/huawei/hem/e$d;

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/huawei/hem/e$e;->a:Lcom/huawei/hem/e$d;

    return-object v0
.end method
