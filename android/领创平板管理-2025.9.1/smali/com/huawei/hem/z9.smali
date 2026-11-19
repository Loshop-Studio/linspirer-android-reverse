.class public final Lcom/huawei/hem/z9;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hem/ja;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Lcom/huawei/hem/z9;


# instance fields
.field public a:Lcom/huawei/hem/ga;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/hem/z9;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/hem/ga;

    invoke-direct {v0}, Lcom/huawei/hem/ga;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    return-void
.end method

.method public static b()Lcom/huawei/hem/z9;
    .locals 2

    sget-object v0, Lcom/huawei/hem/z9;->c:Lcom/huawei/hem/z9;

    if-nez v0, :cond_1

    .line 1
    const-class v0, Lcom/huawei/hem/z9;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hem/z9;->c:Lcom/huawei/hem/z9;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hem/z9;

    invoke-direct {v1}, Lcom/huawei/hem/z9;-><init>()V

    sput-object v1, Lcom/huawei/hem/z9;->c:Lcom/huawei/hem/z9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Lcom/huawei/hem/z9;->c:Lcom/huawei/hem/z9;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/huawei/hem/ja;
    .locals 1

    sget-object v0, Lcom/huawei/hem/z9;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hem/ja;

    return-object p1
.end method
