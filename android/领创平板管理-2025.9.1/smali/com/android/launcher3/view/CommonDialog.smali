.class public Lcom/android/launcher3/view/CommonDialog;
.super Ljava/lang/Object;
.source "CommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CommonDialog"


# instance fields
.field public onClickListener:Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/view/CommonDialog;)Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/view/CommonDialog;->onClickListener:Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;

    return-object p0
.end method


# virtual methods
.method public initDialog(Landroid/content/Context;IIIDDZ)V
    .locals 2

    const-string p5, "CommonDialog -- initDialog -- "

    .line 1
    invoke-static {p5}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    const p6, 0x7f090041

    const/4 p7, 0x0

    invoke-virtual {p5, p6, p7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    const p6, 0x7f070045

    .line 3
    invoke-virtual {p5, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/Button;

    const p7, 0x7f070044

    .line 4
    invoke-virtual {p5, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Landroid/widget/Button;

    const p8, 0x7f070084

    .line 5
    invoke-virtual {p5, p8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p8

    check-cast p8, Landroid/widget/TextView;

    const v0, 0x7f07008c

    .line 6
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz p9, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 8
    :cond_0
    invoke-virtual {p6, p3}, Landroid/widget/Button;->setText(I)V

    .line 9
    invoke-virtual {p7, p4}, Landroid/widget/Button;->setText(I)V

    .line 10
    invoke-virtual {p8, p2}, Landroid/widget/TextView;->setText(I)V

    .line 11
    new-instance p2, Landroid/app/Dialog;

    const p3, 0x7f0d00a2

    invoke-direct {p2, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 12
    invoke-virtual {p2, p5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 13
    new-instance p1, Lcom/android/launcher3/view/CommonDialog$1;

    invoke-direct {p1, p0, p2, v0}, Lcom/android/launcher3/view/CommonDialog$1;-><init>(Lcom/android/launcher3/view/CommonDialog;Landroid/app/Dialog;Landroid/widget/EditText;)V

    invoke-virtual {p6, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p1, Lcom/android/launcher3/view/CommonDialog$2;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/view/CommonDialog$2;-><init>(Lcom/android/launcher3/view/CommonDialog;Landroid/app/Dialog;)V

    invoke-virtual {p7, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 16
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setDialogOnClickEvent(Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/view/CommonDialog;->onClickListener:Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;

    return-void
.end method
