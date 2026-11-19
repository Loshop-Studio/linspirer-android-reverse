.class public final Lcom/loc/bx$a;
.super Ljava/lang/Object;
.source "CellCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:B

.field public b:Ljava/lang/String;

.field public c:Lcom/loc/cx;

.field public d:Lcom/loc/cx;

.field public e:Lcom/loc/cx;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/loc/cx;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/loc/cx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bx$a;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bx$a;->g:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/loc/cx;Lcom/loc/cx;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v2, p0, Lcom/loc/cz;

    if-eqz v2, :cond_2

    instance-of v2, p1, Lcom/loc/cz;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/loc/cz;

    check-cast p1, Lcom/loc/cz;

    iget v2, p0, Lcom/loc/cz;->j:I

    iget v3, p1, Lcom/loc/cz;->j:I

    if-ne v2, v3, :cond_1

    iget p0, p0, Lcom/loc/cz;->k:I

    iget p1, p1, Lcom/loc/cz;->k:I

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    instance-of v2, p0, Lcom/loc/cy;

    if-eqz v2, :cond_4

    instance-of v2, p1, Lcom/loc/cy;

    if-eqz v2, :cond_4

    check-cast p0, Lcom/loc/cy;

    check-cast p1, Lcom/loc/cy;

    iget v2, p0, Lcom/loc/cy;->l:I

    iget v3, p1, Lcom/loc/cy;->l:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/loc/cy;->k:I

    iget v3, p1, Lcom/loc/cy;->k:I

    if-ne v2, v3, :cond_3

    iget p0, p0, Lcom/loc/cy;->j:I

    iget p1, p1, Lcom/loc/cy;->j:I

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    instance-of v2, p0, Lcom/loc/da;

    if-eqz v2, :cond_6

    instance-of v2, p1, Lcom/loc/da;

    if-eqz v2, :cond_6

    check-cast p0, Lcom/loc/da;

    check-cast p1, Lcom/loc/da;

    iget v2, p0, Lcom/loc/da;->j:I

    iget v3, p1, Lcom/loc/da;->j:I

    if-ne v2, v3, :cond_5

    iget p0, p0, Lcom/loc/da;->k:I

    iget p1, p1, Lcom/loc/da;->k:I

    if-ne p0, p1, :cond_5

    return v0

    :cond_5
    return v1

    :cond_6
    instance-of v2, p0, Lcom/loc/db;

    if-eqz v2, :cond_7

    instance-of v2, p1, Lcom/loc/db;

    if-eqz v2, :cond_7

    check-cast p0, Lcom/loc/db;

    check-cast p1, Lcom/loc/db;

    iget v2, p0, Lcom/loc/db;->j:I

    iget v3, p1, Lcom/loc/db;->j:I

    if-ne v2, v3, :cond_7

    iget p0, p0, Lcom/loc/db;->k:I

    iget p1, p1, Lcom/loc/db;->k:I

    if-ne p0, p1, :cond_7

    return v0

    :cond_7
    return v1

    :cond_8
    :goto_0
    if-nez p0, :cond_9

    move p0, v0

    goto :goto_1

    :cond_9
    move p0, v1

    :goto_1
    if-nez p1, :cond_a

    move p1, v0

    goto :goto_2

    :cond_a
    move p1, v1

    :goto_2
    if-ne p0, p1, :cond_b

    return v0

    :cond_b
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/loc/bx$a;->a:B

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/bx$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bx$a;->c:Lcom/loc/cx;

    iput-object v0, p0, Lcom/loc/bx$a;->d:Lcom/loc/cx;

    iput-object v0, p0, Lcom/loc/bx$a;->e:Lcom/loc/cx;

    iget-object v0, p0, Lcom/loc/bx$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/loc/bx$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(BLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/loc/cx;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/loc/bx$a;->a()V

    iput-byte p1, p0, Lcom/loc/bx$a;->a:B

    iput-object p2, p0, Lcom/loc/bx$a;->b:Ljava/lang/String;

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/loc/bx$a;->f:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/loc/bx$a;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/loc/cx;

    iget-boolean p3, p2, Lcom/loc/cx;->i:Z

    if-nez p3, :cond_1

    iget-boolean p3, p2, Lcom/loc/cx;->h:Z

    if-eqz p3, :cond_1

    iput-object p2, p0, Lcom/loc/bx$a;->d:Lcom/loc/cx;

    goto :goto_0

    :cond_1
    iget-boolean p3, p2, Lcom/loc/cx;->i:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p2, Lcom/loc/cx;->h:Z

    if-eqz p3, :cond_0

    iput-object p2, p0, Lcom/loc/bx$a;->e:Lcom/loc/cx;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/loc/bx$a;->d:Lcom/loc/cx;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/loc/bx$a;->e:Lcom/loc/cx;

    :cond_3
    iput-object p1, p0, Lcom/loc/bx$a;->c:Lcom/loc/cx;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellInfo{radio="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/loc/bx$a;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operator=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/bx$a;->b:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mainCell="

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hem/f6;->z(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/loc/bx$a;->c:Lcom/loc/cx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainOldInterCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/bx$a;->d:Lcom/loc/cx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainNewInterCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/bx$a;->e:Lcom/loc/cx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cells="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/bx$a;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", historyMainCellList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/bx$a;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
