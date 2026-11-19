.class public Lcom/android/launcher3/adapter/RecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Lcom/huawei/hem/e3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/adapter/RecyclerViewAdapter;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/adapter/RecyclerViewAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;-><init>(Lcom/android/launcher3/adapter/RecyclerViewAdapter;Landroid/view/View;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/adapter/RecyclerViewAdapter;->c:I

    const/16 v3, 0x18

    div-int/2addr v3, v2

    div-int/2addr p1, v3

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/adapter/RecyclerViewAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 1
    check-cast p1, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/adapter/RecyclerViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/AppItem;

    .line 3
    iget-object v0, p1, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/launcher3/model/AppItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p2}, Lcom/android/launcher3/model/AppItem;->getTipCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/16 v2, 0x63

    if-le v0, v2, :cond_0

    move v0, v2

    .line 5
    :cond_0
    iget-object v2, p1, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v2, p1, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p1, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :goto_0
    new-instance v0, Lcom/huawei/hem/b6;

    iget-object v2, p0, Lcom/android/launcher3/adapter/RecyclerViewAdapter;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;->a:Landroid/widget/ImageView;

    invoke-direct {v0, v2, p1, p2}, Lcom/huawei/hem/b6;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/launcher3/model/AppItem;)V

    new-array p1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/adapter/RecyclerViewAdapter;->a(Landroid/view/ViewGroup;)Lcom/android/launcher3/adapter/RecyclerViewAdapter$a;

    move-result-object p1

    return-object p1
.end method
