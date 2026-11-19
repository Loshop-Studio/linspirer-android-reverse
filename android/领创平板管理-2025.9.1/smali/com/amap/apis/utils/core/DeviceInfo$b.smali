.class public final Lcom/amap/apis/utils/core/DeviceInfo$b;
.super Lcom/loc/bq;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/apis/utils/core/DeviceInfo;->o(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/apis/utils/core/DeviceInfo$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/loc/bq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/apis/utils/core/DeviceInfo$b;->a:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Lcom/amap/apis/utils/core/DeviceInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/amap/apis/utils/core/DeviceInfo;->i:Z

    return-void
.end method
