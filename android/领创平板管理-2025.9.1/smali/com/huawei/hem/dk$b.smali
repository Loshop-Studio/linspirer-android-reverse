.class public final Lcom/huawei/hem/dk$b;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/dk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/huawei/hem/sj;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/ek;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/pj;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/ak;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/ak;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/huawei/hem/vj$b;

.field public g:Ljava/net/ProxySelector;

.field public h:Lcom/huawei/hem/rj;

.field public i:Ljavax/net/SocketFactory;

.field public j:Ljavax/net/ssl/HostnameVerifier;

.field public k:Lcom/huawei/hem/mj;

.field public l:Lcom/huawei/hem/hj;

.field public m:Lcom/huawei/hem/hj;

.field public n:Lcom/huawei/hem/oj;

.field public o:Lcom/huawei/hem/uj;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/dk$b;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/dk$b;->e:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/huawei/hem/sj;

    invoke-direct {v0}, Lcom/huawei/hem/sj;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/dk$b;->a:Lcom/huawei/hem/sj;

    .line 5
    sget-object v0, Lcom/huawei/hem/dk;->C:Ljava/util/List;

    iput-object v0, p0, Lcom/huawei/hem/dk$b;->b:Ljava/util/List;

    .line 6
    sget-object v0, Lcom/huawei/hem/dk;->D:Ljava/util/List;

    iput-object v0, p0, Lcom/huawei/hem/dk$b;->c:Ljava/util/List;

    .line 7
    sget-object v0, Lcom/huawei/hem/vj;->a:Lcom/huawei/hem/vj;

    .line 8
    new-instance v1, Lcom/huawei/hem/ej;

    invoke-direct {v1, v0}, Lcom/huawei/hem/ej;-><init>(Lcom/huawei/hem/vj;)V

    .line 9
    iput-object v1, p0, Lcom/huawei/hem/dk$b;->f:Lcom/huawei/hem/vj$b;

    .line 10
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/dk$b;->g:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/huawei/hem/xm;

    invoke-direct {v0}, Lcom/huawei/hem/xm;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/dk$b;->g:Ljava/net/ProxySelector;

    .line 12
    :cond_0
    sget-object v0, Lcom/huawei/hem/rj;->a:Lcom/huawei/hem/rj;

    iput-object v0, p0, Lcom/huawei/hem/dk$b;->h:Lcom/huawei/hem/rj;

    .line 13
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/dk$b;->i:Ljavax/net/SocketFactory;

    .line 14
    sget-object v0, Lcom/huawei/hem/bn;->a:Lcom/huawei/hem/bn;

    iput-object v0, p0, Lcom/huawei/hem/dk$b;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 15
    sget-object v0, Lcom/huawei/hem/mj;->c:Lcom/huawei/hem/mj;

    iput-object v0, p0, Lcom/huawei/hem/dk$b;->k:Lcom/huawei/hem/mj;

    .line 16
    sget-object v0, Lcom/huawei/hem/hj;->a:Lcom/huawei/hem/hj;

    iput-object v0, p0, Lcom/huawei/hem/dk$b;->l:Lcom/huawei/hem/hj;

    .line 17
    iput-object v0, p0, Lcom/huawei/hem/dk$b;->m:Lcom/huawei/hem/hj;

    .line 18
    new-instance v0, Lcom/huawei/hem/oj;

    invoke-direct {v0}, Lcom/huawei/hem/oj;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/dk$b;->n:Lcom/huawei/hem/oj;

    .line 19
    sget-object v0, Lcom/huawei/hem/uj;->a:Lcom/huawei/hem/uj;

    iput-object v0, p0, Lcom/huawei/hem/dk$b;->o:Lcom/huawei/hem/uj;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/huawei/hem/dk$b;->p:Z

    .line 21
    iput-boolean v0, p0, Lcom/huawei/hem/dk$b;->q:Z

    .line 22
    iput-boolean v0, p0, Lcom/huawei/hem/dk$b;->r:Z

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/huawei/hem/dk$b;->s:I

    const/16 v1, 0x2710

    .line 24
    iput v1, p0, Lcom/huawei/hem/dk$b;->t:I

    .line 25
    iput v1, p0, Lcom/huawei/hem/dk$b;->u:I

    .line 26
    iput v1, p0, Lcom/huawei/hem/dk$b;->v:I

    .line 27
    iput v0, p0, Lcom/huawei/hem/dk$b;->w:I

    return-void
.end method
