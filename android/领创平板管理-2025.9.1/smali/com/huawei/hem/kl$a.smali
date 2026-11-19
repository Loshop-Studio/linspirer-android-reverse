.class public Lcom/huawei/hem/kl$a;
.super Lcom/huawei/hem/fn;
.source "Transmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/kl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lcom/huawei/hem/kl;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/kl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/kl$a;->k:Lcom/huawei/hem/kl;

    invoke-direct {p0}, Lcom/huawei/hem/fn;-><init>()V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/kl$a;->k:Lcom/huawei/hem/kl;

    invoke-virtual {v0}, Lcom/huawei/hem/kl;->b()V

    return-void
.end method
