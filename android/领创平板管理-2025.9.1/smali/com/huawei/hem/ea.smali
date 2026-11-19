.class public Lcom/huawei/hem/ea;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/huawei/hem/ba;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hem/ea;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hem/ea;->f:Ljava/lang/String;

    new-instance v1, Lcom/huawei/hem/ba;

    invoke-direct {v1}, Lcom/huawei/hem/ba;-><init>()V

    iput-object v1, p0, Lcom/huawei/hem/ea;->g:Lcom/huawei/hem/ba;

    iput-object v0, p0, Lcom/huawei/hem/ea;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hem/ea;->j:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/hem/ea;->k:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/huawei/hem/ea;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hem/ea;->m:Z

    iput-boolean v0, p0, Lcom/huawei/hem/ea;->n:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hem/ea;->o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hem/ea;->q:J

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/ea;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hem/ea;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hem/ea;->f:Ljava/lang/String;

    new-instance v1, Lcom/huawei/hem/ba;

    invoke-direct {v1}, Lcom/huawei/hem/ba;-><init>()V

    iput-object v1, p0, Lcom/huawei/hem/ea;->g:Lcom/huawei/hem/ba;

    iput-object v0, p0, Lcom/huawei/hem/ea;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hem/ea;->j:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/hem/ea;->k:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/huawei/hem/ea;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hem/ea;->m:Z

    iput-boolean v0, p0, Lcom/huawei/hem/ea;->n:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hem/ea;->o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hem/ea;->q:J

    iget-object v0, p1, Lcom/huawei/hem/ea;->g:Lcom/huawei/hem/ba;

    iput-object v0, p0, Lcom/huawei/hem/ea;->g:Lcom/huawei/hem/ba;

    iget-boolean v0, p1, Lcom/huawei/hem/ea;->a:Z

    .line 1
    iput-boolean v0, p0, Lcom/huawei/hem/ea;->a:Z

    .line 2
    iget-object v0, p1, Lcom/huawei/hem/ea;->c:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/huawei/hem/ea;->c:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/huawei/hem/ea;->d:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/huawei/hem/ea;->d:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/huawei/hem/ea;->e:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/huawei/hem/ea;->e:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/huawei/hem/ea;->f:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/huawei/hem/ea;->f:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/huawei/hem/ea;->h:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/huawei/hem/ea;->h:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/huawei/hem/ea;->j:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/huawei/hem/ea;->j:Ljava/lang/String;

    .line 14
    iget-boolean v0, p1, Lcom/huawei/hem/ea;->b:Z

    .line 15
    iput-boolean v0, p0, Lcom/huawei/hem/ea;->b:Z

    .line 16
    iget v0, p1, Lcom/huawei/hem/ea;->k:I

    .line 17
    iput v0, p0, Lcom/huawei/hem/ea;->k:I

    .line 18
    iget v0, p1, Lcom/huawei/hem/ea;->l:I

    .line 19
    iput v0, p0, Lcom/huawei/hem/ea;->l:I

    .line 20
    iget-boolean v0, p1, Lcom/huawei/hem/ea;->m:Z

    .line 21
    iput-boolean v0, p0, Lcom/huawei/hem/ea;->m:Z

    .line 22
    iget-boolean v0, p1, Lcom/huawei/hem/ea;->n:Z

    .line 23
    iput-boolean v0, p0, Lcom/huawei/hem/ea;->n:Z

    .line 24
    iget-boolean v0, p1, Lcom/huawei/hem/ea;->o:Z

    .line 25
    iput-boolean v0, p0, Lcom/huawei/hem/ea;->o:Z

    .line 26
    iget-object v0, p1, Lcom/huawei/hem/ea;->i:Ljava/util/Map;

    .line 27
    iput-object v0, p0, Lcom/huawei/hem/ea;->i:Ljava/util/Map;

    .line 28
    iget-object v0, p1, Lcom/huawei/hem/ea;->p:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/huawei/hem/ea;->p:Ljava/lang/String;

    .line 30
    iget-wide v0, p1, Lcom/huawei/hem/ea;->q:J

    .line 31
    iput-wide v0, p0, Lcom/huawei/hem/ea;->q:J

    return-void
.end method
