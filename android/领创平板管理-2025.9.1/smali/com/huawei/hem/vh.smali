.class public Lcom/huawei/hem/vh;
.super Ljava/lang/Object;
.source "SeewoIMDM.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/huawei/hem/mh;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/huawei/hem/vh$a;

    invoke-direct {v0, p0}, Lcom/huawei/hem/vh$a;-><init>(Lcom/huawei/hem/vh;)V

    iput-object v0, p0, Lcom/huawei/hem/vh;->d:Landroid/content/ServiceConnection;

    .line 4
    iput-object p1, p0, Lcom/huawei/hem/vh;->a:Landroid/content/Context;

    .line 5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.seewo.student.control"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.seewo.eclass.stucontrolservice"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/huawei/hem/vh;->d:Landroid/content/ServiceConnection;

    const/16 v2, 0x21

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 11

    const-string v0, "02:00:00:00:00:00"

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 4
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    array-length v4, v3

    if-nez v4, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    const/4 v8, 0x1

    if-ge v7, v5, :cond_2

    aget-byte v9, v3, v7

    const-string v10, "%02X:"

    new-array v8, v8, [Ljava/lang/Object;

    .line 8
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 11
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "wlan0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
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
    iget-object v1, p0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hem/vh;->c()V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v1, :cond_1

    const-string v1, "seewoimdm"

    const-string v2, "appWhiteListRead  mBinder is still null"

    .line 5
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 6
    :cond_1
    :try_start_0
    invoke-interface {v1}, Lcom/huawei/hem/mh;->appWhiteListRead()Ljava/lang/String;

    move-result-object v1

    const-string v2, "test"

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app list read in imdm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 10
    :try_start_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v4

    .line 11
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catch_1
    move-exception v1

    .line 12
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    .line 13
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public b(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/vh;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p1, "seewoimdm"

    const-string v0, "appWhiteListWrite  mBinder is still null"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 5
    :try_start_0
    invoke-interface {v0, p1}, Lcom/huawei/hem/mh;->w(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 6
    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/huawei/hem/mh;->w(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v0, :cond_2

    const-string v0, "seewoimdm"

    const-string v1, "checkBinder mBinder is null"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 5
    iget-object v1, p0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    :cond_2
    :goto_1
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hem/vh;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez v0, :cond_1

    const-string v0, "seewoimdm"

    const-string v1, "getWifiMacAddress  mBinder is still null..."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/huawei/hem/vh;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/hem/mh;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 8
    invoke-static {}, Lcom/huawei/hem/vh;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/util/List;)Z
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
    new-instance v0, Lcom/huawei/hem/vh$b;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hem/vh$b;-><init>(Lcom/huawei/hem/vh;Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/vh;->b:Lcom/huawei/hem/mh;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/vh;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hem/vh$b;->run()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
