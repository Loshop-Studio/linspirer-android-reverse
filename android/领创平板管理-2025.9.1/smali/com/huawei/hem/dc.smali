.class public Lcom/huawei/hem/dc;
.super Ljava/lang/Object;
.source "ViewControlUtil.java"


# static fields
.field public static a:J

.field public static b:Landroid/view/View;


# direct methods
.method public static a(Landroid/view/View;)Z
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-object v2, Lcom/huawei/hem/dc;->b:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    sput-object p0, Lcom/huawei/hem/dc;->b:Landroid/view/View;

    .line 4
    sput-wide v0, Lcom/huawei/hem/dc;->a:J

    return v3

    .line 5
    :cond_0
    sget-wide v4, Lcom/huawei/hem/dc;->a:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x320

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 6
    :goto_0
    sput-object p0, Lcom/huawei/hem/dc;->b:Landroid/view/View;

    .line 7
    sput-wide v0, Lcom/huawei/hem/dc;->a:J

    return v3
.end method
