# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public abstract Lcom/android/launcher3/network/response/LTKResponseListener;
.super Lcom/android/launcher3/network/response/BaseResponse;
.source "LTKResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/launcher3/network/response/BaseResponse;"
    }
.end annotation


# instance fields
.field public clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/network/response/BaseResponse;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/network/response/LTKResponseListener;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public handleResult(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public handleResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public handleResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSucessDecrypt(Ljava/lang/String;)V
    .locals 3

    const-string v0, "code"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "type"

    .line 4
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "boolean"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "data"

    if-eqz v0, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/response/LTKResponseListener;->handleResult(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    const-string v0, "string"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/response/LTKResponseListener;->handleResult(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/network/response/LTKResponseListener;->clazz:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/response/LTKResponseListener;->handleResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    const-class v0, Lcom/android/launcher3/network/response/Response;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/network/response/Response;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/response/BaseResponse;->onFailed(Lcom/android/launcher3/network/response/Response;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 13
    new-instance p1, Lcom/android/launcher3/network/response/Response;

    invoke-direct {p1}, Lcom/android/launcher3/network/response/Response;-><init>()V

    const/16 v0, -0xc8

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/response/Response;->setCode(I)V

    const-string v0, ""

    .line 15
    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/response/Response;->setData(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/response/BaseResponse;->onFailed(Lcom/android/launcher3/network/response/Response;)V

    :goto_0
    return-void
.end method
