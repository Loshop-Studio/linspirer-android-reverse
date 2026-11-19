.class public final Lcom/huawei/hem/xl;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final d:Lcom/huawei/hem/kn;

.field public static final e:Lcom/huawei/hem/kn;

.field public static final f:Lcom/huawei/hem/kn;

.field public static final g:Lcom/huawei/hem/kn;

.field public static final h:Lcom/huawei/hem/kn;

.field public static final i:Lcom/huawei/hem/kn;


# instance fields
.field public final a:Lcom/huawei/hem/kn;

.field public final b:Lcom/huawei/hem/kn;

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/kn;->encodeUtf8(Ljava/lang/String;)Lcom/huawei/hem/kn;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/xl;->d:Lcom/huawei/hem/kn;

    const-string v0, ":status"

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/kn;->encodeUtf8(Ljava/lang/String;)Lcom/huawei/hem/kn;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/xl;->e:Lcom/huawei/hem/kn;

    const-string v0, ":method"

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/kn;->encodeUtf8(Ljava/lang/String;)Lcom/huawei/hem/kn;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/xl;->f:Lcom/huawei/hem/kn;

    const-string v0, ":path"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/kn;->encodeUtf8(Ljava/lang/String;)Lcom/huawei/hem/kn;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/xl;->g:Lcom/huawei/hem/kn;

    const-string v0, ":scheme"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/kn;->encodeUtf8(Ljava/lang/String;)Lcom/huawei/hem/kn;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/xl;->h:Lcom/huawei/hem/kn;

    const-string v0, ":authority"

    .line 6
    invoke-static {v0}, Lcom/huawei/hem/kn;->encodeUtf8(Ljava/lang/String;)Lcom/huawei/hem/kn;

    move-result-object v0

    sput-object v0, Lcom/huawei/hem/xl;->i:Lcom/huawei/hem/kn;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/kn;Lcom/huawei/hem/kn;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/huawei/hem/xl;->a:Lcom/huawei/hem/kn;

    .line 5
    iput-object p2, p0, Lcom/huawei/hem/xl;->b:Lcom/huawei/hem/kn;

    .line 6
    invoke-virtual {p1}, Lcom/huawei/hem/kn;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lcom/huawei/hem/kn;->size()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/huawei/hem/xl;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hem/kn;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p2}, Lcom/huawei/hem/kn;->encodeUtf8(Ljava/lang/String;)Lcom/huawei/hem/kn;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/huawei/hem/xl;-><init>(Lcom/huawei/hem/kn;Lcom/huawei/hem/kn;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/kn;->encodeUtf8(Ljava/lang/String;)Lcom/huawei/hem/kn;

    move-result-object p1

    invoke-static {p2}, Lcom/huawei/hem/kn;->encodeUtf8(Ljava/lang/String;)Lcom/huawei/hem/kn;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/huawei/hem/xl;-><init>(Lcom/huawei/hem/kn;Lcom/huawei/hem/kn;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/huawei/hem/xl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/huawei/hem/xl;

    .line 3
    iget-object v0, p0, Lcom/huawei/hem/xl;->a:Lcom/huawei/hem/kn;

    iget-object v2, p1, Lcom/huawei/hem/xl;->a:Lcom/huawei/hem/kn;

    invoke-virtual {v0, v2}, Lcom/huawei/hem/kn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hem/xl;->b:Lcom/huawei/hem/kn;

    iget-object p1, p1, Lcom/huawei/hem/xl;->b:Lcom/huawei/hem/kn;

    .line 4
    invoke-virtual {v0, p1}, Lcom/huawei/hem/kn;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/xl;->a:Lcom/huawei/hem/kn;

    invoke-virtual {v0}, Lcom/huawei/hem/kn;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/xl;->b:Lcom/huawei/hem/kn;

    invoke-virtual {v1}, Lcom/huawei/hem/kn;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/huawei/hem/xl;->a:Lcom/huawei/hem/kn;

    invoke-virtual {v1}, Lcom/huawei/hem/kn;->utf8()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/huawei/hem/xl;->b:Lcom/huawei/hem/kn;

    invoke-virtual {v1}, Lcom/huawei/hem/kn;->utf8()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Lcom/huawei/hem/tk;->k(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
