.class public Lcom/huawei/hem/x4$c;
.super Landroid/os/AsyncTask;
.source "AppWhiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/x4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppHashInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/huawei/hem/x4;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/x4;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppHashInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/x4$c;->b:Lcom/huawei/hem/x4;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/huawei/hem/x4$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/x4$c;->b:Lcom/huawei/hem/x4;

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    iget-object p1, p1, Lcom/huawei/hem/x4;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 5
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 6
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 7
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppWhiteHelper  get local package"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 9
    new-instance v5, Lcom/android/launcher3/model/AppHashInfo;

    invoke-direct {v5}, Lcom/android/launcher3/model/AppHashInfo;-><init>()V

    .line 10
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/model/AppHashInfo;->setAppName(Ljava/lang/String;)V

    .line 11
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/model/AppHashInfo;->setPackName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    const-string p1, "\u83b7\u53d6\u7cfb\u7edf\u5e94\u7528\u5305\u4fe1\u606f\u5931\u8d25"

    .line 13
    invoke-static {p1}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    .line 14
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-static {}, Lcom/huawei/hem/q0;->v()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-static {}, Lcom/huawei/hem/q0;->x()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/AppHashInfo;

    .line 19
    iget-object v4, p0, Lcom/huawei/hem/x4$c;->b:Lcom/huawei/hem/x4;

    .line 20
    iget-object v4, v4, Lcom/huawei/hem/x4;->c:Ljava/util/List;

    .line 21
    invoke-virtual {v3}, Lcom/android/launcher3/model/AppHashInfo;->getPackName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 22
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {v3}, Lcom/android/launcher3/model/AppHashInfo;->getPackName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "AppWhiteHelper uninstall app :"

    .line 24
    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/launcher3/model/AppHashInfo;->getPackName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 25
    sget-object v4, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-virtual {v3}, Lcom/android/launcher3/model/AppHashInfo;->getPackName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/huawei/hem/ic;->Q(Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_4
    iget-object v1, p0, Lcom/huawei/hem/x4$c;->b:Lcom/huawei/hem/x4;

    .line 27
    iget-object v1, v1, Lcom/huawei/hem/x4;->a:Landroid/content/Context;

    .line 28
    iget-object v2, p0, Lcom/huawei/hem/x4$c;->a:Ljava/util/List;

    .line 29
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string p1, "ApkHashUtils no local installed apps"

    .line 30
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 31
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/AppHashInfo;

    .line 33
    invoke-virtual {v4}, Lcom/android/launcher3/model/AppHashInfo;->getPackName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/huawei/hem/y4;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "null"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto/16 :goto_5

    .line 35
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/AppHashInfo;

    .line 36
    invoke-virtual {v4}, Lcom/android/launcher3/model/AppHashInfo;->getPackName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/launcher3/model/AppHashInfo;->getPackName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 37
    invoke-virtual {v8}, Lcom/android/launcher3/model/AppHashInfo;->getHash()Ljava/lang/String;

    move-result-object v9

    const-string v10, "miahash"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v8}, Lcom/android/launcher3/model/AppHashInfo;->getHash()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ltkhash"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 38
    invoke-virtual {v8}, Lcom/android/launcher3/model/AppHashInfo;->getHash()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_4

    .line 39
    :cond_9
    invoke-virtual {v8}, Lcom/android/launcher3/model/AppHashInfo;->getHash()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 40
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/launcher3/model/AppHashInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/launcher3/model/AppHashInfo;->getPackName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v5, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-virtual {v8}, Lcom/android/launcher3/model/AppHashInfo;->getPackName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/huawei/hem/ic;->Q(Ljava/lang/String;)V

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApkHashUtils "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    :goto_4
    const-string v4, "ApkHashUtils server not get hash no need check"

    .line 45
    invoke-static {v4}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    :goto_5
    const-string v4, "ApkHashUtils read local hash empty"

    .line 46
    invoke-static {v4}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 47
    :cond_c
    invoke-static {v3}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 48
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/launcher3/network/IllegalHelper;->recordInstalledApp(Ljava/util/List;)V

    :cond_d
    :goto_6
    return-object v0

    .line 49
    :cond_e
    throw v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
