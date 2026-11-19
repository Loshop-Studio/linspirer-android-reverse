.class public Lcom/huawei/hem/r4;
.super Ljava/lang/Object;
.source "BaseRequestHelper.java"


# static fields
.field public static lastTime:J


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHttpCore:Lcom/huawei/hem/rb;

.field public userInfoUtil:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 3
    iput-object v0, p0, Lcom/huawei/hem/r4;->userInfoUtil:Lcom/huawei/hem/y5;

    .line 4
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/r4;->mHttpCore:Lcom/huawei/hem/rb;

    .line 5
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 6
    iput-object v0, p0, Lcom/huawei/hem/r4;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isDoubleClickOrTooFast()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-wide v2, Lcom/huawei/hem/r4;->lastTime:J

    sub-long v2, v0, v2

    .line 3
    sput-wide v0, Lcom/huawei/hem/r4;->lastTime:J

    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
