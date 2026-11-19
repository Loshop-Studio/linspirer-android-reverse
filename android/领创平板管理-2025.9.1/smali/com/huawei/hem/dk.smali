.class public Lcom/huawei/hem/dk;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/dk$b;
    }
.end annotation


# static fields
.field public static final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/ek;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/pj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:I

.field public final a:Lcom/huawei/hem/sj;

.field public final b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/ek;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/pj;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/ak;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/ak;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/huawei/hem/vj$b;

.field public final h:Ljava/net/ProxySelector;

.field public final i:Lcom/huawei/hem/rj;

.field public final j:Lcom/huawei/hem/ij;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final k:Lcom/huawei/hem/zk;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final l:Ljavax/net/SocketFactory;

.field public final m:Ljavax/net/ssl/SSLSocketFactory;

.field public final n:Lcom/huawei/hem/an;

.field public final o:Ljavax/net/ssl/HostnameVerifier;

.field public final p:Lcom/huawei/hem/mj;

.field public final q:Lcom/huawei/hem/hj;

.field public final r:Lcom/huawei/hem/hj;

.field public final s:Lcom/huawei/hem/oj;

.field public final t:Lcom/huawei/hem/uj;

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/huawei/hem/ek;

    .line 1
    sget-object v2, Lcom/huawei/hem/ek;->HTTP_2:Lcom/huawei/hem/ek;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hem/ek;->HTTP_1_1:Lcom/huawei/hem/ek;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/huawei/hem/tk;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/huawei/hem/dk;->C:Ljava/util/List;

    new-array v0, v0, [Lcom/huawei/hem/pj;

    .line 2
    sget-object v1, Lcom/huawei/hem/pj;->g:Lcom/huawei/hem/pj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/hem/pj;->h:Lcom/huawei/hem/pj;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/huawei/hem/tk;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/dk;->D:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/huawei/hem/dk$a;

    invoke-direct {v0}, Lcom/huawei/hem/dk$a;-><init>()V

    sput-object v0, Lcom/huawei/hem/rk;->a:Lcom/huawei/hem/rk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/dk$b;

    invoke-direct {v0}, Lcom/huawei/hem/dk$b;-><init>()V

    invoke-direct {p0, v0}, Lcom/huawei/hem/dk;-><init>(Lcom/huawei/hem/dk$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/dk$b;)V
    .locals 7

    const-string v0, "No System TLS"

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v1, p1, Lcom/huawei/hem/dk$b;->a:Lcom/huawei/hem/sj;

    iput-object v1, p0, Lcom/huawei/hem/dk;->a:Lcom/huawei/hem/sj;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/huawei/hem/dk;->b:Ljava/net/Proxy;

    .line 5
    iget-object v2, p1, Lcom/huawei/hem/dk$b;->b:Ljava/util/List;

    iput-object v2, p0, Lcom/huawei/hem/dk;->c:Ljava/util/List;

    .line 6
    iget-object v2, p1, Lcom/huawei/hem/dk$b;->c:Ljava/util/List;

    iput-object v2, p0, Lcom/huawei/hem/dk;->d:Ljava/util/List;

    .line 7
    iget-object v2, p1, Lcom/huawei/hem/dk$b;->d:Ljava/util/List;

    invoke-static {v2}, Lcom/huawei/hem/tk;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hem/dk;->e:Ljava/util/List;

    .line 8
    iget-object v2, p1, Lcom/huawei/hem/dk$b;->e:Ljava/util/List;

    invoke-static {v2}, Lcom/huawei/hem/tk;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hem/dk;->f:Ljava/util/List;

    .line 9
    iget-object v2, p1, Lcom/huawei/hem/dk$b;->f:Lcom/huawei/hem/vj$b;

    iput-object v2, p0, Lcom/huawei/hem/dk;->g:Lcom/huawei/hem/vj$b;

    .line 10
    iget-object v2, p1, Lcom/huawei/hem/dk$b;->g:Ljava/net/ProxySelector;

    iput-object v2, p0, Lcom/huawei/hem/dk;->h:Ljava/net/ProxySelector;

    .line 11
    iget-object v2, p1, Lcom/huawei/hem/dk$b;->h:Lcom/huawei/hem/rj;

    iput-object v2, p0, Lcom/huawei/hem/dk;->i:Lcom/huawei/hem/rj;

    .line 12
    iput-object v1, p0, Lcom/huawei/hem/dk;->j:Lcom/huawei/hem/ij;

    .line 13
    iput-object v1, p0, Lcom/huawei/hem/dk;->k:Lcom/huawei/hem/zk;

    .line 14
    iget-object v2, p1, Lcom/huawei/hem/dk$b;->i:Ljavax/net/SocketFactory;

    iput-object v2, p0, Lcom/huawei/hem/dk;->l:Ljavax/net/SocketFactory;

    .line 15
    iget-object v2, p0, Lcom/huawei/hem/dk;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hem/pj;

    if-nez v4, :cond_1

    .line 16
    iget-boolean v4, v5, Lcom/huawei/hem/pj;->a:Z

    if-eqz v4, :cond_0

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 17
    iput-object v1, p0, Lcom/huawei/hem/dk;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 18
    iput-object v1, p0, Lcom/huawei/hem/dk;->n:Lcom/huawei/hem/an;

    goto :goto_1

    .line 19
    :cond_3
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 22
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 23
    array-length v4, v2

    if-ne v4, v6, :cond_8

    aget-object v4, v2, v3

    instance-of v4, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_8

    .line 24
    aget-object v2, v2, v3

    check-cast v2, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    :try_start_1
    sget-object v4, Lcom/huawei/hem/wm;->a:Lcom/huawei/hem/wm;

    .line 26
    invoke-virtual {v4}, Lcom/huawei/hem/wm;->i()Ljavax/net/ssl/SSLContext;

    move-result-object v4

    new-array v5, v6, [Ljavax/net/ssl/TrustManager;

    aput-object v2, v5, v3

    .line 27
    invoke-virtual {v4, v1, v5, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 28
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    iput-object v0, p0, Lcom/huawei/hem/dk;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 30
    sget-object v0, Lcom/huawei/hem/wm;->a:Lcom/huawei/hem/wm;

    .line 31
    invoke-virtual {v0, v2}, Lcom/huawei/hem/wm;->c(Ljavax/net/ssl/X509TrustManager;)Lcom/huawei/hem/an;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/huawei/hem/dk;->n:Lcom/huawei/hem/an;

    .line 33
    :goto_1
    iget-object v0, p0, Lcom/huawei/hem/dk;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_4

    .line 34
    sget-object v2, Lcom/huawei/hem/wm;->a:Lcom/huawei/hem/wm;

    .line 35
    invoke-virtual {v2, v0}, Lcom/huawei/hem/wm;->f(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 36
    :cond_4
    iget-object v0, p1, Lcom/huawei/hem/dk$b;->j:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/huawei/hem/dk;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 37
    iget-object v0, p1, Lcom/huawei/hem/dk$b;->k:Lcom/huawei/hem/mj;

    iget-object v2, p0, Lcom/huawei/hem/dk;->n:Lcom/huawei/hem/an;

    .line 38
    iget-object v3, v0, Lcom/huawei/hem/mj;->b:Lcom/huawei/hem/an;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 39
    :cond_5
    new-instance v3, Lcom/huawei/hem/mj;

    iget-object v0, v0, Lcom/huawei/hem/mj;->a:Ljava/util/Set;

    invoke-direct {v3, v0, v2}, Lcom/huawei/hem/mj;-><init>(Ljava/util/Set;Lcom/huawei/hem/an;)V

    move-object v0, v3

    .line 40
    :goto_2
    iput-object v0, p0, Lcom/huawei/hem/dk;->p:Lcom/huawei/hem/mj;

    .line 41
    iget-object v0, p1, Lcom/huawei/hem/dk$b;->l:Lcom/huawei/hem/hj;

    iput-object v0, p0, Lcom/huawei/hem/dk;->q:Lcom/huawei/hem/hj;

    .line 42
    iget-object v0, p1, Lcom/huawei/hem/dk$b;->m:Lcom/huawei/hem/hj;

    iput-object v0, p0, Lcom/huawei/hem/dk;->r:Lcom/huawei/hem/hj;

    .line 43
    iget-object v0, p1, Lcom/huawei/hem/dk$b;->n:Lcom/huawei/hem/oj;

    iput-object v0, p0, Lcom/huawei/hem/dk;->s:Lcom/huawei/hem/oj;

    .line 44
    iget-object v0, p1, Lcom/huawei/hem/dk$b;->o:Lcom/huawei/hem/uj;

    iput-object v0, p0, Lcom/huawei/hem/dk;->t:Lcom/huawei/hem/uj;

    .line 45
    iget-boolean v0, p1, Lcom/huawei/hem/dk$b;->p:Z

    iput-boolean v0, p0, Lcom/huawei/hem/dk;->u:Z

    .line 46
    iget-boolean v0, p1, Lcom/huawei/hem/dk$b;->q:Z

    iput-boolean v0, p0, Lcom/huawei/hem/dk;->v:Z

    .line 47
    iget-boolean v0, p1, Lcom/huawei/hem/dk$b;->r:Z

    iput-boolean v0, p0, Lcom/huawei/hem/dk;->w:Z

    .line 48
    iget v0, p1, Lcom/huawei/hem/dk$b;->s:I

    iput v0, p0, Lcom/huawei/hem/dk;->x:I

    .line 49
    iget v0, p1, Lcom/huawei/hem/dk$b;->t:I

    iput v0, p0, Lcom/huawei/hem/dk;->y:I

    .line 50
    iget v0, p1, Lcom/huawei/hem/dk$b;->u:I

    iput v0, p0, Lcom/huawei/hem/dk;->z:I

    .line 51
    iget v0, p1, Lcom/huawei/hem/dk$b;->v:I

    iput v0, p0, Lcom/huawei/hem/dk;->A:I

    .line 52
    iget p1, p1, Lcom/huawei/hem/dk$b;->w:I

    iput p1, p0, Lcom/huawei/hem/dk;->B:I

    .line 53
    iget-object p1, p0, Lcom/huawei/hem/dk;->e:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 54
    iget-object p1, p0, Lcom/huawei/hem/dk;->f:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 55
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Null network interceptor: "

    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/dk;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Null interceptor: "

    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/dk;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 57
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :cond_8
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 60
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
