.class public Lcom/huawei/hem/a6;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/a6$b;
    }
.end annotation


# static fields
.field public static g:Lcom/huawei/hem/a6;


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/content/pm/PackageManager;

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/huawei/hem/a6$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hem/a6;->d:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/a6;->f:Ljava/util/HashMap;

    const-string v0, "activity"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 5
    iput-object p1, p0, Lcom/huawei/hem/a6;->b:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/a6;->c:Landroid/content/pm/PackageManager;

    .line 7
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result p1

    iput p1, p0, Lcom/huawei/hem/a6;->e:I

    .line 8
    invoke-virtual {p0}, Lcom/huawei/hem/a6;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 11
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 15
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 16
    iput-object v0, p0, Lcom/huawei/hem/a6;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Lcom/huawei/hem/a6$b;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/a6;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hem/a6$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/huawei/hem/a6$b;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    .line 3
    :cond_0
    new-instance v0, Lcom/huawei/hem/a6$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hem/a6$b;-><init>(Lcom/huawei/hem/a6$a;)V

    .line 4
    iget-object v2, p0, Lcom/huawei/hem/a6;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcom/huawei/hem/a6;->f:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/huawei/hem/a6;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/huawei/hem/a6$b;->b:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/huawei/hem/a6;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/hem/a6$b;->b:Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcom/huawei/hem/a6;->f:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    :goto_0
    iget-object p1, v0, Lcom/huawei/hem/a6$b;->b:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object p1, v0, Lcom/huawei/hem/a6$b;->b:Ljava/lang/String;

    .line 12
    :cond_3
    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hem/a6;->c:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_5

    .line 14
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result p1

    if-eqz p1, :cond_5

    .line 15
    :try_start_1
    iget v3, p0, Lcom/huawei/hem/a6;->e:I

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-eqz v1, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/huawei/hem/a6;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 17
    :cond_5
    invoke-virtual {p0}, Lcom/huawei/hem/a6;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 18
    :goto_2
    iget-object p1, p0, Lcom/huawei/hem/a6;->b:Landroid/content/Context;

    .line 19
    invoke-static {v1, p1, p2}, Lcom/huawei/hem/z5;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/huawei/hem/a6$b;->a:Landroid/graphics/Bitmap;

    :cond_6
    return-object v0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/huawei/hem/a6;->e:I

    const v2, 0x1080093

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hem/a6;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    return-object v0
.end method
