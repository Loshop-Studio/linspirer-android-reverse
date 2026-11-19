# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public Lcom/android/launcher3/network/RunningLogHelper;
.super Ljava/lang/Object;
.source "RunningLogHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UploadRunningLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/ee;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0c00d4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload file:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "not exsit"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p0, p1}, Lcom/android/launcher3/network/RunningLogHelper;->uploadFile(Landroid/content/Context;[Ljava/io/File;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "upload file but no child file"

    .line 8
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/network/RunningLogHelper;->handleResult(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public static handleResult(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    const v0, 0x7f0c00d3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 2
    :cond_0
    const-class v2, Lcom/android/launcher3/network/response/FileUploadResponse;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/network/response/FileUploadResponse;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/android/launcher3/network/response/FileUploadResponse;->getCode()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/network/response/FileUploadResponse;->getData()Lcom/android/launcher3/model/FileUpload;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/android/launcher3/model/FileUpload;->getFileNewPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/network/RunningLogHelper;->reportLogs(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/ee;->d(Ljava/lang/String;)V

    const p1, 0x7f0c00d5

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static reportLogs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0c00d3

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/launcher3/network/params/ClientLogParams;

    invoke-direct {v0}, Lcom/android/launcher3/network/params/ClientLogParams;-><init>()V

    .line 4
    invoke-static {p0}, Lcom/huawei/hem/de;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/network/params/ClientLogParams;->setSwdid(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/launcher3/network/params/ClientLogParams;->setPath(Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {p1}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 7
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    const-string v0, "com.linspirer.clientlog.setclientlog"

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/huawei/hem/rb;

    invoke-direct {v0}, Lcom/huawei/hem/rb;-><init>()V

    .line 10
    new-instance v3, Lcom/huawei/hem/vb;

    invoke-direct {v3, v0}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 11
    sget-object v0, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 12
    iput-object v0, v3, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    iput-object p1, v3, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 15
    new-instance p1, Lcom/android/launcher3/network/RunningLogHelper$2;

    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p1, v0, p0}, Lcom/android/launcher3/network/RunningLogHelper$2;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    .line 16
    invoke-virtual {v3, p1}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static uploadFile(Landroid/content/Context;[Ljava/io/File;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hem/ee;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload item file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not exsit"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_0
    new-instance v4, Lcom/huawei/hem/rb;

    invoke-direct {v4}, Lcom/huawei/hem/rb;-><init>()V

    .line 5
    new-instance v5, Lcom/huawei/hem/wb;

    invoke-direct {v5, v4}, Lcom/huawei/hem/wb;-><init>(Lcom/huawei/hem/rb;)V

    const-string v4, "upload_tlt"

    .line 6
    iget-object v6, v5, Lcom/huawei/hem/wb;->e:Ljava/util/Map;

    if-nez v6, :cond_1

    .line 7
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v5, Lcom/huawei/hem/wb;->e:Ljava/util/Map;

    .line 8
    :cond_1
    iget-object v6, v5, Lcom/huawei/hem/wb;->e:Ljava/util/Map;

    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "https://cloud.linspirer.com:8070/upload-client-log"

    .line 9
    iput-object v4, v5, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 10
    new-instance v4, Lcom/android/launcher3/network/RunningLogHelper$1;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher3/network/RunningLogHelper$1;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 11
    invoke-virtual {v5, v4}, Lcom/huawei/hem/wb;->c(Lcom/huawei/hem/yb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const p1, 0x7f0c00d3

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
