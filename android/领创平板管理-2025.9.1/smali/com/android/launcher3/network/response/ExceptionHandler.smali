.class public Lcom/android/launcher3/network/response/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ExceptionHandler "


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleException(Landroid/content/Context;Ljava/lang/Object;ZZ)V
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/huawei/hem/sb;

    const/4 v1, 0x0

    const-string v2, "ExceptionHandler request code:"

    const/4 v3, -0x1

    if-eqz v0, :cond_4

    .line 2
    check-cast p1, Lcom/huawei/hem/sb;

    .line 3
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/huawei/hem/sb;->getCode()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hem/sb;->getCode()I

    move-result p1

    const/16 p3, -0x12c

    if-eq p1, p3, :cond_3

    const/16 p3, -0xc8

    if-eq p1, p3, :cond_2

    const/16 p3, -0x64

    if-eq p1, p3, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    const p1, 0x7f0c00e2

    goto :goto_0

    :cond_2
    const p1, 0x7f0c00cb

    goto :goto_0

    :cond_3
    const p1, 0x7f0c00ef

    :goto_0
    if-eq p1, v3, :cond_13

    if-eqz p2, :cond_13

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 6
    :cond_4
    instance-of v0, p1, Lcom/android/launcher3/network/response/Response;

    if-eqz v0, :cond_13

    .line 7
    check-cast p1, Lcom/android/launcher3/network/response/Response;

    .line 8
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/network/response/Response;->getCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    if-nez p0, :cond_5

    return-void

    .line 9
    :cond_5
    invoke-virtual {p1}, Lcom/android/launcher3/network/response/Response;->getCode()I

    move-result v0

    const/16 v2, -0x5911

    const/4 v4, 0x1

    if-eq v0, v2, :cond_10

    const/16 v2, -0x5910

    if-eq v0, v2, :cond_e

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    const p1, 0x7f0c0106

    goto/16 :goto_1

    :sswitch_0
    const p1, 0x7f0c0101

    goto/16 :goto_1

    :sswitch_1
    const p1, 0x7f0c010f

    goto/16 :goto_1

    :sswitch_2
    if-eqz p3, :cond_6

    .line 10
    invoke-static {p0, v4}, Lcom/huawei/hem/y4;->B(Landroid/content/Context;Z)V

    :cond_6
    const p1, 0x7f0c0180

    goto/16 :goto_1

    :sswitch_3
    const p1, 0x7f0c0109

    goto/16 :goto_1

    .line 11
    :sswitch_4
    invoke-static {p0, v4}, Lcom/huawei/hem/y4;->B(Landroid/content/Context;Z)V

    const p1, 0x7f0c00eb

    goto/16 :goto_1

    :sswitch_5
    const p1, 0x7f0c0161

    goto/16 :goto_1

    .line 12
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/launcher3/network/response/Response;->getData()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_7

    .line 13
    invoke-static {p0, p1, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_7
    move p1, v3

    goto/16 :goto_1

    :sswitch_7
    const p1, 0x7f0c00e9

    goto :goto_1

    :sswitch_8
    const p1, 0x7f0c00e8

    goto :goto_1

    :pswitch_0
    if-eqz p3, :cond_8

    .line 14
    invoke-static {p0, v4}, Lcom/huawei/hem/y4;->B(Landroid/content/Context;Z)V

    :cond_8
    const p1, 0x7f0c0184

    goto :goto_1

    :pswitch_1
    if-eqz p3, :cond_9

    .line 15
    invoke-static {p0, v4}, Lcom/huawei/hem/y4;->B(Landroid/content/Context;Z)V

    :cond_9
    const p1, 0x7f0c0077

    goto :goto_1

    :pswitch_2
    if-eqz p3, :cond_a

    .line 16
    invoke-static {p0, v4}, Lcom/huawei/hem/y4;->B(Landroid/content/Context;Z)V

    :cond_a
    const p1, 0x7f0c010e

    goto :goto_1

    :pswitch_3
    if-eqz p3, :cond_b

    .line 17
    invoke-static {p0, v4}, Lcom/huawei/hem/y4;->B(Landroid/content/Context;Z)V

    :cond_b
    const p1, 0x7f0c005a

    goto :goto_1

    :pswitch_4
    if-eqz p3, :cond_c

    .line 18
    invoke-static {p0, v4}, Lcom/huawei/hem/y4;->B(Landroid/content/Context;Z)V

    :cond_c
    const p1, 0x7f0c0078

    goto :goto_1

    :pswitch_5
    const p1, 0x7f0c0111

    goto :goto_1

    :pswitch_6
    const p1, 0x7f0c0098

    if-eqz p3, :cond_12

    .line 19
    invoke-static {p0, v4}, Lcom/huawei/hem/y4;->B(Landroid/content/Context;Z)V

    goto :goto_1

    :pswitch_7
    if-eqz p3, :cond_d

    .line 20
    invoke-static {p0, v4}, Lcom/huawei/hem/y4;->B(Landroid/content/Context;Z)V

    :cond_d
    const p1, 0x7f0c00fc

    goto :goto_1

    :pswitch_8
    const p1, 0x7f0c0027

    goto :goto_1

    :cond_e
    :pswitch_9
    if-eqz p3, :cond_f

    .line 21
    invoke-static {p0, v4}, Lcom/huawei/hem/y4;->B(Landroid/content/Context;Z)V

    :cond_f
    const p1, 0x7f0c0183

    goto :goto_1

    :cond_10
    :pswitch_a
    if-eqz p3, :cond_11

    .line 22
    invoke-static {p0, v4}, Lcom/huawei/hem/y4;->B(Landroid/content/Context;Z)V

    :cond_11
    const p1, 0x7f0c0181

    :cond_12
    :goto_1
    if-eq p1, v3, :cond_13

    if-eqz p2, :cond_13

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_13
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6979 -> :sswitch_8
        -0x6591 -> :sswitch_7
        -0x61a8 -> :sswitch_6
        -0x5dc0 -> :sswitch_5
        -0x5788 -> :sswitch_4
        -0x56b8 -> :sswitch_3
        -0x5529 -> :sswitch_2
        -0x5468 -> :sswitch_1
        -0x5464 -> :sswitch_0
        -0x5398 -> :sswitch_3
        -0x52d0 -> :sswitch_3
        -0x5208 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x59da
        :pswitch_1
        :pswitch_0
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x5785
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x55f3
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x5462
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
