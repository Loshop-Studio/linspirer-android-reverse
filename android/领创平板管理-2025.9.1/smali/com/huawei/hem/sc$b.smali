.class public Lcom/huawei/hem/sc$b;
.super Ljava/lang/Object;
.source "HaierImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/sc;->I0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/sc;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/huawei/hem/sc$b;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/sc;->c:Lcom/huawei/hem/p6;

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/sc$b;->a:Ljava/util/List;

    .line 3
    iget-object v0, v0, Lcom/huawei/hem/p6;->a:Landroid/os/ApiManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/ApiManager;->AppUnBlockNetworkWhiteListSet(Ljava/util/List;)I

    :goto_0
    return-void
.end method
