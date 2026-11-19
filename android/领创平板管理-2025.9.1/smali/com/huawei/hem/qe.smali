.class public Lcom/huawei/hem/qe;
.super Ljava/lang/Object;
.source "FileDownloadServiceProxy.java"

# interfaces
.implements Lcom/huawei/hem/we;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/qe$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/we;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/qe$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lcom/huawei/hem/gh$b;->a:Lcom/huawei/hem/gh;

    .line 3
    iget-boolean p1, p1, Lcom/huawei/hem/gh;->d:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/huawei/hem/re;

    invoke-direct {p1}, Lcom/huawei/hem/re;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/huawei/hem/se;

    invoke-direct {p1}, Lcom/huawei/hem/se;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/huawei/hem/qe;->a:Lcom/huawei/hem/we;

    return-void
.end method


# virtual methods
.method public b(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/qe;->a:Lcom/huawei/hem/we;

    invoke-interface {v0, p1}, Lcom/huawei/hem/we;->b(I)B

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
    .locals 11

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/huawei/hem/qe;->a:Lcom/huawei/hem/we;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/huawei/hem/we;->d(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z

    move-result v1

    return v1
.end method

.method public g(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/qe;->a:Lcom/huawei/hem/we;

    invoke-interface {v0, p1}, Lcom/huawei/hem/we;->g(Z)V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/qe;->a:Lcom/huawei/hem/we;

    invoke-interface {v0}, Lcom/huawei/hem/we;->isConnected()Z

    move-result v0

    return v0
.end method

.method public n(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/qe;->a:Lcom/huawei/hem/we;

    invoke-interface {v0, p1}, Lcom/huawei/hem/we;->n(I)Z

    move-result p1

    return p1
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/qe;->a:Lcom/huawei/hem/we;

    invoke-interface {v0}, Lcom/huawei/hem/we;->o()Z

    move-result v0

    return v0
.end method

.method public p(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/qe;->a:Lcom/huawei/hem/we;

    invoke-interface {v0, p1}, Lcom/huawei/hem/we;->p(Landroid/content/Context;)V

    return-void
.end method
