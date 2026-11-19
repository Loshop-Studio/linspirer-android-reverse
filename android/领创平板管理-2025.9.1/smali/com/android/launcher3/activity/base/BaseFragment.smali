# RE note 本类字节码直接引用的读写或显示接口包括JSON。
.class public abstract Lcom/android/launcher3/activity/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/android/launcher3/db/model/GesturePasswordDao;

.field public c:Lcom/huawei/hem/y5;

.field public d:Z

.field public e:Landroid/view/View;

.field public f:Lcom/huawei/hem/rb;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hem/fe;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->d:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->g:Ljava/util/Map;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/android/launcher3/activity/base/BaseFragment;Ljava/util/List;)V
    .locals 11

    if-eqz p0, :cond_3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/db/model/ItemApp;

    .line 3
    iget-object v2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/ItemApp;->getVersioncode()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/huawei/hem/bc;->p(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "BaseFragment"

    .line 5
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- is no need update"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/huawei/hem/l9;->M(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const p1, 0x7f0c00ea

    invoke-static {p0, p1}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Lcom/android/launcher3/view/CommonDialog;

    invoke-direct {p1}, Lcom/android/launcher3/view/CommonDialog;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v3, 0x7f0c0142

    const v4, 0x7f0c015d

    const v5, 0x7f0c0155

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/4 v10, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher3/view/CommonDialog;->initDialog(Landroid/content/Context;IIIDDZ)V

    .line 10
    new-instance v1, Lcom/huawei/hem/o2;

    invoke-direct {v1, p0, v0}, Lcom/huawei/hem/o2;-><init>(Lcom/android/launcher3/activity/base/BaseFragment;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/view/CommonDialog;->setDialogOnClickEvent(Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;)V

    :goto_1
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 11
    throw p0
.end method


# virtual methods
.method public b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x1

    const/16 v2, 0x19

    if-gt v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "package:com.android.launcher3"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v0, 0x64

    .line 6
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return v1
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/huawei/hem/cc;

    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/hem/cc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/huawei/hem/cc;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v0, 0x7f0c00e5

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    return-void

    .line 5
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v1, 0x7f0c0058

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/view/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/android/launcher3/network/params/CheckUpdateParams;

    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/network/params/CheckUpdateParams;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/launcher3/network/params/CheckUpdateParams;->setPackages(Ljava/util/List;)V

    .line 8
    new-instance p1, Lcom/android/launcher3/network/params/V2Params;

    invoke-direct {p1}, Lcom/android/launcher3/network/params/V2Params;-><init>()V

    .line 9
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/params/V2Params;->setParams(Ljava/lang/String;)V

    const-string v0, "com.linspirer.app.getlauncerbypackage"

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/params/V2Params;->setMethod(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->f:Lcom/huawei/hem/rb;

    if-eqz v0, :cond_2

    .line 12
    new-instance v1, Lcom/huawei/hem/vb;

    invoke-direct {v1, v0}, Lcom/huawei/hem/vb;-><init>(Lcom/huawei/hem/rb;)V

    .line 13
    sget-object v0, Lcom/android/launcher3/network/RequestUrl;->URL:Ljava/lang/String;

    .line 14
    iput-object v0, v1, Lcom/huawei/hem/tb;->a:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    iput-object p1, v1, Lcom/huawei/hem/vb;->e:Ljava/lang/String;

    .line 17
    new-instance p1, Lcom/android/launcher3/activity/base/BaseFragment$b;

    const-class v0, Lcom/android/launcher3/db/model/ItemApp;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/activity/base/BaseFragment$b;-><init>(Lcom/android/launcher3/activity/base/BaseFragment;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {v1, p1}, Lcom/huawei/hem/vb;->b(Lcom/huawei/hem/yb;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 19
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    invoke-static {}, Lcom/android/launcher3/view/DialogUtil;->hideDialog()V

    .line 22
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v0, 0x7f0c00e3

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->x(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public d(Lcom/android/launcher3/db/model/ItemApp;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFragment -- download app packageName = "

    .line 2
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lcom/huawei/hem/ue;->b()Lcom/huawei/hem/ue;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lcom/huawei/hem/he;

    invoke-direct {v1, p2}, Lcom/huawei/hem/he;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/huawei/hem/x1;->a:Ljava/lang/String;

    const-string v3, ".apk"

    invoke-static {p2, v2, v0, v3}, Lcom/huawei/hem/f6;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/huawei/hem/he;->z(Ljava/lang/String;Z)Lcom/huawei/hem/fe;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->g:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/huawei/hem/fe;

    .line 9
    iget-object p2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->g:Ljava/util/Map;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-nez v1, :cond_2

    const-string p1, "BaseFragmentdownload task empty can not  downloading"

    .line 10
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    new-instance p2, Lcom/android/launcher3/activity/base/BaseFragment$a;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/launcher3/activity/base/BaseFragment$a;-><init>(Lcom/android/launcher3/activity/base/BaseFragment;Ljava/lang/String;Lcom/android/launcher3/db/model/ItemApp;)V

    invoke-interface {v1, p2}, Lcom/huawei/hem/fe;->x(Lcom/huawei/hem/ne;)Lcom/huawei/hem/fe;

    .line 12
    invoke-interface {v1}, Lcom/huawei/hem/fe;->start()I

    return-void
.end method

.method public abstract e()I
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseFragment -- installing apk path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->h:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/android/launcher3/activity/base/BaseFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, "application/vnd.android.package-archive"

    if-lt p1, v2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const-string v2, "com.android.launcher3.lspfileprovider"

    invoke-static {p1, v2, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/high16 p1, 0x10000000

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 12
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 13
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x64

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/base/BaseFragment;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    .line 3
    sget-object p1, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 4
    iput-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    .line 5
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hem/t3;->e()Lcom/android/launcher3/db/model/GesturePasswordDao;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->b:Lcom/android/launcher3/db/model/GesturePasswordDao;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->e:Landroid/view/View;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/activity/base/BaseFragment;->e()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->e:Landroid/view/View;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 4
    iget-object p2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->e:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->e:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/activity/base/BaseFragment;->g(Landroid/view/View;)V

    .line 6
    new-instance p1, Lcom/huawei/hem/rb;

    invoke-direct {p1}, Lcom/huawei/hem/rb;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->f:Lcom/huawei/hem/rb;

    .line 7
    invoke-virtual {p0}, Lcom/android/launcher3/activity/base/BaseFragment;->f()V

    .line 8
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->e:Landroid/view/View;

    return-object p1
.end method
