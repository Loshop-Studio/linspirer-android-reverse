# RE note 本类字节码直接引用的读写或显示接口包括偏好设置。
.class public Lcom/android/launcher3/fragment/home/MainFragment;
.super Lcom/android/launcher3/fragment/home/BaseHomeFragment;
.source "MainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/fragment/home/MainFragment$a;
    }
.end annotation


# instance fields
.field public A:Landroid/widget/RelativeLayout;

.field public B:Landroid/widget/TextView;

.field public C:Lcom/android/launcher3/adapter/MainFragmentPagerAdapter;

.field public D:J

.field public E:I

.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/AppItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public x:Landroid/support/v4/view/ViewPager;

.field public y:Landroid/widget/ImageView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/MainFragment;->v:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/MainFragment;->w:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic s(Lcom/android/launcher3/fragment/home/MainFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/MainFragment;->y()V

    return-void
.end method

.method public static t(Lcom/android/launcher3/fragment/home/MainFragment;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->b:Lcom/android/launcher3/db/model/GesturePasswordDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/db/model/GesturePasswordDao$Properties;->User_name:Lorg/greenrobot/greendao/Property;

    iget-object v2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/db/model/GesturePassword;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/db/model/GesturePassword;->getGesture_password()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BaseFragment -- get gesture password : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hem/bc;->b(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/android/launcher3/view/CommonDialog;

    invoke-direct {v0}, Lcom/android/launcher3/view/CommonDialog;-><init>()V

    .line 6
    iget-object v4, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v5, 0x7f0c007f

    const v6, 0x7f0c013b

    const v7, 0x7f0c0132

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide v10, 0x3fe199999999999aL    # 0.55

    const/4 v12, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher3/view/CommonDialog;->initDialog(Landroid/content/Context;IIIDDZ)V

    .line 7
    new-instance v1, Lcom/huawei/hem/f4;

    invoke-direct {v1, p0}, Lcom/huawei/hem/f4;-><init>(Lcom/android/launcher3/fragment/home/MainFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/view/CommonDialog;->setDialogOnClickEvent(Lcom/android/launcher3/view/CommonDialog$DialogButtonOnClickListener;)V

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "settings_type"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget-object p0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const-class v1, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    invoke-static {p0, v1, v0}, Lcom/huawei/hem/y4;->V(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public static synthetic u(Lcom/android/launcher3/fragment/home/MainFragment;)Lcom/huawei/hem/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    return-object p0
.end method

.method public static synthetic v(Lcom/android/launcher3/fragment/home/MainFragment;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/activity/base/BaseFragment;->b()Z

    move-result p0

    return p0
.end method

.method public static w(Lcom/android/launcher3/fragment/home/MainFragment;I)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "settings_type"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object p0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const-class p1, Lcom/android/launcher3/activity/gestrue/SettingPwdGestureActivity;

    invoke-static {p0, p1, v0}, Lcom/huawei/hem/y4;->V(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0
.end method


# virtual methods
.method public e()I
    .locals 1

    const v0, 0x7f09003b

    return v0
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->f()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->d:Z

    const/16 v1, 0x18

    .line 3
    sput v1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->u:I

    .line 4
    iget-object v1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->o:Lcom/huawei/hem/o3;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 6
    iput v2, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->s:I

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->r(Z)V

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/launcher3/fragment/home/MainFragment;->x(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 9
    throw v0
.end method

.method public g(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f07011c

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f070173

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/MainFragment;->y:Landroid/widget/ImageView;

    const v0, 0x7f070174

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/MainFragment;->z:Landroid/widget/TextView;

    const v0, 0x7f07017b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/MainFragment;->x:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f0700dc

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0700d1

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->k:Landroid/widget/ImageView;

    const v0, 0x7f0700be

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/MainFragment;->A:Landroid/widget/RelativeLayout;

    const v0, 0x7f070182

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/fragment/home/MainFragment;->B:Landroid/widget/TextView;

    const v0, 0x7f070027

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->i:Landroid/widget/LinearLayout;

    .line 10
    new-instance p1, Lcom/android/launcher3/adapter/MainFragmentPagerAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/fragment/home/MainFragment;->w:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/adapter/MainFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/android/launcher3/fragment/home/MainFragment;->C:Lcom/android/launcher3/adapter/MainFragmentPagerAdapter;

    .line 11
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/MainFragment;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 12
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/MainFragment;->x:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 13
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/MainFragment;->x:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/android/launcher3/fragment/home/MainFragment$a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fragment/home/MainFragment$a;-><init>(Lcom/android/launcher3/fragment/home/MainFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 14
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/MainFragment;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/MainFragment;->B:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/MainFragment;->y()V

    .line 2
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/fragment/home/MainFragment;->x(Z)V

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

# RE I/O 读取整数偏好（SharedPreferences.getInt）。
.method public onClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "com.ndwill.swd.appstore"

    const v3, 0x7f070173

    if-ne v1, v3, :cond_c

    .line 2
    iget-object v1, v0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->R()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    iget-wide v5, v0, Lcom/android/launcher3/fragment/home/MainFragment;->D:J

    sub-long v5, v1, v5

    .line 5
    iput-wide v1, v0, Lcom/android/launcher3/fragment/home/MainFragment;->D:J

    const-wide/16 v1, 0x3e8

    cmp-long v1, v5, v1

    if-gtz v1, :cond_e

    .line 6
    iget v1, v0, Lcom/android/launcher3/fragment/home/MainFragment;->E:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/launcher3/fragment/home/MainFragment;->E:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_e

    .line 7
    iget-object v1, v0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const-class v2, Lcom/android/launcher3/activity/AdminLoginActivity;

    invoke-static {v1, v2}, Lcom/huawei/hem/y4;->U(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    iput v4, v0, Lcom/android/launcher3/fragment/home/MainFragment;->E:I

    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/huawei/hem/dc;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 10
    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f09003c

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 11
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v7, v0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0500d3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f05007c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050070

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050092

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    float-to-int v7, v7

    .line 16
    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 17
    invoke-virtual {v5, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const v7, 0x7f0700e3

    .line 18
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x7f070052

    .line 19
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f070053

    .line 20
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f070078

    .line 21
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f07007a

    .line 22
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v12, 0x7f070139

    .line 23
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f07009b

    .line 24
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const v14, 0x7f0700dd

    .line 25
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f070108

    .line 26
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const v4, 0x7f070107

    .line 27
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f070059

    .line 28
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v3, 0x7f070058

    .line 29
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v17, v14

    const v14, 0x7f070127

    .line 30
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v14, 0x7f070124

    .line 31
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v14, 0x1

    .line 32
    invoke-virtual {v5, v14}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 33
    invoke-virtual {v5, v14}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v14, 0x0

    .line 34
    invoke-virtual {v5, v14}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget-object v14, v0, Lcom/android/launcher3/fragment/home/MainFragment;->y:Landroid/widget/ImageView;

    move-object/from16 v16, v1

    const v1, 0x800005

    move-object/from16 v18, v11

    const/4 v11, 0x0

    invoke-virtual {v5, v14, v11, v8, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 36
    iget-object v1, v0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->o()I

    move-result v1

    const/16 v8, 0x8

    if-nez v1, :cond_2

    .line 37
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :cond_2
    iget-object v1, v0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    .line 40
    iget v11, v1, Lcom/huawei/hem/y5;->d0:I

    const/4 v13, -0x1

    if-ne v11, v13, :cond_3

    .line 41
    iget-object v11, v1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 42
    iget-object v11, v11, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v14, "allow_change_pwd_status"

    invoke-interface {v11, v14, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 43
    iput v11, v1, Lcom/huawei/hem/y5;->d0:I

    .line 44
    :cond_3
    iget v1, v1, Lcom/huawei/hem/y5;->d0:I

    if-eqz v1, :cond_4

    .line 45
    iget-object v1, v0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v1}, Lcom/huawei/hem/y5;->a()I

    move-result v1

    const/4 v11, 0x2

    if-ne v1, v11, :cond_5

    .line 46
    :cond_4
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :cond_5
    iget-object v1, v0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    .line 49
    iget v10, v1, Lcom/huawei/hem/y5;->P:I

    if-ne v10, v13, :cond_6

    .line 50
    iget-object v10, v1, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    .line 51
    iget-object v10, v10, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v11, "privacy_status"

    const/4 v13, 0x0

    invoke-interface {v10, v11, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 52
    iput v10, v1, Lcom/huawei/hem/y5;->P:I

    .line 53
    :cond_6
    iget v1, v1, Lcom/huawei/hem/y5;->P:I

    if-nez v1, :cond_7

    .line 54
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    invoke-virtual {v15, v8}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_7
    iget-object v1, v0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/huawei/hem/bc;->o(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 57
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    :cond_8
    new-instance v1, Lcom/huawei/hem/x3;

    invoke-direct {v1, v0, v5}, Lcom/huawei/hem/x3;-><init>(Lcom/android/launcher3/fragment/home/MainFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v1, Lcom/huawei/hem/y3;

    invoke-direct {v1, v0, v5}, Lcom/huawei/hem/y3;-><init>(Lcom/android/launcher3/fragment/home/MainFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v1, Lcom/huawei/hem/z3;

    invoke-direct {v1, v0, v5}, Lcom/huawei/hem/z3;-><init>(Lcom/android/launcher3/fragment/home/MainFragment;Landroid/widget/PopupWindow;)V

    move-object/from16 v11, v18

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v1, Lcom/huawei/hem/a4;

    invoke-direct {v1, v0, v5}, Lcom/huawei/hem/a4;-><init>(Lcom/android/launcher3/fragment/home/MainFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v1, Lcom/huawei/hem/b4;

    invoke-direct {v1, v0, v5}, Lcom/huawei/hem/b4;-><init>(Lcom/android/launcher3/fragment/home/MainFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance v1, Lcom/huawei/hem/c4;

    invoke-direct {v1, v0, v5}, Lcom/huawei/hem/c4;-><init>(Lcom/android/launcher3/fragment/home/MainFragment;Landroid/widget/PopupWindow;)V

    move-object/from16 v14, v17

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v1, Lcom/huawei/hem/d4;

    invoke-direct {v1, v0, v5}, Lcom/huawei/hem/d4;-><init>(Lcom/android/launcher3/fragment/home/MainFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v1, Lcom/huawei/hem/e4;

    invoke-direct {v1, v0, v5}, Lcom/huawei/hem/e4;-><init>(Lcom/android/launcher3/fragment/home/MainFragment;Landroid/widget/PopupWindow;)V

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-static {}, Lcom/huawei/hem/n5;->a()Lcom/huawei/hem/n5;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 68
    sget-object v1, Lcom/huawei/hem/n5;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 69
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 70
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 71
    :cond_a
    sget-object v1, Lcom/huawei/hem/n5;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_b
    const/4 v1, 0x0

    .line 72
    throw v1

    .line 73
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7f070182

    if-ne v1, v3, :cond_d

    .line 74
    iget-object v1, v0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hem/y4;->Z(Landroid/content/Context;)V

    goto :goto_1

    .line 75
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7f0700be

    if-ne v1, v3, :cond_e

    .line 76
    iget-object v1, v0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    const v3, 0x7f0c0127

    invoke-static {v1, v2, v3}, Lcom/huawei/hem/bc;->r(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_e
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MainFragment  -- onConfigurationChanged  create HiBoardFragment and refresh"

    .line 3
    invoke-static {p1}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/android/launcher3/fragment/home/MainFragment;->C:Lcom/android/launcher3/adapter/MainFragmentPagerAdapter;

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/MainFragment;->y()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v0, "MainFragment =======onResume======="

    .line 2
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "MainFragment =======onResume======= refresh"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->s:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->r(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/fragment/home/MainFragment;->x(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/MainFragment;->y()V

    .line 8
    iput-boolean v2, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->n:Z

    .line 9
    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher3/activity/base/BaseFragment;->d:Z

    return-void
.end method

.method public final x(Z)V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->o:Lcom/huawei/hem/o3;

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    iget-object v0, v1, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->N()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v1, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Lcom/huawei/hem/r3;

    invoke-direct {v0}, Lcom/huawei/hem/r3;-><init>()V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/huawei/hem/p3;->b()Ljava/util/List;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/AppItem;

    .line 7
    invoke-virtual {v4}, Lcom/android/launcher3/model/AppItem;->getPkgName()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v4}, Lcom/android/launcher3/model/AppItem;->getActivityName()Ljava/lang/String;

    move-result-object v6

    .line 9
    iget-object v7, v0, Lcom/huawei/hem/r3;->e:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/huawei/hem/r3;->e:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    sget-object v6, Lcom/huawei/hem/s3$b;->a:Lcom/huawei/hem/s3;

    if-eqz v6, :cond_35

    .line 12
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "com.ndwill.swd.appstore"

    .line 15
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {}, Lcom/huawei/hem/q0;->E()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v10, "com.android.launcher3.activity.PullNewsActivity"

    .line 17
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iget-object v11, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->r()I

    move-result v11

    if-eq v11, v5, :cond_4

    .line 21
    invoke-static {}, Lcom/huawei/hem/q0;->w()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    :cond_4
    iget-object v11, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->n()I

    move-result v11

    if-eq v11, v5, :cond_5

    .line 23
    invoke-static {}, Lcom/huawei/hem/q0;->y()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    :cond_5
    iget-object v11, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->g()I

    move-result v11

    if-eq v11, v5, :cond_6

    .line 25
    invoke-static {}, Lcom/huawei/hem/q0;->x()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    :cond_6
    iget-object v11, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->d()I

    move-result v11

    if-eq v11, v5, :cond_7

    .line 27
    invoke-static {}, Lcom/huawei/hem/q0;->v()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_7
    iget-object v11, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->f()I

    move-result v11

    const-string v12, "com.android.launcher3.activity.DataCleanActivity"

    if-eq v11, v5, :cond_8

    .line 29
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v11, "BasicAppList ===============  read isv PhoneStatus "

    .line 30
    invoke-static {v11}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v13}, Lcom/huawei/hem/y5;->z()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " time limit: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v14}, Lcom/huawei/hem/y5;->x()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " phone  "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    .line 31
    invoke-virtual {v14}, Lcom/huawei/hem/y5;->y()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 32
    invoke-static {v11}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 33
    iget-object v11, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->z()I

    move-result v11

    if-ne v11, v5, :cond_9

    .line 34
    invoke-static {}, Lcom/huawei/hem/q0;->B()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 35
    :cond_9
    iget-object v11, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->z()I

    move-result v11

    if-ne v11, v3, :cond_b

    .line 36
    iget-object v11, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->x()I

    move-result v11

    if-eq v11, v5, :cond_a

    iget-object v11, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->x()I

    move-result v11

    if-ne v11, v3, :cond_b

    iget-object v11, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    .line 37
    invoke-virtual {v11}, Lcom/huawei/hem/y5;->y()I

    move-result v11

    if-ne v11, v5, :cond_b

    .line 38
    :cond_a
    invoke-static {}, Lcom/huawei/hem/q0;->B()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_b
    :goto_1
    const-string v11, "BasicAppList =============== read isv smsStatus "

    .line 39
    invoke-static {v11}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v14, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v14}, Lcom/huawei/hem/y5;->F()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v13}, Lcom/huawei/hem/y5;->E()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " sms  "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    .line 40
    invoke-virtual {v13}, Lcom/huawei/hem/y5;->y()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 41
    invoke-static {v11}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 42
    iget-object v11, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->F()I

    move-result v11

    if-ne v11, v5, :cond_c

    .line 43
    invoke-static {}, Lcom/huawei/hem/q0;->A()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 44
    :cond_c
    iget-object v11, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->F()I

    move-result v11

    if-ne v11, v3, :cond_e

    .line 45
    iget-object v11, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->E()I

    move-result v11

    if-eq v11, v5, :cond_d

    iget-object v11, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v11}, Lcom/huawei/hem/y5;->E()I

    move-result v11

    if-ne v11, v3, :cond_e

    iget-object v3, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    .line 46
    invoke-virtual {v3}, Lcom/huawei/hem/y5;->y()I

    move-result v3

    if-ne v3, v5, :cond_e

    .line 47
    :cond_d
    invoke-static {}, Lcom/huawei/hem/q0;->A()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    :cond_e
    :goto_2
    invoke-static {}, Lcom/huawei/hem/ce;->n()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {}, Lcom/huawei/hem/ce;->l()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v6, Lcom/huawei/hem/p3;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hem/ce;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 49
    :cond_f
    iget-object v3, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v3}, Lcom/huawei/hem/y5;->B()I

    move-result v3

    if-eq v3, v5, :cond_10

    const-string v3, "com.android.launcher3.activity.DeviceRotatingActivity"

    .line 50
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_10
    iget-object v3, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v3}, Lcom/huawei/hem/y5;->Q()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 52
    invoke-static {}, Lcom/huawei/hem/q0;->C()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_11
    const-string v3, "BasicAppList show system apps:"

    .line 53
    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iget-object v0, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->q()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BasicAppList  -- read from isv : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const-string v5, ","

    .line 58
    invoke-static {v0, v5}, Lcom/huawei/hem/l9;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    :cond_12
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v0, v6, Lcom/huawei/hem/p3;->c:Lcom/android/launcher3/db/model/ItemAppDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v11, Lcom/android/launcher3/db/model/ItemAppDao$Properties;->Hide_icon_status:Lorg/greenrobot/greendao/Property;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v11

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v11, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildCursor()Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/CursorQuery;->query()Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 64
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_13

    .line 65
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 66
    sget-object v0, Lcom/android/launcher3/db/model/ItemAppDao$Properties;->Packagename:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 67
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 68
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 69
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 70
    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 71
    throw v0

    :cond_13
    if-eqz v4, :cond_14

    .line 72
    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_14
    invoke-static {v5}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, " ========>query white app list is null from local cache"

    .line 74
    invoke-static {v0}, Lcom/huawei/hem/bc;->A(Ljava/lang/String;)V

    .line 75
    :cond_15
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget-object v0, v6, Lcom/huawei/hem/p3;->d:Lcom/huawei/hem/o3;

    if-eqz v0, :cond_34

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 79
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-static {v2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 85
    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-static {v2}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_18
    const-string v2, "com.android.launcher3"

    .line 89
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    iget-object v2, v6, Lcom/huawei/hem/p3;->b:Lcom/huawei/hem/y5;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->J()Ljava/util/Map;

    move-result-object v2

    .line 91
    invoke-virtual {v6}, Lcom/huawei/hem/p3;->c()Ljava/util/List;

    move-result-object v3

    .line 92
    invoke-virtual {v6}, Lcom/huawei/hem/p3;->b()Ljava/util/List;

    move-result-object v4

    .line 93
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/AppItem;

    .line 94
    invoke-virtual {v5}, Lcom/android/launcher3/model/AppItem;->getPkgName()Ljava/lang/String;

    move-result-object v11

    .line 95
    invoke-virtual {v5}, Lcom/android/launcher3/model/AppItem;->getActivityName()Ljava/lang/String;

    move-result-object v13

    .line 96
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1e

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    goto :goto_8

    .line 97
    :cond_1a
    move-object v14, v3

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1d

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    goto :goto_7

    .line 98
    :cond_1b
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1c

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    :cond_1c
    const/16 v13, 0x50

    .line 99
    invoke-virtual {v5, v13}, Lcom/android/launcher3/model/AppItem;->setWeight(I)V

    .line 100
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    move-object v13, v2

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 102
    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/android/launcher3/model/AppItem;->setTipCount(I)V

    goto :goto_6

    :cond_1d
    :goto_7
    const/16 v13, 0x5a

    .line 103
    invoke-virtual {v5, v13}, Lcom/android/launcher3/model/AppItem;->setWeight(I)V

    .line 104
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    move-object v13, v2

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 106
    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/android/launcher3/model/AppItem;->setTipCount(I)V

    goto :goto_6

    .line 107
    :cond_1e
    :goto_8
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    const/16 v11, 0x64

    .line 108
    invoke-virtual {v5, v11}, Lcom/android/launcher3/model/AppItem;->setWeight(I)V

    .line 109
    invoke-static {}, Lcom/huawei/hem/t3;->a()Lcom/huawei/hem/t3;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/hem/t3;->c()Lcom/android/launcher3/db/model/ItemAppDao;

    move-result-object v11

    .line 110
    invoke-virtual {v11}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v11

    .line 111
    invoke-static {v11}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 112
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 113
    :cond_1f
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v13, 0x0

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_21

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/db/model/ItemApp;

    .line 114
    iget-object v15, v6, Lcom/huawei/hem/p3;->a:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual {v14}, Lcom/android/launcher3/db/model/ItemApp;->getPackagename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Lcom/android/launcher3/db/model/ItemApp;->getVersioncode()I

    move-result v14

    invoke-static {v15, v0, v14}, Lcom/huawei/hem/bc;->p(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    add-int/lit8 v13, v13, 0x1

    :cond_20
    move-object/from16 v0, v16

    goto :goto_9

    :cond_21
    move-object/from16 v16, v0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BasicAppList app store new count:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v5, v13}, Lcom/android/launcher3/model/AppItem;->setTipCount(I)V

    goto/16 :goto_a

    :cond_22
    move-object/from16 v16, v0

    .line 117
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0x63

    .line 118
    invoke-virtual {v5, v0}, Lcom/android/launcher3/model/AppItem;->setWeight(I)V

    goto/16 :goto_a

    .line 119
    :cond_23
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0x62

    .line 120
    invoke-virtual {v5, v0}, Lcom/android/launcher3/model/AppItem;->setWeight(I)V

    goto :goto_a

    .line 121
    :cond_24
    invoke-static {}, Lcom/huawei/hem/q0;->E()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x61

    .line 122
    invoke-virtual {v5, v0}, Lcom/android/launcher3/model/AppItem;->setWeight(I)V

    goto :goto_a

    .line 123
    :cond_25
    invoke-static {}, Lcom/huawei/hem/q0;->v()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0x60

    .line 124
    invoke-virtual {v5, v0}, Lcom/android/launcher3/model/AppItem;->setWeight(I)V

    goto :goto_a

    .line 125
    :cond_26
    invoke-static {}, Lcom/huawei/hem/q0;->x()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v0, 0x5f

    .line 126
    invoke-virtual {v5, v0}, Lcom/android/launcher3/model/AppItem;->setWeight(I)V

    goto :goto_a

    .line 127
    :cond_27
    invoke-static {}, Lcom/huawei/hem/q0;->w()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0x5e

    .line 128
    invoke-virtual {v5, v0}, Lcom/android/launcher3/model/AppItem;->setWeight(I)V

    goto :goto_a

    .line 129
    :cond_28
    invoke-static {}, Lcom/huawei/hem/q0;->y()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x5d

    .line 130
    invoke-virtual {v5, v0}, Lcom/android/launcher3/model/AppItem;->setWeight(I)V

    goto :goto_a

    :cond_29
    const/16 v0, 0x5c

    .line 131
    invoke-virtual {v5, v0}, Lcom/android/launcher3/model/AppItem;->setWeight(I)V

    .line 132
    :goto_a
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    goto/16 :goto_6

    .line 133
    :cond_2a
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v2, v7

    .line 134
    :cond_2b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 135
    sget v3, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->u:I

    rem-int v4, v0, v3

    if-nez v4, :cond_2c

    .line 136
    div-int v3, v0, v3

    iput v3, v1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m:I

    if-nez v3, :cond_2d

    const/4 v3, 0x1

    .line 137
    iput v3, v1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m:I

    goto :goto_b

    .line 138
    :cond_2c
    div-int v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m:I

    :cond_2d
    :goto_b
    const-string v3, "MainFragment  -- createScreenNumber  ScreenCount = "

    .line 139
    invoke-static {v3}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , \u6240\u6709\u5e94\u7528\u6570\u4e3a \uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 140
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/MainFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 141
    :goto_c
    iget v3, v1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2f

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 143
    :goto_d
    sget v5, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->u:I

    if-ge v4, v5, :cond_2e

    mul-int/2addr v5, v0

    add-int/2addr v5, v4

    .line 144
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 145
    :cond_2e
    iget-object v4, v1, Lcom/android/launcher3/fragment/home/MainFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 146
    :cond_2f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 147
    sget v4, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->u:I

    mul-int/2addr v0, v4

    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_30

    .line 148
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 149
    :cond_30
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/MainFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFragmentList size : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/launcher3/fragment/home/MainFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 151
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/MainFragment;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 152
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/MainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_31

    .line 153
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/MainFragment;->w:Ljava/util/ArrayList;

    .line 154
    new-instance v2, Lcom/android/launcher3/fragment/home/HiBoardFragment;

    invoke-direct {v2}, Lcom/android/launcher3/fragment/home/HiBoardFragment;-><init>()V

    .line 155
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    const/4 v0, 0x0

    .line 156
    :goto_f
    iget v2, v1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->m:I

    if-ge v0, v2, :cond_33

    .line 157
    iget-object v2, v1, Lcom/android/launcher3/fragment/home/MainFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_32

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v3, Lcom/android/launcher3/fragment/home/ChildPageFragment;

    invoke-direct {v3}, Lcom/android/launcher3/fragment/home/ChildPageFragment;-><init>()V

    .line 160
    iput-object v2, v3, Lcom/android/launcher3/fragment/home/ChildPageFragment;->j:Ljava/util/List;

    goto :goto_10

    .line 161
    :cond_32
    iget-object v2, v1, Lcom/android/launcher3/fragment/home/MainFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 162
    new-instance v3, Lcom/android/launcher3/fragment/home/ChildPageFragment;

    invoke-direct {v3}, Lcom/android/launcher3/fragment/home/ChildPageFragment;-><init>()V

    .line 163
    iput-object v2, v3, Lcom/android/launcher3/fragment/home/ChildPageFragment;->j:Ljava/util/List;

    .line 164
    :goto_10
    iget-object v2, v1, Lcom/android/launcher3/fragment/home/MainFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 165
    :cond_33
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->p(Z)V

    .line 166
    iget v0, v1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->s:I

    invoke-virtual {v1, v0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->q(I)V

    .line 167
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/MainFragment;->C:Lcom/android/launcher3/adapter/MainFragmentPagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 168
    iget-object v0, v1, Lcom/android/launcher3/fragment/home/MainFragment;->x:Landroid/support/v4/view/ViewPager;

    iget v2, v1, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->s:I

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void

    .line 169
    :cond_34
    throw v2

    .line 170
    :cond_35
    throw v2

    .line 171
    :cond_36
    throw v2
.end method

# RE I/O 读取整数偏好（SharedPreferences.getInt）。
.method public final y()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->R()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/fragment/home/MainFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v0}, Lcom/huawei/hem/y5;->v()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->l()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/launcher3/fragment/home/BaseHomeFragment;->s:I

    if-nez v3, :cond_1

    if-ne v4, v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/launcher3/fragment/home/MainFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->R()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    .line 8
    iget v3, v2, Lcom/huawei/hem/y5;->Q:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 9
    iget-object v3, v2, Lcom/huawei/hem/y5;->D:Lcom/huawei/hem/ac;

    const/4 v5, 0x0

    .line 10
    iget-object v3, v3, Lcom/huawei/hem/ac;->a:Landroid/content/SharedPreferences;

    const-string v6, "school_class_info_status"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 11
    iput v3, v2, Lcom/huawei/hem/y5;->Q:I

    .line 12
    :cond_2
    iget v2, v2, Lcom/huawei/hem/y5;->Q:I

    if-ne v2, v4, :cond_4

    .line 13
    iget-object v2, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v2}, Lcom/huawei/hem/y5;->C()Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/android/launcher3/activity/base/BaseFragment;->c:Lcom/huawei/hem/y5;

    invoke-virtual {v3}, Lcom/huawei/hem/y5;->G()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "  |  "

    if-nez v4, :cond_3

    .line 16
    invoke-static {v2, v5}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 18
    invoke-static {v1, v3, v5}, Lcom/huawei/hem/f6;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    :cond_4
    invoke-static {v1, v0}, Lcom/huawei/hem/f6;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/launcher3/fragment/home/MainFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
