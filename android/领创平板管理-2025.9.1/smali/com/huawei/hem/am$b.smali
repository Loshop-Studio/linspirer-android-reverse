.class public Lcom/huawei/hem/am$b;
.super Lcom/huawei/hem/sk;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/am;->O(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Lcom/huawei/hem/am;


# direct methods
.method public varargs constructor <init>(Lcom/huawei/hem/am;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/am$b;->d:Lcom/huawei/hem/am;

    iput p4, p0, Lcom/huawei/hem/am$b;->b:I

    iput-wide p5, p0, Lcom/huawei/hem/am$b;->c:J

    invoke-direct {p0, p2, p3}, Lcom/huawei/hem/sk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/am$b;->d:Lcom/huawei/hem/am;

    iget-object v0, v0, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    iget v1, p0, Lcom/huawei/hem/am$b;->b:I

    iget-wide v2, p0, Lcom/huawei/hem/am$b;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/hem/mm;->j(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/huawei/hem/am$b;->d:Lcom/huawei/hem/am;

    .line 3
    sget-object v2, Lcom/huawei/hem/wl;->PROTOCOL_ERROR:Lcom/huawei/hem/wl;

    invoke-virtual {v1, v2, v2, v0}, Lcom/huawei/hem/am;->a(Lcom/huawei/hem/wl;Lcom/huawei/hem/wl;Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
