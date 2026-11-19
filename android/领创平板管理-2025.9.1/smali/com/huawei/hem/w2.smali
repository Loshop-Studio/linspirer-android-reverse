.class public final synthetic Lcom/huawei/hem/w2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/huawei/hem/d3;

.field public final synthetic b:I

.field public final synthetic c:Lcom/android/launcher3/model/AppItem;


# direct methods
.method public synthetic constructor <init>(Lcom/huawei/hem/d3;ILcom/android/launcher3/model/AppItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hem/w2;->a:Lcom/huawei/hem/d3;

    iput p2, p0, Lcom/huawei/hem/w2;->b:I

    iput-object p3, p0, Lcom/huawei/hem/w2;->c:Lcom/android/launcher3/model/AppItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hem/w2;->a:Lcom/huawei/hem/d3;

    iget v1, p0, Lcom/huawei/hem/w2;->b:I

    iget-object v2, p0, Lcom/huawei/hem/w2;->c:Lcom/android/launcher3/model/AppItem;

    invoke-virtual {v0, v1, v2, p1}, Lcom/huawei/hem/d3;->a(ILcom/android/launcher3/model/AppItem;Landroid/view/View;)V

    return-void
.end method
