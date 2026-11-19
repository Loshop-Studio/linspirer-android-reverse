.class public final Lcom/huawei/hem/ck;
.super Lcom/huawei/hem/jk;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/ck$a;,
        Lcom/huawei/hem/ck$b;
    }
.end annotation


# static fields
.field public static final e:Lcom/huawei/hem/bk;

.field public static final f:Lcom/huawei/hem/bk;

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B


# instance fields
.field public final a:Lcom/huawei/hem/kn;

.field public final b:Lcom/huawei/hem/bk;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hem/ck$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "multipart/mixed"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bk;->a(Ljava/lang/String;)Lcom/huawei/hem/bk;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/ck;->e:Lcom/huawei/hem/bk;

    const-string v0, "multipart/alternative"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bk;->a(Ljava/lang/String;)Lcom/huawei/hem/bk;

    const-string v0, "multipart/digest"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/bk;->a(Ljava/lang/String;)Lcom/huawei/hem/bk;

    const-string v0, "multipart/parallel"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bk;->a(Ljava/lang/String;)Lcom/huawei/hem/bk;

    const-string v0, "multipart/form-data"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/bk;->a(Ljava/lang/String;)Lcom/huawei/hem/bk;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/ck;->f:Lcom/huawei/hem/bk;

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 6
    fill-array-data v1, :array_0

    sput-object v1, Lcom/huawei/hem/ck;->g:[B

    new-array v1, v0, [B

    .line 7
    fill-array-data v1, :array_1

    sput-object v1, Lcom/huawei/hem/ck;->h:[B

    new-array v0, v0, [B

    .line 8
    fill-array-data v0, :array_2

    sput-object v0, Lcom/huawei/hem/ck;->i:[B

    return-void

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Lcom/huawei/hem/kn;Lcom/huawei/hem/bk;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hem/kn;",
            "Lcom/huawei/hem/bk;",
            "Ljava/util/List<",
            "Lcom/huawei/hem/ck$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/jk;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/huawei/hem/ck;->d:J

    .line 3
    iput-object p1, p0, Lcom/huawei/hem/ck;->a:Lcom/huawei/hem/kn;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hem/kn;->utf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bk;->a(Ljava/lang/String;)Lcom/huawei/hem/bk;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/ck;->b:Lcom/huawei/hem/bk;

    .line 5
    invoke-static {p3}, Lcom/huawei/hem/tk;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/ck;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/huawei/hem/ck;->d:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/huawei/hem/ck;->f(Lcom/huawei/hem/in;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hem/ck;->d:J

    return-wide v0
.end method

.method public b()Lcom/huawei/hem/bk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/ck;->b:Lcom/huawei/hem/bk;

    return-object v0
.end method

.method public e(Lcom/huawei/hem/in;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/huawei/hem/ck;->f(Lcom/huawei/hem/in;Z)J

    return-void
.end method

.method public final f(Lcom/huawei/hem/in;Z)J
    .locals 12
    .param p1    # Lcom/huawei/hem/in;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Lcom/huawei/hem/hn;

    invoke-direct {p1}, Lcom/huawei/hem/hn;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/huawei/hem/ck;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_6

    .line 3
    iget-object v6, p0, Lcom/huawei/hem/ck;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hem/ck$b;

    .line 4
    iget-object v7, v6, Lcom/huawei/hem/ck$b;->a:Lcom/huawei/hem/yj;

    .line 5
    iget-object v6, v6, Lcom/huawei/hem/ck$b;->b:Lcom/huawei/hem/jk;

    .line 6
    sget-object v8, Lcom/huawei/hem/ck;->i:[B

    invoke-interface {p1, v8}, Lcom/huawei/hem/in;->B([B)Lcom/huawei/hem/in;

    .line 7
    iget-object v8, p0, Lcom/huawei/hem/ck;->a:Lcom/huawei/hem/kn;

    invoke-interface {p1, v8}, Lcom/huawei/hem/in;->C(Lcom/huawei/hem/kn;)Lcom/huawei/hem/in;

    .line 8
    sget-object v8, Lcom/huawei/hem/ck;->h:[B

    invoke-interface {p1, v8}, Lcom/huawei/hem/in;->B([B)Lcom/huawei/hem/in;

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v7}, Lcom/huawei/hem/yj;->g()I

    move-result v8

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_1

    .line 10
    invoke-virtual {v7, v9}, Lcom/huawei/hem/yj;->d(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lcom/huawei/hem/in;->H(Ljava/lang/String;)Lcom/huawei/hem/in;

    move-result-object v10

    sget-object v11, Lcom/huawei/hem/ck;->g:[B

    .line 11
    invoke-interface {v10, v11}, Lcom/huawei/hem/in;->B([B)Lcom/huawei/hem/in;

    move-result-object v10

    .line 12
    invoke-virtual {v7, v9}, Lcom/huawei/hem/yj;->h(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/huawei/hem/in;->H(Ljava/lang/String;)Lcom/huawei/hem/in;

    move-result-object v10

    sget-object v11, Lcom/huawei/hem/ck;->h:[B

    .line 13
    invoke-interface {v10, v11}, Lcom/huawei/hem/in;->B([B)Lcom/huawei/hem/in;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v6}, Lcom/huawei/hem/jk;->b()Lcom/huawei/hem/bk;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    .line 15
    invoke-interface {p1, v8}, Lcom/huawei/hem/in;->H(Ljava/lang/String;)Lcom/huawei/hem/in;

    move-result-object v8

    .line 16
    iget-object v7, v7, Lcom/huawei/hem/bk;->a:Ljava/lang/String;

    .line 17
    invoke-interface {v8, v7}, Lcom/huawei/hem/in;->H(Ljava/lang/String;)Lcom/huawei/hem/in;

    move-result-object v7

    sget-object v8, Lcom/huawei/hem/ck;->h:[B

    .line 18
    invoke-interface {v7, v8}, Lcom/huawei/hem/in;->B([B)Lcom/huawei/hem/in;

    .line 19
    :cond_2
    invoke-virtual {v6}, Lcom/huawei/hem/jk;->a()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    .line 20
    invoke-interface {p1, v9}, Lcom/huawei/hem/in;->H(Ljava/lang/String;)Lcom/huawei/hem/in;

    move-result-object v9

    .line 21
    invoke-interface {v9, v7, v8}, Lcom/huawei/hem/in;->I(J)Lcom/huawei/hem/in;

    move-result-object v9

    sget-object v10, Lcom/huawei/hem/ck;->h:[B

    .line 22
    invoke-interface {v9, v10}, Lcom/huawei/hem/in;->B([B)Lcom/huawei/hem/in;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 23
    invoke-virtual {v0}, Lcom/huawei/hem/hn;->a()V

    return-wide v9

    .line 24
    :cond_4
    :goto_3
    sget-object v9, Lcom/huawei/hem/ck;->h:[B

    invoke-interface {p1, v9}, Lcom/huawei/hem/in;->B([B)Lcom/huawei/hem/in;

    if-eqz p2, :cond_5

    add-long/2addr v3, v7

    goto :goto_4

    .line 25
    :cond_5
    invoke-virtual {v6, p1}, Lcom/huawei/hem/jk;->e(Lcom/huawei/hem/in;)V

    .line 26
    :goto_4
    sget-object v6, Lcom/huawei/hem/ck;->h:[B

    invoke-interface {p1, v6}, Lcom/huawei/hem/in;->B([B)Lcom/huawei/hem/in;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 27
    :cond_6
    sget-object v1, Lcom/huawei/hem/ck;->i:[B

    invoke-interface {p1, v1}, Lcom/huawei/hem/in;->B([B)Lcom/huawei/hem/in;

    .line 28
    iget-object v1, p0, Lcom/huawei/hem/ck;->a:Lcom/huawei/hem/kn;

    invoke-interface {p1, v1}, Lcom/huawei/hem/in;->C(Lcom/huawei/hem/kn;)Lcom/huawei/hem/in;

    .line 29
    sget-object v1, Lcom/huawei/hem/ck;->i:[B

    invoke-interface {p1, v1}, Lcom/huawei/hem/in;->B([B)Lcom/huawei/hem/in;

    .line 30
    sget-object v1, Lcom/huawei/hem/ck;->h:[B

    invoke-interface {p1, v1}, Lcom/huawei/hem/in;->B([B)Lcom/huawei/hem/in;

    if-eqz p2, :cond_7

    .line 31
    iget-wide p1, v0, Lcom/huawei/hem/hn;->b:J

    add-long/2addr v3, p1

    .line 32
    invoke-virtual {v0}, Lcom/huawei/hem/hn;->a()V

    :cond_7
    return-wide v3
.end method
