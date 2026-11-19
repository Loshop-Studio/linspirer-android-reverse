.class public final Lcom/huawei/hem/pj;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/pj$a;
    }
.end annotation


# static fields
.field public static final e:[Lcom/huawei/hem/nj;

.field public static final f:[Lcom/huawei/hem/nj;

.field public static final g:Lcom/huawei/hem/pj;

.field public static final h:Lcom/huawei/hem/pj;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final d:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x9

    new-array v1, v0, [Lcom/huawei/hem/nj;

    .line 1
    sget-object v2, Lcom/huawei/hem/nj;->q:Lcom/huawei/hem/nj;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hem/nj;->r:Lcom/huawei/hem/nj;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/huawei/hem/nj;->s:Lcom/huawei/hem/nj;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/huawei/hem/nj;->k:Lcom/huawei/hem/nj;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lcom/huawei/hem/nj;->m:Lcom/huawei/hem/nj;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lcom/huawei/hem/nj;->l:Lcom/huawei/hem/nj;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lcom/huawei/hem/nj;->n:Lcom/huawei/hem/nj;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lcom/huawei/hem/nj;->p:Lcom/huawei/hem/nj;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lcom/huawei/hem/nj;->o:Lcom/huawei/hem/nj;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sput-object v1, Lcom/huawei/hem/pj;->e:[Lcom/huawei/hem/nj;

    const/16 v1, 0x10

    new-array v1, v1, [Lcom/huawei/hem/nj;

    .line 2
    sget-object v2, Lcom/huawei/hem/nj;->q:Lcom/huawei/hem/nj;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hem/nj;->r:Lcom/huawei/hem/nj;

    aput-object v2, v1, v4

    sget-object v2, Lcom/huawei/hem/nj;->s:Lcom/huawei/hem/nj;

    aput-object v2, v1, v5

    sget-object v2, Lcom/huawei/hem/nj;->k:Lcom/huawei/hem/nj;

    aput-object v2, v1, v6

    sget-object v2, Lcom/huawei/hem/nj;->m:Lcom/huawei/hem/nj;

    aput-object v2, v1, v7

    sget-object v2, Lcom/huawei/hem/nj;->l:Lcom/huawei/hem/nj;

    aput-object v2, v1, v8

    sget-object v2, Lcom/huawei/hem/nj;->n:Lcom/huawei/hem/nj;

    aput-object v2, v1, v9

    sget-object v2, Lcom/huawei/hem/nj;->p:Lcom/huawei/hem/nj;

    aput-object v2, v1, v10

    sget-object v2, Lcom/huawei/hem/nj;->o:Lcom/huawei/hem/nj;

    aput-object v2, v1, v11

    sget-object v2, Lcom/huawei/hem/nj;->i:Lcom/huawei/hem/nj;

    aput-object v2, v1, v0

    sget-object v0, Lcom/huawei/hem/nj;->j:Lcom/huawei/hem/nj;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sget-object v0, Lcom/huawei/hem/nj;->g:Lcom/huawei/hem/nj;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sget-object v0, Lcom/huawei/hem/nj;->h:Lcom/huawei/hem/nj;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sget-object v0, Lcom/huawei/hem/nj;->e:Lcom/huawei/hem/nj;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sget-object v0, Lcom/huawei/hem/nj;->f:Lcom/huawei/hem/nj;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sget-object v0, Lcom/huawei/hem/nj;->d:Lcom/huawei/hem/nj;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sput-object v1, Lcom/huawei/hem/pj;->f:[Lcom/huawei/hem/nj;

    .line 3
    new-instance v0, Lcom/huawei/hem/pj$a;

    invoke-direct {v0, v4}, Lcom/huawei/hem/pj$a;-><init>(Z)V

    sget-object v1, Lcom/huawei/hem/pj;->e:[Lcom/huawei/hem/nj;

    .line 4
    invoke-virtual {v0, v1}, Lcom/huawei/hem/pj$a;->b([Lcom/huawei/hem/nj;)Lcom/huawei/hem/pj$a;

    new-array v1, v5, [Lcom/huawei/hem/ok;

    sget-object v2, Lcom/huawei/hem/ok;->TLS_1_3:Lcom/huawei/hem/ok;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hem/ok;->TLS_1_2:Lcom/huawei/hem/ok;

    aput-object v2, v1, v4

    .line 5
    invoke-virtual {v0, v1}, Lcom/huawei/hem/pj$a;->e([Lcom/huawei/hem/ok;)Lcom/huawei/hem/pj$a;

    .line 6
    invoke-virtual {v0, v4}, Lcom/huawei/hem/pj$a;->c(Z)Lcom/huawei/hem/pj$a;

    .line 7
    new-instance v0, Lcom/huawei/hem/pj$a;

    invoke-direct {v0, v4}, Lcom/huawei/hem/pj$a;-><init>(Z)V

    sget-object v1, Lcom/huawei/hem/pj;->f:[Lcom/huawei/hem/nj;

    .line 8
    invoke-virtual {v0, v1}, Lcom/huawei/hem/pj$a;->b([Lcom/huawei/hem/nj;)Lcom/huawei/hem/pj$a;

    new-array v1, v5, [Lcom/huawei/hem/ok;

    sget-object v2, Lcom/huawei/hem/ok;->TLS_1_3:Lcom/huawei/hem/ok;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hem/ok;->TLS_1_2:Lcom/huawei/hem/ok;

    aput-object v2, v1, v4

    .line 9
    invoke-virtual {v0, v1}, Lcom/huawei/hem/pj$a;->e([Lcom/huawei/hem/ok;)Lcom/huawei/hem/pj$a;

    .line 10
    invoke-virtual {v0, v4}, Lcom/huawei/hem/pj$a;->c(Z)Lcom/huawei/hem/pj$a;

    .line 11
    new-instance v1, Lcom/huawei/hem/pj;

    invoke-direct {v1, v0}, Lcom/huawei/hem/pj;-><init>(Lcom/huawei/hem/pj$a;)V

    .line 12
    sput-object v1, Lcom/huawei/hem/pj;->g:Lcom/huawei/hem/pj;

    .line 13
    new-instance v0, Lcom/huawei/hem/pj$a;

    invoke-direct {v0, v4}, Lcom/huawei/hem/pj$a;-><init>(Z)V

    sget-object v1, Lcom/huawei/hem/pj;->f:[Lcom/huawei/hem/nj;

    .line 14
    invoke-virtual {v0, v1}, Lcom/huawei/hem/pj$a;->b([Lcom/huawei/hem/nj;)Lcom/huawei/hem/pj$a;

    new-array v1, v7, [Lcom/huawei/hem/ok;

    sget-object v2, Lcom/huawei/hem/ok;->TLS_1_3:Lcom/huawei/hem/ok;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hem/ok;->TLS_1_2:Lcom/huawei/hem/ok;

    aput-object v2, v1, v4

    sget-object v2, Lcom/huawei/hem/ok;->TLS_1_1:Lcom/huawei/hem/ok;

    aput-object v2, v1, v5

    sget-object v2, Lcom/huawei/hem/ok;->TLS_1_0:Lcom/huawei/hem/ok;

    aput-object v2, v1, v6

    .line 15
    invoke-virtual {v0, v1}, Lcom/huawei/hem/pj$a;->e([Lcom/huawei/hem/ok;)Lcom/huawei/hem/pj$a;

    .line 16
    invoke-virtual {v0, v4}, Lcom/huawei/hem/pj$a;->c(Z)Lcom/huawei/hem/pj$a;

    .line 17
    new-instance v0, Lcom/huawei/hem/pj$a;

    invoke-direct {v0, v3}, Lcom/huawei/hem/pj$a;-><init>(Z)V

    .line 18
    new-instance v1, Lcom/huawei/hem/pj;

    invoke-direct {v1, v0}, Lcom/huawei/hem/pj;-><init>(Lcom/huawei/hem/pj$a;)V

    .line 19
    sput-object v1, Lcom/huawei/hem/pj;->h:Lcom/huawei/hem/pj;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/pj$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Lcom/huawei/hem/pj$a;->a:Z

    iput-boolean v0, p0, Lcom/huawei/hem/pj;->a:Z

    .line 3
    iget-object v0, p1, Lcom/huawei/hem/pj$a;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hem/pj;->c:[Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/huawei/hem/pj$a;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hem/pj;->d:[Ljava/lang/String;

    .line 5
    iget-boolean p1, p1, Lcom/huawei/hem/pj$a;->d:Z

    iput-boolean p1, p0, Lcom/huawei/hem/pj;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/pj;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/pj;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/huawei/hem/tk;->i:Ljava/util/Comparator;

    .line 3
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v2, v0, v3}, Lcom/huawei/hem/tk;->v(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/huawei/hem/pj;->c:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/huawei/hem/nj;->b:Ljava/util/Comparator;

    .line 6
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v2, v0, p1}, Lcom/huawei/hem/tk;->v(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/huawei/hem/pj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/huawei/hem/pj;

    .line 3
    iget-boolean v2, p0, Lcom/huawei/hem/pj;->a:Z

    iget-boolean v3, p1, Lcom/huawei/hem/pj;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    .line 4
    iget-object v2, p0, Lcom/huawei/hem/pj;->c:[Ljava/lang/String;

    iget-object v3, p1, Lcom/huawei/hem/pj;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lcom/huawei/hem/pj;->d:[Ljava/lang/String;

    iget-object v3, p1, Lcom/huawei/hem/pj;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget-boolean v2, p0, Lcom/huawei/hem/pj;->b:Z

    iget-boolean p1, p1, Lcom/huawei/hem/pj;->b:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/pj;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20f

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/pj;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/pj;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lcom/huawei/hem/pj;->b:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hem/pj;->a:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    :cond_0
    const-string v0, "ConnectionSpec(cipherSuites="

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/pj;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 6
    invoke-static {v6}, Lcom/huawei/hem/nj;->a(Ljava/lang/String;)Lcom/huawei/hem/nj;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const-string v3, "[all enabled]"

    .line 8
    invoke-static {v1, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tlsVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lcom/huawei/hem/pj;->d:[Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/huawei/hem/ok;->forJavaNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 10
    :cond_3
    invoke-static {v2, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/hem/pj;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
