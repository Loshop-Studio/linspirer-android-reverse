.class public Lcom/huawei/hem/gb;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/String;

.field public static volatile g:Lcom/huawei/hem/gb;


# instance fields
.field public a:Ljavax/net/ssl/SSLContext;

.field public b:Ljavax/net/ssl/SSLSocket;

.field public c:Landroid/content/Context;

.field public d:[Ljava/lang/String;

.field public e:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 3
    const-class v0, Lcom/huawei/hem/gb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/gb;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/huawei/hem/gb;->g:Lcom/huawei/hem/gb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hem/gb;->a:Ljavax/net/ssl/SSLContext;

    .line 3
    iput-object v0, p0, Lcom/huawei/hem/gb;->b:Ljavax/net/ssl/SSLSocket;

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/huawei/hem/gb;->f:Ljava/lang/String;

    const-string v0, "SecureSSLSocketFactory: context is null"

    invoke-static {p1, v0}, Lcom/huawei/hem/l9;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hem/gb;->c:Landroid/content/Context;

    .line 6
    invoke-static {}, Lcom/huawei/hem/fb;->c()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 7
    iput-object v1, p0, Lcom/huawei/hem/gb;->a:Ljavax/net/ssl/SSLContext;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    invoke-static {p1}, Lcom/huawei/hem/l9;->l(Landroid/content/Context;)V

    .line 10
    sget-object v1, Lcom/huawei/hem/hb;->a:Lcom/huawei/hem/ib;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 11
    const-class v1, Lcom/huawei/hem/hb;

    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v4, Lcom/huawei/hem/hb;->a:Lcom/huawei/hem/ib;

    if-nez v4, :cond_2

    .line 13
    invoke-static {p1}, Lcom/huawei/hem/mb;->j(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "SecureX509SingleInstance"

    const-string v5, "get assets bks"

    .line 14
    invoke-static {v4, v5}, Lcom/huawei/hem/l9;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "hmsrootcas.bks"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v5, "SecureX509SingleInstance"

    const-string v6, "get files bks"

    .line 16
    invoke-static {v5, v6}, Lcom/huawei/hem/l9;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :goto_0
    new-instance v5, Lcom/huawei/hem/ib;

    const-string v6, ""

    invoke-direct {v5, v4, v6}, Lcom/huawei/hem/ib;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    sput-object v5, Lcom/huawei/hem/hb;->a:Lcom/huawei/hem/ib;

    .line 18
    new-instance v4, Lcom/huawei/hem/nb;

    invoke-direct {v4}, Lcom/huawei/hem/nb;-><init>()V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v3, [Landroid/content/Context;

    aput-object p1, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 19
    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 20
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    sget-object p1, Lcom/huawei/hem/hb;->a:Lcom/huawei/hem/ib;

    .line 22
    iput-object p1, p0, Lcom/huawei/hem/gb;->e:Ljavax/net/ssl/X509TrustManager;

    .line 23
    iget-object v1, p0, Lcom/huawei/hem/gb;->a:Ljavax/net/ssl/SSLContext;

    new-array v3, v3, [Ljavax/net/ssl/X509TrustManager;

    aput-object p1, v3, v2

    invoke-virtual {v1, v0, v3, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 4

    .line 24
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/huawei/hem/gb;->a:Ljavax/net/ssl/SSLContext;

    .line 26
    iput-object v0, p0, Lcom/huawei/hem/gb;->b:Ljavax/net/ssl/SSLSocket;

    .line 27
    invoke-static {}, Lcom/huawei/hem/fb;->c()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hem/gb;->a:Ljavax/net/ssl/SSLContext;

    .line 28
    iput-object p1, p0, Lcom/huawei/hem/gb;->e:Ljavax/net/ssl/X509TrustManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 29
    invoke-virtual {v1, v0, v2, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/huawei/hem/gb;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    invoke-static {p0}, Lcom/huawei/hem/l9;->l(Landroid/content/Context;)V

    .line 3
    sget-object v0, Lcom/huawei/hem/gb;->g:Lcom/huawei/hem/gb;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/huawei/hem/gb;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/huawei/hem/gb;->g:Lcom/huawei/hem/gb;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/huawei/hem/gb;

    invoke-direct {v1, p0}, Lcom/huawei/hem/gb;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/hem/gb;->g:Lcom/huawei/hem/gb;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/huawei/hem/gb;->g:Lcom/huawei/hem/gb;

    iget-object v0, v0, Lcom/huawei/hem/gb;->c:Landroid/content/Context;

    if-nez v0, :cond_3

    if-eqz p0, :cond_3

    .line 9
    sget-object v0, Lcom/huawei/hem/gb;->g:Lcom/huawei/hem/gb;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lcom/huawei/hem/gb;->c:Landroid/content/Context;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    throw p0

    .line 11
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    sget-object p0, Lcom/huawei/hem/gb;->g:Lcom/huawei/hem/gb;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/net/Socket;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/l9;->v([Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Lcom/huawei/hem/gb;->f:Ljava/lang/String;

    const-string v4, "set protocols"

    invoke-static {v1, v4}, Lcom/huawei/hem/l9;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/huawei/hem/l9;->v([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/huawei/hem/l9;->v([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    .line 5
    :cond_2
    :goto_1
    sget-object v3, Lcom/huawei/hem/gb;->f:Ljava/lang/String;

    const-string v4, "set white cipher or black cipher"

    invoke-static {v3, v4}, Lcom/huawei/hem/l9;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    move-object v3, p1

    check-cast v3, Ljavax/net/ssl/SSLSocket;

    invoke-static {v3}, Lcom/huawei/hem/fb;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/l9;->v([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 8
    invoke-static {v3, v0}, Lcom/huawei/hem/fb;->d(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    goto :goto_2

    .line 9
    :cond_3
    invoke-static {v3, v0}, Lcom/huawei/hem/fb;->a(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    :goto_2
    if-nez v1, :cond_4

    .line 10
    sget-object v0, Lcom/huawei/hem/gb;->f:Ljava/lang/String;

    const-string v1, "set default protocols"

    invoke-static {v0, v1}, Lcom/huawei/hem/l9;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Lcom/huawei/hem/fb;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_4
    if-nez v2, :cond_6

    .line 12
    sget-object v0, Lcom/huawei/hem/gb;->f:Ljava/lang/String;

    const-string v1, "set default cipher suites"

    invoke-static {v0, v1}, Lcom/huawei/hem/l9;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    if-nez p1, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    sget-object v0, Lcom/huawei/hem/fb;->b:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/huawei/hem/fb;->d(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    sget-object v0, Lcom/huawei/hem/fb;->c:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/huawei/hem/fb;->a(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/gb;->f:Ljava/lang/String;

    const-string v1, "createSocket: host , port"

    invoke-static {v0, v1}, Lcom/huawei/hem/l9;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/gb;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    .line 3
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/huawei/hem/gb;->a(Ljava/net/Socket;)V

    .line 5
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    iput-object p2, p0, Lcom/huawei/hem/gb;->b:Ljavax/net/ssl/SSLSocket;

    .line 6
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hem/gb;->d:[Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hem/gb;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0

    .line 7
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hem/gb;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0

    .line 9
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hem/gb;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2

    .line 10
    sget-object v0, Lcom/huawei/hem/gb;->f:Ljava/lang/String;

    const-string v1, "createSocket s host port autoClose"

    invoke-static {v0, v1}, Lcom/huawei/hem/l9;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/huawei/hem/gb;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    .line 12
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Lcom/huawei/hem/gb;->a(Ljava/net/Socket;)V

    .line 14
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    iput-object p2, p0, Lcom/huawei/hem/gb;->b:Ljavax/net/ssl/SSLSocket;

    .line 15
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hem/gb;->d:[Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/gb;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
