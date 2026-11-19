.class public Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$d;
.super Landroid/os/AsyncTask;
.source "CheckNetWorkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$d;->a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$d;->a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;

    .line 2
    iget-object v0, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->k:Ljava/util/List;

    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "CheckNetWorkFragment--networks are empty"

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/NetworkInfo;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->r:Ljava/util/List;

    .line 6
    invoke-virtual {v1}, Lcom/android/launcher3/model/NetworkInfo;->getDomain()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->m:Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Lcom/android/launcher3/model/NetworkInfo;->getPortList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->p:Ljava/util/List;

    .line 8
    new-instance v2, Lcom/huawei/hem/cc;

    iget-object v3, p1, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/huawei/hem/cc;-><init>(Landroid/content/Context;)V

    .line 9
    iget-object v2, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->m:Ljava/lang/String;

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 11
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 12
    array-length v5, v2

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v2, v6

    .line 13
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 15
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const-string v7, "FAIL"

    .line 16
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v5, "NetWorkUtilgetInetAddress error:"

    .line 17
    invoke-static {v5}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/huawei/hem/f6;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 18
    :cond_2
    iput-object v3, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->q:Ljava/util/List;

    .line 19
    invoke-static {v3}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    const-string v3, "success"

    const-string v5, "fail"

    if-nez v2, :cond_4

    .line 20
    iget-object v2, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 21
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ping -c 3 -w 100 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 22
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v6, :cond_3

    move-object v6, v3

    goto :goto_4

    :catch_1
    move-exception v6

    const-string v7, "NetWorkUtilping error:"

    .line 23
    invoke-static {v7}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/hem/f6;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    :cond_3
    move-object v6, v5

    .line 24
    :goto_4
    iput-object v6, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->s:Ljava/lang/String;

    .line 25
    iget-object v7, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->r:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 26
    :cond_4
    iget-object v2, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->p:Ljava/util/List;

    invoke-static {v2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 27
    :goto_5
    iget-object v2, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_8

    .line 28
    iget-object v2, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->m:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->p:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, ":"

    const-string v8, "NetWorkUtilconnecting "

    const-string v9, "NetWorkUtilcheckDomainPort error:"

    .line 29
    :try_start_2
    new-instance v10, Ljava/net/Socket;

    invoke-direct {v10}, Ljava/net/Socket;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    :try_start_3
    new-instance v11, Ljava/net/InetSocketAddress;

    invoke-direct {v11, v2, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v12, 0x1388

    invoke-virtual {v10, v11, v12}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 31
    invoke-virtual {v10}, Ljava/net/Socket;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v11, v3

    goto :goto_6

    :cond_5
    move-object v11, v5

    .line 32
    :goto_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    :try_start_4
    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :catch_2
    move-exception v2

    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_8

    :catchall_0
    move-exception p1

    goto :goto_b

    :catch_3
    move-exception v11

    goto :goto_7

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    goto :goto_c

    :catch_4
    move-exception v10

    move-object v11, v10

    const/4 v10, 0x0

    .line 35
    :goto_7
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " failed, because of "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_6

    .line 36
    :try_start_6
    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    :catch_5
    move-exception v2

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/bc;->c(Ljava/lang/String;)V

    :cond_6
    :goto_9
    move-object v11, v5

    .line 38
    :goto_a
    iget-object v2, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->r:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :goto_b
    move-object v0, v10

    :goto_c
    if-eqz v0, :cond_7

    .line 39
    :try_start_7
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    .line 40
    invoke-static {v9}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/f6;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 41
    :cond_7
    :goto_d
    throw p1

    .line 42
    :cond_8
    iget-object v2, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->r:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/NetworkInfo;->setResult(Ljava/util/List;)V

    .line 43
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    .line 44
    iput v2, v1, Landroid/os/Message;->what:I

    .line 45
    iget-object v2, p1, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->B:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_9
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p1, "CheckNetWorkFragment--check network is end"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$d;->a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/activity/CheckNetWorkActivity;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/launcher3/activity/CheckNetWorkActivity;->f(Z)V

    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const-string v0, "CheckNetWorkFragment--check network is starting"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$d;->a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;

    invoke-static {v0}, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->i(Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;)V

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment$d;->a:Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;

    .line 5
    iget-object v1, v0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->u:Landroid/widget/ImageView;

    const v2, 0x7f060075

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v1, v0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->B:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/launcher3/fragment/home/CheckNetWorkFragment;->A:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
