.class public final Lcom/huawei/hem/pc$b;
.super Ljava/lang/Object;
.source "EbenImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/pc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/huawei/hem/pc;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hem/pc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hem/pc;-><init>(Lcom/huawei/hem/pc$a;)V

    sput-object v0, Lcom/huawei/hem/pc$b;->a:Lcom/huawei/hem/pc;

    return-void
.end method
