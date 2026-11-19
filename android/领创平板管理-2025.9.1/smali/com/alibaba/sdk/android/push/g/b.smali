.class public Lcom/alibaba/sdk/android/push/g/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/alibaba/sdk/android/push/CommonCallback;Lcom/alibaba/sdk/android/push/g/e;)V
    .locals 3

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->a()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p1

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getImportantLogger()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/d;->a:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/push/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/push/d/a;->a()Lcom/alibaba/sdk/android/push/d/a;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/alibaba/sdk/android/push/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
