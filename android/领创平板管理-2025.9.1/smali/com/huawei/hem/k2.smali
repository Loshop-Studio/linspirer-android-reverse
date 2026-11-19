.class public Lcom/huawei/hem/k2;
.super Ljava/lang/Object;
.source "CheckNetWorkActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/CheckNetWorkActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/CheckNetWorkActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/k2;->a:Lcom/android/launcher3/activity/CheckNetWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f0700bb

    if-eq p2, p1, :cond_1

    const p1, 0x7f0700f8

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/huawei/hem/k2;->a:Lcom/android/launcher3/activity/CheckNetWorkActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/launcher3/activity/CheckNetWorkActivity;->e(Lcom/android/launcher3/activity/CheckNetWorkActivity;I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/huawei/hem/k2;->a:Lcom/android/launcher3/activity/CheckNetWorkActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/launcher3/activity/CheckNetWorkActivity;->e(Lcom/android/launcher3/activity/CheckNetWorkActivity;I)V

    :goto_0
    return-void
.end method
