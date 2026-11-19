.class public Lcom/huawei/hem/mc;
.super Lcom/huawei/hem/jc;
.source "ChuangQiImpl.java"


# static fields
.field public static c:Lcom/huawei/hem/mc;


# instance fields
.field public b:Lcom/incar/mdm/MdmPolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jc;-><init>()V

    .line 2
    new-instance v0, Lcom/incar/mdm/MdmPolicyManager;

    invoke-direct {v0, p1}, Lcom/incar/mdm/MdmPolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ChuangQiImpl---silentInstall"

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    invoke-virtual {v1, p1}, Lcom/incar/mdm/MdmPolicyManager;->silentInstall(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    const-string v0, "ChuangQiImplgetAppWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    invoke-virtual {v1}, Lcom/incar/mdm/MdmPolicyManager;->getAppInstallWhiteList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public N(J)Z
    .locals 2

    const-string v0, "ChuangQiImplsetSystemTime "

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    invoke-virtual {v1, p1, p2}, Lcom/incar/mdm/MdmPolicyManager;->setSysTime(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public Q(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ChuangQiImpl---silentUninstall"

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    invoke-virtual {v1, p1}, Lcom/incar/mdm/MdmPolicyManager;->silentUninstall(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public V(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ChuangQiImpl---setUrlWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "iptables -w -t filter -N  user_ip"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "iptables -w -F user"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "iptables -w -F user_ip"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "iptables -w -D OUTPUT -j user_ip"

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "iptables -w -I OUTPUT  4  -j user_ip"

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "iptables -w -A user -j REJECT"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v2, v1

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    .line 11
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

    .line 12
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ".0.0/16"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v5, "."

    .line 13
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "\\."

    .line 14
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v7, v1

    .line 15
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_3

    add-int/lit8 v8, v7, 0x1

    .line 16
    array-length v9, v5

    if-ne v8, v9, :cond_1

    .line 17
    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v5, v7

    invoke-static {v7}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 18
    :cond_1
    aget-object v9, v5, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 19
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 20
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_2

    const-string v10, "0"

    invoke-static {v10, v9}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 21
    :cond_2
    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v5, v7

    invoke-static {v7}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    move v7, v8

    goto :goto_1

    :cond_3
    const-string v5, "iptables -w -I user -p udp --dport 53 -m string --hex-string |#| --algo bm -j ACCEPT"

    .line 22
    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChuangQiImpl+originUrl+ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " set white url  "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :goto_3
    const-string v4, "iptables -w -A user_ip -d # -j ACCEPT"

    .line 24
    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 25
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 26
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    const-string p1, " ==> "

    .line 27
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 28
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    if-eqz p1, :cond_8

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    iget-object v2, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    invoke-virtual {v2, v0}, Lcom/incar/mdm/MdmPolicyManager;->setNetworkAccessRule(Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    const/4 p1, 0x1

    return p1

    :cond_8
    const-string p1, "ChuangQiImpl set white url failed by object is empty"

    .line 31
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    const-string v0, "ChuangQiImpl set white url error "

    .line 32
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->E(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_6
    return v1
.end method

.method public c(Z)V
    .locals 2

    :try_start_0
    const-string p1, "ChuangQiImplenableSdCard"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/incar/mdm/MdmPolicyManager;->setSdcardStorageEnable(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "ChuangQiImpl"

    const-string v1, "enableSdCard"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {v0, p1}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 3

    const-string v0, "ChuangQiImpl---disableBack"

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/incar/mdm/MdmPolicyManager;->setBackButtonEnable(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 4

    const-string v0, "ChuangQiImpldisableBluetooth "

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/incar/mdm/MdmPolicyManager;->setBluetoothEnable(Z)I

    move-result v1

    .line 2
    iget-object v2, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    invoke-virtual {v2}, Lcom/incar/mdm/MdmPolicyManager;->isBluetoothEnable()Z

    move-result v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableHome()V
    .locals 3

    const-string v0, "ChuangQiImpl---disableHome"

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/incar/mdm/MdmPolicyManager;->setHomeButtonEnable(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/mc;->disableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/mc;->disableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/mc;->disableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/mc;->disableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/mc;->disableShortPressPower()V

    return-void
.end method

.method public disableOTG()V
    .locals 3

    const-string v0, "ChuangQiImplsetdisUsbStorageEnable"

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/incar/mdm/MdmPolicyManager;->setUsbStorageEnable(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableRecent()V
    .locals 3

    const-string v0, "ChuangQiImpl---disableRecent"

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/incar/mdm/MdmPolicyManager;->setRecentButtonEnable(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableShortPressPower()V
    .locals 3

    const-string v0, "ChuangQiImpl---setdisablePowerKeyEnable"

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/incar/mdm/MdmPolicyManager;->setPowerKeyEnable(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 4

    const-string v0, "ChuangQiImpldisAdbEnable disMtpEnable"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/incar/mdm/MdmPolicyManager;->setAdbEnable(Z)I

    move-result v1

    .line 2
    iget-object v3, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    invoke-virtual {v3, v2}, Lcom/incar/mdm/MdmPolicyManager;->setMtpEnable(Z)I

    move-result v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableVolume()V
    .locals 2

    const-string v0, "ChuangQiImpl---disableVolume"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/incar/mdm/MdmPolicyManager;->setVolumeDownKeyEnable(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ChuangQiImpl---disableVolume error "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ChuangQiImpl---setAppFreeze"

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    invoke-virtual {v1, p1}, Lcom/incar/mdm/MdmPolicyManager;->setAppFreeze(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBack()V
    .locals 3

    const-string v0, "ChuangQiImpl---enableBack"

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/incar/mdm/MdmPolicyManager;->setBackButtonEnable(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 4

    const-string v0, "ChuangQiImpldisAdbEnable disMtpEnable"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/incar/mdm/MdmPolicyManager;->setBluetoothEnable(Z)I

    move-result v1

    .line 2
    iget-object v2, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    invoke-virtual {v2}, Lcom/incar/mdm/MdmPolicyManager;->isBluetoothEnable()Z

    move-result v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableHome()V
    .locals 3

    const-string v0, "ChuangQiImpl---setHomeButtonEnable"

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/incar/mdm/MdmPolicyManager;->setHomeButtonEnable(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/mc;->enableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/mc;->enableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/mc;->enableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/mc;->enableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/mc;->enableShortPressPower()V

    return-void
.end method

.method public enableOTG()V
    .locals 2

    :try_start_0
    const-string v0, "ChuangQiImplsetUsbStorageEnable "

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/incar/mdm/MdmPolicyManager;->setUsbStorageEnable(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ChuangQiImplsetUsbStorageEnable"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableRecent()V
    .locals 3

    const-string v0, "ChuangQiImpl---setRecentButtonEnable"

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/incar/mdm/MdmPolicyManager;->setRecentButtonEnable(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableShortPressPower()V
    .locals 3

    const-string v0, "ChuangQiImpl---setPowerKeyEnable"

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/incar/mdm/MdmPolicyManager;->setPowerKeyEnable(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableUsb()V
    .locals 4

    const-string v0, "ChuangQiImplsetAdbEnable setMtpEnable"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/incar/mdm/MdmPolicyManager;->setAdbEnable(Z)I

    move-result v1

    .line 2
    iget-object v3, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    invoke-virtual {v3, v2}, Lcom/incar/mdm/MdmPolicyManager;->setMtpEnable(Z)I

    move-result v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableVolume()V
    .locals 2

    const-string v0, "ChuangQiImpl---enableVolume"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/incar/mdm/MdmPolicyManager;->setVolumeDownKeyEnable(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ChuangQiImpl---enableVolume error "

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public s(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ChuangQiImplsetAppWhiteList"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    invoke-virtual {v1, p1}, Lcom/incar/mdm/MdmPolicyManager;->setAppInstallWhiteList(Ljava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public t(Z)V
    .locals 1

    const-string p1, "ChuangQiImpl---actionResetFactory"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    invoke-virtual {p1}, Lcom/incar/mdm/MdmPolicyManager;->setFactoryRest()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "ChuangQiImpl"

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {v0, p1}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public y0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ChuangQiImpl---setAppUnFreeze"

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    invoke-virtual {v1, p1}, Lcom/incar/mdm/MdmPolicyManager;->setAppUnFreeze(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 2

    :try_start_0
    const-string p1, "ChuangQiImpldisableSdCard"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/mc;->b:Lcom/incar/mdm/MdmPolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/incar/mdm/MdmPolicyManager;->setSdcardStorageEnable(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "ChuangQiImpl"

    const-string v1, "disableSdCard"

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {v0, p1}, Lcom/huawei/hem/bc;->u(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
