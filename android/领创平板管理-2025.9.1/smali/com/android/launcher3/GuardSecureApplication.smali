# RE note 本类字节码直接引用的读写或显示接口包括偏好设置。
.class public Lcom/android/launcher3/GuardSecureApplication;
.super Landroid/app/Application;
.source "GuardSecureApplication.java"


# static fields
.field public static b:Lcom/android/launcher3/GuardSecureApplication;


# instance fields
.field public a:Lcom/huawei/hem/y5;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
# RE I/O 读取整数偏好（SharedPreferences.getInt）、保存字符串偏好（SharedPreferences$Editor.putString）。
.method public a()V
    .locals 31

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/android/launcher3/GuardSecureApplication;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/launcher3/network/ControlHelper;->getInstance()Lcom/android/launcher3/network/ControlHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/ControlHelper;->handleHemRelease()V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/huawei/hem/ic;->p(Z)I

    move-result v0

    const/4 v3, 0x2

    const-string v4, "com.huawei.android.launcher"

    const/4 v5, 0x1

    if-eq v0, v3, :cond_3

    .line 4
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v5}, Lcom/huawei/hem/ic;->R(I)V

    .line 5
    invoke-static {}, Lcom/huawei/hem/ce;->t()Z

    move-result v0

    const-string v3, "com.hihonor.android.launcher"

    if-nez v0, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/huawei/hem/ce;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/huawei/hem/ce;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v3}, Lcom/huawei/hem/ic;->J(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v4}, Lcom/huawei/hem/ic;->J(Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v3}, Lcom/huawei/hem/ic;->J(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->i()V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v0, v1, Lcom/android/launcher3/GuardSecureApplication;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/huawei/hem/y4;->x()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 13
    :cond_4
    :goto_1
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/q0;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    sget-object v6, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const-string v7, "com.android.launcher3"

    invoke-interface {v6, v7, v3}, Lcom/huawei/hem/ic;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/huawei/hem/q0;->z()V

    .line 17
    sget-object v3, Lcom/huawei/hem/a5$b;->a:Lcom/huawei/hem/a5;

    if-eqz v3, :cond_25

    .line 18
    invoke-static {}, Lcom/huawei/hem/q0;->s()Ljava/util/List;

    move-result-object v6

    .line 19
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-static {v6}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 21
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    :cond_5
    iget-object v6, v3, Lcom/huawei/hem/a5;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    new-instance v6, Ljava/util/ArrayList;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    invoke-virtual {v3, v6}, Lcom/huawei/hem/a5;->a(Ljava/util/ArrayList;)V

    .line 25
    invoke-static {}, Lcom/huawei/hem/q0;->z()V

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "com.ndwill.swd.appstore"

    .line 28
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v8, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v8, v3}, Lcom/huawei/hem/ic;->r0(Ljava/util/ArrayList;)V

    .line 30
    sget-object v3, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v3}, Lcom/huawei/hem/ic;->l0()V

    .line 31
    iget-object v3, v1, Lcom/android/launcher3/GuardSecureApplication;->a:Lcom/huawei/hem/y5;

    .line 32
    iget v8, v3, Lcom/huawei/hem/y5;->y:I

    if-nez v8, :cond_6

    .line 33
    iget-object v8, v3, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 34
    iget-object v8, v8, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v9, "wifi_advance"

    invoke-interface {v8, v9, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 35
    iput v8, v3, Lcom/huawei/hem/y5;->y:I

    .line 36
    :cond_6
    iget v3, v3, Lcom/huawei/hem/y5;->y:I

    if-ne v3, v5, :cond_7

    move v2, v5

    .line 37
    :cond_7
    invoke-static {v2}, Lcom/huawei/hem/y4;->S(Z)V

    .line 38
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v2}, Lcom/huawei/hem/ic;->I()V

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "com.android.email"

    .line 41
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {}, Lcom/huawei/hem/ce;->a()I

    move-result v5

    .line 43
    invoke-static {}, Lcom/huawei/hem/ce;->x()Z

    move-result v8

    const-string v9, "com.huawei.music"

    const-string v10, "com.huawei.lives"

    const-string v11, "com.hihonor.email"

    const-string v12, "com.hihonor.kidsmode"

    const-string v13, "com.huawei.hiview"

    const-string v14, "com.huawei.vassistant"

    const-string v15, "com.huawei.betaclub"

    const-string v1, "com.huawei.wallet"

    move-object/from16 v16, v6

    const-string v6, "com.huawei.educenter"

    move-object/from16 v17, v7

    const-string v7, "com.huawei.gamebox"

    move-object/from16 v18, v3

    const-string v3, "com.huawei.android.thememanager"

    move-object/from16 v19, v4

    const-string v4, "com.huawei.search"

    move-object/from16 v20, v4

    const-string v4, "com.huawei.gameassistant"

    move-object/from16 v21, v4

    const-string v4, "com.huawei.printservice"

    move-object/from16 v22, v4

    const-string v4, "com.huawei.smarthome"

    move-object/from16 v23, v4

    const-string v4, "com.huawei.appmarket"

    move-object/from16 v24, v0

    const-string v0, "com.huawei.screenrecorder"

    move/from16 v25, v5

    const-string v5, "com.huawei.hwid"

    move-object/from16 v26, v9

    const-string v9, "com.huawei.himovie"

    if-eqz v8, :cond_8

    const-string v8, "com.hihonor.filemanager"

    .line 44
    invoke-static {v2, v8, v14, v3, v0}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.huawei.hwireader"

    const-string v8, "com.honor.club"

    const-string v14, "com.hihonor.tips"

    .line 45
    invoke-static {v2, v13, v3, v8, v14}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.hihonor.android.clone"

    const-string v8, "com.hihonor.vmall"

    .line 46
    invoke-static {v2, v3, v8, v4, v7}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {v2, v6, v12, v11, v1}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cn.honor.qinxuan"

    const-string v3, "com.huawei.welinknow"

    .line 48
    invoke-static {v2, v1, v3, v5, v10}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.hihonor.findmydevice"

    const-string v3, "com.hihonor.id"

    move-object/from16 v8, v26

    .line 49
    invoke-static {v2, v1, v15, v8, v3}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v8, "com.android.browser"

    if-gtz v25, :cond_c

    .line 50
    sget-object v27, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 51
    invoke-static/range {v27 .. v27}, Lcom/huawei/hem/ce;->h(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_9

    goto :goto_3

    .line 52
    :cond_9
    invoke-static/range {v24 .. v24}, Lcom/huawei/hem/ce;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.myfiles"

    const-string v6, "com.sec.android.app.launcher"

    const-string v7, "com.sec.android.app.samsungapps"

    .line 53
    invoke-static {v2, v1, v3, v6, v7}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.email.provider"

    const-string v3, "com.sec.android.app.sbrowser"

    const-string v6, "com.samsung.android.onlinevideo"

    const-string v7, "com.sec.android.app.music"

    .line 54
    invoke-static {v2, v1, v3, v6, v7}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.sm"

    .line 55
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.sec.android.app.popupcalculator"

    .line 56
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    const-string v1, "G20"

    move-object/from16 v3, v24

    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "com.zxly.market"

    const-string v6, "com.android.wificonfig"

    if-eqz v1, :cond_b

    const-string v1, "com.android.chrome"

    .line 58
    invoke-static {v2, v8, v6, v3, v1}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.android.fmradio"

    .line 59
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 60
    :cond_b
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object/from16 v28, v0

    move-object v11, v5

    move-object/from16 v0, v18

    move-object/from16 v10, v20

    move-object/from16 v1, v21

    move-object/from16 v3, v22

    move-object/from16 v8, v23

    move-object v5, v4

    goto/16 :goto_8

    :cond_c
    :goto_3
    move-object/from16 v24, v8

    const-string v8, "com.huawei.hidisk"

    move-object/from16 v27, v5

    const-string v5, "com.google.android.marvin.talkback"

    .line 62
    invoke-static {v2, v15, v8, v14, v5}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.huawei.smartshot"

    .line 63
    invoke-static {v2, v3, v0, v5, v13}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.huawei.hwmwlauncher"

    const-string v8, "com.huawei.hnreader"

    const-string v13, "com.huawei.hwread.al"

    const-string v14, "com.huawei.hitouch"

    .line 64
    invoke-static {v2, v5, v8, v13, v14}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.huawei.android.tips"

    const-string v8, "com.huawei.hiai"

    const-string v13, "com.huawei.browser"

    .line 65
    invoke-static {v2, v4, v5, v8, v13}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "com.huawei.controlcenter"

    const-string v13, "com.huawei.scanner"

    move-object/from16 v28, v0

    const-string v0, "com.huawei.android.totemweather"

    .line 66
    invoke-static {v2, v8, v13, v0, v1}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.huawei.parentcontrol"

    .line 67
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.huawei.intelligent"

    .line 68
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.huawei.email"

    .line 69
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "emui"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x3

    if-eq v8, v0, :cond_11

    const/4 v0, 0x5

    if-eq v8, v0, :cond_11

    const-string v0, "com.huawei.phoneservice"

    const-string v13, "com.hicloud.android.clone"

    move-object/from16 v25, v14

    const-string v14, "com.huawei.android.findmyphone"

    move-object/from16 v29, v15

    const/16 v15, 0xd

    move-object/from16 v30, v4

    const-string v4, "com.huawei.android.airsharing"

    if-eq v8, v15, :cond_10

    const/16 v5, 0x8

    if-eq v8, v5, :cond_f

    const/16 v5, 0x9

    if-eq v8, v5, :cond_e

    const-string v1, "com.huawei.fans"

    const-string v3, "com.myscript.calculator.huawei"

    .line 71
    invoke-static {v2, v14, v1, v3, v13}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.huawei.fastapp"

    const-string v3, "com.myscript.nebo.huawei"

    move-object/from16 v8, v23

    .line 72
    invoke-static {v2, v1, v8, v3, v13}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.huawei.KoBackup"

    const-string v3, "com.huawei.compass"

    const-string v5, "com.android.soundrecorder"

    .line 73
    invoke-static {v2, v1, v3, v5, v10}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.huawei.notepad"

    const-string v3, "com.huawei.hishow"

    const-string v5, "com.huawei.kidsmode"

    .line 74
    invoke-static {v2, v7, v1, v3, v5}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.huawei.kidsmode.kidspaint"

    const-string v3, "com.bjbyhd.screenreader_huawei"

    .line 75
    invoke-static {v2, v1, v3, v5, v6}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.vipkid.studypad"

    const-string v3, "com.youban.xblertongpbhw"

    const-string v5, "com.sinyee.babybus.talk2kiki"

    move-object/from16 v10, v20

    .line 76
    invoke-static {v2, v1, v3, v5, v10}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.huawei.meetime"

    const-string v3, "com.huawei.android.instantshare"

    const-string v5, "com.hihonor.hidisk"

    .line 77
    invoke-static {v2, v7, v1, v3, v5}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.hihonor.vassistant"

    const-string v3, "com.hihonor.wallet"

    .line 78
    invoke-static {v2, v1, v3, v11, v12}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.hihonor.gamebox"

    .line 79
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.huawei.ohos.famanager"

    .line 81
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v1, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const-string v3, "com.huawei.filemanager"

    invoke-interface {v1, v3}, Lcom/huawei/hem/ic;->e(Ljava/lang/String;)V

    .line 83
    sget-object v1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 84
    invoke-virtual {v1}, Lcom/huawei/hem/y5;->Q()Z

    move-result v1

    if-nez v1, :cond_d

    .line 85
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.hihonor.phoneservice"

    .line 86
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    move-object/from16 v11, v27

    goto :goto_4

    :cond_e
    move-object/from16 v7, v19

    move-object/from16 v10, v20

    move-object/from16 v8, v23

    move-object/from16 v11, v27

    .line 87
    invoke-static {v2, v7, v11, v1, v9}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.android.mediacenter"

    .line 88
    invoke-static {v2, v1, v0, v3, v14}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v24

    move-object/from16 v5, v30

    goto :goto_7

    :cond_f
    move-object/from16 v7, v19

    move-object/from16 v10, v20

    move-object/from16 v8, v23

    move-object/from16 v11, v27

    move-object/from16 v1, v21

    move-object/from16 v3, v22

    move-object/from16 v5, v30

    goto :goto_5

    :cond_10
    move-object/from16 v10, v20

    move-object/from16 v8, v23

    move-object/from16 v11, v27

    .line 89
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.huawei.mycenter"

    .line 92
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.huawei.videoeditor"

    move-object/from16 v3, v26

    move-object/from16 v5, v30

    .line 93
    invoke-static {v2, v1, v5, v3, v9}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.huawei.gameperceptio"

    move-object/from16 v3, v29

    .line 94
    invoke-static {v2, v13, v14, v3, v1}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.huawei.desktop.explorer"

    move-object/from16 v3, v22

    move-object/from16 v6, v25

    .line 95
    invoke-static {v2, v6, v3, v4, v1}, Lcom/huawei/hem/f6;->G(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v21

    .line 96
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    move-object v5, v4

    move-object/from16 v7, v19

    move-object/from16 v10, v20

    move-object/from16 v1, v21

    move-object/from16 v3, v22

    move-object/from16 v8, v23

    move-object/from16 v11, v27

    .line 98
    :goto_5
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    move-object/from16 v0, v18

    move-object/from16 v4, v24

    .line 99
    :goto_7
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.huawei.systemmanager"

    .line 100
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-static {v4}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 103
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    :cond_12
    sget-object v4, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v4, v2}, Lcom/huawei/hem/ic;->k0(Ljava/util/List;)V

    .line 105
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v2, v0}, Lcom/huawei/hem/ic;->B0(Ljava/util/List;)V

    .line 106
    invoke-static {}, Lcom/huawei/hem/z4;->a()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, v17

    .line 108
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v16

    .line 109
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-static {}, Lcom/huawei/hem/q0;->v()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-static {}, Lcom/huawei/hem/q0;->x()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    sget-object v4, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v4}, Lcom/huawei/hem/ic;->c0()Ljava/util/ArrayList;

    move-result-object v4

    .line 113
    invoke-static {v4}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_14

    const-string v6, "get last notificationAppsWhiteList ==="

    .line 114
    invoke-static {v6}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/hem/bc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hem/bc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_9

    .line 116
    :cond_13
    sget-object v6, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v6, v4}, Lcom/huawei/hem/ic;->w0(Ljava/util/ArrayList;)V

    .line 117
    :cond_14
    sget-object v4, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v4, v0}, Lcom/huawei/hem/ic;->A(Ljava/util/ArrayList;)V

    .line 118
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->c0()Ljava/util/ArrayList;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "get new notificationAppsWhiteList ==="

    .line 120
    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    :cond_15
    :goto_9
    move-object/from16 v4, p0

    .line 121
    iget-object v0, v4, Lcom/android/launcher3/GuardSecureApplication;->a:Lcom/huawei/hem/y5;

    const/4 v6, 0x0

    .line 122
    iput-object v6, v0, Lcom/huawei/hem/y5;->t0:Ljava/lang/String;

    .line 123
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 124
    iget-object v7, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v12, "total_url_md5"

    invoke-interface {v7, v12, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    iget-object v0, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    invoke-static {}, Lcom/android/launcher3/network/UrlWhiteHelper;->getInstance()Lcom/android/launcher3/network/UrlWhiteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/network/UrlWhiteHelper;->writeUrlFromLocal()V

    .line 127
    invoke-static {}, Lcom/huawei/hem/ce;->c()Z

    move-result v0

    if-nez v0, :cond_16

    .line 128
    sget-object v0, Lcom/huawei/hem/w4$b;->a:Lcom/huawei/hem/w4;

    .line 129
    invoke-virtual {v0}, Lcom/huawei/hem/w4;->a()V

    .line 130
    invoke-static {}, Lcom/huawei/hem/ce;->w()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 131
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableFireWall()V

    goto :goto_a

    .line 132
    :cond_16
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableFireWall()V

    .line 133
    :cond_17
    :goto_a
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    iget-object v6, v4, Lcom/android/launcher3/GuardSecureApplication;->a:Lcom/huawei/hem/y5;

    .line 134
    iget v7, v6, Lcom/huawei/hem/y5;->z:I

    if-nez v7, :cond_18

    .line 135
    iget-object v7, v6, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 136
    iget-object v7, v7, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v12, "gps"

    const/4 v13, 0x1

    invoke-interface {v7, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 137
    iput v7, v6, Lcom/huawei/hem/y5;->z:I

    .line 138
    :cond_18
    iget v6, v6, Lcom/huawei/hem/y5;->z:I

    const-string v7, "command_gps"

    .line 139
    invoke-static {v0, v7, v6}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    iget-object v6, v4, Lcom/android/launcher3/GuardSecureApplication;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v6}, Lcom/huawei/hem/y5;->D()I

    move-result v6

    const-string v7, "command_sdcard_and_otg"

    invoke-static {v0, v7, v6}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    .line 141
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    iget-object v6, v4, Lcom/android/launcher3/GuardSecureApplication;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v6}, Lcom/huawei/hem/y5;->D()I

    move-result v6

    const-string v7, "command_otg"

    invoke-static {v0, v7, v6}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    .line 142
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    iget-object v6, v4, Lcom/android/launcher3/GuardSecureApplication;->a:Lcom/huawei/hem/y5;

    .line 143
    iget v7, v6, Lcom/huawei/hem/y5;->A:I

    if-nez v7, :cond_19

    .line 144
    iget-object v7, v6, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 145
    iget-object v7, v7, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v12, "bluetooth"

    const/4 v13, 0x0

    invoke-interface {v7, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 146
    iput v7, v6, Lcom/huawei/hem/y5;->A:I

    .line 147
    :cond_19
    iget v6, v6, Lcom/huawei/hem/y5;->A:I

    const-string v7, "command_bluetooth"

    .line 148
    invoke-static {v0, v7, v6}, Lcom/huawei/hem/q0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    .line 149
    iget-object v0, v4, Lcom/android/launcher3/GuardSecureApplication;->a:Lcom/huawei/hem/y5;

    .line 150
    iget v6, v0, Lcom/huawei/hem/y5;->r0:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1a

    .line 151
    iget-object v6, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 152
    iget-object v6, v6, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v7, "mobiledata_state"

    const/4 v12, 0x1

    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 153
    iput v6, v0, Lcom/huawei/hem/y5;->r0:I

    goto :goto_b

    :cond_1a
    const/4 v12, 0x1

    .line 154
    :goto_b
    iget v0, v0, Lcom/huawei/hem/y5;->r0:I

    if-ne v0, v12, :cond_1b

    .line 155
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableMobileData()V

    goto :goto_c

    .line 156
    :cond_1b
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableMobileData()V

    .line 157
    :goto_c
    iget-object v0, v4, Lcom/android/launcher3/GuardSecureApplication;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->K()I

    move-result v0

    if-ne v0, v12, :cond_1c

    .line 158
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->enableUsb()V

    goto :goto_d

    .line 159
    :cond_1c
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->disableUsb()V

    .line 160
    :goto_d
    iget-object v0, v4, Lcom/android/launcher3/GuardSecureApplication;->a:Lcom/huawei/hem/y5;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/huawei/hem/y5;->q0(I)V

    .line 161
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    move-object/from16 v6, v28

    invoke-interface {v0, v6}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/huawei/hem/ce;->s()Z

    move-result v0

    const-string v6, "com.huawei.hsl"

    const-string v7, "com.huawei.HwMultiScreenShot"

    const-string v12, "com.huawei.hwdockbar"

    if-eqz v0, :cond_1d

    .line 163
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v7}, Lcom/huawei/hem/ic;->y(Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v9}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const-string v7, "com.huawei.distributedpasteboard"

    invoke-interface {v0, v7}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v6}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v12}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const-string v7, "com.huawei.hwpreview"

    invoke-interface {v0, v7}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    goto :goto_e

    .line 169
    :cond_1d
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v7}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 170
    :goto_e
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v6}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v3}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v8}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v10}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v5}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 177
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 178
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v11}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 179
    :cond_1e
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 180
    invoke-static {v2, v0}, Lcom/huawei/hem/bc;->o(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 181
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const-string v1, "com.huawei.hinote"

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 182
    :cond_1f
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const-string v1, "com.huawei.hiwrite"

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    const-string v1, "com.huawei.photos"

    invoke-interface {v0, v1}, Lcom/huawei/hem/ic;->e(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTKZ-W00"

    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    .line 186
    invoke-static {v0}, Lcom/huawei/hem/y4;->S(Z)V

    const/4 v0, 0x0

    .line 187
    invoke-static {v0}, Lcom/huawei/hem/y4;->S(Z)V

    .line 188
    sget-object v1, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 189
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.Settings$AccessibilitySettingsActivity"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/huawei/hem/jc;

    invoke-virtual {v2, v1, v3}, Lcom/huawei/hem/jc;->S0(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 190
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.huawei.motionservice"

    const-string v7, "com.huawei.motionsettings.search.MotionScenesSettingsNormalForSettings"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/huawei/hem/jc;

    invoke-virtual {v2, v1, v3}, Lcom/huawei/hem/jc;->S0(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 191
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.huawei.hwdockbar.settings.MultiWinSettingsForSettings"

    invoke-direct {v3, v12, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/huawei/hem/jc;

    invoke-virtual {v2, v1, v3}, Lcom/huawei/hem/jc;->S0(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 192
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.android.settings.Settings$TimingTaskSettingsActivity"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/huawei/hem/jc;

    invoke-virtual {v2, v1, v3}, Lcom/huawei/hem/jc;->S0(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 193
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.android.settings.navigation.NaviTypeChooseActivity"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/huawei/hem/jc;

    invoke-virtual {v2, v1, v3}, Lcom/huawei/hem/jc;->S0(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 194
    sget-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.android.settings.Settings$MouseSettingsActivity"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/huawei/hem/jc;

    invoke-virtual {v2, v1, v3}, Lcom/huawei/hem/jc;->S0(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_f

    :cond_20
    const/4 v0, 0x0

    .line 195
    :goto_f
    sget-object v1, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    const-string v2, "input_method"

    .line 196
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 197
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 198
    invoke-static {v2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_21

    move v0, v3

    :cond_21
    if-eqz v0, :cond_24

    .line 199
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "default_input_method"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v3, "com.huawei.ohos.inputmethod"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 201
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v3}, Lcom/huawei/hem/ic;->d0(Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0, v3}, Lcom/huawei/hem/ic;->e(Ljava/lang/String;)V

    :cond_22
    const/4 v0, 0x0

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "com.sohu.inputmethod.sogou.oem/com.sohu.inputmethod.sogou.SogouIME"

    goto :goto_10

    :cond_23
    const/4 v0, 0x0

    .line 204
    :goto_10
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "enabled_input_methods"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_11

    :catchall_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_24
    :goto_11
    return-void

    :cond_25
    move-object v4, v1

    const/4 v0, 0x0

    .line 207
    throw v0
.end method

# RE I/O 保存字符串偏好（SharedPreferences$Editor.putString）。
.method public b()V
    .locals 4

    .line 1
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GuardSecureApplication init push for message"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/GuardSecureApplication;->a:Lcom/huawei/hem/y5;

    const-string v1, ""

    .line 6
    iget-object v2, v0, Lcom/huawei/hem/y5;->K:Ljava/lang/String;

    if-eq v2, v1, :cond_1

    .line 7
    iput-object v1, v0, Lcom/huawei/hem/y5;->K:Ljava/lang/String;

    .line 8
    iget-object v0, v0, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 9
    iget-object v2, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "push_token"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    iget-object v0, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 11
    :cond_1
    invoke-static {p0}, Lcom/alibaba/sdk/android/push/noonesdk/PushServiceFactory;->init(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Lcom/alibaba/sdk/android/push/noonesdk/PushServiceFactory;->getCloudPushService()Lcom/alibaba/sdk/android/push/CloudPushService;

    move-result-object v0

    const/4 v1, -0x1

    .line 13
    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/push/CloudPushService;->setLogLevel(I)V

    .line 14
    new-instance v1, Lcom/huawei/hem/n3;

    invoke-direct {v1}, Lcom/huawei/hem/n3;-><init>()V

    invoke-interface {v0, p0, v1}, Lcom/alibaba/sdk/android/push/CloudPushService;->register(Landroid/content/Context;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public synthetic c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/GuardSecureApplication;->a()V

    return-void
.end method

.method public synthetic d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/GuardSecureApplication;->a()V

    return-void
.end method

.method public onCreate()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sput-object p0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 3
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/GuardSecureApplication;->a:Lcom/huawei/hem/y5;

    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/GuardSecureApplication;->b()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const-string v3, "activity"

    .line 7
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 8
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 9
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v2, :cond_0

    .line 10
    iget-object v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 11
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    goto :goto_2

    :cond_2
    const-string v3, "com.android.launcher3"

    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    move v2, v1

    :goto_3
    if-nez v2, :cond_4

    return-void

    .line 14
    :cond_4
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_UNLOCKED"

    .line 15
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    new-instance v3, Lcom/android/launcher3/receiver/UnLockReceiver;

    invoke-direct {v3}, Lcom/android/launcher3/receiver/UnLockReceiver;-><init>()V

    invoke-virtual {p0, v3, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17
    new-instance v2, Lcom/huawei/hem/f5;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/huawei/hem/f5;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "GuardSecureApplication init start"

    .line 19
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 20
    iget-object v2, p0, Lcom/android/launcher3/GuardSecureApplication;->a:Lcom/huawei/hem/y5;

    invoke-virtual {v2, v1}, Lcom/huawei/hem/y5;->h0(Z)V

    .line 21
    invoke-static {p0}, Lcom/huawei/hem/ue;->f(Landroid/content/Context;)V

    .line 22
    sget-object v2, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    const-string v4, "com.android.launcher3"

    const-class v5, Lcom/drupe/swd/launcher/huoshan/mdm/tool/DeviceAdmin;

    .line 23
    invoke-static {}, Lcom/huawei/hem/de;->d()Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-static {}, Lcom/huawei/hem/ce;->x()Z

    move-result v7

    const/16 v8, 0x1f

    if-eqz v7, :cond_5

    .line 25
    invoke-static {v2, v5}, Lcom/huawei/hem/nd;->W0(Landroid/content/Context;Ljava/lang/Class;)Lcom/huawei/hem/nd;

    move-result-object v4

    sput-object v4, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_4

    .line 26
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    const-string v3, "3."

    .line 27
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 28
    invoke-static {v2, v4}, Lcom/huawei/hem/td;->W0(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/hem/td;

    move-result-object v2

    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_6
    const-string v3, "5."

    .line 29
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 30
    sget-object v3, Lcom/huawei/hem/ud;->o:Lcom/huawei/hem/ud;

    if-nez v3, :cond_7

    .line 31
    new-instance v3, Lcom/huawei/hem/ud;

    invoke-direct {v3, v2, v5}, Lcom/huawei/hem/ud;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v3, Lcom/huawei/hem/ud;->o:Lcom/huawei/hem/ud;

    .line 32
    :cond_7
    sget-object v2, Lcom/huawei/hem/ud;->o:Lcom/huawei/hem/ud;

    .line 33
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_8
    const-string v3, "8."

    .line 34
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 35
    invoke-static {v2, v5}, Lcom/huawei/hem/vd;->a1(Landroid/content/Context;Ljava/lang/Class;)Lcom/huawei/hem/vd;

    move-result-object v2

    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_9
    const-string v3, "9."

    .line 36
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 37
    invoke-static {v2, v5}, Lcom/huawei/hem/wd;->a1(Landroid/content/Context;Ljava/lang/Class;)Lcom/huawei/hem/wd;

    move-result-object v2

    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_a
    const-string v3, "10."

    .line 38
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 39
    sget-object v3, Lcom/huawei/hem/rd;->o:Lcom/huawei/hem/rd;

    if-nez v3, :cond_b

    .line 40
    new-instance v3, Lcom/huawei/hem/rd;

    invoke-direct {v3, v2, v5}, Lcom/huawei/hem/rd;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v3, Lcom/huawei/hem/rd;->o:Lcom/huawei/hem/rd;

    .line 41
    :cond_b
    sget-object v2, Lcom/huawei/hem/rd;->o:Lcom/huawei/hem/rd;

    .line 42
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_c
    const-string v3, "11.0"

    .line 43
    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_e

    const-string v3, "13.0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_e

    .line 44
    sget-object v3, Lcom/huawei/hem/sd;->r:Lcom/huawei/hem/sd;

    if-nez v3, :cond_d

    .line 45
    new-instance v3, Lcom/huawei/hem/sd;

    invoke-direct {v3, v2, v5}, Lcom/huawei/hem/sd;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v3, Lcom/huawei/hem/sd;->r:Lcom/huawei/hem/sd;

    .line 46
    :cond_d
    sget-object v2, Lcom/huawei/hem/sd;->r:Lcom/huawei/hem/sd;

    .line 47
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_e
    const-string v3, "13.0"

    .line 48
    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_10

    .line 49
    sget-object v3, Lcom/huawei/hem/od;->t:Lcom/huawei/hem/od;

    if-nez v3, :cond_f

    .line 50
    new-instance v3, Lcom/huawei/hem/od;

    invoke-direct {v3, v2, v5}, Lcom/huawei/hem/od;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v3, Lcom/huawei/hem/od;->t:Lcom/huawei/hem/od;

    .line 51
    :cond_f
    sget-object v2, Lcom/huawei/hem/od;->t:Lcom/huawei/hem/od;

    .line 52
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 53
    :cond_10
    sput-object v2, Lcom/huawei/hem/jc;->a:Landroid/content/Context;

    .line 54
    sget-object v2, Lcom/huawei/hem/jc$a;->a:Lcom/huawei/hem/jc;

    .line 55
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 56
    :cond_11
    :goto_4
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v4

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "device model :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 58
    invoke-static {v4}, Lcom/huawei/hem/ce;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 59
    invoke-static {v4}, Lcom/huawei/hem/ce;->d(Ljava/lang/String;)Z

    move-result v3

    const/16 v5, 0x1d

    if-eqz v3, :cond_12

    .line 60
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v5, :cond_12

    move v3, v1

    goto :goto_5

    :cond_12
    move v3, v0

    :goto_5
    if-eqz v3, :cond_13

    .line 61
    new-instance v3, Landroid/app/mia/MiaMdmPolicyManager;

    invoke-direct {v3, v2}, Landroid/app/mia/MiaMdmPolicyManager;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/be;->c:Landroid/app/mia/MiaMdmPolicyManager;

    .line 62
    sget-object v2, Lcom/huawei/hem/be;->b:Lcom/huawei/hem/be;

    .line 63
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 64
    :cond_13
    invoke-static {v4}, Lcom/huawei/hem/ce;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 65
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_14

    if-ge v3, v8, :cond_14

    move v3, v1

    goto :goto_6

    :cond_14
    move v3, v0

    :goto_6
    if-eqz v3, :cond_16

    .line 66
    sget-object v3, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    if-nez v3, :cond_15

    .line 67
    new-instance v3, Landroid/app/csdk/CSDKManager;

    invoke-direct {v3, v2}, Landroid/app/csdk/CSDKManager;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/ae;->c:Landroid/app/csdk/CSDKManager;

    .line 68
    sput-object v2, Lcom/huawei/hem/ae;->d:Landroid/content/Context;

    .line 69
    :cond_15
    sget-object v2, Lcom/huawei/hem/ae;->b:Lcom/huawei/hem/ae;

    .line 70
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 71
    :cond_16
    invoke-static {v4}, Lcom/huawei/hem/ce;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 72
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_17

    move v3, v1

    goto :goto_7

    :cond_17
    move v3, v0

    :goto_7
    if-eqz v3, :cond_19

    .line 73
    sget-object v3, Lcom/huawei/hem/zd;->g:Lcom/huawei/hem/zd;

    if-nez v3, :cond_18

    .line 74
    new-instance v3, Lcom/huawei/hem/zd;

    invoke-direct {v3, v2}, Lcom/huawei/hem/zd;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/zd;->g:Lcom/huawei/hem/zd;

    .line 75
    :cond_18
    sget-object v2, Lcom/huawei/hem/zd;->g:Lcom/huawei/hem/zd;

    .line 76
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 77
    :cond_19
    sput-object v2, Lcom/huawei/hem/jc;->a:Landroid/content/Context;

    .line 78
    sget-object v2, Lcom/huawei/hem/jc$a;->a:Lcom/huawei/hem/jc;

    .line 79
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 80
    :cond_1a
    invoke-static {}, Lcom/huawei/hem/de;->o()Z

    move-result v6

    if-eqz v6, :cond_1b

    move v6, v1

    goto :goto_8

    .line 81
    :cond_1b
    invoke-static {v4}, Lcom/huawei/hem/ce;->m(Ljava/lang/String;)Z

    move-result v6

    :goto_8
    if-eqz v6, :cond_1d

    .line 82
    sput-object v2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    .line 83
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v2, Lcom/huawei/hem/xc;->d:Landroid/content/ComponentName;

    .line 84
    sget-object v2, Lcom/huawei/hem/xc;->c:Landroid/content/Context;

    .line 85
    sget-object v3, Lcom/huawei/hem/a0;->c:Lcom/huawei/hem/a0;

    if-nez v3, :cond_1c

    .line 86
    new-instance v3, Lcom/huawei/hem/a0;

    invoke-direct {v3, v2}, Lcom/huawei/hem/a0;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/a0;->c:Lcom/huawei/hem/a0;

    .line 87
    :cond_1c
    sget-object v2, Lcom/huawei/hem/a0;->c:Lcom/huawei/hem/a0;

    .line 88
    sput-object v2, Lcom/huawei/hem/xc;->e:Lcom/huawei/hem/a0;

    .line 89
    sget-object v2, Lcom/huawei/hem/xc;->b:Lcom/huawei/hem/xc;

    .line 90
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 91
    :cond_1d
    invoke-static {v4}, Lcom/huawei/hem/ce;->j(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 92
    const-class v6, Lcom/huawei/hem/q6;

    monitor-enter v6

    .line 93
    :try_start_1
    sget-object v3, Lcom/huawei/hem/q6;->a:Lcom/huawei/hem/q6;

    if-nez v3, :cond_1e

    .line 94
    new-instance v3, Lcom/huawei/hem/q6;

    invoke-direct {v3, v2}, Lcom/huawei/hem/q6;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/q6;->a:Lcom/huawei/hem/q6;

    .line 95
    :cond_1e
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    sget-object v2, Lcom/huawei/hem/q6;->a:Lcom/huawei/hem/q6;

    .line 97
    sput-object v2, Lcom/huawei/hem/uc;->c:Lcom/huawei/hem/q6;

    .line 98
    sget-object v2, Lcom/huawei/hem/uc;->b:Lcom/huawei/hem/uc;

    .line 99
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :catchall_0
    move-exception v0

    .line 100
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1f
    const-string v6, "ro.product.control"

    .line 101
    invoke-static {v6}, Lcom/huawei/hem/de;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_20

    const-string v7, "seewo"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    move v6, v1

    goto :goto_9

    :cond_20
    move v6, v0

    :goto_9
    if-nez v6, :cond_23

    const-string v6, "XP12"

    .line 103
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "XP12A"

    .line 104
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "XP12B"

    .line 105
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "XP12C"

    .line 106
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "XP12D"

    .line 107
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "XP12A-1"

    .line 108
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "XP12A-2"

    .line 109
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "XP12A-3"

    .line 110
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "XP12A-4"

    .line 111
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "XP12A-5"

    .line 112
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "XP12A-6"

    .line 113
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "XP12A-7"

    .line 114
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "XP12A-8"

    .line 115
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "XP12H"

    .line 116
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "XP12A-9"

    .line 117
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "SN23J"

    .line 118
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "XC-P8183A"

    .line 119
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "BLP200A"

    .line 120
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    goto :goto_a

    :cond_21
    move v6, v0

    goto :goto_b

    :cond_22
    :goto_a
    move v6, v1

    :cond_23
    :goto_b
    if-eqz v6, :cond_24

    .line 121
    sput-object v2, Lcom/huawei/hem/ed;->c:Landroid/content/Context;

    .line 122
    new-instance v3, Lcom/huawei/hem/vh;

    invoke-direct {v3, v2}, Lcom/huawei/hem/vh;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/ed;->d:Lcom/huawei/hem/vh;

    .line 123
    sget-object v2, Lcom/huawei/hem/ed;->b:Lcom/huawei/hem/ed;

    .line 124
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 125
    :cond_24
    invoke-static {v4}, Lcom/huawei/hem/ce;->g(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 126
    sput-object v5, Lcom/huawei/hem/tc;->d:Ljava/lang/Class;

    .line 127
    sget-object v3, Lcom/huawei/hem/t1;->d:Landroid/content/Context;

    if-nez v3, :cond_25

    .line 128
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/huawei/hem/t1;->d:Landroid/content/Context;

    .line 129
    invoke-static {}, Lcom/huawei/hem/t1;->a()Lcom/huawei/hem/t1;

    .line 130
    :cond_25
    invoke-static {}, Lcom/huawei/hem/t1;->a()Lcom/huawei/hem/t1;

    move-result-object v2

    sput-object v2, Lcom/huawei/hem/tc;->c:Lcom/huawei/hem/t1;

    .line 131
    sget-object v2, Lcom/huawei/hem/tc;->b:Lcom/huawei/hem/tc;

    .line 132
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 133
    :cond_26
    invoke-static {v4}, Lcom/huawei/hem/ce;->f(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 134
    new-instance v3, Lcom/huawei/hem/p6;

    invoke-direct {v3, v2}, Lcom/huawei/hem/p6;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/sc;->c:Lcom/huawei/hem/p6;

    .line 135
    sget-object v2, Lcom/huawei/hem/sc;->b:Lcom/huawei/hem/sc;

    .line 136
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 137
    :cond_27
    invoke-static {}, Lcom/huawei/hem/ce;->w()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 138
    new-instance v2, Lcom/Lcmdm/mdm/LcmdmModel;

    invoke-direct {v2}, Lcom/Lcmdm/mdm/LcmdmModel;-><init>()V

    invoke-static {v2}, Lcom/Lcmdm/mdm/IMdmProxy;->init(Lcom/Lcmdm/mdm/IMdmInterface;)V

    .line 139
    invoke-static {}, Lcom/Lcmdm/mdm/IMdmProxy;->obtain()Lcom/Lcmdm/mdm/IMdmProxy;

    move-result-object v2

    sput-object v2, Lcom/huawei/hem/id;->c:Lcom/Lcmdm/mdm/IMdmProxy;

    .line 140
    sget-object v2, Lcom/huawei/hem/id;->b:Lcom/huawei/hem/id;

    .line 141
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 142
    :cond_28
    invoke-static {v4}, Lcom/huawei/hem/ce;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 143
    invoke-static {v2}, Lcom/tdtech/devicemanager/IMDM;->getInstance(Landroid/content/Context;)Lcom/tdtech/devicemanager/IMDM;

    move-result-object v2

    sput-object v2, Lcom/huawei/hem/vc;->c:Lcom/tdtech/devicemanager/IMDM;

    .line 144
    sget-object v2, Lcom/huawei/hem/vc;->b:Lcom/huawei/hem/vc;

    .line 145
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_29
    const-string v6, "T11"

    .line 146
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 147
    sput-object v2, Lcom/huawei/hem/hd;->c:Landroid/content/Context;

    .line 148
    sget-object v2, Lcom/huawei/hem/hd$a;->a:Lcom/huawei/hem/hd;

    .line 149
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_2a
    const-string v6, "K706"

    .line 150
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 151
    sput-object v2, Lcom/huawei/hem/md;->c:Landroid/content/Context;

    .line 152
    sget-object v2, Lcom/huawei/hem/md;->b:Lcom/huawei/hem/md;

    .line 153
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 154
    :cond_2b
    invoke-static {}, Lcom/huawei/hem/ce;->v()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 155
    sput-object v2, Lcom/huawei/hem/fd;->c:Landroid/content/Context;

    .line 156
    new-instance v3, Lcom/huawei/hem/i6;

    invoke-direct {v3, v2}, Lcom/huawei/hem/i6;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/fd;->d:Lcom/huawei/hem/i6;

    .line 157
    sget-object v2, Lcom/huawei/hem/fd;->b:Lcom/huawei/hem/fd;

    .line 158
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_2c
    const-string v6, "D2N"

    .line 159
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    const-string v6, "Funbook B1"

    .line 160
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    goto :goto_c

    :cond_2d
    move v6, v0

    goto :goto_d

    :cond_2e
    :goto_c
    move v6, v1

    :goto_d
    if-eqz v6, :cond_30

    .line 161
    sget-object v3, Lcom/huawei/hem/r1;->a:Lcom/huawei/hem/r1;

    if-nez v3, :cond_2f

    .line 162
    new-instance v3, Lcom/huawei/hem/r1;

    invoke-direct {v3, v2}, Lcom/huawei/hem/r1;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/r1;->a:Lcom/huawei/hem/r1;

    .line 163
    :cond_2f
    sget-object v3, Lcom/huawei/hem/r1;->a:Lcom/huawei/hem/r1;

    .line 164
    sput-object v3, Lcom/huawei/hem/ad;->c:Lcom/huawei/hem/r1;

    .line 165
    sput-object v2, Lcom/huawei/hem/ad;->d:Landroid/content/Context;

    .line 166
    sput-object v5, Lcom/huawei/hem/ad;->e:Ljava/lang/Class;

    .line 167
    sget-object v2, Lcom/huawei/hem/ad;->b:Lcom/huawei/hem/ad;

    .line 168
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_30
    const-string v6, "X802_6762_66_P"

    .line 169
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 170
    sput-object v2, Lcom/huawei/hem/oc;->c:Landroid/content/Context;

    .line 171
    invoke-static {}, Lcom/huawei/hem/oc;->V0()V

    .line 172
    sget-object v2, Lcom/huawei/hem/oc;->b:Lcom/huawei/hem/oc;

    .line 173
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_31
    const-string v6, "EBEN 80008"

    .line 174
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    const-string v6, "EBEN 82003"

    .line 175
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    goto :goto_e

    :cond_32
    move v6, v0

    goto :goto_f

    :cond_33
    :goto_e
    move v6, v1

    :goto_f
    if-eqz v6, :cond_34

    .line 176
    sput-object v2, Lcom/huawei/hem/pc;->b:Landroid/content/Context;

    .line 177
    sget-object v2, Lcom/huawei/hem/pc$b;->a:Lcom/huawei/hem/pc;

    .line 178
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_34
    const-string v6, "tb8768p1_64_bsp"

    .line 179
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 180
    new-instance v3, Lcom/huawei/hem/d6;

    invoke-direct {v3, v2}, Lcom/huawei/hem/d6;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/kd;->c:Lcom/huawei/hem/d6;

    .line 181
    sput-object v2, Lcom/huawei/hem/kd;->d:Landroid/content/Context;

    .line 182
    sget-object v2, Lcom/huawei/hem/kd;->b:Lcom/huawei/hem/kd;

    .line 183
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 184
    :cond_35
    invoke-static {v4}, Lcom/huawei/hem/ce;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 185
    sput-object v2, Lcom/huawei/hem/kc;->d:Landroid/content/Context;

    .line 186
    invoke-static {v2}, Lcom/huawei/hem/kc;->V0(Landroid/content/Context;)V

    .line 187
    sget-object v2, Lcom/huawei/hem/kc;->b:Lcom/huawei/hem/kc;

    .line 188
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_36
    const-string v6, "P550"

    .line 189
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 190
    new-instance v3, Lcom/huawei/hem/h6;

    invoke-direct {v3, v2}, Lcom/huawei/hem/h6;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/lc;->c:Lcom/huawei/hem/h6;

    .line 191
    sget-object v2, Lcom/huawei/hem/lc;->b:Lcom/huawei/hem/lc;

    .line 192
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_37
    const-string v6, "T10"

    .line 193
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    const-string v6, "LS103I"

    .line 194
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    goto :goto_10

    :cond_38
    move v6, v0

    goto :goto_11

    :cond_39
    :goto_10
    move v6, v1

    :goto_11
    if-eqz v6, :cond_3a

    .line 195
    new-instance v3, Lcom/huawei/hem/lh;

    invoke-direct {v3, v2}, Lcom/huawei/hem/lh;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/nc;->c:Lcom/huawei/hem/lh;

    .line 196
    sget-object v2, Lcom/huawei/hem/nc;->b:Lcom/huawei/hem/nc;

    .line 197
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_3a
    const-string v6, "HY-W80216"

    .line 198
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const-string v3, "device_policy"

    .line 199
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    sput-object v3, Lcom/huawei/hem/qc;->c:Landroid/app/admin/DevicePolicyManager;

    .line 200
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v3, Lcom/huawei/hem/qc;->d:Landroid/content/ComponentName;

    .line 201
    new-instance v3, Lcom/huawei/hem/aj;

    invoke-direct {v3, v2}, Lcom/huawei/hem/aj;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/qc;->e:Lcom/huawei/hem/aj;

    .line 202
    sget-object v2, Lcom/huawei/hem/qc;->b:Lcom/huawei/hem/qc;

    .line 203
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_3b
    const-string v6, "whdx"

    .line 204
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 205
    sput-object v2, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    .line 206
    sget-object v2, Lcom/huawei/hem/k6;->d:Lcom/huawei/hem/k6;

    if-nez v2, :cond_3d

    .line 207
    const-class v2, Lcom/huawei/hem/k6;

    monitor-enter v2

    .line 208
    :try_start_3
    sget-object v4, Lcom/huawei/hem/k6;->d:Lcom/huawei/hem/k6;

    if-nez v4, :cond_3c

    .line 209
    new-instance v4, Lcom/huawei/hem/k6;

    invoke-direct {v4}, Lcom/huawei/hem/k6;-><init>()V

    sput-object v4, Lcom/huawei/hem/k6;->d:Lcom/huawei/hem/k6;

    .line 210
    :cond_3c
    monitor-exit v2

    goto :goto_12

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 211
    :cond_3d
    :goto_12
    sget-object v2, Lcom/huawei/hem/k6;->d:Lcom/huawei/hem/k6;

    .line 212
    sput-object v2, Lcom/huawei/hem/rc;->d:Lcom/huawei/hem/k6;

    .line 213
    sget-object v4, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    .line 214
    iget-object v6, v2, Lcom/huawei/hem/k6;->a:Lcom/huawei/hem/l6;

    if-eqz v6, :cond_3e

    .line 215
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "read.installfilter"

    .line 216
    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "log.executor"

    .line 217
    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.fnf.iptables.BRODCAST_IPTABLE_CMD"

    .line 218
    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    iget-object v6, v6, Lcom/huawei/hem/l6;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.fnf.executor.IMyAidlInterface"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.fnf.executor"

    const-string v7, "com.fnf.executor.service.FiveService"

    .line 221
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v2, v2, Lcom/huawei/hem/k6;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v3, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 223
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/huawei/hem/rc;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v2, Lcom/huawei/hem/rc;->e:Landroid/content/ComponentName;

    .line 224
    sget-object v2, Lcom/huawei/hem/rc;->b:Lcom/huawei/hem/rc;

    .line 225
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 226
    :cond_3e
    throw v3

    .line 227
    :cond_3f
    invoke-static {v4}, Lcom/huawei/hem/ce;->k(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 228
    new-instance v3, Lcom/huawei/hem/wc;

    invoke-direct {v3}, Lcom/huawei/hem/wc;-><init>()V

    sput-object v3, Lcom/huawei/hem/wc;->b:Lcom/huawei/hem/wc;

    .line 229
    new-instance v3, Lcom/huawei/hem/v;

    invoke-direct {v3, v2}, Lcom/huawei/hem/v;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/wc;->c:Lcom/huawei/hem/v;

    const-string v3, "device_policy"

    .line 230
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    sput-object v2, Lcom/huawei/hem/wc;->d:Landroid/app/admin/DevicePolicyManager;

    .line 231
    sget-object v2, Lcom/huawei/hem/wc;->b:Lcom/huawei/hem/wc;

    .line 232
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_40
    const-string v5, "M10"

    .line 233
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 234
    sput-object v2, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    .line 235
    sget-object v2, Lcom/huawei/hem/yi;->f:Lcom/huawei/hem/yi;

    if-nez v2, :cond_42

    .line 236
    const-class v2, Lcom/huawei/hem/yi;

    monitor-enter v2

    .line 237
    :try_start_4
    sget-object v4, Lcom/huawei/hem/yi;->f:Lcom/huawei/hem/yi;

    if-nez v4, :cond_41

    .line 238
    new-instance v4, Lcom/huawei/hem/yi;

    invoke-direct {v4}, Lcom/huawei/hem/yi;-><init>()V

    sput-object v4, Lcom/huawei/hem/yi;->f:Lcom/huawei/hem/yi;

    .line 239
    :cond_41
    monitor-exit v2

    goto :goto_13

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 240
    :cond_42
    :goto_13
    sget-object v2, Lcom/huawei/hem/yi;->f:Lcom/huawei/hem/yi;

    .line 241
    sput-object v2, Lcom/huawei/hem/ld;->d:Lcom/huawei/hem/yi;

    .line 242
    sget-object v4, Lcom/huawei/hem/ld;->c:Landroid/content/Context;

    if-eqz v2, :cond_43

    const-string v3, "ZxkSDK"

    const-string v5, "init "

    .line 243
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v2, v4}, Lcom/huawei/hem/yi;->a(Landroid/content/Context;)V

    .line 245
    iput-object v4, v2, Lcom/huawei/hem/yi;->d:Landroid/content/Context;

    .line 246
    sput-boolean v0, Lcom/huawei/hem/ld;->e:Z

    .line 247
    sget-object v2, Lcom/huawei/hem/ld;->b:Lcom/huawei/hem/ld;

    .line 248
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 249
    :cond_43
    throw v3

    :cond_44
    const-string v3, "X20L_101"

    .line 250
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 251
    sput-object v2, Lcom/huawei/hem/zc;->c:Landroid/content/Context;

    .line 252
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.kte.interfacesettings.aidl"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.kte.interfacesettings"

    .line 253
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    sget-object v3, Lcom/huawei/hem/zc;->c:Landroid/content/Context;

    sget-object v4, Lcom/huawei/hem/zc;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v2, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 255
    sget-object v2, Lcom/huawei/hem/zc;->b:Lcom/huawei/hem/zc;

    .line 256
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    :cond_45
    const-string v3, "A10S(M3H9)"

    .line 257
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 258
    new-instance v3, Lcom/huawei/hem/xi;

    invoke-direct {v3, v2}, Lcom/huawei/hem/xi;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/jd;->c:Lcom/huawei/hem/xi;

    .line 259
    sput-object v2, Lcom/huawei/hem/jd;->d:Landroid/content/Context;

    .line 260
    sget-object v2, Lcom/huawei/hem/jd;->b:Lcom/huawei/hem/jd;

    .line 261
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto/16 :goto_14

    .line 262
    :cond_46
    invoke-static {v4}, Lcom/huawei/hem/ce;->u(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 263
    new-instance v3, Lcom/b2b/rom/ISamsungDevice;

    invoke-direct {v3, v2}, Lcom/b2b/rom/ISamsungDevice;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/dd;->c:Lcom/b2b/rom/ISamsungDevice;

    .line 264
    sget-object v2, Lcom/huawei/hem/dd;->b:Lcom/huawei/hem/dd;

    .line 265
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto :goto_14

    :cond_47
    const-string v3, "LHC-D8"

    .line 266
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 267
    new-instance v3, Lcom/huawei/hem/ih;

    invoke-direct {v3, v2}, Lcom/huawei/hem/ih;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/cd;->c:Lcom/huawei/hem/ih;

    .line 268
    sget-object v2, Lcom/huawei/hem/cd;->b:Lcom/huawei/hem/cd;

    .line 269
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto :goto_14

    .line 270
    :cond_48
    invoke-static {v4}, Lcom/huawei/hem/ce;->p(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 271
    new-instance v3, Lcom/huawei/hem/c6;

    invoke-direct {v3, v2}, Lcom/huawei/hem/c6;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/yc;->c:Lcom/huawei/hem/c6;

    .line 272
    sget-object v2, Lcom/huawei/hem/yc;->b:Lcom/huawei/hem/yc;

    .line 273
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto :goto_14

    :cond_49
    const-string v3, "G802"

    .line 274
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 275
    sget-object v3, Lcom/huawei/hem/bd;->d:Lcom/huawei/hem/bd;

    if-nez v3, :cond_4a

    .line 276
    new-instance v3, Lcom/huawei/hem/bd;

    invoke-direct {v3, v2}, Lcom/huawei/hem/bd;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/bd;->d:Lcom/huawei/hem/bd;

    .line 277
    :cond_4a
    sget-object v2, Lcom/huawei/hem/bd;->d:Lcom/huawei/hem/bd;

    .line 278
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto :goto_14

    :cond_4b
    const-string v3, "CreaPad_1009"

    .line 279
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 280
    sget-object v3, Lcom/huawei/hem/mc;->c:Lcom/huawei/hem/mc;

    if-nez v3, :cond_4c

    .line 281
    new-instance v3, Lcom/huawei/hem/mc;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/huawei/hem/mc;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/huawei/hem/mc;->c:Lcom/huawei/hem/mc;

    .line 282
    :cond_4c
    sget-object v2, Lcom/huawei/hem/mc;->c:Lcom/huawei/hem/mc;

    .line 283
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    goto :goto_14

    .line 284
    :cond_4d
    sput-object v2, Lcom/huawei/hem/jc;->a:Landroid/content/Context;

    .line 285
    sget-object v2, Lcom/huawei/hem/jc$a;->a:Lcom/huawei/hem/jc;

    .line 286
    sput-object v2, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    .line 287
    :goto_14
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "G802"

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 289
    invoke-static {v2}, Lcom/huawei/hem/ce;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v3, "M10"

    .line 290
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 291
    invoke-static {v2}, Lcom/huawei/hem/ce;->k(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v3, "X20L_101"

    .line 292
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 293
    invoke-static {v2}, Lcom/huawei/hem/ce;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 294
    invoke-static {v2}, Lcom/huawei/hem/ce;->u(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 295
    invoke-static {v2}, Lcom/huawei/hem/ce;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 296
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_4e

    move v2, v1

    goto :goto_15

    :cond_4e
    move v2, v0

    :goto_15
    if-eqz v2, :cond_50

    :cond_4f
    move v0, v1

    :cond_50
    if-eqz v0, :cond_51

    .line 297
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 298
    new-instance v1, Lcom/huawei/hem/v1;

    invoke-direct {v1, p0}, Lcom/huawei/hem/v1;-><init>(Lcom/android/launcher3/GuardSecureApplication;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16

    .line 299
    :cond_51
    invoke-static {}, Lcom/huawei/hem/de;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T11"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 301
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 302
    new-instance v1, Lcom/huawei/hem/w1;

    invoke-direct {v1, p0}, Lcom/huawei/hem/w1;-><init>(Lcom/android/launcher3/GuardSecureApplication;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16

    .line 303
    :cond_52
    invoke-virtual {p0}, Lcom/android/launcher3/GuardSecureApplication;->a()V

    .line 304
    :goto_16
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 305
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 307
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    new-instance v1, Lcom/android/launcher3/receiver/ScreenStateReceiver;

    invoke-direct {v1}, Lcom/android/launcher3/receiver/ScreenStateReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 310
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 311
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 312
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 313
    new-instance v1, Lcom/android/launcher3/receiver/EventReceiver;

    invoke-direct {v1}, Lcom/android/launcher3/receiver/EventReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 314
    new-instance v0, Lcom/android/launcher3/receiver/TimeReceiver;

    invoke-direct {v0}, Lcom/android/launcher3/receiver/TimeReceiver;-><init>()V

    .line 315
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.TIME_TICK"

    .line 316
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0, v0, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_53

    const-string v0, "connectivity"

    .line 319
    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_53

    .line 320
    new-instance v1, Lcom/huawei/hem/h5;

    invoke-direct {v1}, Lcom/huawei/hem/h5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_53
    return-void
.end method
