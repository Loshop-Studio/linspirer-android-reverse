.class public Lcom/huawei/hem/te;
.super Ljava/lang/Object;
.source "FileDownloadTaskLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/te$c;,
        Lcom/huawei/hem/te$b;,
        Lcom/huawei/hem/te$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/te$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hem/te$b;

    invoke-direct {v0}, Lcom/huawei/hem/te$b;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/te;->a:Lcom/huawei/hem/te$b;

    return-void
.end method
