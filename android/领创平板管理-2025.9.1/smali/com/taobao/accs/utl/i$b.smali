.class public Lcom/taobao/accs/utl/i$b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/utl/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/taobao/accs/utl/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/taobao/accs/utl/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/accs/utl/i;-><init>(Lcom/taobao/accs/utl/j;)V

    sput-object v0, Lcom/taobao/accs/utl/i$b;->a:Lcom/taobao/accs/utl/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/taobao/accs/utl/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/taobao/accs/utl/i$b;->a:Lcom/taobao/accs/utl/i;

    return-object v0
.end method
