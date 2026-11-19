.class public Lcom/alibaba/sdk/android/push/g/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/push/g/f$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/sdk/android/push/g/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/g/f;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private a(JJ)Z
    .locals 0

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x1388

    cmp-long p1, p3, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(I)Lcom/alibaba/sdk/android/push/g/f$a;
    .locals 6

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/f;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/sdk/android/push/g/f$a;

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/f$a;->b()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/alibaba/sdk/android/push/g/f;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method public a(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/f;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/alibaba/sdk/android/push/g/f$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/g/f$a;-><init>(Lcom/alibaba/sdk/android/push/g/f;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/alibaba/sdk/android/push/g/f$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/g/f$a;-><init>(Lcom/alibaba/sdk/android/push/g/f;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/alibaba/sdk/android/push/g/f$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/g/f$a;-><init>(Lcom/alibaba/sdk/android/push/g/f;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/alibaba/sdk/android/push/g/f$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/g/f$a;-><init>(Lcom/alibaba/sdk/android/push/g/f;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    iget-object p2, p0, Lcom/alibaba/sdk/android/push/g/f;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
