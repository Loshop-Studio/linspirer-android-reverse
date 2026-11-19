.class public final Lcom/loc/bo$a;
.super Ljava/lang/Object;
.source "BasicThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/ThreadFactory;

.field public b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Boolean;

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/loc/bo;->e()I

    move-result v0

    iput v0, p0, Lcom/loc/bo$a;->f:I

    invoke-static {}, Lcom/loc/bo;->f()I

    move-result v0

    iput v0, p0, Lcom/loc/bo$a;->g:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/loc/bo$a;->h:I

    return-void
.end method

.method public static synthetic a(Lcom/loc/bo$a;)Ljava/util/concurrent/ThreadFactory;
    .locals 0

    iget-object p0, p0, Lcom/loc/bo$a;->a:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method public static synthetic b(Lcom/loc/bo$a;)I
    .locals 0

    iget p0, p0, Lcom/loc/bo$a;->f:I

    return p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bo$a;->a:Ljava/util/concurrent/ThreadFactory;

    iput-object v0, p0, Lcom/loc/bo$a;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v0, p0, Lcom/loc/bo$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/bo$a;->d:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/loc/bo$a;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic c(Lcom/loc/bo$a;)I
    .locals 0

    iget p0, p0, Lcom/loc/bo$a;->h:I

    return p0
.end method

.method public static synthetic d(Lcom/loc/bo$a;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/loc/bo$a;->i:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static synthetic e(Lcom/loc/bo$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/loc/bo$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/loc/bo$a;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/loc/bo$a;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic g(Lcom/loc/bo$a;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/loc/bo$a;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic h(Lcom/loc/bo$a;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    iget-object p0, p0, Lcom/loc/bo$a;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/loc/bo$a;
    .locals 0

    iput-object p1, p0, Lcom/loc/bo$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lcom/loc/bo;
    .locals 2

    new-instance v0, Lcom/loc/bo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loc/bo;-><init>(Lcom/loc/bo$a;B)V

    invoke-direct {p0}, Lcom/loc/bo$a;->b()V

    return-object v0
.end method
