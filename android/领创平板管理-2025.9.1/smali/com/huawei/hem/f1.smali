.class public final Lcom/huawei/hem/f1;
.super Ljava/lang/Object;
.source "AuthConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/f1$b;,
        Lcom/huawei/hem/f1$e;,
        Lcom/huawei/hem/f1$g;,
        Lcom/huawei/hem/f1$f;,
        Lcom/huawei/hem/f1$d;,
        Lcom/huawei/hem/f1$c;
    }
.end annotation


# static fields
.field public static a:I = -0x1

.field public static b:Ljava/lang/String; = ""

.field public static c:Landroid/content/Context; = null

.field public static volatile d:Z = true

.field public static e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/huawei/hem/f1$f;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Ljava/lang/String;

.field public static h:J

.field public static volatile i:Z

.field public static volatile j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/huawei/hem/f1$e;",
            ">;"
        }
    .end annotation
.end field

.field public static m:Z

.field public static n:I

.field public static o:Z

.field public static p:Z

.field public static q:I

.field public static r:Z

.field public static s:Z

.field public static t:I

.field public static u:Z

.field public static v:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static w:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/loc/ap$a;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile y:Z

.field public static z:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/loc/ap$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/huawei/hem/f1;->e:Ljava/util/Vector;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/hem/f1;->f:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hem/f1;->g:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/huawei/hem/f1;->h:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/hem/f1;->i:Z

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/huawei/hem/f1;->j:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/huawei/hem/f1;->l:Ljava/util/concurrent/ConcurrentHashMap;

    sput-boolean v0, Lcom/huawei/hem/f1;->m:Z

    const/16 v1, 0x1388

    sput v1, Lcom/huawei/hem/f1;->n:I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/huawei/hem/f1;->o:Z

    sput-boolean v0, Lcom/huawei/hem/f1;->p:Z

    const/4 v2, 0x3

    sput v2, Lcom/huawei/hem/f1;->q:I

    sput-boolean v1, Lcom/huawei/hem/f1;->r:Z

    sput-boolean v0, Lcom/huawei/hem/f1;->s:Z

    sput v2, Lcom/huawei/hem/f1;->t:I

    sput-boolean v0, Lcom/huawei/hem/f1;->u:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/huawei/hem/f1;->v:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/huawei/hem/f1;->w:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/hem/f1;->x:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/huawei/hem/f1;->z:Ljava/util/Queue;

    return-void
.end method

.method public static A(Landroid/content/Context;)V
    .locals 4

    const-string v0, "open_common"

    const/4 v1, 0x1

    const-string v2, "a13"

    invoke-static {p0, v0, v2, v1}, Lcom/huawei/hem/o1;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/huawei/hem/f1;->o:Z

    const-string v2, "a6"

    invoke-static {p0, v0, v2, v1}, Lcom/huawei/hem/o1;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/hem/f1;->r:Z

    const/4 v1, 0x0

    const-string v2, "a7"

    invoke-static {p0, v0, v2, v1}, Lcom/huawei/hem/o1;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/huawei/hem/f1;->p:Z

    const/16 v2, 0x1388

    const-string v3, "a8"

    invoke-static {p0, v0, v3, v2}, Lcom/huawei/hem/o1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/huawei/hem/f1;->n:I

    const/4 v2, 0x3

    const-string v3, "a9"

    invoke-static {p0, v0, v3, v2}, Lcom/huawei/hem/o1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/huawei/hem/f1;->q:I

    const-string v3, "a10"

    invoke-static {p0, v0, v3, v1}, Lcom/huawei/hem/o1;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/huawei/hem/f1;->s:Z

    const-string v3, "a11"

    invoke-static {p0, v0, v3, v2}, Lcom/huawei/hem/o1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/huawei/hem/f1;->t:I

    const-string v2, "a12"

    invoke-static {p0, v0, v2, v1}, Lcom/huawei/hem/o1;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/huawei/hem/f1;->u:Z

    return-void
.end method

.method public static B(Lcom/loc/ap$c;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/huawei/hem/f1;->u:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/huawei/hem/f1;->z:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hem/f1;->z:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/loc/ap;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static C()Z
    .locals 3

    sget-object v0, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/amap/apis/utils/core/DeviceInfo;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    sget-object v2, Lcom/huawei/hem/f1;->f:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public static D()V
    .locals 6

    :try_start_0
    const-string v0, "IPV6_CONFIG_NAME"

    const-string v1, "open_common"

    sget-object v2, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/huawei/hem/f1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/f1$f;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "yyyyMMdd"

    invoke-static {v3, v4, v5}, Lcom/huawei/hem/l1;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1
    iget-object v4, v2, Lcom/huawei/hem/f1$f;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3
    iput-object v3, v2, Lcom/huawei/hem/f1$f;->b:Ljava/lang/String;

    .line 4
    iget-object v3, v2, Lcom/huawei/hem/f1$f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6
    :cond_0
    iget-object v3, v2, Lcom/huawei/hem/f1$f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    sget-object v3, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    invoke-static {v3, v0, v1, v2}, Lcom/huawei/hem/f1;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/f1$f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static E(Landroid/content/Context;)V
    .locals 3

    const-string v0, "open_common"

    :try_start_0
    sget-boolean v1, Lcom/huawei/hem/f1;->m:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "a4"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/huawei/hem/o1;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/hem/m1;->d:Z

    const-string v1, "a5"

    invoke-static {p0, v0, v1, v2}, Lcom/huawei/hem/o1;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/huawei/hem/m1;->e:Z

    sput-boolean v2, Lcom/huawei/hem/f1;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static F(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/huawei/hem/f1;->o:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    sget-object v1, Lcom/huawei/hem/f1;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    return v2

    :cond_3
    sget-object v1, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    if-nez v1, :cond_4

    return v0

    :cond_4
    sget-object v1, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    const-string v3, "a14"

    invoke-static {p0, v3}, Lcom/huawei/hem/f1;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "open_common"

    invoke-static {v1, p0, v3}, Lcom/huawei/hem/f1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/f1$f;

    move-result-object p0

    if-nez p0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/huawei/hem/f1$f;->a()I

    move-result p0

    sget v1, Lcom/huawei/hem/f1;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p0, v1, :cond_6

    return v0

    :cond_6
    return v2

    :catchall_0
    return v0
.end method

.method public static G()V
    .locals 4

    const-string v0, "open_common"

    sget-boolean v1, Lcom/huawei/hem/f1;->i:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/huawei/hem/f1;->i:Z

    .line 1
    sget-object v3, Lcom/huawei/hem/i1$a;->a:Lcom/huawei/hem/i1;

    .line 2
    invoke-virtual {v3, v1}, Lcom/huawei/hem/i1;->a(Landroid/content/Context;)V

    const-string v3, "a2"

    .line 3
    invoke-static {v1, v0, v3, v2}, Lcom/huawei/hem/o1;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/huawei/hem/f1;->d:Z

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f1;->A(Landroid/content/Context;)V

    const-string v2, "ucf"

    sget-boolean v3, Lcom/huawei/hem/f1$g;->a:Z

    invoke-static {v1, v0, v2, v3}, Lcom/huawei/hem/o1;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/huawei/hem/f1$g;->a:Z

    const-string v2, "fsv2"

    sget-boolean v3, Lcom/huawei/hem/f1$g;->b:Z

    invoke-static {v1, v0, v2, v3}, Lcom/huawei/hem/o1;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/huawei/hem/f1$g;->b:Z

    const-string v2, "usc"

    sget-boolean v3, Lcom/huawei/hem/f1$g;->c:Z

    invoke-static {v1, v0, v2, v3}, Lcom/huawei/hem/o1;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/huawei/hem/f1$g;->c:Z

    const-string v2, "umv"

    sget v3, Lcom/huawei/hem/f1$g;->d:I

    invoke-static {v1, v0, v2, v3}, Lcom/huawei/hem/o1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/huawei/hem/f1$g;->d:I

    const-string v2, "ust"

    sget-boolean v3, Lcom/huawei/hem/f1$g;->e:Z

    invoke-static {v1, v0, v2, v3}, Lcom/huawei/hem/o1;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/huawei/hem/f1$g;->e:Z

    const-string v2, "ustv"

    sget v3, Lcom/huawei/hem/f1$g;->f:I

    invoke-static {v1, v0, v2, v3}, Lcom/huawei/hem/o1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/huawei/hem/f1$g;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static H(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/huawei/hem/f1;->s:Z

    if-nez v1, :cond_1

    return v0

    :cond_1
    sget-object v1, Lcom/huawei/hem/f1;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-nez v1, :cond_3

    return v0

    :cond_3
    sget-object v1, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    if-nez v1, :cond_4

    return v2

    :cond_4
    sget-object v1, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    const-string v3, "a15"

    invoke-static {p0, v3}, Lcom/huawei/hem/f1;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "open_common"

    invoke-static {v1, p0, v3}, Lcom/huawei/hem/f1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/f1$f;

    move-result-object p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/huawei/hem/f1$f;->a()I

    move-result p0

    sget v1, Lcom/huawei/hem/f1;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p0, v1, :cond_6

    return v2

    :catchall_0
    :cond_6
    return v0
.end method

.method public static I()Lcom/loc/ap$a;
    .locals 3

    sget-boolean v0, Lcom/huawei/hem/f1;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/huawei/hem/f1;->x:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-boolean v2, Lcom/huawei/hem/f1;->y:Z

    if-eqz v2, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    sget-object v2, Lcom/huawei/hem/f1;->x:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sget-object v2, Lcom/huawei/hem/f1;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    sget-object v1, Lcom/huawei/hem/f1;->x:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/ap$a;

    invoke-virtual {v1}, Lcom/loc/ap$a;->a()Lcom/loc/ap$a;

    move-result-object v1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/huawei/hem/f1;->y:Z

    monitor-exit v0

    return-object v1

    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/f1$f;
    .locals 6

    const-class v0, Lcom/huawei/hem/f1;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    sget-object v4, Lcom/huawei/hem/f1;->e:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    sget-object v4, Lcom/huawei/hem/f1;->e:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hem/f1$f;

    if-eqz v4, :cond_0

    .line 1
    iget-object v5, v4, Lcom/huawei/hem/f1$f;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_2

    monitor-exit v0

    return-object v4

    :cond_2
    if-nez p0, :cond_3

    monitor-exit v0

    return-object v3

    :cond_3
    :try_start_1
    const-string v1, ""

    invoke-static {p0, p2, p1, v1}, Lcom/huawei/hem/o1;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/huawei/hem/f1$f;

    const-string v1, "a"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "f"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "h"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, v1, v4, p2}, Lcom/huawei/hem/f1$f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, p0

    .line 4
    :catchall_0
    :goto_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string p0, "yyyyMMdd"

    invoke-static {v4, v5, p0}, Lcom/huawei/hem/l1;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez v3, :cond_5

    new-instance v3, Lcom/huawei/hem/f1$f;

    invoke-direct {v3, p1, p0, v2}, Lcom/huawei/hem/f1$f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5
    :cond_5
    iget-object p1, v3, Lcom/huawei/hem/f1$f;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 7
    iput-object p0, v3, Lcom/huawei/hem/f1$f;->b:Ljava/lang/String;

    .line 8
    iget-object p0, v3, Lcom/huawei/hem/f1$f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_6
    sget-object p0, Lcom/huawei/hem/f1;->e:Ljava/util/Vector;

    invoke-virtual {p0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object v3

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/huawei/hem/k1;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "amap_sdk_auth_fail"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "amap_sdk_auth_fail_type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/huawei/hem/k1;->a()Ljava/lang/String;

    move-result-object p2

    const-string v1, "amap_sdk_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/huawei/hem/k1;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "amap_sdk_version"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance p2, Lcom/loc/ax;

    const-string v0, "core"

    const-string v1, "2.0"

    const-string v2, "O001"

    invoke-direct {p2, p0, v0, v1, v2}, Lcom/loc/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/loc/ax;->a(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcom/loc/ay;->a(Lcom/loc/ax;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/huawei/hem/d1; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;Lcom/huawei/hem/k1;Ljava/lang/String;Lcom/huawei/hem/f1$b;)V
    .locals 5

    const-class v0, Lcom/huawei/hem/f1;

    monitor-enter v0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hem/k1;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/huawei/hem/f1;->h(Lcom/huawei/hem/k1;)V

    sget-object v1, Lcom/huawei/hem/f1;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x8

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/huawei/hem/f1;->l:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_3
    sget-object v1, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_4
    sget-object v1, Lcom/huawei/hem/f1;->j:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/huawei/hem/f1;->j:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_5
    sget-object v1, Lcom/huawei/hem/f1;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Lcom/huawei/hem/f1$e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/huawei/hem/f1$e;-><init>(B)V

    iput-object p1, v1, Lcom/huawei/hem/f1$e;->a:Lcom/huawei/hem/k1;

    iput-object p2, v1, Lcom/huawei/hem/f1$e;->b:Ljava/lang/String;

    iput-object p3, v1, Lcom/huawei/hem/f1$e;->c:Lcom/huawei/hem/f1$b;

    sget-object p1, Lcom/huawei/hem/f1;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    const-string p2, "open_common"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v3, 0x0

    .line 1
    :try_start_2
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    const-string p2, "csp"

    const-string p3, "glv"

    invoke-static {p1, p2, p3}, Lcom/loc/w;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :goto_0
    sget-object p1, Lcom/huawei/hem/f1;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/huawei/hem/f1;->E(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    const-string p1, "at"

    const-string p2, "rglc"

    invoke-static {p0, p1, p2}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_7
    :goto_1
    monitor-exit v0

    return-void
.end method

.method public static e(Landroid/content/Context;Lcom/huawei/hem/k1;Ljava/lang/String;Lcom/huawei/hem/f1$c;Lorg/json/JSONObject;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    const-string v3, "ustv"

    const-string v4, "ust"

    const-string v5, "umv"

    const-string v6, "usc"

    const-string v7, "fsv2"

    const-string v8, "ucf"

    const-string v9, "off"

    new-instance v10, Lcom/huawei/hem/f1$c$a;

    invoke-direct {v10}, Lcom/huawei/hem/f1$c$a;-><init>()V

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/huawei/hem/f1$c$a;->a:Z

    iput-object v10, v0, Lcom/huawei/hem/f1$c;->c:Lcom/huawei/hem/f1$c$a;

    :try_start_0
    const-string v12, ";"

    move-object/from16 v13, p2

    invoke-virtual {v13, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    array-length v13, v12

    if-lez v13, :cond_1

    array-length v13, v12

    move v14, v11

    :goto_0
    if-ge v14, v13, :cond_1

    aget-object v15, v12, v14

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    iget-object v11, v0, Lcom/huawei/hem/f1$c;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v15, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p3

    const/4 v11, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v11, "at"

    const-string v12, "co"

    invoke-static {v0, v11, v12}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "16H"

    invoke-static {v2, v0}, Lcom/huawei/hem/l1;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    const-string v12, "able"

    const-string v13, "AuthConfigManager"

    if-eqz v11, :cond_2

    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    invoke-static {v0, v11}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v11, "load 16H"

    invoke-static {v0, v13, v11}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v0, "11K"

    invoke-static {v2, v0}, Lcom/huawei/hem/l1;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    :try_start_2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    invoke-static {v11, v14}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v10, Lcom/huawei/hem/f1$c$a;->a:Z

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v10, Lcom/huawei/hem/f1$c$a;->b:Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    const-string v9, "load 11K"

    invoke-static {v0, v13, v9}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-string v0, "145"

    invoke-static {v2, v0}, Lcom/huawei/hem/l1;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    :try_start_3
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v9, v0

    const-string v0, "load 145"

    invoke-static {v9, v13, v0}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    const-string v0, "14D"

    invoke-static {v2, v0}, Lcom/huawei/hem/l1;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    :try_start_4
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v9, v0

    const-string v0, "load 14D"

    invoke-static {v9, v13, v0}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    const-string v0, "151"

    invoke-static {v2, v0}, Lcom/huawei/hem/l1;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    :try_start_5
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    const-string v9, "load 151"

    invoke-static {v0, v13, v9}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_5
    const-string v0, "17S"

    invoke-static {v2, v0}, Lcom/huawei/hem/l1;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v9

    const-string v10, "open_common"

    if-eqz v9, :cond_a

    :try_start_6
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v9, v11}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z

    move-result v9

    sget-boolean v11, Lcom/huawei/hem/f1;->d:Z

    if-eq v9, v11, :cond_7

    sput-boolean v9, Lcom/huawei/hem/f1;->d:Z

    if-eqz v1, :cond_7

    invoke-static {v1, v10}, Lcom/huawei/hem/o1;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "a2"

    invoke-static {v11, v12, v9}, Lcom/huawei/hem/o1;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    invoke-static {v11}, Lcom/huawei/hem/o1;->c(Landroid/content/SharedPreferences$Editor;)V

    :cond_7
    if-eqz v0, :cond_a

    const-string v9, "static_enable"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    invoke-static {v9, v11}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z

    move-result v9

    const-string v12, "static_ip_direct_enable"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z

    move-result v12

    const-string v14, "static_timeout"

    const/4 v15, 0x5

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    mul-int/lit16 v14, v14, 0x3e8

    const-string v15, "static_retry"

    const/4 v11, 0x3

    invoke-virtual {v0, v15, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    const-string v11, "bgp_enable"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    move-object/from16 v17, v3

    const/4 v3, 0x1

    :try_start_7
    invoke-static {v11, v3}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z

    move-result v3

    const-string v11, "bgp_ip_direct_enable"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    move-object/from16 v18, v4

    const/4 v4, 0x0

    :try_start_8
    invoke-static {v11, v4}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z

    move-result v11

    const-string v4, "bgp_retry"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    move-object/from16 v19, v5

    const/4 v5, 0x3

    :try_start_9
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "perf_data_upload_enable"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z

    move-result v0

    sget-boolean v5, Lcom/huawei/hem/f1;->o:Z

    if-ne v9, v5, :cond_8

    sget-boolean v5, Lcom/huawei/hem/f1;->p:Z

    if-ne v12, v5, :cond_8

    sget v5, Lcom/huawei/hem/f1;->n:I

    if-ne v14, v5, :cond_8

    sget v5, Lcom/huawei/hem/f1;->q:I

    if-ne v15, v5, :cond_8

    sget-boolean v5, Lcom/huawei/hem/f1;->r:Z

    if-ne v3, v5, :cond_8

    sget-boolean v5, Lcom/huawei/hem/f1;->s:Z

    if-ne v11, v5, :cond_8

    sget v5, Lcom/huawei/hem/f1;->t:I

    if-ne v4, v5, :cond_8

    sget-boolean v5, Lcom/huawei/hem/f1;->u:Z

    if-eq v0, v5, :cond_9

    :cond_8
    sput-boolean v9, Lcom/huawei/hem/f1;->o:Z

    sput-boolean v12, Lcom/huawei/hem/f1;->p:Z

    sput v14, Lcom/huawei/hem/f1;->n:I

    sput v15, Lcom/huawei/hem/f1;->q:I

    sput-boolean v3, Lcom/huawei/hem/f1;->r:Z

    sput-boolean v11, Lcom/huawei/hem/f1;->s:Z

    sput v4, Lcom/huawei/hem/f1;->t:I

    sput-boolean v0, Lcom/huawei/hem/f1;->u:Z

    if-eqz v1, :cond_9

    invoke-static {v1, v10}, Lcom/huawei/hem/o1;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v1, "a13"

    invoke-static {v5, v1, v9}, Lcom/huawei/hem/o1;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v1, "a6"

    invoke-static {v5, v1, v3}, Lcom/huawei/hem/o1;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v1, "a7"

    invoke-static {v5, v1, v12}, Lcom/huawei/hem/o1;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v1, "a8"

    invoke-static {v5, v1, v14}, Lcom/huawei/hem/o1;->d(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    const-string v1, "a9"

    invoke-static {v5, v1, v15}, Lcom/huawei/hem/o1;->d(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    const-string v1, "a10"

    invoke-static {v5, v1, v11}, Lcom/huawei/hem/o1;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v1, "a11"

    invoke-static {v5, v1, v4}, Lcom/huawei/hem/o1;->d(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    const-string v1, "a12"

    invoke-static {v5, v1, v0}, Lcom/huawei/hem/o1;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    invoke-static {v5}, Lcom/huawei/hem/o1;->c(Landroid/content/SharedPreferences$Editor;)V

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "static_enable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/huawei/hem/f1;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/loc/ap;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bgp_enable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/huawei/hem/f1;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/loc/ap;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "static_ip_direct_enable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/huawei/hem/f1;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/loc/ap;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bgp_ip_direct_enable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/huawei/hem/f1;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/loc/ap;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "perf_data_upload_enable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/huawei/hem/f1;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/loc/ap;->a()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    goto :goto_8

    :catchall_7
    move-exception v0

    :goto_6
    move-object/from16 v19, v5

    goto :goto_8

    :catchall_8
    move-exception v0

    :goto_7
    move-object/from16 v18, v4

    goto :goto_6

    :catchall_9
    move-exception v0

    move-object/from16 v17, v3

    goto :goto_7

    :goto_8
    const-string v1, "load 17S"

    invoke-static {v0, v13, v1}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    :goto_9
    const-string v0, "15K"

    invoke-static {v2, v0}, Lcom/huawei/hem/l1;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :try_start_a
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/huawei/hem/f1$g;->a:Z

    invoke-static {v1, v3}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/huawei/hem/f1$g;->b:Z

    invoke-static {v3, v4}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/huawei/hem/f1$g;->c:Z

    invoke-static {v4, v5}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z

    move-result v4

    sget v5, Lcom/huawei/hem/f1$g;->d:I

    move-object/from16 v9, v19

    invoke-virtual {v0, v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v11, v18

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-boolean v14, Lcom/huawei/hem/f1$g;->e:Z

    invoke-static {v12, v14}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z

    move-result v12

    sget v14, Lcom/huawei/hem/f1$g;->f:I

    move-object/from16 v15, v17

    invoke-virtual {v0, v15, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget-boolean v14, Lcom/huawei/hem/f1$g;->a:Z

    if-ne v1, v14, :cond_b

    sget-boolean v14, Lcom/huawei/hem/f1$g;->b:Z

    if-ne v3, v14, :cond_b

    sget-boolean v14, Lcom/huawei/hem/f1$g;->c:Z

    if-ne v4, v14, :cond_b

    sget v14, Lcom/huawei/hem/f1$g;->d:I

    if-ne v5, v14, :cond_b

    sget-boolean v14, Lcom/huawei/hem/f1$g;->e:Z

    if-ne v12, v14, :cond_b

    sget v14, Lcom/huawei/hem/f1$g;->d:I

    if-eq v0, v14, :cond_c

    :cond_b
    sput-boolean v1, Lcom/huawei/hem/f1$g;->a:Z

    sput-boolean v3, Lcom/huawei/hem/f1$g;->b:Z

    sput-boolean v4, Lcom/huawei/hem/f1$g;->c:Z

    sput v5, Lcom/huawei/hem/f1$g;->d:I

    sput-boolean v12, Lcom/huawei/hem/f1$g;->e:Z

    sput v0, Lcom/huawei/hem/f1$g;->f:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    move-object/from16 v1, p0

    :try_start_b
    invoke-static {v1, v10}, Lcom/huawei/hem/o1;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-boolean v3, Lcom/huawei/hem/f1$g;->a:Z

    invoke-static {v0, v8, v3}, Lcom/huawei/hem/o1;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    sget-boolean v3, Lcom/huawei/hem/f1$g;->b:Z

    invoke-static {v0, v7, v3}, Lcom/huawei/hem/o1;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    sget-boolean v3, Lcom/huawei/hem/f1$g;->c:Z

    invoke-static {v0, v6, v3}, Lcom/huawei/hem/o1;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    sget v3, Lcom/huawei/hem/f1$g;->d:I

    invoke-static {v0, v9, v3}, Lcom/huawei/hem/o1;->d(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    sget-boolean v3, Lcom/huawei/hem/f1$g;->e:Z

    invoke-static {v0, v11, v3}, Lcom/huawei/hem/o1;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    sget v3, Lcom/huawei/hem/f1$g;->f:I

    invoke-static {v0, v15, v3}, Lcom/huawei/hem/o1;->d(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/huawei/hem/o1;->c(Landroid/content/SharedPreferences$Editor;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_a

    :catchall_a
    move-exception v0

    move-object/from16 v1, p0

    const-string v3, "load 15K"

    invoke-static {v0, v13, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_c
    move-object/from16 v1, p0

    :catchall_b
    :goto_a
    const-string v0, "183"

    invoke-static {v2, v0}, Lcom/huawei/hem/l1;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    :try_start_c
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lcom/loc/ao;->a(Lcom/huawei/hem/k1;Lorg/json/JSONObject;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_b

    :catchall_c
    move-exception v0

    const-string v3, "load 183"

    invoke-static {v0, v13, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_b
    const-string v0, "17I"

    invoke-static {v2, v0}, Lcom/huawei/hem/l1;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    :try_start_d
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "na"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "aa"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/huawei/hem/f1;->q(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v2, Lcom/huawei/hem/m1;->d:Z

    sput-boolean v0, Lcom/huawei/hem/m1;->e:Z

    invoke-static {v1, v10}, Lcom/huawei/hem/o1;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "a4"

    invoke-static {v1, v3, v2}, Lcom/huawei/hem/o1;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v2, "a5"

    invoke-static {v1, v2, v0}, Lcom/huawei/hem/o1;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/huawei/hem/o1;->c(Landroid/content/SharedPreferences$Editor;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    return-void

    :catchall_d
    move-exception v0

    const-string v1, "load 17I"

    invoke-static {v0, v13, v1}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sput-object p1, Lcom/huawei/hem/e1;->d:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/loc/bp;->a()Lcom/loc/bp;

    move-result-object v0

    new-instance v1, Lcom/huawei/hem/e1$a;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hem/e1$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/loc/br;->b(Lcom/loc/bq;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/f1$f;)V
    .locals 3

    .line 1
    iget-object v0, p3, Lcom/huawei/hem/f1$f;->a:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "a"

    iget-object v2, p3, Lcom/huawei/hem/f1$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "f"

    iget-object v2, p3, Lcom/huawei/hem/f1$f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "h"

    iget-object p3, p3, Lcom/huawei/hem/f1$f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p3, ""

    .line 4
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-static {p0, p2}, Lcom/huawei/hem/o1;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lcom/huawei/hem/o1;->c(Landroid/content/SharedPreferences$Editor;)V

    :goto_1
    return-void
.end method

.method public static h(Lcom/huawei/hem/k1;)V
    .locals 2

    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hem/k1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hem/k1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/k1;->f:Ljava/lang/String;

    .line 2
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/huawei/hem/k1;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/huawei/hem/m1;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/huawei/hem/f1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/f1$f;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "yyyyMMdd"

    invoke-static {v1, v2, v3}, Lcom/huawei/hem/l1;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1
    iget-object v2, v0, Lcom/huawei/hem/f1$f;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iput-object v1, v0, Lcom/huawei/hem/f1$f;->b:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lcom/huawei/hem/f1$f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/huawei/hem/f1$f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    sget-object v1, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    invoke-static {v1, p0, p1, v0}, Lcom/huawei/hem/f1;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hem/f1$f;)V

    return-void
.end method

.method public static declared-synchronized j(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/huawei/hem/f1;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    sget-object v1, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/huawei/hem/f1;->l:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    :try_start_2
    sget-object v1, Lcom/huawei/hem/f1;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    if-eqz p1, :cond_5

    const/4 p1, 0x1

    :try_start_4
    invoke-static {p1, p0}, Lcom/loc/ao;->a(ZLjava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/loc/bp;->a()Lcom/loc/bp;

    move-result-object p1

    new-instance v1, Lcom/huawei/hem/f1$a;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/huawei/hem/f1$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/loc/br;->b(Lcom/loc/bq;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_5
    const-string p1, "at"

    const-string p2, "lca"

    invoke-static {p0, p1, p2}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static k(Ljava/lang/String;ZZZ)V
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "downLevel"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/apis/utils/core/DeviceInfo;->u(Landroid/content/Context;)I

    move-result p0

    const-string v1, "0"

    const-string v2, "1"

    if-nez p0, :cond_1

    move-object p0, v1

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    const-string v3, "ant"

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "type"

    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    const-string p1, "9"

    goto :goto_1

    :cond_2
    const-string p1, "8"

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    const-string p1, "6"

    goto :goto_1

    :cond_4
    const-string p1, "4"

    :goto_1
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v2

    :goto_2
    const-string p0, "status"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    :try_start_0
    new-instance p1, Lcom/loc/ax;

    sget-object p2, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    const-string p3, "core"

    const-string v0, "2.0"

    const-string v1, "O002"

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/loc/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/loc/ax;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/loc/ay;->a(Lcom/loc/ax;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/huawei/hem/d1; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_3
    return-void
.end method

.method public static l(ZLcom/loc/ap$a;)V
    .locals 4

    sget-boolean v0, Lcom/huawei/hem/f1;->y:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lcom/huawei/hem/f1;->x:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p0, :cond_3

    :try_start_0
    sget-object p0, Lcom/huawei/hem/f1;->x:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/ap$a;

    iget-object v2, v1, Lcom/loc/ap$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/loc/ap$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/loc/ap$a;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/loc/ap$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/loc/ap$a;->f:I

    iget v3, p1, Lcom/loc/ap$a;->f:I

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Lcom/loc/ap$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p1, Lcom/loc/ap$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v2, v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :goto_1
    invoke-static {}, Lcom/loc/ap;->a()V

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/loc/ap$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, v1, Lcom/loc/ap$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v3, p1, Lcom/loc/ap$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    sput-boolean p0, Lcom/huawei/hem/f1;->y:Z

    sget-object p0, Lcom/huawei/hem/f1;->x:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-static {}, Lcom/loc/ap;->a()V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/loc/ap$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/loc/ap$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-counts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/loc/ap$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/loc/ap$a;->f:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "----"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/loc/ap;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_3
    return-void
.end method

.method public static m(ZLjava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "--markHostNameFailed---hostname="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/loc/ap;->a()V

    sget-boolean v0, Lcom/huawei/hem/f1;->o:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/huawei/hem/f1;->s:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "open_common"

    if-nez p0, :cond_4

    :try_start_1
    sget-object p0, Lcom/huawei/hem/f1;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    sget-object p0, Lcom/huawei/hem/f1;->v:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "a14"

    invoke-static {p1, p0}, Lcom/huawei/hem/f1;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/huawei/hem/f1;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    sget-object p0, Lcom/huawei/hem/f1;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    return-void

    :cond_5
    sget-object p0, Lcom/huawei/hem/f1;->w:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "a15"

    invoke-static {p1, p0}, Lcom/huawei/hem/f1;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/huawei/hem/f1;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method public static n()Z
    .locals 8

    sget-object v0, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    if-eqz v0, :cond_1

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/amap/apis/utils/core/DeviceInfo;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/huawei/hem/f1;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/huawei/hem/f1;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/huawei/hem/f1;->h:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xea60

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sput-object v0, Lcom/huawei/hem/f1;->g:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/huawei/hem/f1;->h:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/huawei/hem/f1;->h:J

    sget-object v0, Lcom/huawei/hem/f1;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v2

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InterfaceAddress;

    invoke-virtual {v6}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v7, v6, Ljava/net/Inet6Address;

    if-eqz v7, :cond_5

    check-cast v6, Ljava/net/Inet6Address;

    invoke-static {v6}, Lcom/huawei/hem/f1;->r(Ljava/net/InetAddress;)Z

    move-result v6

    if-nez v6, :cond_4

    or-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_5
    instance-of v7, v6, Ljava/net/Inet4Address;

    if-eqz v7, :cond_4

    check-cast v6, Ljava/net/Inet4Address;

    invoke-static {v6}, Lcom/huawei/hem/f1;->r(Ljava/net/InetAddress;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FMTkyLjE2OC40My4"

    invoke-static {v7}, Lcom/huawei/hem/l1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    or-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_3

    if-eqz v4, :cond_7

    const-string v3, "wlan"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/huawei/hem/f1;->f:Ljava/util/Map;

    const-string v4, "WIFI"

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_3

    const-string v3, "rmnet"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/huawei/hem/f1;->f:Ljava/util/Map;

    const-string v4, "MOBILE"

    goto :goto_3

    :goto_4
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    const-string v3, "at"

    const-string v4, "ipstack"

    invoke-static {v0, v3, v4}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_8
    :goto_5
    invoke-static {}, Lcom/huawei/hem/f1;->C()Z

    move-result v0

    if-nez v0, :cond_9

    return v2

    :cond_9
    invoke-static {}, Lcom/huawei/hem/f1;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    sget-boolean v0, Lcom/huawei/hem/f1;->d:Z

    if-nez v0, :cond_b

    return v2

    :cond_b
    sget-object v0, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    const-string v3, "IPV6_CONFIG_NAME"

    const-string v4, "open_common"

    invoke-static {v0, v3, v4}, Lcom/huawei/hem/f1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/f1$f;

    move-result-object v0

    if-nez v0, :cond_c

    return v2

    :cond_c
    invoke-virtual {v0}, Lcom/huawei/hem/f1$f;->a()I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_d

    return v1

    :cond_d
    return v2
.end method

.method public static declared-synchronized o(Ljava/lang/String;)Z
    .locals 5

    const-class v0, Lcom/huawei/hem/f1;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    sget-object v2, Lcom/huawei/hem/f1;->l:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    :try_start_2
    sget-object v2, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v2, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_2
    sget-object v2, Lcom/huawei/hem/f1;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_3
    const-string v2, "at"

    const-string v3, "cslct"

    invoke-static {p0, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    monitor-exit v0

    return v1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized p(Ljava/lang/String;J)Z
    .locals 4

    const-class v0, Lcom/huawei/hem/f1;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/huawei/hem/f1;->z(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-lez p1, :cond_2

    const-wide/16 p1, 0x0

    sget-object v2, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p1, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v2, p1

    const-wide/16 p0, 0x7530

    cmp-long p0, v2, p0

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :catchall_0
    :cond_2
    monitor-exit v0

    return v1
.end method

.method public static q(Ljava/lang/String;Z)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p0, p0, v0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    rem-int/lit8 p0, p0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    return p1
.end method

.method public static r(Ljava/net/InetAddress;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hem/q0;->d([B)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    invoke-static {p1, v0, p0}, Lcom/huawei/hem/f6;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "open_common"

    const-string v2, "a2"

    invoke-static {p0, v1, v2, v0}, Lcom/huawei/hem/o1;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/huawei/hem/f1;->d:Z

    return-void
.end method

.method public static u(Lcom/loc/ap$c;)V
    .locals 10

    sget-object v0, Lcom/huawei/hem/f1;->x:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    sget-object v3, Lcom/huawei/hem/f1;->x:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    sget-object v3, Lcom/huawei/hem/f1;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/loc/ap$a;

    iget-object v4, p0, Lcom/loc/ap$c;->c:Ljava/lang/String;

    iget-object v5, v3, Lcom/loc/ap$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/loc/ap$c;->d:Ljava/lang/String;

    iget-object v6, v3, Lcom/loc/ap$a;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/loc/ap$c;->m:I

    iget v6, v3, Lcom/loc/ap$a;->f:I

    if-ne v4, v6, :cond_1

    iget v2, v3, Lcom/loc/ap$a;->f:I

    if-ne v2, v5, :cond_0

    iget-object v2, v3, Lcom/loc/ap$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v6, v2

    iget-wide v8, v3, Lcom/loc/ap$a;->i:J

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/loc/ap$c;->f:J

    add-long/2addr v6, v8

    iget-object v2, v3, Lcom/loc/ap$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    add-int/2addr v2, v5

    int-to-long v8, v2

    div-long/2addr v6, v8

    iput-wide v6, v3, Lcom/loc/ap$a;->i:J

    :cond_0
    iget-object v2, v3, Lcom/loc/ap$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move v2, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    sget-object v1, Lcom/huawei/hem/f1;->x:Ljava/util/ArrayList;

    new-instance v2, Lcom/loc/ap$a;

    invoke-direct {v2, p0}, Lcom/loc/ap$a;-><init>(Lcom/loc/ap$c;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/loc/ap;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized v(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/huawei/hem/f1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/huawei/hem/f1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized w(Ljava/lang/String;J)V
    .locals 3

    const-class v0, Lcom/huawei/hem/f1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hem/f1;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/huawei/hem/f1;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/huawei/hem/f1;->j:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/huawei/hem/f1;->j:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    sget-object v1, Lcom/huawei/hem/f1;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    const-string v2, "open_common"

    invoke-static {v1, v2}, Lcom/huawei/hem/o1;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v1, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    const-string p1, "csp"

    const-string p2, "plv"

    invoke-static {p0, p1, p2}, Lcom/loc/w;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/huawei/hem/o1;->c(Landroid/content/SharedPreferences$Editor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    monitor-exit v0

    return-void

    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    const-string p1, "at"

    const-string p2, "ucut"

    invoke-static {p0, p1, p2}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized x(Ljava/lang/String;Z)V
    .locals 2

    const-class v0, Lcom/huawei/hem/f1;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1, v1, v1}, Lcom/huawei/hem/f1;->j(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static y()Z
    .locals 3

    sget-object v0, Lcom/huawei/hem/f1;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/amap/apis/utils/core/DeviceInfo;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    sget-object v2, Lcom/huawei/hem/f1;->f:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public static declared-synchronized z(Ljava/lang/String;)J
    .locals 3

    const-class v0, Lcom/huawei/hem/f1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hem/f1;->j:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/huawei/hem/f1;->j:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    sget-object v1, Lcom/huawei/hem/f1;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/huawei/hem/f1;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    :try_start_1
    const-string v1, "at"

    const-string v2, "glcut"

    invoke-static {p0, v1, v2}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    const-wide/16 v1, 0x0

    monitor-exit v0

    return-wide v1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
