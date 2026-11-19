.class public Lcom/android/launcher3/model/SynchronizeTimeInfo;
.super Ljava/lang/Object;
.source "SynchronizeTimeInfo.java"


# instance fields
.field public data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/SynchronizeTimeInfo;->data:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/SynchronizeTimeInfo;->data:Ljava/lang/String;

    return-void
.end method
