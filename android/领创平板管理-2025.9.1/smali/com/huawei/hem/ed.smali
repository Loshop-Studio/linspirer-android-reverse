.class public Lcom/huawei/hem/ed;
.super Lcom/huawei/hem/jc;
.source "SeewoImpl.java"


# static fields
.field public static b:Lcom/huawei/hem/ed;

.field public static c:Landroid/content/Context;

.field public static d:Lcom/huawei/hem/vh;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/ed;

    invoke-direct {v0}, Lcom/huawei/hem/ed;-><init>()V

    sput-object v0, Lcom/huawei/hem/ed;->b:Lcom/huawei/hem/ed;

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
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/ei;

    invoke-direct {v1, v0, p1}, Lcom/huawei/hem/ei;-><init>(Lcom/huawei/hem/vh;Ljava/lang/String;)V

    .line 3
    iget-object p1, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez p1, :cond_0

    .line 4
    iget-object p1, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/ei;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SeewoImpl,actionSilentInstall-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public G0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public I0(Ljava/util/List;)V
    .locals 5
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "iptables -F app"

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    sget-object v3, Lcom/huawei/hem/ed;->c:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/huawei/hem/bc;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iptables -A app -m owner --uid-owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -j ACCEPT"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    sget-object p1, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    invoke-virtual {p1, v1}, Lcom/huawei/hem/vh;->f(Ljava/util/List;)Z

    .line 9
    sget-object p1, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    invoke-virtual {p1, v0}, Lcom/huawei/hem/vh;->f(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "SeewoImpl,accessAppWhiteList-error:"

    .line 10
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_1
    return-void
.end method

.method public M0()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    sget-object v1, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    invoke-virtual {v1}, Lcom/huawei/hem/vh;->a()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeewoImplread app white list content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "SeewoImpl,getAppWhiteList-error:"

    .line 6
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-object v0
.end method

.method public N(J)Z
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/ji;

    invoke-direct {v1, v0, p1, p2}, Lcom/huawei/hem/ji;-><init>(Lcom/huawei/hem/vh;J)V

    .line 3
    iget-object p1, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez p1, :cond_0

    .line 4
    iget-object p1, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/ji;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "SeewoImpl,setSystemTime-error:"

    .line 6
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object p2, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v0, Lcom/huawei/hem/ii;

    invoke-direct {v0, p2, p1}, Lcom/huawei/hem/ii;-><init>(Lcom/huawei/hem/vh;Ljava/lang/String;)V

    .line 3
    iget-object p1, p2, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p2, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hem/ii;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "SeewoImpl,systemInit-error:"

    .line 6
    invoke-static {p2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/fi;

    invoke-direct {v1, v0, p1}, Lcom/huawei/hem/fi;-><init>(Lcom/huawei/hem/vh;Ljava/lang/String;)V

    .line 3
    iget-object p1, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez p1, :cond_0

    .line 4
    iget-object p1, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/fi;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SeewoImpl,actionSilentUnInstall-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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

    const-string v0, "SeewoImplseewo,setUrlWhiteList,all.size:"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v0, "ro.bootimage.build.date"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/de;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "yyyyMMddHHmmss"

    .line 4
    invoke-static {v0, v1}, Lcom/huawei/hem/bc;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SeewoImpl==> destTime == "

    const-string v6, "20190924000000"

    const-string v7, ", romBuildTime == "

    const-string v8, "====rom build cst time:"

    .line 5
    invoke-static {v5, v6, v7, v4, v8}, Lcom/huawei/hem/f6;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v4, v0

    const-wide/32 v0, 0x3010b00

    cmp-long v0, v4, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_6

    const-string v0, "SeewoImplset url white list use  new interface"

    .line 11
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 12
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "ipset flush"

    .line 15
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 17
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 18
    invoke-static {v5}, Lcom/huawei/hem/de;->p(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 19
    invoke-static {v5}, Lcom/huawei/hem/de;->t(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ipset add iplist "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 21
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ipset add netlist "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 22
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 23
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 24
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ipset=/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/iplist"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 26
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 27
    :cond_5
    sget-object p1, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    invoke-virtual {p1, v4}, Lcom/huawei/hem/vh;->f(Ljava/util/List;)Z

    .line 28
    sget-object p1, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    invoke-virtual {p1, v0}, Lcom/huawei/hem/vh;->f(Ljava/util/List;)Z

    .line 29
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.seewo.setWhiteDomainList"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "whiteList"

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 31
    sget-object v0, Lcom/huawei/hem/ed;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_a

    :catchall_0
    move-exception p1

    const-string v0, "SeewoImpl,setUrlWhiteList new interface -error:"

    .line 32
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto/16 :goto_a

    :cond_6
    const-string v0, "SeewoImplset url white list use  old interface"

    .line 33
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 34
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seewo,setUrlWhiteList,all:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_5

    .line 36
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "iptables -w -t filter -N  user_ip"

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "iptables -w -F user"

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "iptables -w -F user_ip"

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "iptables -w -D OUTPUT -j user_ip"

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "iptables -w -I OUTPUT  4  -j user_ip"

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "iptables -w -A user -j REJECT"

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 43
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    .line 44
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    .line 45
    invoke-static {v4}, Lcom/huawei/hem/de;->p(Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v7, "#"

    if-eqz v6, :cond_8

    .line 46
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seewo,setUrlWhiteList,ip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v5, "iptables -w -A user_ip -d # -j ACCEPT"

    .line 47
    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_9

    .line 48
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "seewo,setUrlWhiteList,yuming:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v6, "."

    .line 49
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "\\."

    .line 50
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v6, v2

    .line 51
    :goto_7
    array-length v8, v4

    if-ge v6, v8, :cond_b

    add-int/lit8 v8, v6, 0x1

    .line 52
    array-length v9, v4

    if-ne v8, v9, :cond_9

    .line 53
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v6

    invoke-static {v5}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 54
    :cond_9
    aget-object v9, v4, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 55
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 56
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 57
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v6

    invoke-static {v5}, Lcom/huawei/hem/de;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_8
    move v6, v8

    goto :goto_7

    :cond_b
    const-string v4, "iptables -w -I user -p udp --dport 53 -m string --hex-string |#| --algo bm -j ACCEPT"

    .line 58
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 59
    :goto_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 60
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 61
    :cond_d
    sget-object p1, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    invoke-virtual {p1, v0}, Lcom/huawei/hem/vh;->f(Ljava/util/List;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception p1

    const-string v0, "SeewoImpl,setUrlWhiteList old interface -error:"

    .line 62
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_a
    return v3
.end method

.method public Y(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    invoke-virtual {p1}, Lcom/huawei/hem/vh;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    invoke-virtual {p1}, Lcom/huawei/hem/vh;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SeewoImpl,getWifiMacAddress-error:"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b0(Ljava/util/List;)V
    .locals 2
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
    sget-object p1, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v0, Lcom/huawei/hem/bi;

    invoke-direct {v0, p1}, Lcom/huawei/hem/bi;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v1, p1, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hem/bi;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SeewoImpl,showWifiAdvanced-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v0, Lcom/huawei/hem/mi;

    invoke-direct {v0, p1}, Lcom/huawei/hem/mi;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v1, p1, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hem/mi;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SeewoImpl,enableSdCard-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBack()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/sh;

    invoke-direct {v1, v0}, Lcom/huawei/hem/sh;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/sh;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,disableBack-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableBluetooth()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/ri;

    invoke-direct {v1, v0}, Lcom/huawei/hem/ri;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/ri;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,disableBluetooth-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableCamera()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/ti;

    invoke-direct {v1, v0}, Lcom/huawei/hem/ti;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/ti;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,disableCamera-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableHome()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/qh;

    invoke-direct {v1, v0}, Lcom/huawei/hem/qh;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/qh;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,disableHome-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableLongPressPower()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/di;

    invoke-direct {v1, v0}, Lcom/huawei/hem/di;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/di;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,disableLongPressPower-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/ed;->disableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/ed;->disableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/ed;->disableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/ed;->disableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/ed;->disableShortPressPower()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/ed;->disableLongPressPower()V

    return-void
.end method

.method public disableOTG()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/li;

    invoke-direct {v1, v0}, Lcom/huawei/hem/li;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/li;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,disableOTG-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableRecent()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/uh;

    invoke-direct {v1, v0}, Lcom/huawei/hem/uh;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/uh;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,disableRecent-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableShortPressPower()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/zh;

    invoke-direct {v1, v0}, Lcom/huawei/hem/zh;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/zh;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,disableShortPressPower-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableUsb()V
    .locals 3

    :try_start_0
    const-string v0, "SeewoImpl disable usb"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 3
    new-instance v1, Lcom/huawei/hem/oi;

    invoke-direct {v1, v0}, Lcom/huawei/hem/oi;-><init>(Lcom/huawei/hem/vh;)V

    .line 4
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/oi;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,disableUsb-error:"

    .line 7
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public disableVolume()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/xh;

    invoke-direct {v1, v0}, Lcom/huawei/hem/xh;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/xh;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,disableVolume-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/oh;

    invoke-direct {v1, v0, p1}, Lcom/huawei/hem/oh;-><init>(Lcom/huawei/hem/vh;Ljava/lang/String;)V

    .line 3
    iget-object p1, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez p1, :cond_0

    .line 4
    iget-object p1, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/oh;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SeewoImpl,actionDisableApp-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBack()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/rh;

    invoke-direct {v1, v0}, Lcom/huawei/hem/rh;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/rh;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,enableBack-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/qi;

    invoke-direct {v1, v0}, Lcom/huawei/hem/qi;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/qi;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,enableBluetooth-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableCamera()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/si;

    invoke-direct {v1, v0}, Lcom/huawei/hem/si;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/si;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,enableCamera-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableHome()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/ph;

    invoke-direct {v1, v0}, Lcom/huawei/hem/ph;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/ph;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,enableHome-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableLongPressPower()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/ci;

    invoke-direct {v1, v0}, Lcom/huawei/hem/ci;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/ci;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,enableLongPressPower-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableNavigation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hem/ed;->enableHome()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/ed;->enableBack()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/ed;->enableRecent()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hem/ed;->enableVolume()V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hem/ed;->enableShortPressPower()V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hem/ed;->enableLongPressPower()V

    return-void
.end method

.method public enableOTG()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/ki;

    invoke-direct {v1, v0}, Lcom/huawei/hem/ki;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/ki;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,enableOTG-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableRecent()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/th;

    invoke-direct {v1, v0}, Lcom/huawei/hem/th;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/th;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,enableRecent-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableShortPressPower()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/yh;

    invoke-direct {v1, v0}, Lcom/huawei/hem/yh;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/yh;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,enableShortPressPower-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableUsb()V
    .locals 3

    :try_start_0
    const-string v0, "SeewoImpl enable usb"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 3
    new-instance v1, Lcom/huawei/hem/gi;

    invoke-direct {v1, v0}, Lcom/huawei/hem/gi;-><init>(Lcom/huawei/hem/vh;)V

    .line 4
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/gi;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,enableUsb-error:"

    .line 7
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public enableVolume()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/wh;

    invoke-direct {v1, v0}, Lcom/huawei/hem/wh;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/wh;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,enableVolume-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public h0()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/pi;

    invoke-direct {v1, v0}, Lcom/huawei/hem/pi;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v2, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/pi;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SeewoImpl,actionShutdown-error:"

    .line 6
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public r(Ljava/util/List;)V
    .locals 2
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
    sget-object p1, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v0, Lcom/huawei/hem/ai;

    invoke-direct {v0, p1}, Lcom/huawei/hem/ai;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v1, p1, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hem/ai;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SeewoImpl,hideWifiAdvanced-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

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
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    invoke-virtual {v0, p1}, Lcom/huawei/hem/vh;->b(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SeewoImpl,setAppWhiteList-error:"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public t(Z)V
    .locals 2

    .line 1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v0, Lcom/huawei/hem/hi;

    invoke-direct {v0, p1}, Lcom/huawei/hem/hi;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v1, p1, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hem/hi;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SeewoImpl,actionResetFactory-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public y0(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v1, Lcom/huawei/hem/nh;

    invoke-direct {v1, v0, p1}, Lcom/huawei/hem/nh;-><init>(Lcom/huawei/hem/vh;Ljava/lang/String;)V

    .line 3
    iget-object p1, v0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez p1, :cond_0

    .line 4
    iget-object p1, v0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hem/nh;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SeewoImpl,actionEnableApp-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public z0(Z)V
    .locals 2

    .line 1
    :try_start_0
    sget-object p1, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 2
    new-instance v0, Lcom/huawei/hem/ni;

    invoke-direct {v0, p1}, Lcom/huawei/hem/ni;-><init>(Lcom/huawei/hem/vh;)V

    .line 3
    iget-object v1, p1, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hem/ni;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SeewoImpl,disableSdCard-error:"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->D(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
