.class public Lcom/alibaba/sdk/android/push/d/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

.field public static b:Lcom/alibaba/sdk/android/push/d/a;


# instance fields
.field public c:J

.field public d:Landroid/content/Context;

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MPS:ReportManager"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/d/a;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/push/d/a;->b:Lcom/alibaba/sdk/android/push/d/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/push/d/a;->c:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/sdk/android/push/d/a;->e:Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/alibaba/sdk/android/push/d/a;->c:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/push/d/a;->c:J

    :cond_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/push/d/a;->d:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/push/d/a;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/push/d/a;->b:Lcom/alibaba/sdk/android/push/d/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/d/a;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/push/d/a;->b:Lcom/alibaba/sdk/android/push/d/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/sdk/android/push/d/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/push/d/a;->b:Lcom/alibaba/sdk/android/push/d/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/push/d/a;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/push/d/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/sdk/android/push/d/a;->b:Lcom/alibaba/sdk/android/push/d/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/sdk/android/push/d/a;->b:Lcom/alibaba/sdk/android/push/d/a;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iget-boolean p1, p0, Lcom/alibaba/sdk/android/push/d/a;->e:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/alibaba/sdk/android/push/d/a;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "report switch turned off"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iget-boolean p1, p0, Lcom/alibaba/sdk/android/push/d/a;->e:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/alibaba/sdk/android/push/d/a;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "report switch turned off"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-boolean p1, p0, Lcom/alibaba/sdk/android/push/d/a;->e:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/alibaba/sdk/android/push/d/a;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "report switch turned off"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-boolean p1, p0, Lcom/alibaba/sdk/android/push/d/a;->e:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/alibaba/sdk/android/push/d/a;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "report switch turned off"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/push/d/a;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/push/d/a;->e:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
