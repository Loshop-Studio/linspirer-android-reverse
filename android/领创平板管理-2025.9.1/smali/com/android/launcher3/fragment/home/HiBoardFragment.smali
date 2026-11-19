.class public Lcom/android/launcher3/fragment/home/HiBoardFragment;
.super Lcom/android/launcher3/activity/base/BaseFragment;
.source "HiBoardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/huawei/hem/l3;


# instance fields
.field public i:Landroid/net/wifi/WifiInfo;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Lcom/android/launcher3/network/HiScreenHelper;

.field public q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseFragment;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->q:I

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    const v0, 0x7f090038

    return v0
.end method

.method public final i(Landroid/widget/TextView;Lcom/android/launcher3/db/model/ScreenPartSettings;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ScreenPartSettings;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p2}, Lcom/android/launcher3/db/model/ScreenPartSettings;->getB_img_path()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/BitmapRequestBuilder;->fallback(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p3

    new-instance v0, Lcom/android/launcher3/fragment/home/HiBoardFragment$a;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/fragment/home/HiBoardFragment$a;-><init>(Lcom/android/launcher3/fragment/home/HiBoardFragment;Landroid/widget/TextView;)V

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object p3

    new-instance v0, Lcom/android/launcher3/fragment/home/HiBoardFragment$b;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/fragment/home/HiBoardFragment$b;-><init>(Lcom/android/launcher3/fragment/home/HiBoardFragment;Landroid/widget/TextView;)V

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 8
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final j(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/ScreenPartSettings;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/launcher3/db/model/ScreenPartSettings;

    const v2, 0x7f0c014a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/android/launcher3/db/model/ScreenPartSettings;-><init>(ILjava/lang/String;)V

    .line 5
    new-instance v2, Lcom/android/launcher3/db/model/ScreenPartSettings;

    const v4, 0x7f0c014c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v2, v5, v4}, Lcom/android/launcher3/db/model/ScreenPartSettings;-><init>(ILjava/lang/String;)V

    .line 6
    new-instance v4, Lcom/android/launcher3/db/model/ScreenPartSettings;

    const v6, 0x7f0c014b

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {v4, v7, v6}, Lcom/android/launcher3/db/model/ScreenPartSettings;-><init>(ILjava/lang/String;)V

    .line 7
    new-instance v6, Lcom/android/launcher3/db/model/ScreenPartSettings;

    const v8, 0x7f0c0149

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-direct {v6, v9, v8}, Lcom/android/launcher3/db/model/ScreenPartSettings;-><init>(ILjava/lang/String;)V

    .line 8
    new-instance v8, Lcom/android/launcher3/db/model/ScreenPartSettings;

    const v10, 0x7f0c0148

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x5

    invoke-direct {v8, v10, v0}, Lcom/android/launcher3/db/model/ScreenPartSettings;-><init>(ILjava/lang/String;)V

    .line 9
    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/db/model/ScreenPartSettings;

    .line 11
    invoke-virtual {v0}, Lcom/android/launcher3/db/model/ScreenPartSettings;->getPosition()I

    move-result v11

    if-eq v11, v3, :cond_5

    if-eq v11, v5, :cond_4

    if-eq v11, v7, :cond_3

    if-eq v11, v9, :cond_2

    if-eq v11, v10, :cond_1

    goto :goto_0

    :cond_1
    move-object v8, v0

    goto :goto_0

    :cond_2
    move-object v6, v0

    goto :goto_0

    :cond_3
    move-object v4, v0

    goto :goto_0

    :cond_4
    move-object v2, v0

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_0

    .line 12
    :cond_6
    iget p1, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->q:I

    if-ne p1, v5, :cond_7

    .line 13
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->k:Landroid/widget/TextView;

    const v0, 0x7f060099

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/fragment/home/HiBoardFragment;->i(Landroid/widget/TextView;Lcom/android/launcher3/db/model/ScreenPartSettings;I)V

    .line 14
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->l:Landroid/widget/TextView;

    const v0, 0x7f06009b

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/launcher3/fragment/home/HiBoardFragment;->i(Landroid/widget/TextView;Lcom/android/launcher3/db/model/ScreenPartSettings;I)V

    .line 15
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->m:Landroid/widget/TextView;

    const v0, 0x7f06009d

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/launcher3/fragment/home/HiBoardFragment;->i(Landroid/widget/TextView;Lcom/android/launcher3/db/model/ScreenPartSettings;I)V

    .line 16
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->n:Landroid/widget/TextView;

    const v0, 0x7f06009f

    invoke-virtual {p0, p1, v6, v0}, Lcom/android/launcher3/fragment/home/HiBoardFragment;->i(Landroid/widget/TextView;Lcom/android/launcher3/db/model/ScreenPartSettings;I)V

    .line 17
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->o:Landroid/widget/TextView;

    const v0, 0x7f0600a1

    invoke-virtual {p0, p1, v8, v0}, Lcom/android/launcher3/fragment/home/HiBoardFragment;->i(Landroid/widget/TextView;Lcom/android/launcher3/db/model/ScreenPartSettings;I)V

    goto :goto_1

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->k:Landroid/widget/TextView;

    const v0, 0x7f06009a

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/fragment/home/HiBoardFragment;->i(Landroid/widget/TextView;Lcom/android/launcher3/db/model/ScreenPartSettings;I)V

    .line 19
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->l:Landroid/widget/TextView;

    const v0, 0x7f06009c

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/launcher3/fragment/home/HiBoardFragment;->i(Landroid/widget/TextView;Lcom/android/launcher3/db/model/ScreenPartSettings;I)V

    .line 20
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->m:Landroid/widget/TextView;

    const v0, 0x7f06009e

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/launcher3/fragment/home/HiBoardFragment;->i(Landroid/widget/TextView;Lcom/android/launcher3/db/model/ScreenPartSettings;I)V

    .line 21
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->n:Landroid/widget/TextView;

    const v0, 0x7f0600a0

    invoke-virtual {p0, p1, v6, v0}, Lcom/android/launcher3/fragment/home/HiBoardFragment;->i(Landroid/widget/TextView;Lcom/android/launcher3/db/model/ScreenPartSettings;I)V

    .line 22
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->o:Landroid/widget/TextView;

    const v0, 0x7f0600a2

    invoke-virtual {p0, p1, v8, v0}, Lcom/android/launcher3/fragment/home/HiBoardFragment;->i(Landroid/widget/TextView;Lcom/android/launcher3/db/model/ScreenPartSettings;I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "com.linspirer.exclusivebrowser"

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/db/model/ScreenPartSettings;

    if-eqz v1, :cond_6

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/db/model/ScreenPartSettings;

    .line 5
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ScreenPartSettings;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 6
    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 8
    :try_start_0
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    :catchall_0
    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ScreenPartSettings;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.openExBrowser"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v1, 0x7f0c0143

    invoke-static {p1, v1}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    .line 13
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/huawei/hem/y4;->v(Landroid/app/Activity;Z)V

    .line 14
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    const-string v3, ".apk"

    invoke-static {v1, v2, v0, v3}, Lcom/huawei/hem/f6;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "HiBoardFragmentdownload apk exist need install"

    .line 16
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/base/BaseFragment;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "HiBoardFragmentno download apk  need download"

    .line 18
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 19
    new-instance p1, Lcom/android/launcher3/db/model/ItemApp;

    invoke-direct {p1}, Lcom/android/launcher3/db/model/ItemApp;-><init>()V

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/launcher3/db/model/ItemApp;->setPackagename(Ljava/lang/String;)V

    const-string v0, "http://cloud.linspirer.com:880/uploads/default_apk/ExclusiveBrowser.apk"

    .line 21
    invoke-virtual {p1, v0}, Lcom/android/launcher3/db/model/ItemApp;->setPath(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/activity/base/BaseFragment;->d(Lcom/android/launcher3/db/model/ItemApp;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    .line 23
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ScreenPartSettings;->getComponent()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ScreenPartSettings;->getPackage_name()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 26
    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    .line 27
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 28
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 29
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 30
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    sget v0, Lcom/linspirer/mdm/R$string;->cannot_open_app:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -- APKUtil openApk error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Lcom/huawei/hem/f6;->B(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 34
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 35
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-static {v0, p1, v3}, Lcom/huawei/hem/bc;->t(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 36
    :cond_5
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v0, 0x7f0c014d

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    goto :goto_0

    .line 37
    :cond_6
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v0, 0x7f0c0147

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    :cond_7
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0700c1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f090038

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f07015b

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->j:Landroid/widget/TextView;

    const p2, 0x7f0700c3

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->k:Landroid/widget/TextView;

    const p2, 0x7f0700c5

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->l:Landroid/widget/TextView;

    const p2, 0x7f0700c4

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->m:Landroid/widget/TextView;

    const p2, 0x7f0700c2

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->n:Landroid/widget/TextView;

    const p2, 0x7f0700c1

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->o:Landroid/widget/TextView;

    .line 8
    iget-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->k:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->l:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->n:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->o:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "HiBoardFragment -- initData HiBoardFragment"

    .line 13
    invoke-static {p2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->q:I

    .line 15
    iget-object p2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const-string p3, "wifi"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    .line 16
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->i:Landroid/net/wifi/WifiInfo;

    .line 17
    invoke-static {}, Lcom/android/launcher3/network/HiScreenHelper;->getInstance()Lcom/android/launcher3/network/HiScreenHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->p:Lcom/android/launcher3/network/HiScreenHelper;

    .line 18
    invoke-virtual {p2, p0}, Lcom/android/launcher3/network/HiScreenHelper;->setOnHiBoardChangeListener(Lcom/huawei/hem/l3;)Lcom/android/launcher3/network/HiScreenHelper;

    .line 19
    iget-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->i:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "\""

    const-string v0, ""

    .line 21
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "Unknown"

    .line 22
    :goto_0
    iget-object p3, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/huawei/hem/de;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 23
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const-string v1, "com.android.launcher3"

    invoke-static {v1, v0}, Lcom/huawei/hem/bc;->h(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    .line 25
    iget v3, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->q:I

    const-string v4, "   |   "

    const-string v5, " "

    if-ne v2, v3, :cond_1

    const v2, 0x7f0c0160

    .line 26
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const p2, 0x7f0c015f

    .line 28
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0c012e

    .line 30
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p2, p0, Lcom/android/launcher3/fragment/home/HiBoardFragment;->p:Lcom/android/launcher3/network/HiScreenHelper;

    invoke-virtual {p2}, Lcom/android/launcher3/network/HiScreenHelper;->getScreenPartSettings()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/fragment/home/HiBoardFragment;->j(Ljava/util/List;)V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method
