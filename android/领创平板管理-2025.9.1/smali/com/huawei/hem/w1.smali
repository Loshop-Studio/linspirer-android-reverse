.class public final synthetic Lcom/huawei/hem/w1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/GuardSecureApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/GuardSecureApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/w1;->a:Lcom/android/launcher3/GuardSecureApplication;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hem/w1;->a:Lcom/android/launcher3/GuardSecureApplication;

    invoke-virtual {v0}, Lcom/android/launcher3/GuardSecureApplication;->d()V

    return-void
.end method
