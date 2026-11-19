.class public Lcom/android/launcher3/view/CommonDialog$1;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/view/CommonDialog;->initDialog(Landroid/content/Context;IIIDDZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/view/CommonDialog;

.field public final synthetic val$dialog:Landroid/app/Dialog;

.field public final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/view/CommonDialog;Landroid/app/Dialog;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/view/CommonDialog$1;->this$0:Lcom/android/launcher3/view/CommonDialog;

    iput-object p2, p0, Lcom/android/launcher3/view/CommonDialog$1;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/android/launcher3/view/CommonDialog$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/view/CommonDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/view/CommonDialog$1;->this$0:Lcom/android/launcher3/view/CommonDialog;

    invoke-static {v0}, Lcom/android/launcher3/view/CommonDialog;->access$000(Lcom/android/launcher3/view/CommonDialog;)Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/view/CommonDialog$1;->this$0:Lcom/android/launcher3/view/CommonDialog;

    invoke-static {v0}, Lcom/android/launcher3/view/CommonDialog;->access$000(Lcom/android/launcher3/view/CommonDialog;)Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/view/CommonDialog$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;->clickConfirmButton(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
