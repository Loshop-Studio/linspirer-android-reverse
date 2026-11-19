.class public Lcom/android/launcher3/fragment/home/HiBoardFragment$a;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "HiBoardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/fragment/home/HiBoardFragment;->i(Landroid/widget/TextView;Lcom/android/launcher3/db/model/ScreenPartSettings;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lcom/android/launcher3/fragment/home/HiBoardFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/fragment/home/HiBoardFragment;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment$a;->b:Lcom/android/launcher3/fragment/home/HiBoardFragment;

    iput-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment$a;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iget-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment$a;->b:Lcom/android/launcher3/fragment/home/HiBoardFragment;

    iget-object p2, p2, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    const/high16 p2, 0x41800000    # 16.0f

    .line 3
    invoke-virtual {p1, p2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 4
    iget-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
