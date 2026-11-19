.class public Lcom/alibaba/sdk/android/push/g/a$a$2;
.super Lcom/taobao/agoo/IRegister;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/g/a$a;->b(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Lcom/alibaba/sdk/android/push/g/e;

.field public final synthetic b:Lcom/alibaba/sdk/android/push/f/b;

.field public final synthetic c:Lcom/alibaba/sdk/android/push/g/a$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/push/g/a$a;[Lcom/alibaba/sdk/android/push/g/e;Lcom/alibaba/sdk/android/push/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->c:Lcom/alibaba/sdk/android/push/g/a$a;

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->a:[Lcom/alibaba/sdk/android/push/g/e;

    iput-object p3, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->b:Lcom/alibaba/sdk/android/push/f/b;

    invoke-direct {p0}, Lcom/taobao/agoo/IRegister;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getImportantLogger()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agoo errorcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";errorMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->a:[Lcom/alibaba/sdk/android/push/g/e;

    new-instance v1, Lcom/alibaba/sdk/android/push/g/e;

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/push/common/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p1

    const-string p2, "register"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/alibaba/sdk/android/push/g/e;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->b:Lcom/alibaba/sdk/android/push/f/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/f/b;->a()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getImportantLogger()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    const-string v0, "agoo init success."

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->c:Lcom/alibaba/sdk/android/push/g/a$a;

    const/4 v0, 0x2

    iput v0, p1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->a:[Lcom/alibaba/sdk/android/push/g/e;

    new-instance v0, Lcom/alibaba/sdk/android/push/g/e;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/d;->a:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/push/g/e;-><init>(Lcom/alibaba/sdk/android/error/ErrorCode;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a$2;->b:Lcom/alibaba/sdk/android/push/f/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/f/b;->a()V

    return-void
.end method
