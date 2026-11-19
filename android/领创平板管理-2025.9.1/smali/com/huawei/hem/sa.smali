.class public final enum Lcom/huawei/hem/sa;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hem/sa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hem/sa;

.field public static final enum b:Lcom/huawei/hem/sa;

.field public static final enum c:Lcom/huawei/hem/sa;

.field public static final enum d:Lcom/huawei/hem/sa;

.field public static final synthetic e:[Lcom/huawei/hem/sa;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/huawei/hem/sa;

    const-string v1, "IMEI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hem/sa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hem/sa;->a:Lcom/huawei/hem/sa;

    new-instance v0, Lcom/huawei/hem/sa;

    const-string v1, "UDID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/hem/sa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hem/sa;->b:Lcom/huawei/hem/sa;

    new-instance v0, Lcom/huawei/hem/sa;

    const-string v1, "SN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/hem/sa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hem/sa;->c:Lcom/huawei/hem/sa;

    new-instance v0, Lcom/huawei/hem/sa;

    const-string v1, "EMPTY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/hem/sa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hem/sa;->d:Lcom/huawei/hem/sa;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/huawei/hem/sa;

    sget-object v6, Lcom/huawei/hem/sa;->a:Lcom/huawei/hem/sa;

    aput-object v6, v1, v2

    sget-object v2, Lcom/huawei/hem/sa;->b:Lcom/huawei/hem/sa;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hem/sa;->c:Lcom/huawei/hem/sa;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/huawei/hem/sa;->e:[Lcom/huawei/hem/sa;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hem/sa;
    .locals 1

    const-class v0, Lcom/huawei/hem/sa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hem/sa;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hem/sa;
    .locals 1

    sget-object v0, Lcom/huawei/hem/sa;->e:[Lcom/huawei/hem/sa;

    invoke-virtual {v0}, [Lcom/huawei/hem/sa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hem/sa;

    return-object v0
.end method
