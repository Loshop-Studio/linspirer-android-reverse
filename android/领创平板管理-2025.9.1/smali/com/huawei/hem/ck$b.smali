.class public final Lcom/huawei/hem/ck$b;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/huawei/hem/yj;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lcom/huawei/hem/jk;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/yj;Lcom/huawei/hem/jk;)V
    .locals 0
    .param p1    # Lcom/huawei/hem/yj;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/ck$b;->a:Lcom/huawei/hem/yj;

    .line 3
    iput-object p2, p0, Lcom/huawei/hem/ck$b;->b:Lcom/huawei/hem/jk;

    return-void
.end method
