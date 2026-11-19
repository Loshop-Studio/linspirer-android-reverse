.class public final Lcom/huawei/hem/hd$a;
.super Ljava/lang/Object;
.source "SupiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/huawei/hem/hd;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hem/hd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hem/hd;-><init>(Lcom/huawei/hem/gd;)V

    sput-object v0, Lcom/huawei/hem/hd$a;->a:Lcom/huawei/hem/hd;

    return-void
.end method
