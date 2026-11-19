.class public Lcom/huawei/hem/x9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/huawei/hem/ha;


# instance fields
.field public a:[B

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/la;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/huawei/hem/la;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/huawei/hem/x9;->a:[B

    iput-object p2, p0, Lcom/huawei/hem/x9;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hem/x9;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hem/x9;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/huawei/hem/x9;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/huawei/hem/x9;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "hmsSdk"

    const-string v1, "send data running"

    invoke-static {v0, v1}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/huawei/hem/x9;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/hem/x9;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hem/x9;->d:Ljava/lang/String;

    .line 2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/huawei/hem/y4;->p()Ljava/lang/String;

    move-result-object v5

    const-string v6, "App-Id"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/huawei/hem/y4;->r()Ljava/lang/String;

    move-result-object v5

    const-string v6, "App-Ver"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Sdk-Name"

    const-string v6, "hianalytics"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Sdk-Ver"

    const-string v6, "2.2.0.308"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "Device-Type"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "servicetag"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const-string v8, "sendData RequestId : %s"

    invoke-static {v0, v8, v6}, Lcom/huawei/hem/xa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "Request-Id"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v1, v2}, Lcom/huawei/hem/l9;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hem/ea;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v1, Lcom/huawei/hem/ea;->i:Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 6
    :goto_1
    iget-object v1, p0, Lcom/huawei/hem/x9;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hem/x9;->a:[B

    const-string v6, "POST"

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v1, Lcom/huawei/hem/h9;

    const/16 v2, -0x64

    invoke-direct {v1, v2}, Lcom/huawei/hem/h9;-><init>(I)V

    goto/16 :goto_13

    :cond_2
    const/16 v8, -0x66

    const/16 v9, -0x65

    :try_start_0
    array-length v10, v3

    invoke-static {v1, v10, v4, v6}, Lcom/huawei/hem/y4;->c(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_0
    .catch Lcom/huawei/hem/g9; {:try_start_0 .. :try_end_0} :catch_20
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1e
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_16
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_4

    :try_start_1
    new-instance v3, Lcom/huawei/hem/h9;

    invoke-direct {v3, v9}, Lcom/huawei/hem/h9;-><init>(I)V
    :try_end_1
    .catch Lcom/huawei/hem/g9; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    if-eqz v1, :cond_3

    goto/16 :goto_12

    :cond_3
    :goto_2
    move-object v1, v3

    goto/16 :goto_13

    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_2
    .catch Lcom/huawei/hem/g9; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Lcom/huawei/hem/g9; {:try_start_3 .. :try_end_3} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1f
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_3 .. :try_end_3} :catch_1d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-virtual {v6, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_4
    .catch Lcom/huawei/hem/g9; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v1}, Lcom/huawei/hem/y4;->m(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    new-instance v3, Lcom/huawei/hem/h9;

    invoke-direct {v3, v2}, Lcom/huawei/hem/h9;-><init>(I)V
    :try_end_5
    .catch Lcom/huawei/hem/g9; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v6}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    goto/16 :goto_12

    :catch_0
    move v8, v2

    goto :goto_3

    :catch_1
    move v8, v2

    goto :goto_9

    :catch_2
    move v8, v2

    goto :goto_4

    :catch_3
    move v8, v2

    goto :goto_5

    :catch_4
    move v8, v2

    goto :goto_6

    :catch_5
    move v8, v2

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v6

    goto/16 :goto_17

    :catch_6
    :goto_3
    move-object v2, v6

    goto :goto_8

    :catch_7
    :goto_4
    move-object v2, v6

    goto/16 :goto_d

    :catch_8
    :goto_5
    move-object v2, v6

    goto/16 :goto_e

    :catch_9
    :goto_6
    move-object v2, v6

    goto/16 :goto_f

    :catch_a
    :goto_7
    move-object v2, v6

    goto/16 :goto_10

    :catch_b
    move-object v2, v6

    goto/16 :goto_11

    :catch_c
    move-object v6, v2

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v4, v2

    goto/16 :goto_17

    :catch_d
    move-object v4, v2

    :catch_e
    :goto_8
    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_a

    :catch_f
    move-object v4, v2

    move-object v6, v4

    :catch_10
    :goto_9
    move-object v2, v1

    goto :goto_b

    :catch_11
    move-object v4, v2

    goto :goto_d

    :catch_12
    move-object v4, v2

    goto/16 :goto_e

    :catch_13
    move-object v4, v2

    goto/16 :goto_f

    :catch_14
    move-object v4, v2

    goto/16 :goto_10

    :catch_15
    move-object v4, v2

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v4, v1

    goto/16 :goto_17

    :catch_16
    move-object v1, v2

    move-object v4, v1

    :goto_a
    :try_start_6
    const-string v3, "events PostRequest(byte[]): IOException occurred."

    invoke-static {v0, v3}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/huawei/hem/h9;

    invoke-direct {v3, v8}, Lcom/huawei/hem/h9;-><init>(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {v1}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    if-eqz v2, :cond_3

    goto :goto_c

    :catchall_3
    move-exception v0

    goto/16 :goto_16

    :catch_17
    move-object v4, v2

    move-object v6, v4

    :goto_b
    :try_start_7
    const-string v1, "No address associated with hostname or No network"

    invoke-static {v0, v1}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/huawei/hem/h9;

    invoke-direct {v3, v8}, Lcom/huawei/hem/h9;-><init>(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-static {v6}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    if-eqz v2, :cond_3

    :goto_c
    move-object v1, v2

    goto/16 :goto_12

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v6

    goto/16 :goto_15

    :catch_18
    move-object v1, v2

    move-object v4, v1

    :catch_19
    :goto_d
    :try_start_8
    const-string v3, "Network is unreachable or Connection refused"

    invoke-static {v0, v3}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/huawei/hem/h9;

    invoke-direct {v3, v8}, Lcom/huawei/hem/h9;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-static {v2}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    if-eqz v1, :cond_3

    goto :goto_12

    :catch_1a
    move-object v1, v2

    move-object v4, v1

    :catch_1b
    :goto_e
    :try_start_9
    const-string v3, "Chain validation failed,Certificate expired"

    invoke-static {v0, v3}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/huawei/hem/h9;

    invoke-direct {v3, v8}, Lcom/huawei/hem/h9;-><init>(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    invoke-static {v2}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    if-eqz v1, :cond_3

    goto :goto_12

    :catch_1c
    move-object v1, v2

    move-object v4, v1

    :catch_1d
    :goto_f
    :try_start_a
    const-string v3, "Certificate has not been verified,Request is restricted!"

    invoke-static {v0, v3}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/huawei/hem/h9;

    invoke-direct {v3, v8}, Lcom/huawei/hem/h9;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    invoke-static {v2}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    if-eqz v1, :cond_3

    goto :goto_12

    :catch_1e
    move-object v1, v2

    move-object v4, v1

    :catch_1f
    :goto_10
    :try_start_b
    const-string v3, "SecurityException with HttpClient. Please check INTERNET permission."

    invoke-static {v0, v3}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/huawei/hem/h9;

    invoke-direct {v3, v8}, Lcom/huawei/hem/h9;-><init>(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    invoke-static {v2}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    if-eqz v1, :cond_3

    goto :goto_12

    :catch_20
    move-object v1, v2

    move-object v4, v1

    :catch_21
    :goto_11
    :try_start_c
    const-string v3, "PostRequest(byte[]): No ssl socket factory set!"

    invoke-static {v0, v3}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/huawei/hem/h9;

    invoke-direct {v3, v9}, Lcom/huawei/hem/h9;-><init>(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    invoke-static {v2}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    if-eqz v1, :cond_3

    :goto_12
    invoke-static {v1}, Lcom/huawei/hem/l9;->r(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_2

    .line 8
    :goto_13
    iget v1, v1, Lcom/huawei/hem/h9;->a:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_5

    .line 9
    new-instance v0, Lcom/huawei/hem/fa;

    iget-object v1, p0, Lcom/huawei/hem/x9;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/huawei/hem/x9;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hem/x9;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hem/x9;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huawei/hem/fa;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v1, Lcom/huawei/hem/ka;->b:Lcom/huawei/hem/ka;

    .line 11
    invoke-virtual {v1, v0}, Lcom/huawei/hem/ka;->a(Lcom/huawei/hem/ha;)V

    goto :goto_14

    :cond_5
    const-string v2, "events PostRequest sendevent TYPE : %s, TAG : %s, resultCode: %d ,reqID:"

    .line 12
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hem/x9;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/huawei/hem/x9;->e:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/huawei/hem/x9;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    .line 13
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hem/xa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void

    :catchall_5
    move-exception v0

    :goto_15
    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_16
    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 14
    :goto_17
    invoke-static {v2}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/huawei/hem/l9;->o(Ljava/io/Closeable;)V

    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/huawei/hem/l9;->r(Ljava/net/HttpURLConnection;)V

    :cond_6
    throw v0
.end method
