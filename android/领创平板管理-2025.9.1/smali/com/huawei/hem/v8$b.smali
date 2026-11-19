.class public Lcom/huawei/hem/v8$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/v8;->b(Lcom/huawei/hem/n8;Lcom/huawei/hem/i8;Ljava/lang/String;Lcom/huawei/hem/c8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/n8;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/huawei/hem/c8;

.field public final synthetic d:Lcom/huawei/hem/i8;

.field public final synthetic e:Lcom/huawei/hem/v8;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/v8;Lcom/huawei/hem/n8;Ljava/lang/String;Lcom/huawei/hem/c8;Lcom/huawei/hem/i8;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hem/v8$b;->e:Lcom/huawei/hem/v8;

    iput-object p2, p0, Lcom/huawei/hem/v8$b;->a:Lcom/huawei/hem/n8;

    iput-object p3, p0, Lcom/huawei/hem/v8$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hem/v8$b;->c:Lcom/huawei/hem/c8;

    iput-object p5, p0, Lcom/huawei/hem/v8$b;->d:Lcom/huawei/hem/i8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hem/v8$b;->e:Lcom/huawei/hem/v8;

    iget-object v1, p0, Lcom/huawei/hem/v8$b;->a:Lcom/huawei/hem/n8;

    iget-object v2, p0, Lcom/huawei/hem/v8$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hem/v8$b;->c:Lcom/huawei/hem/c8;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/hem/v8;->a(Lcom/huawei/hem/n8;Ljava/lang/String;Lcom/huawei/hem/c8;)Lcom/huawei/hem/r8;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/v8$b;->d:Lcom/huawei/hem/i8;

    if-eqz v1, :cond_1

    const-string v2, "RequestController"

    if-nez v0, :cond_0

    const-string v0, "GrsResponse is null"

    .line 1
    invoke-static {v2, v0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/huawei/hem/i8;->a()V

    goto :goto_0

    :cond_0
    const-string v3, "GrsResponse is not null"

    invoke-static {v2, v3}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Lcom/huawei/hem/i8;->a(Lcom/huawei/hem/r8;)V

    :cond_1
    :goto_0
    return-void
.end method
