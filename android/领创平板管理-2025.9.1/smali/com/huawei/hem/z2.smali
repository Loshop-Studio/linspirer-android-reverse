.class public Lcom/huawei/hem/z2;
.super Landroid/widget/BaseAdapter;
.source "HengxuanAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/z2$b;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
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
    iput-object p1, p0, Lcom/huawei/hem/z2;->c:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/z2;->a:Landroid/view/LayoutInflater;

    .line 4
    iput-object p2, p0, Lcom/huawei/hem/z2;->b:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/z2;->b:Ljava/util/List;

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
    new-instance p2, Lcom/huawei/hem/z2$b;

    invoke-direct {p2, p0}, Lcom/huawei/hem/z2$b;-><init>(Lcom/huawei/hem/z2;)V

    .line 2
    iget-object p3, p0, Lcom/huawei/hem/z2;->a:Landroid/view/LayoutInflater;

    const v0, 0x7f09003f

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f07002d

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/huawei/hem/z2$b;->a:Landroid/widget/TextView;

    const v0, 0x7f07002f

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/huawei/hem/z2$b;->b:Landroid/widget/ImageView;

    const v0, 0x7f070030

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/huawei/hem/z2$b;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/huawei/hem/z2$b;

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/huawei/hem/z2;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/AppItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/android/launcher3/model/AppItem;->getPkgName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.ndwill.swd.appstore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/model/AppItem;->getTipCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p2, Lcom/huawei/hem/z2$b;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v2, p2, Lcom/huawei/hem/z2$b;->a:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :goto_1
    new-instance v2, Lcom/huawei/hem/b6;

    iget-object v3, p0, Lcom/huawei/hem/z2;->c:Landroid/content/Context;

    iget-object v4, p2, Lcom/huawei/hem/z2$b;->b:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/huawei/hem/z2;->b:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/AppItem;

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/hem/b6;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/launcher3/model/AppItem;)V

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 13
    iget-object p2, p2, Lcom/huawei/hem/z2$b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/huawei/hem/z2;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher3/model/AppItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance p2, Lcom/huawei/hem/z2$a;

    invoke-direct {p2, p0, v0, p1}, Lcom/huawei/hem/z2$a;-><init>(Lcom/huawei/hem/z2;Lcom/android/launcher3/model/AppItem;I)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method
