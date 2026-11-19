.class public final Lcom/huawei/hem/oe$a;
.super Ljava/lang/Object;
.source "FileDownloadMessageStation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/oe;->b(Lcom/huawei/hem/ve;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/ve;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/oe$a;->a:Lcom/huawei/hem/ve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/oe$a;->a:Lcom/huawei/hem/ve;

    invoke-interface {v0}, Lcom/huawei/hem/ve;->k()V

    return-void
.end method
