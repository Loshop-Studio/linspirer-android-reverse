.class public Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DataCleanRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/DataCleanCategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/view/LayoutInflater;

.field public d:Lcom/huawei/hem/k3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/DataCleanCategoryInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;->b:Ljava/util/List;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f090036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;-><init>(Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/DataCleanCategoryInfo;

    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->getDesc()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->getNumber()I

    move-result v2

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    iget-object v3, p1, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;->b:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;->c:Landroid/widget/TextView;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;->a:Landroid/content/Context;

    const v4, 0x7f0c00b8

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p1, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;->a:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 12
    iget-object v1, p1, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;->a:Landroid/widget/CheckBox;

    .line 13
    invoke-virtual {v0}, Lcom/android/launcher3/model/DataCleanCategoryInfo;->isSelect()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14
    iget-object v0, p1, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;->a:Landroid/widget/CheckBox;

    .line 15
    new-instance v1, Lcom/huawei/hem/x2;

    invoke-direct {v1, p0, p1, p2}, Lcom/huawei/hem/x2;-><init>(Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 16
    iget-object p1, p1, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;->d:Landroid/widget/LinearLayout;

    .line 17
    new-instance v0, Lcom/huawei/hem/y2;

    invoke-direct {v0, p0, p2}, Lcom/huawei/hem/y2;-><init>(Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;->a(Landroid/view/ViewGroup;)Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;

    move-result-object p1

    return-object p1
.end method
