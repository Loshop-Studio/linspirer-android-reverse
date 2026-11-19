.class public Lcom/android/launcher3/network/params/ClientLogParams;
.super Ljava/lang/Object;
.source "ClientLogParams.java"


# instance fields
.field public path:Ljava/lang/String;

.field public swdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/ClientLogParams;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSwdid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/network/params/ClientLogParams;->swdid:Ljava/lang/String;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/ClientLogParams;->path:Ljava/lang/String;

    return-void
.end method

.method public setSwdid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/network/params/ClientLogParams;->swdid:Ljava/lang/String;

    return-void
.end method
