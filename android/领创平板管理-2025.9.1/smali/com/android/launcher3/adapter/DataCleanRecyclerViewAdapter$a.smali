.class public Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DataCleanRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/CheckBox;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f07005f

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;->a:Landroid/widget/CheckBox;

    const p1, 0x7f070074

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;->b:Landroid/widget/TextView;

    const p1, 0x7f070101

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;->c:Landroid/widget/TextView;

    const p1, 0x7f07004b

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/launcher3/adapter/DataCleanRecyclerViewAdapter$a;->d:Landroid/widget/LinearLayout;

    return-void
.end method
