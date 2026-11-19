.class public Lcom/huawei/hem/am$e$a;
.super Lcom/huawei/hem/am$e;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/am$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hem/am$e;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/huawei/hem/lm;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hem/wl;->REFUSED_STREAM:Lcom/huawei/hem/wl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/huawei/hem/lm;->c(Lcom/huawei/hem/wl;Ljava/io/IOException;)V

    return-void
.end method
