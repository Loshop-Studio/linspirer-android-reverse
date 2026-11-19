.class public Lcom/huawei/hem/hd;
.super Lcom/huawei/hem/jc;
.source "SupiImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/hd$a;
    }
.end annotation


# static fields
.field public static c:Landroid/content/Context;


# instance fields
.field public b:Lcom/huawei/hem/ui;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/gd;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jc;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-nez p1, :cond_3

    const-string p1, "com.supi.mdm.safectrlmn_service"

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/f6;->m(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/huawei/hem/hd;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 8
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 9
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 10
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 12
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const-string p1, "SupiImpl init aidl server by object empty"

    .line 13
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 15
    sget-object v0, Lcom/huawei/hem/hd;->c:Landroid/content/Context;

    new-instance v1, Lcom/huawei/hem/gd;

    invoke-direct {v1, p0}, Lcom/huawei/hem/gd;-><init>(Lcom/huawei/hem/hd;)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  silent install app"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    invoke-interface {v0, p1}, Lcom/huawei/hem/ui;->l1(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "SupiImpl  silent install app failed by object is empty"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SupiImpl  silent install app error "

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public M0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  get app white list"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    invoke-interface {v0}, Lcom/huawei/hem/ui;->i2()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "SupiImpl  get app white list failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl  get app white list error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 6
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public N(J)Z
    .locals 2

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v1, :cond_0

    const-string v1, "SupiImpl  set system time"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    invoke-interface {v1, p1, p2}, Lcom/huawei/hem/ui;->N1(J)V

    return v0

    :cond_0
    const-string p1, "SupiImpl  set system time failed by object is empty"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "SupiImpl  set system time error "

    .line 5
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return v0
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  silent uninstall app"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    invoke-interface {v0, p1}, Lcom/huawei/hem/ui;->v(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "SupiImpl  silent uninstall app failed by object is empty"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SupiImpl  silent uninstall app error "

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public V(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "iptables -w -t filter -N  user_ip"

    const-string v1, "iptables -w -F user"

    const-string v2, "iptables -w -F user_ip"

    const-string v3, "iptables -w -D OUTPUT -j user_ip"

    const-string v4, "iptables -w -I OUTPUT  4  -j user_ip"

    .line 1
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/hem/f6;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "iptables -w -A user -j REJECT"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    .line 5
    invoke-static {v3}, Lcom/huawei/hem/de;->p(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "#"

    if-nez v5, :cond_4

    invoke-static {v3}, Lcom/huawei/hem/de;->q(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v3}, Lcom/huawei/hem/de;->r(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ".0/24"

    .line 6
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ".0.0/16"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_3

    :cond_0
    const-string v5, "."

    .line 7
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "\\."

    .line 8
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v5, v1

    .line 9
    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_3

    add-int/lit8 v7, v5, 0x1

    .line 10
    array-length v8, v3

    if-ne v7, v8, :cond_1

    .line 11
    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 12
    :cond_1
    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .line 13
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2

    const-string v9, "0"

    invoke-static {v9, v8}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 15
    :cond_2
    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    move v5, v7

    goto :goto_1

    :cond_3
    const-string v3, "iptables -w -I user -p udp --dport 53 -m string --hex-string \"|#|\" --algo bm -j ACCEPT"

    .line 16
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    :goto_3
    const-string v4, "iptables -w -A user_ip -d # -j ACCEPT"

    .line 17
    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 18
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 19
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    const-string p1, " ==> "

    .line 20
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 21
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz p1, :cond_8

    const-string p1, "SupiImpl  set white url"

    .line 22
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24
    iget-object v2, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    invoke-interface {v2, v0}, Lcom/huawei/hem/ui;->t1(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    :cond_7
    const/4 p1, 0x1

    return p1

    :cond_8
    const-string p1, "SupiImpl  set white url failed by object is empty"

    .line 25
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    const-string v0, "SupiImpl  set white url error "

    .line 26
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_6
    return v1
.end method

.method public c(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz p1, :cond_0

    const-string p1, "SupiImpl  enable otg and sd"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/huawei/hem/ui;->q1(Z)V

    return-void

    :cond_0
    const-string p1, "SupiImpl  enable otg and sd failed by object is empty"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SupiImpl  enable otg and sd error "

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  disable back"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->D(Z)V

    return-void

    :cond_0
    const-string v0, "SupiImpl  disable back failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl  disable back error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  disable bluetooth"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->m0(Z)V

    return-void

    :cond_0
    const-string v0, "SupiImpl   disable bluetooth failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl   disable bluetooth error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableHome()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  disable home"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->B1(Z)V

    return-void

    :cond_0
    const-string v0, "SupiImpl  disable home failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl  disable home error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableNavigation()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  disable Navigation"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/high16 v1, 0x1600000

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->W2(I)V

    return-void

    :cond_0
    const-string v0, "SupiImpl  disable Navigation failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl  disable Navigation error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableRecent()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  disable recent"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->F(Z)V

    return-void

    :cond_0
    const-string v0, "SupiImpl  disable recent failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl  disable recent error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableShortPressPower()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  disable short power"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->h3(Z)V

    return-void

    :cond_0
    const-string v0, "SupiImpl   disable short power failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl   disable short power error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  disable usb"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->x1(Z)V

    return-void

    :cond_0
    const-string v0, "SupiImpl  disable usb failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl  disable usb error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableVolume()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  disable volume"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->v0(Z)V

    return-void

    :cond_0
    const-string v0, "SupiImpl   disable volume failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl   disable volume error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  disable app"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/huawei/hem/ui;->b3(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string p1, "SupiImpl  disable app failed by object is empty"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SupiImpl  disable app error "

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBack()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  enable back"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->D(Z)V

    return-void

    :cond_0
    const-string v0, "SupiImpl  enable back failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl  enable back error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  enable bluetooth"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->m0(Z)V

    return-void

    :cond_0
    const-string v0, "SupiImpl   enable bluetooth failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl   enable bluetooth error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableHome()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  enable home"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->B1(Z)V

    return-void

    :cond_0
    const-string v0, "SupiImpl  enable home failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl  enable home error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableNavigation()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  enable Navigation"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->W2(I)V

    return-void

    :cond_0
    const-string v0, "SupiImpl  enable Navigation failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl  enable Navigation error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableRecent()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  enable recent"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->F(Z)V

    return-void

    :cond_0
    const-string v0, "SupiImpl  enable recent failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl  enable recent error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableShortPressPower()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  enable short power"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->h3(Z)V

    return-void

    :cond_0
    const-string v0, "SupiImpl   enable short power failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl   enable short power error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableUsb()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  enable usb"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->x1(Z)V

    return-void

    :cond_0
    const-string v0, "SupiImpl  enable usb failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl  enable usb error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableVolume()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  enable volume"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/ui;->v0(Z)V

    return-void

    :cond_0
    const-string v0, "SupiImpl   enable volume failed by object is empty"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SupiImpl   enable volume error "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public s(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_1

    const-string v0, "SupiImpl  set app white list"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    invoke-interface {v0, p1}, Lcom/huawei/hem/ui;->W(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/huawei/hem/ui;->W(Ljava/util/List;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "SupiImpl  set app white list failed by object is empty"

    .line 6
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "SupiImpl  set app white list error "

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public t(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz p1, :cond_0

    const-string p1, "SupiImpl  reset factory"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    invoke-interface {p1}, Lcom/huawei/hem/ui;->B()V

    return-void

    :cond_0
    const-string p1, "SupiImpl  reset factory failed by object is empty"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SupiImpl  reset factory error "

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public y0(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz v0, :cond_0

    const-string v0, "SupiImpl  enable app"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/huawei/hem/ui;->b3(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string p1, "SupiImpl  enable app failed by object is empty"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SupiImpl  enable app error "

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    if-eqz p1, :cond_0

    const-string p1, "SupiImpl  disable otg and sd"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/hd;->b:Lcom/huawei/hem/ui;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/huawei/hem/ui;->q1(Z)V

    return-void

    :cond_0
    const-string p1, "SupiImpl  disable otg and sd failed by object is empty"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SupiImpl  disable otg and sd error "

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
