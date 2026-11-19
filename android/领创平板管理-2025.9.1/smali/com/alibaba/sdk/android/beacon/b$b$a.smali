.class public final Lcom/alibaba/sdk/android/beacon/b$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/beacon/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/util/Map;
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

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b$a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/alibaba/sdk/android/beacon/b$b$a;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/beacon/b$b$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/alibaba/sdk/android/beacon/b$b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/sdk/android/beacon/b$b$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public a()Lcom/alibaba/sdk/android/beacon/b$b;
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/beacon/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/sdk/android/beacon/b$b;-><init>(Lcom/alibaba/sdk/android/beacon/b$b$a;Lcom/alibaba/sdk/android/beacon/b$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/alibaba/sdk/android/beacon/b$b$a;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/beacon/b$b$a;->k:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/alibaba/sdk/android/beacon/b$b$a;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/beacon/b$b$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/alibaba/sdk/android/beacon/b$b$a;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/beacon/b$b$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/alibaba/sdk/android/beacon/b$b$a;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/beacon/b$b$a;->n:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/alibaba/sdk/android/beacon/b$b$a;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/beacon/b$b$a;->o:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/alibaba/sdk/android/beacon/b$b$a;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/beacon/b$b$a;->p:Ljava/lang/String;

    return-object p0
.end method
