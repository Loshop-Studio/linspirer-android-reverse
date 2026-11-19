.class public Lcom/android/launcher3/network/params/Params;
.super Ljava/lang/Object;
.source "Params.java"


# instance fields
.field public email:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public swdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/network/params/Params;->setModel(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/de;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/params/Params;->setSwdid(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/Params;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/Params;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getSwdid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/Params;->swdid:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/Params;->email:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/Params;->model:Ljava/lang/String;

    return-void
.end method

.method public setSwdid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/Params;->swdid:Ljava/lang/String;

    return-void
.end method
