.class public Lcom/huawei/hem/m7;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Lcom/huawei/hem/m7;


# instance fields
.field public a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hem/m7;

    invoke-direct {v0}, Lcom/huawei/hem/m7;-><init>()V

    sput-object v0, Lcom/huawei/hem/m7;->b:Lcom/huawei/hem/m7;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.huawei.appgallery.log.LogAdaptor"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hem/m7;->a:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hem/m7;->a:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hem/m7;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hem/l7;->a:Lcom/huawei/hem/l7;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/appgallery/log/LogAdaptor;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hem/m7;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hem/l7;->a:Lcom/huawei/hem/l7;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/appgallery/log/LogAdaptor;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hem/m7;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hem/l7;->a:Lcom/huawei/hem/l7;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/appgallery/log/LogAdaptor;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
