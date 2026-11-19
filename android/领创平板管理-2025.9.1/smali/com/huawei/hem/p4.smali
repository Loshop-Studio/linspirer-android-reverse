.class public Lcom/huawei/hem/p4;
.super Lcom/huawei/hem/r4;
.source "AppCheckUpdateHelper.java"


# static fields
.field public static c:Landroid/app/Activity;

.field public static d:Lcom/huawei/hem/p4;


# instance fields
.field public a:Lcom/huawei/hem/f3;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hem/fe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/r4;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/p4;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/db/model/ItemApp;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCheckUpdateHelper -- download app packageName = "

    .line 2
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/p4;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lcom/huawei/hem/ue;->b()Lcom/huawei/hem/ue;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lcom/huawei/hem/he;

    invoke-direct {v1, p2}, Lcom/huawei/hem/he;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    const-string v3, ".apk"

    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/huawei/hem/he;->z(Ljava/lang/String;Z)Lcom/huawei/hem/fe;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/huawei/hem/p4;->b:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/huawei/hem/fe;

    .line 9
    iget-object p2, p0, Lcom/huawei/hem/p4;->b:Ljava/util/Map;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-nez v1, :cond_2

    const-string p1, "AppCheckUpdateHelper -- download task empty can not  downloading"

    .line 10
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    new-instance p2, Lcom/huawei/hem/p4$a;

    invoke-direct {p2, p0, v0, p1}, Lcom/huawei/hem/p4$a;-><init>(Lcom/huawei/hem/p4;Ljava/lang/String;Lcom/android/launcher3/db/model/ItemApp;)V

    invoke-interface {v1, p2}, Lcom/huawei/hem/fe;->x(Lcom/huawei/hem/ne;)Lcom/huawei/hem/fe;

    .line 12
    invoke-interface {v1}, Lcom/huawei/hem/fe;->start()I

    return-void
.end method
