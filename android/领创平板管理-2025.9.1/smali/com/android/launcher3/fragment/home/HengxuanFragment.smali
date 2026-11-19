.class public Lcom/android/launcher3/fragment/home/HengxuanFragment;
.super Lcom/android/launcher3/fragment/home/BaseHomeFragment;
.source "HengxuanFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/fragment/home/HengxuanFragment$b;
    }
.end annotation


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Ljava/lang/String;

.field public C:I

.field public D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public E:Lcom/android/launcher3/adapter/MainFragmentPagerAdapter;

.field public F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public final H:[J

.field public I:Lcom/huawei/hem/q3;

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public x:Landroid/support/v4/view/ViewPager;

.field public y:Landroid/widget/GridView;

.field public z:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->C:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->F:Ljava/util/ArrayList;

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 4
    iput-object v0, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->H:[J

    return-void
.end method

.method public static synthetic s(Lcom/android/launcher3/fragment/home/HengxuanFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/HengxuanFragment;->u()V

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    const v0, 0x7f090037

    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->f()V

    const/16 v0, 0x12

    .line 2
    sput v0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->u:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->D:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->v:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->w:Ljava/util/List;

    .line 6
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->C:I

    :cond_0
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->r(Z)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/launcher3/fragment/home/HengxuanFragment;->v(Z)V

    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f070168

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->y:Landroid/widget/GridView;

    const v0, 0x7f07003b

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->z:Landroid/widget/GridView;

    const v0, 0x7f070172

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->A:Landroid/widget/TextView;

    const v0, 0x7f07011c

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f070027

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f0700dc

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0700d1

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->k:Landroid/widget/ImageView;

    const v0, 0x7f07017b

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->x:Landroid/support/v4/view/ViewPager;

    .line 9
    new-instance p1, Lcom/android/launcher3/adapter/MainFragmentPagerAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->F:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/adapter/MainFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->E:Lcom/android/launcher3/adapter/MainFragmentPagerAdapter;

    .line 10
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 11
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->x:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->C:I

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 12
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->x:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 13
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->x:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/android/launcher3/fragment/home/HengxuanFragment$b;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fragment/home/HengxuanFragment$b;-><init>(Lcom/android/launcher3/fragment/home/HengxuanFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 14
    iget-object p1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {p1}, Lcom/huawei/hem/y5;->v()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->B:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->A:Landroid/widget/TextView;

    new-instance v0, Lcom/android/launcher3/fragment/home/HengxuanFragment$a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fragment/home/HengxuanFragment$a;-><init>(Lcom/android/launcher3/fragment/home/HengxuanFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    sget-object p1, Lcom/huawei/hem/q3$b;->a:Lcom/huawei/hem/q3;

    .line 18
    iput-object p1, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->I:Lcom/huawei/hem/q3;

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/fragment/home/HengxuanFragment;->v(Z)V

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public synthetic t()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/HengxuanFragment;->u()V

    return-void
.end method

.method public final u()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->H:[J

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->H:[J

    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/launcher3/fragment/home/HengxuanFragment;->H:[J

    aget-wide v5, v4, v3

    sub-long/2addr v0, v5

    const-wide/16 v4, 0xbb8

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    const-string v0, "click time enough"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    move v3, v2

    goto :goto_0

    :cond_0
    const-string v0, "click time not enough"

    .line 5
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v1, 0x7f0c005c

    invoke-static {v0, v1}, Lcom/huawei/hem/bc;->y(Landroid/content/Context;I)V

    :goto_0
    if-nez v3, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->c()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->j()V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->k()V

    :goto_1
    return-void
.end method

.method public v(Z)V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v2, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->I:Lcom/huawei/hem/q3;

    .line 7
    iget-object v0, v2, Lcom/huawei/hem/q3;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iget-object v0, v2, Lcom/huawei/hem/q3;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, v2, Lcom/huawei/hem/q3;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    invoke-virtual {v2}, Lcom/huawei/hem/p3;->b()Ljava/util/List;

    move-result-object v3

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v0, v2, Lcom/huawei/hem/p3;->c:Lcom/android/launcher3/db/model/ItemAppDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v5, Lcom/android/launcher3/db/model/ItemAppDao$Properties;->Hide_icon_status:Lorg/greenrobot/greendao/Property;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v7, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v5, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildCursor()Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/CursorQuery;->query()Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 13
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 14
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/android/launcher3/model/AppItem;

    sget-object v7, Lcom/android/launcher3/db/model/ItemAppDao$Properties;->Packagename:Lorg/greenrobot/greendao/Property;

    iget-object v7, v7, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 16
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 17
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/launcher3/model/AppItem;-><init>(Ljava/lang/String;)V

    .line 18
    sget-object v7, Lcom/android/launcher3/db/model/ItemAppDao$Properties;->Sort_weight:Lorg/greenrobot/greendao/Property;

    iget-object v7, v7, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 19
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 20
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/launcher3/model/AppItem;->setWeight(I)V

    .line 21
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 22
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 23
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 24
    throw v0

    :cond_0
    if-eqz v5, :cond_1

    .line 25
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 26
    :cond_1
    invoke-static {v4}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " ========>query white app list is null from local cache"

    .line 27
    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    :cond_2
    const-string v0, "BasicAppList  read app from remote :"

    .line 28
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    iget-object v5, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v5}, Lcom/huawei/hem/y5;->q()Ljava/lang/String;

    move-result-object v5

    .line 31
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BasicAppList  -- read from isv : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v7, ","

    .line 32
    invoke-static {v5, v7}, Lcom/huawei/hem/l9;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 33
    invoke-static {v5}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 34
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    goto :goto_4

    .line 35
    :cond_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 37
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move-object v5, v7

    .line 38
    :goto_4
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 39
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/16 v7, -0x1f4

    .line 40
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "com.ndwill.swd.appstore"

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Lcom/huawei/hem/q0;->E()Ljava/util/List;

    move-result-object v7

    .line 42
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v10, -0x1f1

    .line 43
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    const/16 v7, -0x1f2

    .line 44
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "com.android.launcher3.activity.PullNewsActivity"

    invoke-virtual {v5, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 46
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 47
    iget-object v7, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v7}, Lcom/huawei/hem/y5;->r()I

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_6

    .line 48
    invoke-static {}, Lcom/huawei/hem/q0;->w()Ljava/util/List;

    move-result-object v7

    .line 49
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/16 v11, -0x1ee

    .line 50
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 51
    :cond_6
    iget-object v7, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v7}, Lcom/huawei/hem/y5;->n()I

    move-result v7

    if-eq v7, v9, :cond_7

    .line 52
    invoke-static {}, Lcom/huawei/hem/q0;->y()Ljava/util/List;

    move-result-object v7

    .line 53
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/16 v11, -0x1ed

    .line 54
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 55
    :cond_7
    iget-object v7, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v7}, Lcom/huawei/hem/y5;->g()I

    move-result v7

    if-eq v7, v9, :cond_8

    .line 56
    invoke-static {}, Lcom/huawei/hem/q0;->x()Ljava/util/List;

    move-result-object v7

    .line 57
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/16 v11, -0x1ef

    .line 58
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 59
    :cond_8
    iget-object v7, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v7}, Lcom/huawei/hem/y5;->d()I

    move-result v7

    if-eq v7, v9, :cond_9

    .line 60
    invoke-static {}, Lcom/huawei/hem/q0;->v()Ljava/util/List;

    move-result-object v7

    .line 61
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/16 v11, -0x1f0

    .line 62
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 63
    :cond_9
    iget-object v7, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v7}, Lcom/huawei/hem/y5;->f()I

    move-result v7

    const-string v10, "com.android.launcher3.activity.DataCleanActivity"

    if-eq v7, v9, :cond_a

    const/16 v7, -0x1f3

    .line 64
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_a
    invoke-static {}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getInstance()Lcom/android/launcher3/network/AppTimeLimitHelper;

    move-result-object v7

    .line 66
    iget-object v11, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->z()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v9, :cond_b

    .line 67
    invoke-static {}, Lcom/huawei/hem/q0;->B()Ljava/util/List;

    move-result-object v11

    .line 68
    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 69
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 70
    :cond_b
    iget-object v11, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->z()I

    move-result v11

    if-ne v11, v12, :cond_e

    .line 71
    iget-object v11, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->x()I

    move-result v11

    if-ne v11, v9, :cond_c

    invoke-virtual {v7}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getPhoneState()Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_c
    iget-object v11, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    .line 72
    invoke-virtual {v11}, Lcom/huawei/hem/y5;->x()I

    move-result v11

    if-ne v11, v12, :cond_e

    iget-object v11, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->y()I

    move-result v11

    if-ne v11, v9, :cond_e

    .line 73
    :cond_d
    invoke-static {}, Lcom/huawei/hem/q0;->B()Ljava/util/List;

    move-result-object v11

    .line 74
    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 75
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 76
    :cond_e
    iget-object v11, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->F()I

    move-result v11

    if-ne v11, v9, :cond_f

    .line 77
    invoke-static {}, Lcom/huawei/hem/q0;->A()Ljava/util/List;

    move-result-object v7

    .line 78
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 79
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 80
    :cond_f
    iget-object v11, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->F()I

    move-result v11

    if-ne v11, v12, :cond_12

    .line 81
    iget-object v11, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->E()I

    move-result v11

    if-ne v11, v9, :cond_10

    invoke-virtual {v7}, Lcom/android/launcher3/network/AppTimeLimitHelper;->getSMSState()Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_10
    iget-object v7, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    .line 82
    invoke-virtual {v7}, Lcom/huawei/hem/y5;->E()I

    move-result v7

    if-ne v7, v12, :cond_12

    iget-object v7, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v7}, Lcom/huawei/hem/y5;->y()I

    move-result v7

    if-ne v7, v9, :cond_12

    .line 83
    :cond_11
    invoke-static {}, Lcom/huawei/hem/q0;->A()Ljava/util/List;

    move-result-object v7

    .line 84
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 85
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 86
    :cond_12
    invoke-static {}, Lcom/huawei/hem/ce;->n()Z

    move-result v7

    if-nez v7, :cond_13

    invoke-static {}, Lcom/huawei/hem/ce;->l()Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, v2, Lcom/huawei/hem/p3;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/huawei/hem/ce;->h(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 87
    :cond_13
    iget-object v7, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v7}, Lcom/huawei/hem/y5;->B()I

    move-result v7

    if-eq v7, v9, :cond_14

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "com.android.launcher3.activity.DeviceRotatingActivity"

    invoke-virtual {v5, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_14
    iget-object v7, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v7}, Lcom/huawei/hem/y5;->Q()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 90
    invoke-static {}, Lcom/huawei/hem/q0;->C()Ljava/util/List;

    move-result-object v7

    .line 91
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_15
    const-string v7, "BasicAppList show system apps:"

    .line 93
    invoke-static {v7}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 95
    iget-object v5, v2, Lcom/huawei/hem/p3;->d:Lcom/huawei/hem/o3;

    const/4 v7, 0x0

    if-eqz v5, :cond_30

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-static {v5}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v11

    if-nez v11, :cond_16

    .line 98
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 99
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_16
    const-string v5, "BasicAppList  read local app item:"

    .line 100
    invoke-static {v5}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 101
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 104
    :cond_17
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 106
    new-instance v12, Lcom/android/launcher3/model/AppItem;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v12, v13, v11}, Lcom/android/launcher3/model/AppItem;-><init>(Ljava/lang/String;I)V

    .line 107
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    .line 108
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 109
    :cond_18
    iget-object v0, v2, Lcom/huawei/hem/p3;->d:Lcom/huawei/hem/o3;

    if-eqz v0, :cond_2f

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 112
    new-instance v12, Lcom/android/launcher3/model/AppItem;

    invoke-direct {v12, v11, v6}, Lcom/android/launcher3/model/AppItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 113
    :cond_19
    sget-object v0, Lcom/huawei/hem/bc;->f:Lcom/huawei/hem/ic;

    invoke-interface {v0}, Lcom/huawei/hem/ic;->q()Ljava/util/List;

    move-result-object v0

    const-string v11, "BasicAppList read disable apps:"

    .line 114
    invoke-static {v11}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v12

    if-eqz v12, :cond_1a

    move-object v12, v7

    goto :goto_12

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_12
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 115
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v11

    if-nez v11, :cond_1b

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 117
    new-instance v12, Lcom/android/launcher3/model/AppItem;

    invoke-direct {v12, v11, v6}, Lcom/android/launcher3/model/AppItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_13

    .line 118
    :cond_1b
    new-instance v0, Lcom/android/launcher3/model/AppItem;

    const-string v11, "com.android.launcher3"

    invoke-direct {v0, v11, v6}, Lcom/android/launcher3/model/AppItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BasicAppList desk top need show apps:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v4, v2, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v4}, Lcom/huawei/hem/y5;->f()I

    move-result v4

    if-eq v4, v9, :cond_1c

    .line 122
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_1c
    invoke-static {}, Lcom/huawei/hem/q0;->E()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    invoke-virtual {v2}, Lcom/huawei/hem/p3;->c()Ljava/util/List;

    move-result-object v4

    .line 125
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/AppItem;

    .line 126
    invoke-virtual {v6}, Lcom/android/launcher3/model/AppItem;->getPkgName()Ljava/lang/String;

    move-result-object v10

    .line 127
    invoke-virtual {v6}, Lcom/android/launcher3/model/AppItem;->getActivityName()Ljava/lang/String;

    move-result-object v12

    .line 128
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    goto :goto_15

    .line 129
    :cond_1e
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    goto :goto_14

    .line 130
    :cond_1f
    move-object v13, v4

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    iget-object v13, v2, Lcom/huawei/hem/q3;->g:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x5

    if-ge v13, v14, :cond_20

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_20

    .line 131
    iget-object v10, v2, Lcom/huawei/hem/q3;->g:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 132
    :cond_20
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_21
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/model/AppItem;

    .line 133
    invoke-virtual {v14}, Lcom/android/launcher3/model/AppItem;->getPkgName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_22

    invoke-virtual {v14}, Lcom/android/launcher3/model/AppItem;->getPkgName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_21

    .line 134
    :cond_22
    invoke-virtual {v14}, Lcom/android/launcher3/model/AppItem;->getWeight()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/launcher3/model/AppItem;->setWeight(I)V

    .line 135
    iget-object v10, v2, Lcom/huawei/hem/q3;->e:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 136
    :cond_23
    :goto_15
    iget-object v10, v2, Lcom/huawei/hem/q3;->f:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 137
    :cond_24
    new-instance v0, Lcom/android/launcher3/model/AppItem;

    const-string v3, ""

    invoke-direct {v0, v3, v3}, Lcom/android/launcher3/model/AppItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f060082

    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/AppItem;->setIcon(Ljava/lang/Object;)V

    .line 139
    iget-object v3, v2, Lcom/huawei/hem/q3;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, v2, Lcom/huawei/hem/q3;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 141
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->D:Ljava/util/List;

    iget-object v2, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->I:Lcom/huawei/hem/q3;

    .line 142
    iget-object v3, v2, Lcom/huawei/hem/q3;->e:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 143
    iget-object v2, v2, Lcom/huawei/hem/q3;->e:Ljava/util/List;

    .line 144
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->v:Ljava/util/List;

    iget-object v2, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->I:Lcom/huawei/hem/q3;

    .line 146
    iget-object v2, v2, Lcom/huawei/hem/q3;->f:Ljava/util/List;

    .line 147
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->w:Ljava/util/List;

    iget-object v2, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->I:Lcom/huawei/hem/q3;

    .line 149
    iget-object v3, v2, Lcom/huawei/hem/q3;->g:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 150
    iget-object v2, v2, Lcom/huawei/hem/q3;->g:Ljava/util/List;

    .line 151
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 153
    sget v2, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->u:I

    rem-int v3, v0, v2

    if-nez v3, :cond_25

    .line 154
    div-int/2addr v0, v2

    iput v0, v1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m:I

    goto :goto_16

    .line 155
    :cond_25
    div-int/2addr v0, v2

    add-int/2addr v0, v9

    iput v0, v1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m:I

    .line 156
    :goto_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->G:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 157
    :goto_17
    iget v2, v1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m:I

    sub-int/2addr v2, v9

    if-ge v0, v2, :cond_27

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 160
    :goto_18
    sget v4, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->u:I

    if-ge v3, v4, :cond_26

    .line 161
    iget-object v5, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->D:Ljava/util/List;

    mul-int/2addr v4, v0

    add-int/2addr v4, v3

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 162
    :cond_26
    iget-object v3, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->G:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 163
    :cond_27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    sget v3, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->u:I

    mul-int/2addr v0, v3

    :goto_19
    iget-object v3, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->D:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_28

    .line 165
    iget-object v3, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->D:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 166
    :cond_28
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/huawei/hem/d3;

    iget-object v2, v1, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->v:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/huawei/hem/d3;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 168
    iget-object v2, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->y:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    new-instance v2, Lcom/huawei/hem/w3;

    invoke-direct {v2, v1}, Lcom/huawei/hem/w3;-><init>(Lcom/android/launcher3/fragment/home/HengxuanFragment;)V

    .line 170
    iput-object v2, v0, Lcom/huawei/hem/d3;->d:Lcom/huawei/hem/d3$a;

    .line 171
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->z:Landroid/widget/GridView;

    iget-object v2, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 172
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->z:Landroid/widget/GridView;

    new-instance v2, Lcom/huawei/hem/z2;

    iget-object v3, v1, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->w:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/huawei/hem/z2;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->z:Landroid/widget/GridView;

    .line 174
    invoke-virtual {v2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-nez v3, :cond_29

    const/4 v0, 0x0

    goto :goto_1b

    .line 175
    :cond_29
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_2b

    const/4 v4, 0x0

    .line 176
    invoke-interface {v3, v4, v7, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 177
    invoke-virtual {v5, v4, v4}, Landroid/view/View;->measure(II)V

    .line 178
    invoke-virtual {v2}, Landroid/widget/GridView;->getHorizontalSpacing()I

    move-result v6

    if-nez v6, :cond_2a

    const/16 v6, 0x4b

    .line 179
    :cond_2a
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    const-string v6, " -- gridview get item width:"

    .line 180
    invoke-static {v6}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and  getHorizontalSpacing :"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/GridView;->getHorizontalSpacing()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    goto :goto_1a

    :cond_2b
    const/4 v7, 0x0

    move v4, v7

    .line 181
    :goto_1a
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v5, v0, :cond_2c

    .line 182
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 183
    :cond_2c
    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 184
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    mul-int/2addr v3, v7

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const-string v3, " -- grid view  item width:"

    const-string v5, " width:"

    .line 185
    invoke-static {v3, v7, v5}, Lcom/huawei/hem/f6;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v4

    :goto_1b
    const-string v2, "HengxuanFragment -- setFlipper===>count: "

    .line 187
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    if-eqz p1, :cond_2d

    .line 188
    iget-object v2, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->F:Ljava/util/ArrayList;

    .line 189
    new-instance v3, Lcom/android/launcher3/fragment/home/HiBoardFragment;

    invoke-direct {v3}, Lcom/android/launcher3/fragment/home/HiBoardFragment;-><init>()V

    .line 190
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_2d
    :goto_1c
    iget v2, v1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m:I

    if-ge v0, v2, :cond_2e

    .line 192
    iget-object v2, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->G:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 193
    new-instance v3, Lcom/android/launcher3/fragment/home/HengxuanChildFragment;

    invoke-direct {v3}, Lcom/android/launcher3/fragment/home/HengxuanChildFragment;-><init>()V

    .line 194
    iput-object v2, v3, Lcom/android/launcher3/fragment/home/HengxuanChildFragment;->a:Ljava/util/List;

    .line 195
    iget-object v2, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->F:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 196
    :cond_2e
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->E:Lcom/android/launcher3/adapter/MainFragmentPagerAdapter;

    iget-object v2, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->F:Ljava/util/ArrayList;

    .line 197
    iput-object v2, v0, Lcom/android/launcher3/adapter/MainFragmentPagerAdapter;->a:Ljava/util/List;

    .line 198
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 199
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->p(Z)V

    .line 200
    iget v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->C:I

    invoke-virtual {v1, v0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->q(I)V

    .line 201
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->E:Lcom/android/launcher3/adapter/MainFragmentPagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 202
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->x:Landroid/support/v4/view/ViewPager;

    iget v2, v1, Lcom/android/launcher3/fragment/home/HengxuanFragment;->C:I

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void

    .line 203
    :cond_2f
    throw v7

    .line 204
    :cond_30
    throw v7
.end method
