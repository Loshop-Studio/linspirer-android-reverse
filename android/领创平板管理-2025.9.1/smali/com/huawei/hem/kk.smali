.class public final Lcom/huawei/hem/kk;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/kk$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/gk;

.field public final b:Lcom/huawei/hem/ek;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lcom/huawei/hem/xj;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final f:Lcom/huawei/hem/yj;

.field public final g:Lcom/huawei/hem/mk;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final h:Lcom/huawei/hem/kk;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final i:Lcom/huawei/hem/kk;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final j:Lcom/huawei/hem/kk;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final k:J

.field public final l:J

.field public final m:Lcom/huawei/hem/dl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public volatile n:Lcom/huawei/hem/jj;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/huawei/hem/kk$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/huawei/hem/kk$a;->a:Lcom/huawei/hem/gk;

    iput-object v0, p0, Lcom/huawei/hem/kk;->a:Lcom/huawei/hem/gk;

    .line 3
    iget-object v0, p1, Lcom/huawei/hem/kk$a;->b:Lcom/huawei/hem/ek;

    iput-object v0, p0, Lcom/huawei/hem/kk;->b:Lcom/huawei/hem/ek;

    .line 4
    iget v0, p1, Lcom/huawei/hem/kk$a;->c:I

    iput v0, p0, Lcom/huawei/hem/kk;->c:I

    .line 5
    iget-object v0, p1, Lcom/huawei/hem/kk$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hem/kk;->d:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/huawei/hem/kk$a;->e:Lcom/huawei/hem/xj;

    iput-object v0, p0, Lcom/huawei/hem/kk;->e:Lcom/huawei/hem/xj;

    .line 7
    iget-object v0, p1, Lcom/huawei/hem/kk$a;->f:Lcom/huawei/hem/yj$a;

    if-eqz v0, :cond_0

    .line 8
    new-instance v1, Lcom/huawei/hem/yj;

    invoke-direct {v1, v0}, Lcom/huawei/hem/yj;-><init>(Lcom/huawei/hem/yj$a;)V

    .line 9
    iput-object v1, p0, Lcom/huawei/hem/kk;->f:Lcom/huawei/hem/yj;

    .line 10
    iget-object v0, p1, Lcom/huawei/hem/kk$a;->g:Lcom/huawei/hem/mk;

    iput-object v0, p0, Lcom/huawei/hem/kk;->g:Lcom/huawei/hem/mk;

    .line 11
    iget-object v0, p1, Lcom/huawei/hem/kk$a;->h:Lcom/huawei/hem/kk;

    iput-object v0, p0, Lcom/huawei/hem/kk;->h:Lcom/huawei/hem/kk;

    .line 12
    iget-object v0, p1, Lcom/huawei/hem/kk$a;->i:Lcom/huawei/hem/kk;

    iput-object v0, p0, Lcom/huawei/hem/kk;->i:Lcom/huawei/hem/kk;

    .line 13
    iget-object v0, p1, Lcom/huawei/hem/kk$a;->j:Lcom/huawei/hem/kk;

    iput-object v0, p0, Lcom/huawei/hem/kk;->j:Lcom/huawei/hem/kk;

    .line 14
    iget-wide v0, p1, Lcom/huawei/hem/kk$a;->k:J

    iput-wide v0, p0, Lcom/huawei/hem/kk;->k:J

    .line 15
    iget-wide v0, p1, Lcom/huawei/hem/kk$a;->l:J

    iput-wide v0, p0, Lcom/huawei/hem/kk;->l:J

    .line 16
    iget-object p1, p1, Lcom/huawei/hem/kk$a;->m:Lcom/huawei/hem/dl;

    iput-object p1, p0, Lcom/huawei/hem/kk;->m:Lcom/huawei/hem/dl;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 17
    throw p1
.end method


# virtual methods
.method public a()Lcom/huawei/hem/jj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kk;->n:Lcom/huawei/hem/jj;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/kk;->f:Lcom/huawei/hem/yj;

    invoke-static {v0}, Lcom/huawei/hem/jj;->a(Lcom/huawei/hem/yj;)Lcom/huawei/hem/jj;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/kk;->n:Lcom/huawei/hem/jj;

    :goto_0
    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kk;->g:Lcom/huawei/hem/mk;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hem/mk;->close()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Response{protocol="

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/kk;->b:Lcom/huawei/hem/ek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hem/kk;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hem/kk;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hem/kk;->a:Lcom/huawei/hem/gk;

    .line 2
    iget-object v1, v1, Lcom/huawei/hem/gk;->a:Lcom/huawei/hem/zj;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
