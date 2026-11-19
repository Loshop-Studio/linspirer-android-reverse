.class public Lcom/huawei/hem/a3;
.super Landroid/widget/BaseAdapter;
.source "MesssageCenterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hem/a3$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/db/model/PushMsg;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/content/Context;

.field public c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hem/a3;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/huawei/hem/a3;->c:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/a3;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/huawei/hem/a3;->b:Landroid/content/Context;

    const p3, 0x7f090047

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/huawei/hem/a3$a;

    invoke-direct {p3, p0}, Lcom/huawei/hem/a3$a;-><init>(Lcom/huawei/hem/a3;)V

    const v0, 0x7f0700e7

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/huawei/hem/a3$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0700ea

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f0700ee

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/huawei/hem/a3$a;->a:Landroid/widget/TextView;

    const v0, 0x7f0700ed

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/huawei/hem/a3$a;->c:Landroid/widget/TextView;

    const v0, 0x7f070042

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/huawei/hem/a3$a;->d:Landroid/widget/Button;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/huawei/hem/a3$a;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/huawei/hem/a3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/db/model/PushMsg;

    .line 11
    iget-object v1, p3, Lcom/huawei/hem/a3$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/PushMsg;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, p3, Lcom/huawei/hem/a3$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/PushMsg;->getActive()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, p3, Lcom/huawei/hem/a3$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/launcher3/db/model/PushMsg;->getSendtime()J

    move-result-wide v2

    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v4, Ljava/util/Date;

    const-wide/16 v5, 0x3e8

    mul-long/2addr v2, v5

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 16
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p3, Lcom/huawei/hem/a3$a;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/huawei/hem/a3;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p3, p3, Lcom/huawei/hem/a3$a;->d:Landroid/widget/Button;

    const v0, 0x7f0700e9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    return-object p2
.end method
