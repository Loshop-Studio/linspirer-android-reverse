.class public final synthetic Lcom/huawei/hem/e2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/MessageCenterActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/activity/MessageCenterActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/e2;->a:Lcom/android/launcher3/activity/MessageCenterActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hem/e2;->a:Lcom/android/launcher3/activity/MessageCenterActivity;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/activity/MessageCenterActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
