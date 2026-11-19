.class public Lcom/huawei/hem/b3;
.super Ljava/lang/Object;
.source "RubbishRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/model/RubbishFileInfo;

.field public final synthetic c:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;

.field public final synthetic d:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;ILcom/android/launcher3/model/RubbishFileInfo;Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/b3;->d:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;

    iput p2, p0, Lcom/huawei/hem/b3;->a:I

    iput-object p3, p0, Lcom/huawei/hem/b3;->b:Lcom/android/launcher3/model/RubbishFileInfo;

    iput-object p4, p0, Lcom/huawei/hem/b3;->c:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "RubbishRecyclerViewAdapter----onClick\uff1a"

    .line 2
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/huawei/hem/b3;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "--isChecked:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hem/b3;->b:Lcom/android/launcher3/model/RubbishFileInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/RubbishFileInfo;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/huawei/hem/b3;->d:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;

    iget-object p1, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;->d:Lcom/huawei/hem/k3;

    if-eqz p1, :cond_1

    .line 4
    iget v0, p0, Lcom/huawei/hem/b3;->a:I

    iget-object v1, p0, Lcom/huawei/hem/b3;->b:Lcom/android/launcher3/model/RubbishFileInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/RubbishFileInfo;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/huawei/hem/k3;->a(IZ)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/huawei/hem/b3;->c:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;

    .line 6
    iget-object p1, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;->a:Landroid/widget/CheckBox;

    .line 7
    iget-object v0, p0, Lcom/huawei/hem/b3;->b:Lcom/android/launcher3/model/RubbishFileInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/RubbishFileInfo;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
