.class public Lcom/huawei/hem/wf;
.super Lcom/huawei/hem/xf;
.source "DownloadServiceConnectChangedEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/wf$a;
    }
.end annotation


# instance fields
.field public final c:Lcom/huawei/hem/wf$a;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/wf$a;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hem/wf$a;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string p2, "event.service.connect.changed"

    .line 1
    invoke-direct {p0, p2}, Lcom/huawei/hem/xf;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/wf;->c:Lcom/huawei/hem/wf$a;

    return-void
.end method
