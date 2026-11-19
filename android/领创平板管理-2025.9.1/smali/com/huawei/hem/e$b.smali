.class public Lcom/huawei/hem/e$b;
.super Lcom/huawei/hem/e$f;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/huawei/hem/e$f<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/huawei/hem/e$d;Lcom/huawei/hem/e$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hem/e$d<",
            "TK;TV;>;",
            "Lcom/huawei/hem/e$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hem/e$f;-><init>(Lcom/huawei/hem/e$d;Lcom/huawei/hem/e$d;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/huawei/hem/e$d;)Lcom/huawei/hem/e$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hem/e$d<",
            "TK;TV;>;)",
            "Lcom/huawei/hem/e$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/huawei/hem/e$d;->d:Lcom/huawei/hem/e$d;

    return-object p1
.end method

.method public c(Lcom/huawei/hem/e$d;)Lcom/huawei/hem/e$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hem/e$d<",
            "TK;TV;>;)",
            "Lcom/huawei/hem/e$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/huawei/hem/e$d;->c:Lcom/huawei/hem/e$d;

    return-object p1
.end method
