.class public final enum Lcom/loc/ar$a;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/loc/ar$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/loc/ar$a;

.field public static final enum b:Lcom/loc/ar$a;

.field public static final enum c:Lcom/loc/ar$a;

.field public static final enum d:Lcom/loc/ar$a;

.field public static final enum e:Lcom/loc/ar$a;

.field public static final synthetic g:[Lcom/loc/ar$a;


# instance fields
.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/loc/ar$a;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/loc/ar$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/loc/ar$a;->a:Lcom/loc/ar$a;

    new-instance v0, Lcom/loc/ar$a;

    const-string v1, "INTERRUPT_IO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/loc/ar$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/loc/ar$a;->b:Lcom/loc/ar$a;

    new-instance v0, Lcom/loc/ar$a;

    const-string v1, "NEVER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/loc/ar$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/loc/ar$a;->c:Lcom/loc/ar$a;

    new-instance v0, Lcom/loc/ar$a;

    const-string v1, "FIX"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/loc/ar$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/loc/ar$a;->d:Lcom/loc/ar$a;

    new-instance v0, Lcom/loc/ar$a;

    const-string v1, "SINGLE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/loc/ar$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/loc/ar$a;->e:Lcom/loc/ar$a;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/loc/ar$a;

    sget-object v7, Lcom/loc/ar$a;->a:Lcom/loc/ar$a;

    aput-object v7, v1, v2

    sget-object v2, Lcom/loc/ar$a;->b:Lcom/loc/ar$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/loc/ar$a;->c:Lcom/loc/ar$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/loc/ar$a;->d:Lcom/loc/ar$a;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/loc/ar$a;->g:[Lcom/loc/ar$a;

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

    iput p3, p0, Lcom/loc/ar$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/loc/ar$a;
    .locals 1

    const-class v0, Lcom/loc/ar$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/loc/ar$a;

    return-object p0
.end method

.method public static values()[Lcom/loc/ar$a;
    .locals 1

    sget-object v0, Lcom/loc/ar$a;->g:[Lcom/loc/ar$a;

    invoke-virtual {v0}, [Lcom/loc/ar$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/loc/ar$a;

    return-object v0
.end method
