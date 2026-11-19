.class public Lcom/taobao/accs/AccsState$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/AccsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/taobao/accs/AccsState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/taobao/accs/AccsState;

    invoke-direct {v0}, Lcom/taobao/accs/AccsState;-><init>()V

    sput-object v0, Lcom/taobao/accs/AccsState$a;->a:Lcom/taobao/accs/AccsState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/taobao/accs/AccsState;
    .locals 1

    .line 1
    sget-object v0, Lcom/taobao/accs/AccsState$a;->a:Lcom/taobao/accs/AccsState;

    return-object v0
.end method
