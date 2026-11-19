.class public Lcom/huawei/hem/p6;
.super Ljava/lang/Object;
.source "MdmPolicyManager.java"


# instance fields
.field public final a:Landroid/os/ApiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "api"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ApiManager;

    iput-object p1, p0, Lcom/huawei/hem/p6;->a:Landroid/os/ApiManager;

    return-void
.end method
