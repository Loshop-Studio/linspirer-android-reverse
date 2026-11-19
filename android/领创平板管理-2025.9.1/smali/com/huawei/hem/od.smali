.class public Lcom/huawei/hem/od;
.super Lcom/huawei/hem/sd;
.source "Harmony3Imp.java"


# static fields
.field public static t:Lcom/huawei/hem/od;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hem/sd;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hem/sd;->e1(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-super {p0, p1}, Lcom/huawei/hem/qd;->A(Ljava/util/ArrayList;)V

    return-void
.end method

.method public A0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hem/sd;->e1(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/huawei/hem/qd;->A0(Ljava/util/List;)V

    return-void
.end method

.method public E0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hem/sd;->e1(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/huawei/hem/qd;->E0(Ljava/util/List;)V

    return-void
.end method

.method public a1(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "wifi_proxy"

    .line 1
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "wifi_advanced"

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/huawei/hem/qd;->Z0(Ljava/util/List;)V

    return-void
.end method

.method public b0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->isWIFIeditDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Harmony3Imp read wifi advance status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Harmony3Imp  -- isWIFIeditDisabled exception "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :try_start_1
    const-string v0, "Harmony3Imp  -- showWifiAdvanced"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/huawei/hem/od;->a1(ZLjava/util/List;)V

    .line 6
    sget-object p1, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v0, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setWIFIeditDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    const-string v0, "Harmony3Imp  -- showWifiAdvanced exception "

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hem/sd;->e1(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-super {p0, p1}, Lcom/huawei/hem/sd;->d(Ljava/util/ArrayList;)V

    return-void
.end method

.method public r(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v1, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->isWIFIeditDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Harmony3Imp read wifi advance status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Harmony3Imp  -- isWIFIeditDisabled exception "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :cond_0
    :try_start_1
    const-string v0, "Harmony3Imp  -- hideWifiAdvanced"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/huawei/hem/od;->a1(ZLjava/util/List;)V

    .line 6
    sget-object p1, Lcom/huawei/hem/qd;->i:Lcom/huawei/android/app/admin/DeviceSettingsManager;

    sget-object v0, Lcom/huawei/hem/qd;->c:Landroid/content/ComponentName;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/huawei/android/app/admin/DeviceSettingsManager;->setWIFIeditDisabled(Landroid/content/ComponentName;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    const-string v0, "Harmony3Imp  -- hideWifiAdvanced exception "

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public r0(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hem/sd;->e1(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-super {p0, p1}, Lcom/huawei/hem/rd;->r0(Ljava/util/ArrayList;)V

    return-void
.end method
