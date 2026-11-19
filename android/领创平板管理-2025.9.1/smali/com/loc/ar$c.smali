.class public final enum Lcom/loc/ar$c;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/loc/ar$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/loc/ar$c;

.field public static final enum b:Lcom/loc/ar$c;

.field public static final synthetic d:[Lcom/loc/ar$c;


# instance fields
.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/loc/ar$c;

    const-string v1, "HTTP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/loc/ar$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/loc/ar$c;->a:Lcom/loc/ar$c;

    new-instance v0, Lcom/loc/ar$c;

    const-string v1, "HTTPS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/loc/ar$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/loc/ar$c;->b:Lcom/loc/ar$c;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/loc/ar$c;

    sget-object v4, Lcom/loc/ar$c;->a:Lcom/loc/ar$c;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/loc/ar$c;->d:[Lcom/loc/ar$c;

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

    iput p3, p0, Lcom/loc/ar$c;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/loc/ar$c;
    .locals 1

    const-class v0, Lcom/loc/ar$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/loc/ar$c;

    return-object p0
.end method

.method public static values()[Lcom/loc/ar$c;
    .locals 1

    sget-object v0, Lcom/loc/ar$c;->d:[Lcom/loc/ar$c;

    invoke-virtual {v0}, [Lcom/loc/ar$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/loc/ar$c;

    return-object v0
.end method
