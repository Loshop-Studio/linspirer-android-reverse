.class public Lcom/android/launcher3/activity/CleanRubbishActivity$a;
.super Ljava/lang/Object;
.source "CleanRubbishActivity.java"

# interfaces
.implements Lcom/huawei/hem/k3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/activity/CleanRubbishActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/CleanRubbishActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/CleanRubbishActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$a;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$a;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 2
    iget-object v0, v0, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/RubbishFileInfo;

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/launcher3/model/RubbishFileInfo;->setSelected(Z)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p2, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$a;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 7
    iget-object p2, p2, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    .line 8
    invoke-static {p2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$a;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 10
    iget-object p2, p2, Lcom/android/launcher3/activity/CleanRubbishActivity;->e:Ljava/util/List;

    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/RubbishFileInfo;

    .line 12
    invoke-virtual {v0}, Lcom/android/launcher3/model/RubbishFileInfo;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$a;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 14
    iget-object p2, p2, Lcom/android/launcher3/activity/CleanRubbishActivity;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 15
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$a;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 17
    iget-object p2, p1, Lcom/android/launcher3/activity/CleanRubbishActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0c0059

    .line 18
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/activity/CleanRubbishActivity$a;->a:Lcom/android/launcher3/activity/CleanRubbishActivity;

    .line 20
    iget-object p2, p1, Lcom/android/launcher3/activity/CleanRubbishActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0c004f

    .line 21
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
