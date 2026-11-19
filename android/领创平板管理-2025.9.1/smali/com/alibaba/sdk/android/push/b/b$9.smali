.class public Lcom/alibaba/sdk/android/push/b/b$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/b/b;->setNotificationLargeIcon(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Lcom/alibaba/sdk/android/push/b/b;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/push/b/b;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/b/b$9;->b:Lcom/alibaba/sdk/android/push/b/b;

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/b/b$9;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b$9;->b:Lcom/alibaba/sdk/android/push/b/b;

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Lcom/alibaba/sdk/android/push/b/b;)Lcom/alibaba/sdk/android/push/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/b/b$9;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/b/a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
