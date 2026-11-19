.class public Lcom/huawei/hem/oc;
.super Lcom/huawei/hem/jc;
.source "DongfangImpl.java"


# static fields
.field public static b:Lcom/huawei/hem/oc;

.field public static c:Landroid/content/Context;

.field public static d:Lcom/huawei/hem/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/oc;

    invoke-direct {v0}, Lcom/huawei/hem/oc;-><init>()V

    sput-object v0, Lcom/huawei/hem/oc;->b:Lcom/huawei/hem/oc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jc;-><init>()V

    return-void
.end method

.method public static V0()V
    .locals 4

    const-string v0, "com.jlink.mdmapi"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->m(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.jlink.mdmapi.ApiService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3
    sget-object v0, Lcom/huawei/hem/oc;->c:Landroid/content/Context;

    new-instance v2, Lcom/huawei/hem/oc$a;

    invoke-direct {v2}, Lcom/huawei/hem/oc$a;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DongfangImpl -- actionSilentInstall "

    .line 1
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "DongfangImpl -- actionSilentInstall"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/huawei/hem/w;->silentInstall(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

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

    const-string v0, "DongfangImpl -- getAppWhiteList "

    .line 1
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v1, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const-string v1, "DongfangImpl -- getAppWhiteList"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    :try_start_0
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    invoke-interface {v1}, Lcom/huawei/hem/w;->V()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    .line 7
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public N(J)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "DongfangImpl -- setSystemTime"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    invoke-interface {v0, p1, p2}, Lcom/huawei/hem/w;->j1(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "DongfangImpl -- setSystemTime  "

    .line 4
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "DongfangImpl -- setSystemTime "

    .line 5
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return v1
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DongfangImpl -- actionSilentUnInstall "

    .line 1
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "DongfangImpl -- actionSilentUnInstall"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    invoke-interface {v1, p1}, Lcom/huawei/hem/w;->silentUninstall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

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

    .line 1
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, " -w -t filter -N  user_ip"

    const-string v2, " -w -F user"

    const-string v3, " -w -F user_ip"

    const-string v4, " -w -D OUTPUT -j user_ip"

    const-string v5, " -w -I OUTPUT  4  -j user_ip"

    .line 2
    invoke-static {v0, v2, v3, v4, v5}, Lcom/huawei/hem/f6;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, " -w -A user -j REJECT"

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    .line 6
    invoke-static {v3}, Lcom/huawei/hem/de;->p(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "#"

    if-nez v5, :cond_5

    invoke-static {v3}, Lcom/huawei/hem/de;->q(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v3}, Lcom/huawei/hem/de;->r(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, ".0/24"

    .line 7
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, ".0.0/16"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v5, "."

    .line 8
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "\\."

    .line 9
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v7, v1

    .line 10
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_4

    add-int/lit8 v8, v7, 0x1

    .line 11
    array-length v9, v5

    if-ne v8, v9, :cond_2

    .line 12
    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v5, v7

    invoke-static {v7}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 13
    :cond_2
    aget-object v9, v5, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xa

    if-ge v9, v10, :cond_3

    .line 14
    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v5, v7

    invoke-static {v7}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v5, v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 15
    :cond_3
    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v5, v7

    invoke-static {v7}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v5, v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    move v7, v8

    goto :goto_1

    :cond_4
    const-string v5, " -w -I user -p udp --dport 53 -m string --hex-string \'|#|\' --algo bm -j ACCEPT"

    .line 16
    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=====>>>"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    :goto_3
    const-string v4, " -w -A user_ip -d # -j ACCEPT"

    .line 18
    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 19
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 20
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    const-string p1, "DongfangImpl ==> "

    .line 21
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->b(Ljava/lang/String;)V

    .line 22
    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lcom/huawei/hem/oc$b;

    invoke-direct {v2, p0, v0}, Lcom/huawei/hem/oc$b;-><init>(Lcom/huawei/hem/oc;Ljava/util/List;)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return v1
.end method

.method public c(Z)V
    .locals 1

    .line 1
    sget-object p1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "DongfangImpl -- enableSdCard"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object p1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/huawei/hem/w;->a2(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "DongfangImpl -- enableSdCard  "

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DongfangImpl -- enableSdCard "

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 3

    const-string v0, "DongfangImpl -- disableBack "

    .line 1
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "DongfangImpl -- disableBack"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/huawei/hem/w;->u2(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DongfangImpl -- disableBluetooth"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/w;->setBluetoothEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "DongfangImpl -- disableBluetooth  "

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DongfangImpl -- disableBluetooth "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableCamera()V
    .locals 3

    const-string v0, "DongfangImpl -- disableCamera "

    .line 1
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "DongfangImpl -- disableCamera"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/huawei/hem/w;->M(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableHome()V
    .locals 3

    const-string v0, "DongfangImpl -- disableHome "

    .line 1
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "DongfangImpl -- disableHome"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/huawei/hem/w;->s3(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableNavigation()V
    .locals 1

    const-string v0, "DongfangImpl -- disableNavigation"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/oc;->disableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/oc;->disableHome()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/oc;->disableRecent()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/oc;->disableShortPressPower()V

    return-void
.end method

.method public disableOTG()V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DongfangImpl -- disableOTG"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/w;->a2(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "DongfangImpl -- disableOTG  "

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DongfangImpl -- disableOTG "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableRecent()V
    .locals 3

    const-string v0, "DongfangImpl -- disableRecent "

    .line 1
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "DongfangImpl -- disableRecent"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/huawei/hem/w;->k3(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableShortPressPower()V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DongfangImpl -- disableShortPressPower"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/w;->setPowerKeyEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "DongfangImpl -- disableShortPressPower  "

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DongfangImpl -- disableShortPressPower "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 3

    const-string v0, "DongfangImpl -- disableUsb "

    .line 1
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "DongfangImpl -- disableUsb"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/huawei/hem/w;->f1(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableVolume()V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DongfangImpl -- disableVolume"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/w;->w0(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "DongfangImpl -- disableVolume  "

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DongfangImpl -- disableVolume "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DongfangImpl -- actionDisableApp"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/huawei/hem/w;->r0(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "DongfangImpl -- actionDisableApp "

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DongfangImpl -- actionDisableApp , RemoteException = "

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "DongfangImpl -- actionDisableApp , IllegalArgumentException = "

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public enableBack()V
    .locals 3

    const-string v0, "DongfangImpl -- enableBack "

    .line 1
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "DongfangImpl -- enableBack"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/huawei/hem/w;->u2(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DongfangImpl -- enableBluetooth"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/huawei/hem/w;->setBluetoothEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "DongfangImpl -- enableBluetooth  "

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DongfangImpl -- enableBluetooth "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableCamera()V
    .locals 3

    const-string v0, "DongfangImpl -- enableCamera "

    .line 1
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "DongfangImpl -- enableCamera"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/huawei/hem/w;->M(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableHome()V
    .locals 3

    const-string v0, "DongfangImpl -- enableHome "

    .line 1
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "DongfangImpl -- enableHome"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/huawei/hem/w;->s3(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableNavigation()V
    .locals 1

    const-string v0, "DongfangImpl -- enableNavigation"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/oc;->enableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/oc;->enableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/oc;->enableHome()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/oc;->enableShortPressPower()V

    return-void
.end method

.method public enableOTG()V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DongfangImpl -- enableOTG"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/huawei/hem/w;->a2(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "DongfangImpl -- enableOTG  "

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DongfangImpl -- enableOTG "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableRecent()V
    .locals 3

    const-string v0, "DongfangImpl -- enableRecent "

    .line 1
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "DongfangImpl -- enableRecent"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/huawei/hem/w;->k3(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableShortPressPower()V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DongfangImpl -- enableShortPressPower"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/huawei/hem/w;->setPowerKeyEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "DongfangImpl -- enableShortPressPower  "

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DongfangImpl -- enableShortPressPower "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableUsb()V
    .locals 3

    const-string v0, "DongfangImpl -- enableUsb "

    .line 1
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "DongfangImpl -- enableUsb"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/huawei/hem/w;->f1(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableVolume()V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DongfangImpl -- enableVolume"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/huawei/hem/w;->w0(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "DongfangImpl -- enableVolume  "

    .line 4
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DongfangImpl -- enableVolume "

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public s(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "DongfangImpl -- setAppWhiteList "

    .line 1
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, "DongfangImpl -- setAppWhiteList"

    .line 2
    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    invoke-interface {v1, p1}, Lcom/huawei/hem/w;->F1(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return v2
.end method

.method public t(Z)V
    .locals 1

    const-string p1, "DongfangImpl -- actionResetFactory \uff0csendBroadcast "

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "action.domasterclear"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/oc;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public y0(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DongfangImpl -- actionEnableApp"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v0, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/huawei/hem/w;->r0(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "DongfangImpl -- actionEnableApp "

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DongfangImpl -- actionEnableApp , RemoteException = "

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "DongfangImpl -- actionEnableApp , IllegalArgumentException = "

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 1

    .line 1
    sget-object p1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "DongfangImpl -- disableSdCard"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object p1, Lcom/huawei/hem/oc;->d:Lcom/huawei/hem/w;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/huawei/hem/w;->a2(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "DongfangImpl -- disableSdCard  "

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DongfangImpl -- disableSdCard "

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->t(Landroid/os/RemoteException;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
