.class public final synthetic Lcom/huawei/hem/d2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/huawei/hem/license/HemLicenseStatusListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/PromptDiaLogActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/activity/PromptDiaLogActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/d2;->a:Lcom/android/launcher3/activity/PromptDiaLogActivity;

    return-void
.end method


# virtual methods
.method public final onStatus(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hem/d2;->a:Lcom/android/launcher3/activity/PromptDiaLogActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/activity/PromptDiaLogActivity;->h(ILjava/lang/String;)V

    return-void
.end method
