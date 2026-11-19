.class public Lcom/huawei/hem/i4;
.super Landroid/text/style/ClickableSpan;
.source "BaseLoginFragment.java"


# instance fields
.field public final synthetic a:Lcom/android/launcher3/fragment/login/BaseLoginFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/fragment/login/BaseLoginFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/i4;->a:Lcom/android/launcher3/fragment/login/BaseLoginFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/huawei/hem/i4;->a:Lcom/android/launcher3/fragment/login/BaseLoginFragment;

    iget-object p1, p1, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const-class v0, Lcom/android/launcher3/activity/PrivacyAgreementActivity;

    invoke-static {p1, v0}, Lcom/huawei/hem/y4;->U(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method
