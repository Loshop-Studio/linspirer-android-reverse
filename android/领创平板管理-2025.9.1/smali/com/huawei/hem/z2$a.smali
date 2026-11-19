.class public Lcom/huawei/hem/z2$a;
.super Ljava/lang/Object;
.source "HengxuanAppAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hem/z2;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/AppItem;

.field public final synthetic b:I

.field public final synthetic c:Lcom/huawei/hem/z2;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/z2;Lcom/android/launcher3/model/AppItem;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/z2$a;->c:Lcom/huawei/hem/z2;

    iput-object p2, p0, Lcom/huawei/hem/z2$a;->a:Lcom/android/launcher3/model/AppItem;

    iput p3, p0, Lcom/huawei/hem/z2$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hem/z2$a;->a:Lcom/android/launcher3/model/AppItem;

    invoke-virtual {p1}, Lcom/android/launcher3/model/AppItem;->getPkgName()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/network/DeviceLogHelper;->recordOpenApp(Ljava/lang/String;)V

    const-string v0, "com.sec.android.gallery3d"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/huawei/hem/z2$a;->c:Lcom/huawei/hem/z2;

    .line 5
    iget-object v0, v0, Lcom/huawei/hem/z2;->c:Landroid/content/Context;

    const v1, 0x7f0c0127

    .line 6
    invoke-static {v0, p1, v1}, Lcom/huawei/hem/bc;->r(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/z2$a;->c:Lcom/huawei/hem/z2;

    .line 8
    iget-object v0, v0, Lcom/huawei/hem/z2;->b:Ljava/util/List;

    .line 9
    iget v1, p0, Lcom/huawei/hem/z2$a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/AppItem;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AppItem;->getActivityName()Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/huawei/hem/z2$a;->c:Lcom/huawei/hem/z2;

    .line 11
    iget-object v1, v1, Lcom/huawei/hem/z2;->c:Landroid/content/Context;

    .line 12
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/huawei/hem/y4;->T(Landroid/content/Context;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
