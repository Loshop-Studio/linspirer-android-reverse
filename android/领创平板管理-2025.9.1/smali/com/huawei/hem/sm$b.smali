.class public final Lcom/huawei/hem/sm$b;
.super Ljava/lang/Object;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hem/sm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/sm$b;->a:Ljava/lang/reflect/Method;

    .line 3
    iput-object p2, p0, Lcom/huawei/hem/sm$b;->b:Ljava/lang/reflect/Method;

    .line 4
    iput-object p3, p0, Lcom/huawei/hem/sm$b;->c:Ljava/lang/reflect/Method;

    return-void
.end method
