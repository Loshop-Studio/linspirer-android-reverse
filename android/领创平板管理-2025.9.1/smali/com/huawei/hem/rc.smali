.class public Lcom/huawei/hem/rc;
.super Lcom/huawei/hem/jc;
.source "FiveElementsImpl.java"


# static fields
.field public static b:Lcom/huawei/hem/rc;

.field public static c:Landroid/content/Context;

.field public static d:Lcom/huawei/hem/k6;

.field public static e:Landroid/content/ComponentName;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/rc;

    invoke-direct {v0}, Lcom/huawei/hem/rc;-><init>()V

    sput-object v0, Lcom/huawei/hem/rc;->b:Lcom/huawei/hem/rc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jc;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action.executor"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.fnf.executor"

    const-string v3, "com.fnf.executor.service.FnfService"

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "task"

    const-string v3, "task.install"

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "parameter"

    .line 6
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "FiveElementsImpl actionSilentInstall "

    .line 9
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/k6;->b:Lcom/huawei/hem/j6;

    invoke-interface {v0}, Lcom/huawei/hem/j6;->o1()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "FiveElementsImpl getAppWhiteList "

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->i(Landroid/os/RemoteException;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public N(J)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v0, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    .line 5
    iget-object p2, p2, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz p2, :cond_0

    .line 6
    new-instance p2, Landroid/content/Intent;

    const-string v1, "action.executor"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.fnf.executor"

    const-string v2, "com.fnf.executor.service.FnfService"

    .line 7
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "task"

    const-string v2, "task.date"

    .line 8
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "parameter"

    .line 9
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {v0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string p2, "FiveElementsImpl setSystemTime "

    .line 12
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 13
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p2, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    .line 2
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->e:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/huawei/hem/k6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "FiveElementsImpl actionActiveDeviceAdmin "

    .line 3
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4
    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/hem/rc;->disableFireWall()V

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action.executor"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.fnf.executor"

    const-string v3, "com.fnf.executor.service.FnfService"

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "task"

    const-string v3, "task.uninstall"

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "parameter"

    .line 6
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "FiveElementsImpl actionSilentUnInstall "

    .line 9
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public V(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    const-string v2, "iptables   -w -t filter -N  user_ip"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/k6;->u(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    const-string v2, "iptables -w -F user"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/k6;->u(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    const-string v2, "iptables -w -F user_ip"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/k6;->u(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    const-string v2, "iptables -w -D OUTPUT   -j user_ip"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/k6;->u(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    const-string v2, "iptables -w -I OUTPUT  4  -j user_ip"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/k6;->u(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    const-string v2, "iptables   -w -A user  -j REJECT"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/k6;->u(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    move v1, v0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-static {v2}, Lcom/huawei/hem/de;->p(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "#"

    const-string v5, ""

    if-nez v3, :cond_6

    invoke-static {v2}, Lcom/huawei/hem/de;->q(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Lcom/huawei/hem/de;->r(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ".0/24"

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ".0.0/16"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v3, "."

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "\\."

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v6, v0

    .line 14
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_4

    add-int/lit8 v7, v6, 0x1

    .line 15
    array-length v8, v3

    if-ne v7, v8, :cond_2

    .line 16
    invoke-static {v5}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v6

    invoke-static {v6}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 17
    :cond_2
    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    if-ge v8, v9, :cond_3

    .line 18
    invoke-static {v5}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v6

    invoke-static {v6}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 19
    :cond_3
    invoke-static {v5}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v6

    invoke-static {v6}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    move v6, v7

    goto :goto_1

    :cond_4
    const-string v3, "iptables -w -I user -p udp --dport 53 -m string --hex-string \"|#|\" --algo bm -j ACCEPT"

    .line 20
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v5

    goto :goto_4

    :cond_6
    :goto_3
    const-string v3, "iptables -w -A user_ip -d # -j ACCEPT"

    .line 21
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v2

    .line 22
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==> "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 24
    sget-object v2, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v4, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    new-instance v5, Lcom/huawei/hem/rc$a;

    invoke-direct {v5, p0}, Lcom/huawei/hem/rc$a;-><init>(Lcom/huawei/hem/rc;)V

    invoke-virtual {v2, v4, v3, v5}, Lcom/huawei/hem/k6;->v(Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hem/m6;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_5
    return v0
.end method

.method public b0(Ljava/util/List;)V
    .locals 1
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
    sget-object p1, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v0, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/huawei/hem/k6;->q(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "FiveElementsImpl showWifiAdvanced "

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v0, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/huawei/hem/k6;->o(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "FiveElementsImpl enableSdCard "

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->r(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl disableBack "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl disableBluetooth "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableCamera()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl disableCamera "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableFireWall()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    const-string v2, "iptables -w -D OUTPUT -j REJECT"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/k6;->u(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl disableFireWall "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableGPS()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->d(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl disableGPS "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableHome()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->s(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl disableHome  "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableLongPressPower()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->e(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl disableLongPressPower "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/rc;->disableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/rc;->disableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/rc;->disableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/rc;->disableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/rc;->disableShortPressPower()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/rc;->disableLongPressPower()V

    return-void
.end method

.method public disableRecent()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->t(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl disableRecent "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableShortPressPower()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->f(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl disableShortPressPower "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.fnf.action.usbConnState"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "disable"

    .line 4
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl disableUsb "

    .line 7
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableVolume()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->h(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl disableVolume "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action.executor"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.fnf.executor"

    const-string v3, "com.fnf.executor.service.FnfService"

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "task"

    const-string v3, "task.stopuse"

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "parameter"

    .line 6
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "FiveElementsImpl actionDisableApp "

    .line 9
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBack()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->w(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl enableBack"

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->j(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl enableBluetooth "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableCamera()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->k(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl enableCamera "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableFireWall()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    const-string v2, "iptables -w -A OUTPUT -j REJECT"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/k6;->u(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl enableFireWall "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableGPS()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->l(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl enableGPS "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableHome()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->x(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl enableHome "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableLongPressPower()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->m(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl enableLongPressPower "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/rc;->enableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/rc;->enableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/rc;->enableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/rc;->enableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/rc;->enableShortPressPower()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/rc;->enableLongPressPower()V

    return-void
.end method

.method public enableRecent()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->y(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl enableRecent "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableShortPressPower()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->n(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl enableShortPressPower "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableUsb()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.fnf.action.usbConnState"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "disable"

    .line 4
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl enableUsb "

    .line 7
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableVolume()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hem/k6;->p(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl enableVolume "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public r(Ljava/util/List;)V
    .locals 1
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
    sget-object p1, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v0, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/huawei/hem/k6;->i(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "FiveElementsImpl hideWifiAdvanced "

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public s(Ljava/util/List;)Z
    .locals 4
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
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    check-cast p1, Ljava/util/ArrayList;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action.executor"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.fnf.executor"

    const-string v3, "com.fnf.executor.service.FnfService"

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "task"

    const-string v3, "task.list.installfilter"

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "p_list"

    .line 6
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "FiveElementsImpl setAppWhiteList "

    .line 9
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public t(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "WipeSoldier -- wipeDataIncludeSDCard.........."

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WipeSoldier -- wipeDataIncludeSDCard..........e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    const-string p1, "WipeSoldier -- wipeDataExcludeSDCard.........."

    .line 7
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WipeSoldier -- wipeDataExcludeSDCard..........e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public t0()Ljava/util/List;
    .locals 4
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
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    const-string v2, "iptables -w -S user_dns"

    new-instance v3, Lcom/huawei/hem/rc$b;

    invoke-direct {v3, p0}, Lcom/huawei/hem/rc$b;-><init>(Lcom/huawei/hem/rc;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/hem/k6;->v(Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hem/m6;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FiveElementsImpl getUrlWhiteList "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 4
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public y0(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v1, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action.executor"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.fnf.executor"

    const-string v3, "com.fnf.executor.service.FnfService"

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "task"

    const-string v3, "task.startuse"

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "parameter"

    .line 6
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    const-string v0, "FiveElementsImpl actionEnableApp "

    .line 9
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 1

    .line 1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    sget-object v0, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/huawei/hem/k6;->g(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "FiveElementsImpl disableSdCard "

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->p(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
