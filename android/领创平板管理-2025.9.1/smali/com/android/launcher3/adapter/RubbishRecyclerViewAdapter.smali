.class public Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RubbishRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/RubbishFileInfo;",
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
            "Lcom/android/launcher3/model/RubbishFileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;->b:Ljava/util/List;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f09003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;-><init>(Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8
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
    check-cast p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/RubbishFileInfo;

    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/model/RubbishFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x96

    if-le v2, v3, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_0
    iget-object v2, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;->b:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v2, "."

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v5

    .line 12
    :goto_0
    iget-object v2, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;->c:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/16 v3, 0x28

    .line 14
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v4, 0x1e

    .line 15
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 16
    iget-object v6, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;->c:Landroid/widget/ImageView;

    .line 17
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object v6, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;->c:Landroid/widget/ImageView;

    const v7, 0x7f060067

    .line 19
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const/16 v6, 0x46

    .line 21
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v6, 0x78

    .line 22
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 23
    iget-object v6, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;->c:Landroid/widget/ImageView;

    .line 24
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-static {v1}, Lcom/huawei/hem/t5;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 26
    iget-object v1, p0, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lcom/android/launcher3/model/RubbishFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 28
    iget-object v2, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;->c:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 30
    :cond_3
    sget-object v6, Lcom/huawei/hem/t5;->o:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 31
    iget-object v1, p0, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    .line 32
    invoke-virtual {v0}, Lcom/android/launcher3/model/RubbishFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 33
    iget-object v2, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;->c:Landroid/widget/ImageView;

    .line 34
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 35
    :cond_4
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 37
    iget-object v1, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;->c:Landroid/widget/ImageView;

    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object v1, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;->c:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    :cond_5
    :goto_1
    iget-object v1, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;->d:Landroid/widget/LinearLayout;

    .line 42
    new-instance v2, Lcom/huawei/hem/b3;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/huawei/hem/b3;-><init>(Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;ILcom/android/launcher3/model/RubbishFileInfo;Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v1, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;->a:Landroid/widget/CheckBox;

    .line 44
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    iget-object v1, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;->a:Landroid/widget/CheckBox;

    .line 46
    invoke-virtual {v0}, Lcom/android/launcher3/model/RubbishFileInfo;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 47
    iget-object v0, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;->a:Landroid/widget/CheckBox;

    .line 48
    new-instance v1, Lcom/huawei/hem/c3;

    invoke-direct {v1, p0, p1, p2}, Lcom/huawei/hem/c3;-><init>(Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

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
    invoke-virtual {p0, p1}, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;->a(Landroid/view/ViewGroup;)Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;

    move-result-object p1

    return-object p1
.end method
