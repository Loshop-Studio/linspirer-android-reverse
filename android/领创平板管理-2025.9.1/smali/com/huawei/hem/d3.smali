.class public Lcom/huawei/hem/d3;
.super Landroid/widget/BaseAdapter;
.source "TopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/d3$a;,
        Lcom/huawei/hem/d3$b;
    }
.end annotation


# instance fields
.field public a:Landroid/view/LayoutInflater;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/content/Context;

.field public d:Lcom/huawei/hem/d3$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/d3;->c:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hem/d3;->a:Landroid/view/LayoutInflater;

    .line 4
    iput-object p2, p0, Lcom/huawei/hem/d3;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public synthetic a(ILcom/android/launcher3/model/AppItem;Landroid/view/View;)V
    .locals 1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/huawei/hem/d3;->d:Lcom/huawei/hem/d3$a;

    if-eqz p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/huawei/hem/d3;->d:Lcom/huawei/hem/d3$a;

    invoke-interface {p1}, Lcom/huawei/hem/d3$a;->a()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/model/AppItem;->getPkgName()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/launcher3/network/DeviceLogHelper;->recordOpenApp(Ljava/lang/String;)V

    const-string p3, "com.sec.android.gallery3d"

    .line 6
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    iget-object p1, p0, Lcom/huawei/hem/d3;->c:Landroid/content/Context;

    const p3, 0x7f0c0127

    invoke-static {p1, p2, p3}, Lcom/huawei/hem/bc;->r(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 8
    :cond_2
    iget-object p3, p0, Lcom/huawei/hem/d3;->b:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/AppItem;

    invoke-virtual {p1}, Lcom/android/launcher3/model/AppItem;->getActivityName()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p3, p0, Lcom/huawei/hem/d3;->c:Landroid/content/Context;

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/huawei/hem/y4;->T(Landroid/content/Context;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/d3;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/huawei/hem/d3$b;

    invoke-direct {p2, p0}, Lcom/huawei/hem/d3$b;-><init>(Lcom/huawei/hem/d3;)V

    .line 2
    iget-object p3, p0, Lcom/huawei/hem/d3;->a:Landroid/view/LayoutInflater;

    const v0, 0x7f090044

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f070031

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/huawei/hem/d3$b;->a:Landroid/widget/ImageView;

    const v0, 0x7f070032

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/huawei/hem/d3$b;->b:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/huawei/hem/d3$b;

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/huawei/hem/d3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/AppItem;

    .line 8
    invoke-virtual {v0}, Lcom/android/launcher3/model/AppItem;->getIcon()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p2, Lcom/huawei/hem/d3$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AppItem;->getIcon()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 10
    :cond_1
    new-instance v1, Lcom/huawei/hem/b6;

    iget-object v3, p0, Lcom/huawei/hem/d3;->c:Landroid/content/Context;

    iget-object v4, p2, Lcom/huawei/hem/d3$b;->a:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/huawei/hem/d3;->b:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/AppItem;

    invoke-direct {v1, v3, v4, v5}, Lcom/huawei/hem/b6;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/launcher3/model/AppItem;)V

    new-array v3, v2, [Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    const/4 v1, 0x3

    const/16 v3, 0x8

    if-ge p1, v1, :cond_2

    .line 11
    iget-object v1, p2, Lcom/huawei/hem/d3$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v1, p2, Lcom/huawei/hem/d3$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 13
    :cond_2
    iget-object v1, p2, Lcom/huawei/hem/d3$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v1, p2, Lcom/huawei/hem/d3$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :goto_2
    iget-object p2, p2, Lcom/huawei/hem/d3$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/huawei/hem/d3;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher3/model/AppItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance p2, Lcom/huawei/hem/w2;

    invoke-direct {p2, p0, p1, v0}, Lcom/huawei/hem/w2;-><init>(Lcom/huawei/hem/d3;ILcom/android/launcher3/model/AppItem;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method
