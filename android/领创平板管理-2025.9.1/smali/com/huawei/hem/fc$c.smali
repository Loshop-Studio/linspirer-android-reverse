.class public Lcom/huawei/hem/fc$c;
.super Ljava/lang/Object;
.source "FileConfig.java"

# interfaces
.implements Lcom/huawei/hem/gc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hem/fc$c$a;

    invoke-direct {v0, p0}, Lcom/huawei/hem/fc$c$a;-><init>(Lcom/huawei/hem/fc$c;)V

    iput-object v0, p0, Lcom/huawei/hem/fc$c;->a:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Lcom/huawei/hem/fc$c$b;

    invoke-direct {v0, p0}, Lcom/huawei/hem/fc$c$b;-><init>(Lcom/huawei/hem/fc$c;)V

    iput-object v0, p0, Lcom/huawei/hem/fc$c;->b:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Lcom/huawei/hem/fc$c$c;

    invoke-direct {v0, p0}, Lcom/huawei/hem/fc$c$c;-><init>(Lcom/huawei/hem/fc$c;)V

    iput-object v0, p0, Lcom/huawei/hem/fc$c;->c:Ljava/lang/ThreadLocal;

    return-void
.end method
