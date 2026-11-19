.class public Lcom/android/launcher3/activity/ShowPushMsgActivty;
.super Lcom/android/launcher3/activity/base/BaseActivity;
.source "ShowPushMsgActivty.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/Button;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/PushMsg;",
            ">;"
        }
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->f:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    # RE layout layout/activity_msg_dialog (0x7f09002a), APK res/layout/activity_msg_dialog.xml
    const v0, 0x7f09002a

    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "command"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->e:Ljava/util/List;

    .line 3
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/launcher3/activity/ShowPushMsgActivty;->f()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const v0, 0x7f0700ef

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->b:Landroid/widget/TextView;

    const v0, 0x7f0700e8

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->c:Landroid/widget/TextView;

    .line 3
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0700ec

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->d:Landroid/widget/Button;

    .line 5
    new-instance v1, Lcom/huawei/hem/h2;

    invoke-direct {v1, p0}, Lcom/huawei/hem/h2;-><init>(Lcom/android/launcher3/activity/ShowPushMsgActivty;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->f:I

    iget-object v1, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->f:I

    iget-object v1, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->d:Landroid/widget/Button;

    const v1, 0x7f0c011d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->d:Landroid/widget/Button;

    const v1, 0x7f0c00e7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0163

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->e:Ljava/util/List;

    iget v5, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->f:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/db/model/PushMsg;

    invoke-virtual {v4}, Lcom/android/launcher3/db/model/PushMsg;->getActive()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0060

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->e:Ljava/util/List;

    iget v4, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->f:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/db/model/PushMsg;

    invoke-virtual {v3}, Lcom/android/launcher3/db/model/PushMsg;->getCommand()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0700ec

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget p1, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->f:I

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/activity/ShowPushMsgActivty;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/activity/ShowPushMsgActivty;->f()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
