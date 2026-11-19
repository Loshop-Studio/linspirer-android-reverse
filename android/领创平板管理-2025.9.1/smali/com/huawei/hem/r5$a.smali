.class public Lcom/huawei/hem/r5$a;
.super Lcom/android/launcher3/network/response/LTKListResponseListener;
.source "ComponentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/r5;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/network/response/LTKListResponseListener<",
        "Lcom/android/launcher3/model/ComponentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hem/r5;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/r5;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/r5$a;->a:Lcom/huawei/hem/r5;

    invoke-direct {p0, p2}, Lcom/android/launcher3/network/response/LTKListResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/ComponentInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ComponentHelper--get component setting sucess"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/r5$a;->a:Lcom/huawei/hem/r5;

    if-eqz v0, :cond_5

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcom/huawei/hem/r5;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->h()Ljava/lang/String;

    move-result-object v2

    .line 5
    const-class v3, Lcom/android/launcher3/model/ComponentInfo;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-static {v3}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ComponentHelper--new component and old component are not empty"

    .line 7
    invoke-static {v4}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 8
    invoke-static {v2}, Lcom/huawei/hem/bc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v1}, Lcom/huawei/hem/bc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "ComponentHelper--new component and old component are same"

    .line 11
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v0, v3, v5}, Lcom/huawei/hem/r5;->c(Ljava/util/List;Z)V

    .line 13
    invoke-virtual {v0, p1, v6}, Lcom/huawei/hem/r5;->c(Ljava/util/List;Z)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v3}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ComponentHelperold component are empty but new component are not empty"

    .line 15
    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1, v6}, Lcom/huawei/hem/r5;->c(Ljava/util/List;Z)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v3}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ComponentHelperold component are not empty but new component empty"

    .line 18
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v3, v5}, Lcom/huawei/hem/r5;->c(Ljava/util/List;Z)V

    .line 20
    :cond_3
    :goto_0
    iget-object p1, v0, Lcom/huawei/hem/r5;->b:Lcom/huawei/hem/y5;

    .line 21
    iget-object v0, p1, Lcom/huawei/hem/y5;->g0:Ljava/lang/String;

    if-eq v0, v1, :cond_4

    .line 22
    iput-object v1, p1, Lcom/huawei/hem/y5;->g0:Ljava/lang/String;

    .line 23
    iget-object p1, p1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 24
    iget-object v0, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "setting_component"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    iget-object p1, p1, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    const/4 p1, 0x0

    .line 26
    throw p1
.end method

.method public onFailed(Lcom/android/launcher3/network/response/Response;)V
    .locals 0

    const-string p1, "ComponentHelper--get component setting failed response"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onFailureByNet(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "ComponentHelper--get component setting failed object"

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void
.end method
