.class public Lcom/huawei/hem/p5;
.super Ljava/lang/Object;
.source "AppUploadSPHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/p5$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Lcom/huawei/hem/ac;


# direct methods
.method public constructor <init>(Lcom/huawei/hem/p5$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/huawei/hem/p5;->b:I

    .line 3
    new-instance p1, Lcom/huawei/hem/ac;

    .line 4
    sget-object v0, Lcom/android/launcher3/GuardSecureApplication;->b:Lcom/android/launcher3/GuardSecureApplication;

    const-string v1, "Ltk"

    .line 5
    invoke-direct {p1, v0, v1}, Lcom/huawei/hem/ac;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/huawei/hem/p5;->c:Lcom/huawei/hem/ac;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/huawei/hem/p5;->b:I

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/p5;->c:Lcom/huawei/hem/ac;

    .line 3
    iget-object v1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "app_status_changed"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    iget-object p1, v0, Lcom/huawei/hem/ac;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
