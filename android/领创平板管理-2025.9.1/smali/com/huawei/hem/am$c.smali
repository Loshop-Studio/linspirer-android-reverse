.class public Lcom/huawei/hem/am$c;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Lcom/huawei/hem/jn;

.field public d:Lcom/huawei/hem/in;

.field public e:Lcom/huawei/hem/am$e;

.field public f:Lcom/huawei/hem/om;

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/huawei/hem/am$e;->a:Lcom/huawei/hem/am$e;

    iput-object v0, p0, Lcom/huawei/hem/am$c;->e:Lcom/huawei/hem/am$e;

    .line 3
    sget-object v0, Lcom/huawei/hem/om;->a:Lcom/huawei/hem/om;

    iput-object v0, p0, Lcom/huawei/hem/am$c;->f:Lcom/huawei/hem/om;

    .line 4
    iput-boolean p1, p0, Lcom/huawei/hem/am$c;->g:Z

    return-void
.end method
