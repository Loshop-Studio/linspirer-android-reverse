.class public Lcom/huawei/hem/s4;
.super Ljava/lang/Object;
.source "EyeProtectedHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/s4$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/huawei/hem/y5;

.field public c:I

.field public d:Landroid/content/Context;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 3
    iput-object v0, p0, Lcom/huawei/hem/s4;->b:Lcom/huawei/hem/y5;

    .line 4
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->A()I

    move-result v0

    iput v0, p0, Lcom/huawei/hem/s4;->a:I

    .line 5
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 6
    iput-object v0, p0, Lcom/huawei/hem/s4;->d:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/s4$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 9
    iput-object p1, p0, Lcom/huawei/hem/s4;->b:Lcom/huawei/hem/y5;

    .line 10
    invoke-virtual {p1}, Lcom/huawei/hem/y5;->A()I

    move-result p1

    iput p1, p0, Lcom/huawei/hem/s4;->a:I

    .line 11
    sget-object p1, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 12
    iput-object p1, p0, Lcom/huawei/hem/s4;->d:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a()Lcom/huawei/hem/s4;
    .locals 2

    const-class v0, Lcom/huawei/hem/s4;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/huawei/hem/s4$b;->a:Lcom/huawei/hem/s4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
