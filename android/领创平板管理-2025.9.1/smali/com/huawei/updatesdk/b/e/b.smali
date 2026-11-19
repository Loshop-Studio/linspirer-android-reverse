.class public Lcom/huawei/updatesdk/b/e/b;
.super Lcom/huawei/updatesdk/b/e/a;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/updatesdk/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.huawei.apptouch.updatesdk"

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "upsdk_apptouch_store_url"

    invoke-static {p1, v0}, Lcom/huawei/updatesdk/b/h/c;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/huawei/updatesdk/service/otaupdate/f;->f()Lcom/huawei/updatesdk/service/otaupdate/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/updatesdk/service/otaupdate/f;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 0

    return-void
.end method
