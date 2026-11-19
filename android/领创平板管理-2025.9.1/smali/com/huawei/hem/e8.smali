.class public Lcom/huawei/hem/e8;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hem/e8;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/huawei/hem/d8;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/huawei/hem/e8;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lcom/huawei/hem/g8;

    invoke-direct {v0, p1, p3}, Lcom/huawei/hem/g8;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/huawei/hem/e8;->a:Lcom/huawei/hem/d8;

    .line 2
    iget-boolean v0, v0, Lcom/huawei/hem/d8;->d:Z

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/huawei/hem/f8;

    invoke-direct {v0, p1, p3}, Lcom/huawei/hem/f8;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/huawei/hem/e8;->a:Lcom/huawei/hem/d8;

    .line 4
    :cond_0
    sget-object p3, Lcom/huawei/hem/e8;->b:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->uniqueCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)Lcom/huawei/hem/e8;
    .locals 1

    sget-object v0, Lcom/huawei/hem/e8;->b:Ljava/util/Map;

    invoke-static {p0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->uniqueCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/huawei/hem/e8;

    return-object p0
.end method

.method public static d(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/huawei/hem/e8;->a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)Lcom/huawei/hem/e8;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1
    iget-object p0, p0, Lcom/huawei/hem/e8;->a:Lcom/huawei/hem/d8;

    .line 2
    iget-object p0, p0, Lcom/huawei/hem/d8;->a:Lcom/huawei/hem/b9;

    if-eqz p0, :cond_0

    const-string p1, "LocalManagerProxy"

    const-string v0, "appGrs is not null and clear services."

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/huawei/hem/b9;->b:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Lcom/huawei/hem/a8;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/huawei/hem/e8;->a:Lcom/huawei/hem/d8;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hem/d8;->d(Landroid/content/Context;Lcom/huawei/hem/a8;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p4, p1, p2

    const-string p2, "AbstractLocalManager"

    const-string p3, "addresses not found by routeby in local config{%s}"

    invoke-static {p2, p3, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public c(Landroid/content/Context;Lcom/huawei/hem/a8;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hem/a8;",
            "Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hem/e8;->a:Lcom/huawei/hem/d8;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hem/d8;->d(Landroid/content/Context;Lcom/huawei/hem/a8;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
