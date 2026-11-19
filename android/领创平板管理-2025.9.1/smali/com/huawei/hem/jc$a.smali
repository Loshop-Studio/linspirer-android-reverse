.class public final Lcom/huawei/hem/jc$a;
.super Ljava/lang/Object;
.source "AndroidImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/jc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/huawei/hem/jc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/jc;

    invoke-direct {v0}, Lcom/huawei/hem/jc;-><init>()V

    sput-object v0, Lcom/huawei/hem/jc$a;->a:Lcom/huawei/hem/jc;

    return-void
.end method
