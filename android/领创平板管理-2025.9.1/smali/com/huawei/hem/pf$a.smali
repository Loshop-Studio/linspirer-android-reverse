.class public final Lcom/huawei/hem/pf$a;
.super Ljava/lang/Object;
.source "CustomComponentHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/pf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/huawei/hem/pf;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hem/pf;

    invoke-direct {v0}, Lcom/huawei/hem/pf;-><init>()V

    sput-object v0, Lcom/huawei/hem/pf$a;->a:Lcom/huawei/hem/pf;

    return-void
.end method
