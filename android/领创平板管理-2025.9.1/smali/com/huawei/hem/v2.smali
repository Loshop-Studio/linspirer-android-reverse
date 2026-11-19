.class public Lcom/huawei/hem/v2;
.super Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallbackAdapter;
.source "SettingPwdGestureActivity.java"


# instance fields
.field public final synthetic a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    invoke-direct {p0}, Lcom/android/launcher3/view/GestureLockLayout$GestureEventCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckFinish(ZI)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    if-eqz p1, :cond_0

    const v0, 0x7f0c0133

    goto :goto_0

    :cond_0
    const v0, 0x7f0c0134

    :goto_0
    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p2, v1}, Lcom/huawei/hem/bc;->w(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    .line 5
    iget-object p2, p1, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->e:Lcom/android/launcher3/db/model/GesturePasswordDao;

    invoke-virtual {p2}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    sget-object v0, Lcom/android/launcher3/db/model/GesturePasswordDao$Properties;->User_name:Lorg/greenrobot/greendao/Property;

    iget-object v2, p1, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p2, v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/db/model/GesturePassword;

    if-eqz p2, :cond_1

    .line 6
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->e:Lcom/android/launcher3/db/model/GesturePasswordDao;

    invoke-virtual {p2}, Lcom/android/launcher3/db/model/GesturePassword;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p1, "BaseGestureActivity -- clear gesture password is failed,due to not query password . "

    .line 7
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    .line 11
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->i:Landroid/widget/TextView;

    const/4 p2, 0x4

    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public onGetTempPassword(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->g()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->i(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    const v0, 0x7f0c0137

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    .line 5
    iget-object p1, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    .line 6
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->j:Lcom/android/launcher3/view/GestureLockLayout;

    .line 7
    invoke-virtual {p1}, Lcom/android/launcher3/view/GestureLockLayout;->initCurrentTimes()V

    .line 8
    iget-object p1, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    .line 9
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->g:Lcom/android/launcher3/view/GestureLockLayout;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/launcher3/view/GestureLockLayout;->refreshPwdKeyboard(Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    .line 12
    iget-object v0, p1, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f0c0136

    .line 13
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onResetFinish(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->i(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v1, v0, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->e:Lcom/android/launcher3/db/model/GesturePasswordDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/db/model/GesturePasswordDao$Properties;->User_name:Lorg/greenrobot/greendao/Property;

    iget-object v3, v0, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/db/model/GesturePassword;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v0, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->e:Lcom/android/launcher3/db/model/GesturePasswordDao;

    invoke-virtual {v1}, Lcom/android/launcher3/db/model/GesturePassword;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 4
    :cond_0
    new-instance v1, Lcom/android/launcher3/db/model/GesturePassword;

    invoke-direct {v1}, Lcom/android/launcher3/db/model/GesturePassword;-><init>()V

    .line 5
    invoke-virtual {v1, p1}, Lcom/android/launcher3/db/model/GesturePassword;->setGesture_password(Ljava/lang/String;)V

    .line 6
    iget-object p1, v0, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/db/model/GesturePassword;->setUser_name(Ljava/lang/String;)V

    .line 7
    iget-object p1, v0, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->e:Lcom/android/launcher3/db/model/GesturePasswordDao;

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 8
    iget-object p1, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    const v0, 0x7f0c013d

    invoke-static {p1, v0}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    .line 9
    iget-object p1, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSwipeFinish(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    .line 2
    iget-object v0, v0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->g:Lcom/android/launcher3/view/GestureLockLayout;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/launcher3/view/GestureLockLayout;->refreshPwdKeyboard(Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    .line 5
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->i:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onSwipeMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    .line 2
    iget-object v1, v0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->h:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->f(Landroid/view/View;)V

    return-void
.end method

.method public onToast(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    .line 2
    iget-object v0, v0, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->h:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    .line 5
    iget-object p1, p1, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->h:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const p1, -0xcdce

    if-ne p2, p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/huawei/hem/v2;->a:Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    .line 8
    iget-object p2, p1, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;->h:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p1, p2}, Lcom/android/launcher3/activity/gestrue/BaseGesturePwdActivity;->f(Landroid/view/View;)V

    :cond_1
    return-void
.end method
