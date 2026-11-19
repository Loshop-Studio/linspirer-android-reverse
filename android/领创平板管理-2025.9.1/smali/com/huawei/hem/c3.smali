.class public Lcom/huawei/hem/c3;
.super Ljava/lang/Object;
.source "RubbishRecyclerViewAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;

.field public final synthetic b:I

.field public final synthetic c:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/c3;->c:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;

    iput-object p2, p0, Lcom/huawei/hem/c3;->a:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;

    iput p3, p0, Lcom/huawei/hem/c3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/c3;->a:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;

    .line 2
    iget-object p1, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter$a;->a:Landroid/widget/CheckBox;

    .line 3
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "RubbishRecyclerViewAdapter----onCheckedChanged\uff1a"

    .line 4
    invoke-static {p1}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/huawei/hem/c3;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "--isChecked:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/huawei/hem/c3;->c:Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;

    iget-object p1, p1, Lcom/android/launcher3/adapter/RubbishRecyclerViewAdapter;->d:Lcom/huawei/hem/k3;

    if-eqz p1, :cond_0

    .line 6
    iget v0, p0, Lcom/huawei/hem/c3;->b:I

    invoke-interface {p1, v0, p2}, Lcom/huawei/hem/k3;->a(IZ)V

    :cond_0
    return-void
.end method
