.class public Lcom/android/launcher3/view/CommonDialog$2;
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


# direct methods
.method public constructor <init>(Lcom/android/launcher3/view/CommonDialog;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/view/CommonDialog$2;->this$0:Lcom/android/launcher3/view/CommonDialog;

    iput-object p2, p0, Lcom/android/launcher3/view/CommonDialog$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/view/CommonDialog$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/view/CommonDialog$2;->this$0:Lcom/android/launcher3/view/CommonDialog;

    invoke-static {v0}, Lcom/android/launcher3/view/CommonDialog;->access$000(Lcom/android/launcher3/view/CommonDialog;)Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/view/CommonDialog$2;->this$0:Lcom/android/launcher3/view/CommonDialog;

    invoke-static {v0}, Lcom/android/launcher3/view/CommonDialog;->access$000(Lcom/android/launcher3/view/CommonDialog;)Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;->clickCancelButton(Landroid/view/View;)V

    :cond_1
    return-void
.end method
