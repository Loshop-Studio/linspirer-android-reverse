.class public Lcom/huawei/hem/jf$a;
.super Ljava/lang/Object;
.source "NoDatabaseImpl.java"

# interfaces
.implements Lcom/huawei/hem/if$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/jf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/jf;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/jf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/jf$a;->a:Lcom/huawei/hem/jf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public f(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hem/jf$b;

    iget-object v1, p0, Lcom/huawei/hem/jf$a;->a:Lcom/huawei/hem/jf;

    invoke-direct {v0, v1}, Lcom/huawei/hem/jf$b;-><init>(Lcom/huawei/hem/jf;)V

    return-object v0
.end method
