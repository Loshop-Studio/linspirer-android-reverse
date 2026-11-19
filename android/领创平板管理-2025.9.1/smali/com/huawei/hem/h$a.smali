.class public final enum Lcom/huawei/hem/h$a;
.super Ljava/lang/Enum;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hem/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/huawei/hem/h$a;

.field public static final enum ON_ANY:Lcom/huawei/hem/h$a;

.field public static final enum ON_CREATE:Lcom/huawei/hem/h$a;

.field public static final enum ON_DESTROY:Lcom/huawei/hem/h$a;

.field public static final enum ON_PAUSE:Lcom/huawei/hem/h$a;

.field public static final enum ON_RESUME:Lcom/huawei/hem/h$a;

.field public static final enum ON_START:Lcom/huawei/hem/h$a;

.field public static final enum ON_STOP:Lcom/huawei/hem/h$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/huawei/hem/h$a;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hem/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hem/h$a;->ON_CREATE:Lcom/huawei/hem/h$a;

    .line 2
    new-instance v0, Lcom/huawei/hem/h$a;

    const-string v1, "ON_START"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/hem/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hem/h$a;->ON_START:Lcom/huawei/hem/h$a;

    .line 3
    new-instance v0, Lcom/huawei/hem/h$a;

    const-string v1, "ON_RESUME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/hem/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hem/h$a;->ON_RESUME:Lcom/huawei/hem/h$a;

    .line 4
    new-instance v0, Lcom/huawei/hem/h$a;

    const-string v1, "ON_PAUSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/hem/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hem/h$a;->ON_PAUSE:Lcom/huawei/hem/h$a;

    .line 5
    new-instance v0, Lcom/huawei/hem/h$a;

    const-string v1, "ON_STOP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/huawei/hem/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hem/h$a;->ON_STOP:Lcom/huawei/hem/h$a;

    .line 6
    new-instance v0, Lcom/huawei/hem/h$a;

    const-string v1, "ON_DESTROY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/huawei/hem/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hem/h$a;->ON_DESTROY:Lcom/huawei/hem/h$a;

    .line 7
    new-instance v0, Lcom/huawei/hem/h$a;

    const-string v1, "ON_ANY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/huawei/hem/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hem/h$a;->ON_ANY:Lcom/huawei/hem/h$a;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/huawei/hem/h$a;

    .line 8
    sget-object v9, Lcom/huawei/hem/h$a;->ON_CREATE:Lcom/huawei/hem/h$a;

    aput-object v9, v1, v2

    sget-object v2, Lcom/huawei/hem/h$a;->ON_START:Lcom/huawei/hem/h$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hem/h$a;->ON_RESUME:Lcom/huawei/hem/h$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/huawei/hem/h$a;->ON_PAUSE:Lcom/huawei/hem/h$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/huawei/hem/h$a;->ON_STOP:Lcom/huawei/hem/h$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/huawei/hem/h$a;->ON_DESTROY:Lcom/huawei/hem/h$a;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/huawei/hem/h$a;->$VALUES:[Lcom/huawei/hem/h$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hem/h$a;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hem/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hem/h$a;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hem/h$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hem/h$a;->$VALUES:[Lcom/huawei/hem/h$a;

    invoke-virtual {v0}, [Lcom/huawei/hem/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hem/h$a;

    return-object v0
.end method
