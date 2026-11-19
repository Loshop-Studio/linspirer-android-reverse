.class public final enum Lcom/alibaba/sdk/android/push/common/util/b/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/push/common/util/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/push/common/util/b/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

.field public static final enum b:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

.field public static final enum c:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

.field public static final enum d:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

.field public static final enum e:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

.field public static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/sdk/android/push/common/util/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic h:[Lcom/alibaba/sdk/android/push/common/util/b/a$a;


# instance fields
.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/push/common/util/b/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->a:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    const-string v1, "WIFI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/sdk/android/push/common/util/b/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->b:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    const-string v1, "G2"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/sdk/android/push/common/util/b/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->c:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    const-string v1, "G3"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/alibaba/sdk/android/push/common/util/b/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->d:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    new-instance v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    const-string v1, "G4"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/sdk/android/push/common/util/b/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->e:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    new-array v1, v7, [Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    sget-object v7, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->a:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    aput-object v7, v1, v2

    sget-object v7, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->b:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    aput-object v7, v1, v3

    sget-object v3, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->c:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    aput-object v3, v1, v4

    sget-object v3, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->d:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    aput-object v3, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->h:[Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->f:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->values()[Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->f:Ljava/util/Map;

    iget v5, v3, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/push/common/util/b/a$a;
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/push/common/util/b/a$a;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->h:[Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/push/common/util/b/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    return-object v0
.end method
