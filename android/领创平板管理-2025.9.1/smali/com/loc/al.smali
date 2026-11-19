.class public final Lcom/loc/al;
.super Lcom/loc/ar;
.source "ADIURequest.java"


# instance fields
.field public a:[B

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/loc/ar;-><init>()V

    iput-object p1, p0, Lcom/loc/al;->a:[B

    iput-object p2, p0, Lcom/loc/al;->b:Ljava/util/Map;

    sget-object p1, Lcom/loc/ar$a;->e:Lcom/loc/ar$a;

    invoke-virtual {p0, p1}, Lcom/loc/ar;->a(Lcom/loc/ar$a;)V

    sget-object p1, Lcom/loc/ar$c;->b:Lcom/loc/ar$c;

    invoke-virtual {p0, p1}, Lcom/loc/ar;->a(Lcom/loc/ar$c;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "https://adiu.amap.com/ws/device/adius"

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/al;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final e()[B
    .locals 1

    iget-object v0, p0, Lcom/loc/al;->a:[B

    return-object v0
.end method
