.class public Lcom/huawei/hem/j2;
.super Ljava/lang/Object;
.source "CheckGrantedPermission.java"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/j2;->a:[Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    const-string v0, "\u6743\u9650\u68c0\u67e5"

    .line 4
    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/huawei/hem/j2;->a:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 8
    aget-object v2, v2, v1

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\u6743\u9650\u672a\u6388\u6743: "

    .line 9
    invoke-static {v2}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hem/j2;->a:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/huawei/hem/j2;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v2, p0, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/huawei/hem/j2;->a:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v0}, Lcom/huawei/hem/l9;->P(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 13
    invoke-static {v0}, Lcom/huawei/hem/l9;->O([Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/huawei/hem/j2;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 16
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/network/DeviceLogHelper;->recordPermissionEvent(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/network/IllegalHelper;->recordNoPermission(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 19
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hem/j2;->a:[Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/huawei/hem/j2;->a:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 22
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/huawei/hem/j2;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 25
    invoke-static {}, Lcom/android/launcher3/network/DeviceLogHelper;->getInstance()Lcom/android/launcher3/network/DeviceLogHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/DeviceLogHelper;->recordPermissionEvent(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/android/launcher3/network/IllegalHelper;->getInstance()Lcom/android/launcher3/network/IllegalHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/network/IllegalHelper;->recordNoPermission(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/huawei/hem/l9;->N(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hem/j2;->b:Ljava/util/List;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 4
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/huawei/hem/j2;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final b(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u8bf7\u6c42\u6743\u9650"

    .line 1
    invoke-static {v0}, Lcom/huawei/hem/f6;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hem/bc;->m(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p2, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
