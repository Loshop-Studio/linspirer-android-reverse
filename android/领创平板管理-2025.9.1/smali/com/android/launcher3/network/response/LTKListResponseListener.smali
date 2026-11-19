# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public abstract Lcom/android/launcher3/network/response/LTKListResponseListener;
.super Lcom/android/launcher3/network/response/BaseResponse;
.source "LTKListResponseListener.java"


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
    iput-object p1, p0, Lcom/android/launcher3/network/response/LTKListResponseListener;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract handleResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
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

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "data"

    .line 4
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/network/response/LTKListResponseListener;->clazz:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/response/LTKListResponseListener;->handleResult(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    const-class v0, Lcom/android/launcher3/network/response/Response;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/network/response/Response;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/response/BaseResponse;->onFailed(Lcom/android/launcher3/network/response/Response;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 8
    new-instance p1, Lcom/android/launcher3/network/response/Response;

    invoke-direct {p1}, Lcom/android/launcher3/network/response/Response;-><init>()V

    const/16 v0, -0xc8

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/response/Response;->setCode(I)V

    const-string v0, ""

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/response/Response;->setData(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/launcher3/network/response/BaseResponse;->onFailed(Lcom/android/launcher3/network/response/Response;)V

    :goto_0
    return-void
.end method
