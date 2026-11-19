.class public Lcom/huawei/hem/x4;
.super Ljava/lang/Object;
.source "AppWhiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/x4$b;,
        Lcom/huawei/hem/x4$c;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/huawei/hem/y5;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/android/launcher3/db/model/ItemAppDao;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/x4$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 3
    iput-object p1, p0, Lcom/huawei/hem/x4;->a:Landroid/content/Context;

    .line 4
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 5
    iput-object p1, p0, Lcom/huawei/hem/x4;->b:Lcom/huawei/hem/y5;

    .line 6
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hem/t3;->c()Lcom/android/launcher3/db/model/ItemAppDao;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/x4;->d:Lcom/android/launcher3/db/model/ItemAppDao;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/x4;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/x4;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppWhiteHelper device is release  write white app null to system"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->s(Ljava/util/List;)Z

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/x4;->d:Lcom/android/launcher3/db/model/ItemAppDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/db/model/ItemApp;

    .line 9
    new-instance v4, Lcom/android/launcher3/model/AppHashInfo;

    invoke-direct {v4}, Lcom/android/launcher3/model/AppHashInfo;-><init>()V

    .line 10
    invoke-virtual {v3}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/AppHashInfo;->setPackName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Lcom/android/launcher3/db/model/ItemApp;->getSha1()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "null"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 13
    :cond_1
    invoke-static {}, Lcom/huawei/hem/ce;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "miahash"

    goto :goto_1

    :cond_2
    const-string v5, "ltkhash"

    .line 14
    :cond_3
    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/AppHashInfo;->setHash(Ljava/lang/String;)V

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/AppHashInfo;->setPackWithHash(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v3}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p0, v1, v2}, Lcom/huawei/hem/x4;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppHashInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/x4;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AppWhiteHelper device is release  write white app null to system"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/huawei/hem/ic;->s(Ljava/util/List;)Z

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/x4;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWhiteHelper read isv set white apps:"

    .line 5
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v1, ","

    .line 6
    invoke-static {v0, v1}, Lcom/huawei/hem/l9;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.android.launcher3"

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.ndwill.swd.appstore"

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.linspirer.exclusivebrowser"

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "com.zykj.manage"

    .line 12
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    :cond_1
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/AppHashInfo;

    .line 19
    invoke-virtual {v3}, Lcom/android/launcher3/model/AppHashInfo;->getPackWithHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {}, Lcom/huawei/hem/ce;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "miahash"

    goto :goto_1

    :cond_4
    const-string v2, "ltkhash"

    .line 21
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 22
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const-string v1, "AppWhiteHelper app white write to system total:"

    .line 25
    invoke-static {v1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppWhiteHelper app white write to system total with hash:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 27
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v1, v0}, Lcom/huawei/hem/ic;->l(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "AppWhiteHelper   write app white with no hash"

    .line 28
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, p2}, Lcom/huawei/hem/ic;->s(Ljava/util/List;)Z

    .line 30
    :cond_7
    iget-object v0, p0, Lcom/huawei/hem/x4;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    iget-object v0, p0, Lcom/huawei/hem/x4;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    iget-object p2, p0, Lcom/huawei/hem/x4;->b:Lcom/huawei/hem/y5;

    invoke-virtual {p2}, Lcom/huawei/hem/y5;->N()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    .line 33
    new-instance p2, Lcom/huawei/hem/x4$c;

    invoke-direct {p2, p0, p1}, Lcom/huawei/hem/x4$c;-><init>(Lcom/huawei/hem/x4;Ljava/util/List;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_8
    return-void
.end method
