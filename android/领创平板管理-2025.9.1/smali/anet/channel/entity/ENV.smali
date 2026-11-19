.class public final enum Lanet/channel/entity/ENV;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lanet/channel/entity/ENV;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lanet/channel/entity/ENV;

.field public static final enum ONLINE:Lanet/channel/entity/ENV;

.field public static final enum PREPARE:Lanet/channel/entity/ENV;

.field public static final enum TEST:Lanet/channel/entity/ENV;


# instance fields
.field public envMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lanet/channel/entity/ENV;

    const-string v1, "ONLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lanet/channel/entity/ENV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    new-instance v0, Lanet/channel/entity/ENV;

    const-string v1, "PREPARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lanet/channel/entity/ENV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    new-instance v0, Lanet/channel/entity/ENV;

    const-string v1, "TEST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lanet/channel/entity/ENV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    const/4 v1, 0x3

    new-array v1, v1, [Lanet/channel/entity/ENV;

    .line 2
    sget-object v5, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    aput-object v5, v1, v2

    sget-object v2, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lanet/channel/entity/ENV;->$VALUES:[Lanet/channel/entity/ENV;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lanet/channel/entity/ENV;->envMode:I

    return-void
.end method

.method public static valueOf(I)Lanet/channel/entity/ENV;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lanet/channel/entity/ENV;
    .locals 1

    .line 1
    const-class v0, Lanet/channel/entity/ENV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lanet/channel/entity/ENV;

    return-object p0
.end method

.method public static values()[Lanet/channel/entity/ENV;
    .locals 1

    .line 1
    sget-object v0, Lanet/channel/entity/ENV;->$VALUES:[Lanet/channel/entity/ENV;

    invoke-virtual {v0}, [Lanet/channel/entity/ENV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanet/channel/entity/ENV;

    return-object v0
.end method


# virtual methods
.method public getEnvMode()I
    .locals 1

    .line 1
    iget v0, p0, Lanet/channel/entity/ENV;->envMode:I

    return v0
.end method

.method public setEnvMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lanet/channel/entity/ENV;->envMode:I

    return-void
.end method
