.class public Lcom/huawei/hem/am$a;
.super Lcom/huawei/hem/sk;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/am;->N(ILcom/huawei/hem/wl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/huawei/hem/wl;

.field public final synthetic d:Lcom/huawei/hem/am;


# direct methods
.method public varargs constructor <init>(Lcom/huawei/hem/am;Ljava/lang/String;[Ljava/lang/Object;ILcom/huawei/hem/wl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/am$a;->d:Lcom/huawei/hem/am;

    iput p4, p0, Lcom/huawei/hem/am$a;->b:I

    iput-object p5, p0, Lcom/huawei/hem/am$a;->c:Lcom/huawei/hem/wl;

    invoke-direct {p0, p2, p3}, Lcom/huawei/hem/sk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hem/am$a;->d:Lcom/huawei/hem/am;

    iget v1, p0, Lcom/huawei/hem/am$a;->b:I

    iget-object v2, p0, Lcom/huawei/hem/am$a;->c:Lcom/huawei/hem/wl;

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/am;->v:Lcom/huawei/hem/mm;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hem/mm;->i(ILcom/huawei/hem/wl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/huawei/hem/am$a;->d:Lcom/huawei/hem/am;

    .line 4
    sget-object v2, Lcom/huawei/hem/wl;->PROTOCOL_ERROR:Lcom/huawei/hem/wl;

    invoke-virtual {v1, v2, v2, v0}, Lcom/huawei/hem/am;->a(Lcom/huawei/hem/wl;Lcom/huawei/hem/wl;Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
