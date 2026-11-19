.class public Lcom/huawei/hem/b6;
.super Landroid/os/AsyncTask;
.source "ImageLoadAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Lcom/android/launcher3/model/AppItem;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/launcher3/model/AppItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/huawei/hem/b6;->a:Landroid/widget/ImageView;

    .line 3
    iput-object p3, p0, Lcom/huawei/hem/b6;->b:Lcom/android/launcher3/model/AppItem;

    .line 4
    iput-object p1, p0, Lcom/huawei/hem/b6;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    const-string p1, "com.ndwill.swd.appstore"

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/b6;->b:Lcom/android/launcher3/model/AppItem;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AppItem;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/b6;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0003

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_0
    sget-object p1, Lcom/huawei/hem/a6;->g:Lcom/huawei/hem/a6;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcom/huawei/hem/a6;

    .line 6
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    .line 7
    invoke-direct {p1, v0}, Lcom/huawei/hem/a6;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/huawei/hem/a6;->g:Lcom/huawei/hem/a6;

    .line 8
    :cond_1
    sget-object p1, Lcom/huawei/hem/a6;->g:Lcom/huawei/hem/a6;

    .line 9
    iget-object v0, p0, Lcom/huawei/hem/b6;->b:Lcom/android/launcher3/model/AppItem;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AppItem;->hashStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hem/b6;->b:Lcom/android/launcher3/model/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher3/model/AppItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 10
    iget-object v2, p1, Lcom/huawei/hem/a6;->d:Ljava/util/HashMap;

    monitor-enter v2

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    :try_start_0
    invoke-virtual {p1, v0, v1}, Lcom/huawei/hem/a6;->a(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Lcom/huawei/hem/a6$b;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/huawei/hem/a6$b;->a:Landroid/graphics/Bitmap;

    monitor-exit v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 13
    monitor-exit v2

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/b6;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
