.class public Lcom/huawei/hem/bd$a;
.super Ljava/lang/Object;
.source "KaishuodaKImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/bd;->V(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/huawei/hem/bd;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/bd;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/bd$a;->b:Lcom/huawei/hem/bd;

    iput-object p2, p0, Lcom/huawei/hem/bd$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/bd$a;->b:Lcom/huawei/hem/bd;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    const-string v1, "iptables -w -t filter -N  user_ip"

    .line 3
    invoke-interface {v0, v1}, Lcom/unionnn/iface/IMDMUniIface;->runADBComm(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/bd$a;->b:Lcom/huawei/hem/bd;

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    const-string v1, "iptables -w -F user"

    .line 6
    invoke-interface {v0, v1}, Lcom/unionnn/iface/IMDMUniIface;->runADBComm(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/huawei/hem/bd$a;->b:Lcom/huawei/hem/bd;

    .line 8
    iget-object v0, v0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    const-string v1, "iptables -w -F user_ip"

    .line 9
    invoke-interface {v0, v1}, Lcom/unionnn/iface/IMDMUniIface;->runADBComm(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/huawei/hem/bd$a;->b:Lcom/huawei/hem/bd;

    .line 11
    iget-object v0, v0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    const-string v1, "iptables -w -D OUTPUT -j user_ip"

    .line 12
    invoke-interface {v0, v1}, Lcom/unionnn/iface/IMDMUniIface;->runADBComm(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/huawei/hem/bd$a;->b:Lcom/huawei/hem/bd;

    .line 14
    iget-object v0, v0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    const-string v1, "iptables -w -I OUTPUT  4  -j user_ip"

    .line 15
    invoke-interface {v0, v1}, Lcom/unionnn/iface/IMDMUniIface;->runADBComm(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/huawei/hem/bd$a;->b:Lcom/huawei/hem/bd;

    .line 17
    iget-object v0, v0, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    const-string v1, "iptables -w -A user -j REJECT"

    .line 18
    invoke-interface {v0, v1}, Lcom/unionnn/iface/IMDMUniIface;->runADBComm(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/huawei/hem/bd$a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 20
    iget-object v2, p0, Lcom/huawei/hem/bd$a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    .line 21
    invoke-static {v2}, Lcom/huawei/hem/de;->p(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "#"

    if-nez v4, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/huawei/hem/de;->q(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2}, Lcom/huawei/hem/de;->r(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ".0/24"

    .line 22
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ".0.0/16"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v4, "."

    .line 23
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "\\."

    .line 24
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v4, v0

    .line 25
    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_3

    add-int/lit8 v6, v4, 0x1

    .line 26
    array-length v7, v2

    if-ne v6, v7, :cond_1

    .line 27
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v2, v4

    invoke-static {v3}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 28
    :cond_1
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 29
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 30
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 31
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v2, v4

    invoke-static {v3}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move v4, v6

    goto :goto_1

    :cond_3
    const-string v2, "iptables -w -I user -p udp --dport 53 -m string --hex-string \"|#|\" --algo bm -j ACCEPT"

    .line 32
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    :goto_3
    const-string v3, "iptables -w -A user_ip -d # -j ACCEPT"

    .line 33
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 34
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kaishuoda:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 36
    iget-object v3, p0, Lcom/huawei/hem/bd$a;->b:Lcom/huawei/hem/bd;

    .line 37
    iget-object v3, v3, Lcom/huawei/hem/bd;->b:Lcom/unionnn/iface/IMDMUniIface;

    .line 38
    invoke-interface {v3, v2}, Lcom/unionnn/iface/IMDMUniIface;->runADBComm(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_0
    :cond_6
    return-void
.end method
