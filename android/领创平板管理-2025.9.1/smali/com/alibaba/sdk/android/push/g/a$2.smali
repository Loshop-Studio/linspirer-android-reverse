.class public Lcom/alibaba/sdk/android/push/g/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/push/g/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/g/a;->a(Lcom/alibaba/sdk/android/push/CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/push/g/c<",
        "Lcom/alibaba/sdk/android/push/g/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/alibaba/sdk/android/push/CommonCallback;

.field public final synthetic b:Lcom/alibaba/sdk/android/push/g/a;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/push/g/a;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$2;->b:Lcom/alibaba/sdk/android/push/g/a;

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/g/a$2;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/push/g/d;Lcom/alibaba/sdk/android/push/g/e;)V
    .locals 2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/g/e;->a()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCode()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/d;->a:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alibaba/sdk/android/push/g/a;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$2;->b:Lcom/alibaba/sdk/android/push/g/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/sdk/android/push/g/a;->d:Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$2;->b:Lcom/alibaba/sdk/android/push/g/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/sdk/android/push/g/a;->b:Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$2;->b:Lcom/alibaba/sdk/android/push/g/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/push/g/a;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/g/a$a;->b()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$2;->b:Lcom/alibaba/sdk/android/push/g/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/push/g/a;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$2;->a:Lcom/alibaba/sdk/android/push/CommonCallback;

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/push/g/b;->a(Lcom/alibaba/sdk/android/push/CommonCallback;Lcom/alibaba/sdk/android/push/g/e;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/alibaba/sdk/android/push/g/e;)V
    .locals 0

    check-cast p1, Lcom/alibaba/sdk/android/push/g/d;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/push/g/a$2;->a(Lcom/alibaba/sdk/android/push/g/d;Lcom/alibaba/sdk/android/push/g/e;)V

    return-void
.end method
