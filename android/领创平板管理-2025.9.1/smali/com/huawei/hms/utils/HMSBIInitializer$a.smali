.class public Lcom/huawei/hms/utils/HMSBIInitializer$a;
.super Ljava/lang/Object;
.source "HMSBIInitializer.java"

# interfaces
.implements Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/utils/HMSBIInitializer;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/utils/HMSBIInitializer;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/utils/HMSBIInitializer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/utils/HMSBIInitializer$a;->a:Lcom/huawei/hms/utils/HMSBIInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBackFail(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get grs failed, the errorcode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HMSBIInitializer"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hms/utils/HMSBIInitializer$a;->a:Lcom/huawei/hms/utils/HMSBIInitializer;

    invoke-static {p1}, Lcom/huawei/hms/utils/HMSBIInitializer;->c(Lcom/huawei/hms/utils/HMSBIInitializer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onCallBackSuccess(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/utils/HMSBIInitializer$a;->a:Lcom/huawei/hms/utils/HMSBIInitializer;

    invoke-static {v0}, Lcom/huawei/hms/utils/HMSBIInitializer;->a(Lcom/huawei/hms/utils/HMSBIInitializer;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/utils/HMSBIInitializer$a;->a:Lcom/huawei/hms/utils/HMSBIInitializer;

    invoke-static {v0}, Lcom/huawei/hms/utils/HMSBIInitializer;->b(Lcom/huawei/hms/utils/HMSBIInitializer;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.huawei.hwid"

    .line 4
    new-instance v3, Lcom/huawei/hem/da;

    invoke-direct {v3, v0}, Lcom/huawei/hem/da;-><init>(Landroid/content/Context;)V

    const-string v0, "hmsSdk"

    const-string v4, "Builder.setEnableImei(boolean isReportAndroidImei) is execute."

    .line 5
    invoke-static {v0, v4}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/huawei/hem/da;->a:Lcom/huawei/hem/ea;

    .line 6
    iget-object v0, v0, Lcom/huawei/hem/ea;->g:Lcom/huawei/hem/ba;

    .line 7
    iput-boolean v1, v0, Lcom/huawei/hem/ba;->a:Z

    .line 8
    iget-object v0, v3, Lcom/huawei/hem/da;->b:Lcom/huawei/hem/ea;

    .line 9
    iget-object v0, v0, Lcom/huawei/hem/ea;->g:Lcom/huawei/hem/ba;

    .line 10
    iput-boolean v1, v0, Lcom/huawei/hem/ba;->a:Z

    const-string v0, "hmsSdk"

    const-string v4, "Builder.setEnableUDID(boolean isReportUDID) is execute."

    .line 11
    invoke-static {v0, v4}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/huawei/hem/da;->a:Lcom/huawei/hem/ea;

    .line 12
    iget-object v0, v0, Lcom/huawei/hem/ea;->g:Lcom/huawei/hem/ba;

    .line 13
    iput-boolean v1, v0, Lcom/huawei/hem/ba;->c:Z

    .line 14
    iget-object v0, v3, Lcom/huawei/hem/da;->b:Lcom/huawei/hem/ea;

    .line 15
    iget-object v0, v0, Lcom/huawei/hem/ea;->g:Lcom/huawei/hem/ba;

    .line 16
    iput-boolean v1, v0, Lcom/huawei/hem/ba;->c:Z

    const-string v0, "hmsSdk"

    const-string v4, "Builder.setEnableSN(boolean isReportSN) is execute."

    .line 17
    invoke-static {v0, v4}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/huawei/hem/da;->a:Lcom/huawei/hem/ea;

    .line 18
    iget-object v0, v0, Lcom/huawei/hem/ea;->g:Lcom/huawei/hem/ba;

    .line 19
    iput-boolean v1, v0, Lcom/huawei/hem/ba;->b:Z

    .line 20
    iget-object v0, v3, Lcom/huawei/hem/da;->b:Lcom/huawei/hem/ea;

    .line 21
    iget-object v0, v0, Lcom/huawei/hem/ea;->g:Lcom/huawei/hem/ba;

    .line 22
    iput-boolean v1, v0, Lcom/huawei/hem/ba;->b:Z

    .line 23
    invoke-virtual {v3, v1, p1}, Lcom/huawei/hem/da;->a(ILjava/lang/String;)Lcom/huawei/hem/da;

    const/4 v0, 0x1

    .line 24
    invoke-virtual {v3, v0, p1}, Lcom/huawei/hem/da;->a(ILjava/lang/String;)Lcom/huawei/hem/da;

    const-string p1, "hmsSdk"

    const-string v4, "Builder.setAppID is execute"

    .line 25
    invoke-static {p1, v4}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v3, Lcom/huawei/hem/da;->d:Ljava/lang/String;

    .line 26
    iget-object p1, v3, Lcom/huawei/hem/da;->c:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, "hmsSdk"

    const-string v0, "analyticsConf create(): context is null,create failed!"

    invoke-static {p1, v0}, Lcom/huawei/hem/xa;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_0
    const-string p1, "hmsSdk"

    const-string v2, "Builder.create() is execute."

    invoke-static {p1, v2}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/hem/w9;

    const-string v2, "_hms_config_tag"

    invoke-direct {p1, v2}, Lcom/huawei/hem/w9;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/huawei/hem/ea;

    iget-object v4, v3, Lcom/huawei/hem/da;->a:Lcom/huawei/hem/ea;

    invoke-direct {v2, v4}, Lcom/huawei/hem/ea;-><init>(Lcom/huawei/hem/ea;)V

    const-string v4, "HiAnalyticsInstanceImpl.setOperConf() is executed.TAG: "

    .line 27
    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/huawei/hem/w9;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "hmsSdk"

    invoke-static {v5, v4}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/huawei/hem/w9;->b:Lcom/huawei/hem/ja;

    .line 28
    iput-object v2, v4, Lcom/huawei/hem/ja;->b:Lcom/huawei/hem/ea;

    .line 29
    new-instance v2, Lcom/huawei/hem/ea;

    iget-object v4, v3, Lcom/huawei/hem/da;->b:Lcom/huawei/hem/ea;

    invoke-direct {v2, v4}, Lcom/huawei/hem/ea;-><init>(Lcom/huawei/hem/ea;)V

    const-string v4, "HiAnalyticsInstanceImpl.setMaintConf() is executed.TAG : "

    .line 30
    invoke-static {v4}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/huawei/hem/w9;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "hmsSdk"

    invoke-static {v5, v4}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/huawei/hem/w9;->b:Lcom/huawei/hem/ja;

    .line 31
    iput-object v2, v4, Lcom/huawei/hem/ja;->a:Lcom/huawei/hem/ea;

    .line 32
    invoke-static {}, Lcom/huawei/hem/t9;->a()Lcom/huawei/hem/t9;

    move-result-object v2

    iget-object v4, v3, Lcom/huawei/hem/da;->c:Landroid/content/Context;

    const/4 v5, 0x0

    if-eqz v2, :cond_a

    .line 33
    sget-object v6, Lcom/huawei/hem/t9;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, v2, Lcom/huawei/hem/t9;->a:Landroid/content/Context;

    if-eqz v7, :cond_1

    const-string v2, "hmsSdk"

    const-string v4, "DataManager already initialized."

    invoke-static {v2, v4}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_0

    :cond_1
    iput-object v4, v2, Lcom/huawei/hem/t9;->a:Landroid/content/Context;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v6

    .line 34
    iget-object v6, v6, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 35
    iget-object v2, v2, Lcom/huawei/hem/t9;->a:Landroid/content/Context;

    .line 36
    iput-object v2, v6, Lcom/huawei/hem/ga;->m:Landroid/content/Context;

    .line 37
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object v2

    .line 38
    iget-object v2, v2, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 39
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 40
    iput-object v6, v2, Lcom/huawei/hem/ga;->e:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/huawei/hem/va;->a()Lcom/huawei/hem/va;

    move-result-object v2

    .line 42
    iget-object v6, v2, Lcom/huawei/hem/va;->a:Landroid/content/Context;

    if-nez v6, :cond_2

    iput-object v4, v2, Lcom/huawei/hem/va;->a:Landroid/content/Context;

    .line 43
    :cond_2
    :goto_0
    invoke-static {}, Lcom/huawei/hem/u9;->a()Lcom/huawei/hem/u9;

    move-result-object v2

    iget-object v4, v3, Lcom/huawei/hem/da;->c:Landroid/content/Context;

    .line 44
    iget-object v7, v2, Lcom/huawei/hem/u9;->b:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iget-object v6, v2, Lcom/huawei/hem/u9;->a:Landroid/content/Context;

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    iput-object v4, v2, Lcom/huawei/hem/u9;->a:Landroid/content/Context;

    invoke-static {}, Lcom/huawei/hem/v9;->a()Lcom/huawei/hem/v9;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/huawei/hem/v9;->b(Landroid/content/Context;)V

    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    sget-object v2, Lcom/huawei/hem/ia;->b:Lcom/huawei/hem/ia;

    .line 46
    iput-object p1, v2, Lcom/huawei/hem/ia;->a:Lcom/huawei/hem/w9;

    .line 47
    invoke-static {}, Lcom/huawei/hem/t9;->a()Lcom/huawei/hem/t9;

    move-result-object p1

    iget-object v2, v3, Lcom/huawei/hem/da;->d:Ljava/lang/String;

    if-eqz p1, :cond_9

    const-string v3, "hmsSdk"

    const-string v4, "HiAnalyticsDataManager.setAppid(String appid) is execute."

    .line 48
    invoke-static {v3, v4}, Lcom/huawei/hem/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/huawei/hem/t9;->a:Landroid/content/Context;

    if-nez p1, :cond_4

    const-string p1, "sdk is not init"

    invoke-static {v3, p1}, Lcom/huawei/hem/xa;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "appID"

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStrParameter() Parameter verification failure! Parameter:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 50
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkString() Parameter is null! Parameter:"

    goto :goto_2

    :cond_6
    const-string v5, "[a-zA-Z0-9_][a-zA-Z0-9. _-]{0,255}"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkString() Parameter verification failure! Parameter:"

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/huawei/hem/xa;->g(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    move-object v2, p1

    .line 51
    :goto_5
    invoke-static {}, Lcom/huawei/hem/z9;->b()Lcom/huawei/hem/z9;

    move-result-object p1

    .line 52
    iget-object p1, p1, Lcom/huawei/hem/z9;->a:Lcom/huawei/hem/ga;

    .line 53
    iput-object v2, p1, Lcom/huawei/hem/ga;->f:Ljava/lang/String;

    goto :goto_6

    .line 54
    :cond_9
    throw v5

    :catchall_0
    move-exception p1

    .line 55
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 56
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_a
    throw v5

    .line 57
    :cond_b
    new-instance v0, Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;

    invoke-direct {v0}, Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;-><init>()V

    .line 58
    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;->setEnableImei(Z)Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;->setEnableUDID(Z)Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;->setEnableSN(Z)Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;->setCollectURL(Ljava/lang/String;)Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;->build()Lcom/huawei/hianalytics/process/HiAnalyticsConfig;

    move-result-object v0

    .line 63
    new-instance v2, Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;

    invoke-direct {v2}, Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;-><init>()V

    .line 64
    invoke-virtual {v2, v1}, Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;->setEnableImei(Z)Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v1}, Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;->setEnableUDID(Z)Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v1}, Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;->setEnableSN(Z)Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;

    move-result-object v2

    .line 67
    invoke-virtual {v2, p1}, Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;->setCollectURL(Ljava/lang/String;)Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/huawei/hianalytics/process/HiAnalyticsConfig$Builder;->build()Lcom/huawei/hianalytics/process/HiAnalyticsConfig;

    move-result-object p1

    .line 69
    new-instance v2, Lcom/huawei/hianalytics/process/HiAnalyticsInstance$Builder;

    iget-object v3, p0, Lcom/huawei/hms/utils/HMSBIInitializer$a;->a:Lcom/huawei/hms/utils/HMSBIInitializer;

    invoke-static {v3}, Lcom/huawei/hms/utils/HMSBIInitializer;->b(Lcom/huawei/hms/utils/HMSBIInitializer;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/huawei/hianalytics/process/HiAnalyticsInstance$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v2, v0}, Lcom/huawei/hianalytics/process/HiAnalyticsInstance$Builder;->setOperConf(Lcom/huawei/hianalytics/process/HiAnalyticsConfig;)Lcom/huawei/hianalytics/process/HiAnalyticsInstance$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p1}, Lcom/huawei/hianalytics/process/HiAnalyticsInstance$Builder;->setMaintConf(Lcom/huawei/hianalytics/process/HiAnalyticsConfig;)Lcom/huawei/hianalytics/process/HiAnalyticsInstance$Builder;

    move-result-object p1

    const-string v0, "hms_config_tag"

    .line 72
    invoke-virtual {p1, v0}, Lcom/huawei/hianalytics/process/HiAnalyticsInstance$Builder;->create(Ljava/lang/String;)Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/huawei/hms/utils/HMSBIInitializer;->a(Lcom/huawei/hianalytics/process/HiAnalyticsInstance;)Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    .line 74
    invoke-static {}, Lcom/huawei/hms/utils/HMSBIInitializer;->a()Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    move-result-object p1

    const-string v0, "com.huawei.hwid"

    invoke-interface {p1, v0}, Lcom/huawei/hianalytics/process/HiAnalyticsInstance;->setAppid(Ljava/lang/String;)V

    :goto_6
    const-string p1, "HMSBIInitializer"

    const-string v0, "BI URL acquired successfully"

    .line 75
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_c
    iget-object p1, p0, Lcom/huawei/hms/utils/HMSBIInitializer$a;->a:Lcom/huawei/hms/utils/HMSBIInitializer;

    invoke-static {p1}, Lcom/huawei/hms/utils/HMSBIInitializer;->c(Lcom/huawei/hms/utils/HMSBIInitializer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
