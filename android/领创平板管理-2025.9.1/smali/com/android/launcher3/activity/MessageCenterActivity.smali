.class public Lcom/android/launcher3/activity/MessageCenterActivity;
.super Lcom/android/launcher3/activity/base/BaseActivity;
.source "MessageCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Lcom/android/launcher3/view/SwipeSideslipListView;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/PushMsg;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/android/launcher3/db/model/PushMsgDao;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/LinearLayout;

.field public h:Lcom/huawei/hem/a3;

.field public i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/activity/base/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/android/launcher3/activity/MessageCenterActivity$a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/activity/MessageCenterActivity$a;-><init>(Lcom/android/launcher3/activity/MessageCenterActivity;)V

    iput-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->i:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/activity/MessageCenterActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/activity/MessageCenterActivity;->g()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    # RE layout layout/activity_msg_center (0x7f090029), APK res/layout/activity_msg_center.xml
    const v0, 0x7f090029

    return v0
.end method

.method public c()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/huawei/hem/t3;->c:Lcom/android/launcher3/db/model/DaoSession;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/DaoSession;->getPushMsgDao()Lcom/android/launcher3/db/model/PushMsgDao;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->d:Lcom/android/launcher3/db/model/PushMsgDao;

    .line 4
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/db/model/PushMsgDao$Properties;->UserId:Lorg/greenrobot/greendao/Property;

    .line 5
    sget-object v2, Lcom/huawei/hem/y5$b;->a:Lcom/huawei/hem/y5;

    .line 6
    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->c:Ljava/util/List;

    .line 7
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/launcher3/activity/MessageCenterActivity;->g()V

    goto :goto_2

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/db/model/PushMsg;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3}, Lcom/android/launcher3/db/model/PushMsg;->getSendtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x93a80

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 14
    iget-object v1, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->d:Lcom/android/launcher3/db/model/PushMsgDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    .line 15
    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/android/launcher3/activity/MessageCenterActivity;->g()V

    goto :goto_2

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->b:Lcom/android/launcher3/view/SwipeSideslipListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->h:Lcom/huawei/hem/a3;

    if-eqz v0, :cond_5

    .line 21
    iget-object v1, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->c:Ljava/util/List;

    .line 22
    iput-object v1, v0, Lcom/huawei/hem/a3;->a:Ljava/util/List;

    :cond_5
    :goto_2
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const v1, 0x7f040051

    .line 2
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const v1, 0x7f04003f

    .line 3
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    return-void
.end method

.method public e()V
    .locals 2

    const v0, 0x7f0700eb

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/view/SwipeSideslipListView;

    iput-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->b:Lcom/android/launcher3/view/SwipeSideslipListView;

    const v0, 0x7f07008e

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->e:Landroid/widget/ImageView;

    const v0, 0x7f07008f

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0700e2

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->g:Landroid/widget/LinearLayout;

    .line 5
    new-instance v1, Lcom/huawei/hem/e2;

    invoke-direct {v1, p0}, Lcom/huawei/hem/e2;-><init>(Lcom/android/launcher3/activity/MessageCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v0, Lcom/huawei/hem/a3;

    invoke-direct {v0, p0, p0}, Lcom/huawei/hem/a3;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->h:Lcom/huawei/hem/a3;

    .line 7
    iget-object v1, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->b:Lcom/android/launcher3/view/SwipeSideslipListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->b:Lcom/android/launcher3/view/SwipeSideslipListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070042

    if-eq v0, v1, :cond_2

    const p1, 0x7f0700e2

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    const v0, 0x7f0700e9

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/db/model/PushMsg;

    .line 7
    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->d:Lcom/android/launcher3/db/model/PushMsgDao;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/PushMsg;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->b:Lcom/android/launcher3/view/SwipeSideslipListView;

    invoke-virtual {v0}, Lcom/android/launcher3/view/SwipeSideslipListView;->resetItemView()V

    .line 10
    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->h:Lcom/huawei/hem/a3;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    iget-object v0, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->d:Lcom/android/launcher3/db/model/PushMsgDao;

    invoke-virtual {p1}, Lcom/android/launcher3/db/model/PushMsg;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/android/launcher3/activity/MessageCenterActivity;->i:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/launcher3/activity/MessageCenterActivity;->e()V

    .line 3
    invoke-virtual {p0}, Lcom/android/launcher3/activity/MessageCenterActivity;->c()V

    return-void
.end method
